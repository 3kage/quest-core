-- QuestCore bundled guide (mists)
if not QuestCore then return end
if UnitFactionGroup("player")~="Alliance" then return end
QuestCore:RegisterGuide("Events Guides\\Brewfest\\Brewfest Quests",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return completedq(12491) end,
description="This guide section will walk you through completing the quests for the Brewfest event.",
},[[
step
talk Dwarf Commoner##19148
accept Brewfest!##11441 |goto Ironforge/0 30.82,62.83
step
talk Ipfelkofer Ironkeg##24710
turnin Brewfest!##11441 |goto Dun Morogh/0 55.12,38.08
accept Welcome to Brewfest!##11442 |goto Dun Morogh/0 55.12,38.08
step
talk Boxey Boltspinner##27215
accept Chug and Chuck!##12022 |goto Dun Morogh/0 54.67,38.09
step
click Alcohol-Free Brewfest Sampler##186189+
|tip They look like mugs of beer on the small tables inside this tent.
collect Alcohol-Free Brewfest Sampler##33096 |n
use the Alcohol-Free Brewfest Sampler##33096
|tip Face yourself towards the Self-Turning and Oscillating Utility Target behind the tent.
Hit the S.T.O.U.T. #5# Times |q 12022/1 |goto Dun Morogh/0 54.74,37.92
step
talk Boxey Boltspinner##27215
turnin Chug and Chuck!##12022 |goto Dun Morogh/0 54.67,38.09
step
talk Neill Ramstein##23558
accept Now This is Ram Racing... Almost.##11318 |goto Dun Morogh/0 53.68,38.55
step
As you run around on the ram:
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip You have to use the Ram Racing Reins to make it run at certain speeds for 8 seconds.
|tip To make the ram Trot for 8 seconds, use the Giddyup! ability every 2 seconds or so.
Maintain a Trot for 8 seconds |q 11318/1
step
As you run around on the ram:
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip You have to use the Ram Racing Reins to make it run at certain speeds for 8 seconds.
|tip To make the ram Canter for 8 seconds, use the Ram Racing Reins a little more often than when you made the ram Trot.
Maintain a Canter for 8 seconds |q 11318/2
step
As you run around on the ram:
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip You have to use the Ram Racing Reins to make it run at certain speeds for 8 seconds.
|tip To make the ram Gallop, just spam the Ram Racing Reins.
Maintain a Gallop for 8 seconds |q 11318/3
step
Stop Riding the Ram |nobuff Rental Racing Ram##43883 |q 11318
|tip Right-click the "Rental Racing Ram" buff on your buff bar.
step
talk Neill Ramstein##23558
turnin Now This is Ram Racing... Almost.##11318 |goto Dun Morogh/0 53.68,38.55
accept There and Back Again##11122 |goto Dun Morogh/0 53.68,38.55
step
map Dun Morogh/0
path follow strictbounce; loop off; ants curved; dist 20
path	53.55,38.69	53.66,40.23	54.59,43.32	54.57,47.45	53.93,49.28
path	53.12,50.78
Follow the waypoint path:
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100 between buckets.
|tip Ride over buckets of apples to refresh your Ram's fatigue level.
Flynn Firebrew will throw you a keg when you get close
Once you have a keg, run back and turn it in to Pol Amberstill
|tip Just get near him and you will throw the keg to him.
Deliver 3 Kegs in Under 4 Minutes |q 11122/1
|tip If you lose your ram, return to Neill Ramstein to acquire another.
step
Stop Riding the Ram |nobuff Ramstein's Swift Work Ram##43880 |q 11122
|tip Right-click the "Ramstein's Swift Work Ram" buff on your buff bar.
step
talk Neill Ramstein##23558
turnin There and Back Again##11122 |goto Dun Morogh/0 53.68,38.55
step
talk Pol Amberstill##24468
accept Say, There Wouldn't Happen to be a Souvenir This Year, Would There?##12193 |goto Dun Morogh/0 53.54,38.57 |or
|tip This quest is not always available.
Click Here if this Quest Is Not Offered |confirm |or
step
talk Belbi Quikswitch##23710
turnin Say, There Wouldn't Happen to be a Souvenir This Year, Would There?##12193 |goto Dun Morogh/0 56.39,37.84
|only if haveq(12193) or completedq(12193)
step
talk Pol Amberstill##24468
accept A New Supplier of Souvenirs##29397 |goto Dun Morogh/0 53.54,38.57
step
talk Goldark Snipehunter##23486
accept Catch the Wild Wolpertinger!##11117 |goto Dun Morogh/0 55.13,37.72
|only if GetCurrentRegion() ~= 3
step
talk Goldark Snipehunter##23486
Select _"What are Synthebrew Goggles?"_ |gossip 92304
Select _"I'd like a pair of Synthebrew Goggles."_ |gossip 94708
collect Synthebrew Goggles##46735 |goto Dun Morogh/0 55.13,37.72 |q 11117
|only if haveq(11117) or completedq(11117)
step
Equip the Synthebrew Goggles |equipped Synthebrew Goggles##46735 |q 11117
|only if haveq(11117) or completedq(11117)
step
clicknpc Wild Wolpertinger##23487+
use the Wolpertinger Net##32907
|tip Use it on Wild Wolpertingers.
|tip They look like small rabbits with antlers and wings running around on the ground around this area.
collect 5 Stunned Wolpertinger##32906 |q 11117/1 |goto Dun Morogh/0 53.22,39.84
|only if haveq(11117) or completedq(11117)
step
Equip your Helm |complete not goaltype("equipped",{targetid=46735}) |q 11117
|tip Remove the Synthebrew Goggles and re-equip your helm.
|only if haveq(11117) or completedq(11117)
step
talk Goldark Snipehunter##23486
turnin Catch the Wild Wolpertinger!##11117 |goto Dun Morogh/0 55.13,37.72 |only if haveq(11117) or completedq(11117)
accept Pink Elekks On Parade##11118 |goto Dun Morogh/0 55.13,37.72 |only if completedq(11117)
|only if haveq(11117) or completedq(11117)
step
talk Belbi Quikswitch##23710
turnin A New Supplier of Souvenirs##29397 |goto Dun Morogh/0 56.39,37.84
step
Go to Elwynn Forest |goto Elwynn Forest/0 33.59,51.44 < 100 |c |q 11118
|tip Go to this spot before you equip the goggles.
|only if haveq(11118) or completedq(11118)
step
Equip the Synthebrew Goggles |equipped Synthebrew Goggles##46735 |q 11118
|only if haveq(11118) or completedq(11118)
step
use the Elekk Dispersion Ray##32960
|tip Use it on Elwynn Pink Elekks around this area.
|tip They look like pink elephants with four horns around this area.
kill 3 Elwynn Pink Elekk##23507 |q 11118/2 |goto Elwynn Forest/0 33.59,51.44
|only if haveq(11118) or completedq(11118)
step
Equip your Helm |complete not goaltype("equipped",{targetid=46735}) |q 11118
|tip Remove the Synthebrew Goggles and re-equip your helm.
|only if haveq(11118) or completedq(11118)
step
Go to Darnassus |goto Darnassus/0 67.12,35.28 < 100 |c |q 11118
|tip Go to this spot before you equip the goggles.
|only if haveq(11118) or completedq(11118)
step
Equip the Synthebrew Goggles |equipped Synthebrew Goggles##46735 |q 11118
|only if haveq(11118) or completedq(11118)
step
use the Elekk Dispersion Ray##32960
|tip Use it on Teldrassil Pink Elekks around this area.
|tip They look like pink elephants with four horns around this area.
kill 3 Teldrassil Pink Elekk##23527 |q 11118/3 |goto Darnassus/0 67.12,35.28
|only if haveq(11118) or completedq(11118)
step
Equip your Helm |complete not goaltype("equipped",{targetid=46735}) |q 11118
|tip Remove the Synthebrew Goggles and re-equip your helm.
|only if haveq(11118) or completedq(11118)
step
Go to The Exodar |goto The Exodar/0 79.18,57.47 < 100 |c |q 11118
|tip Go to this spot at the entrance to The Exodar before you equip the goggles.
|only if haveq(11118) or completedq(11118)
step
Equip the Synthebrew Goggles |equipped Synthebrew Goggles##46735 |q 11118
|only if haveq(11118) or completedq(11118)
step
use the Elekk Dispersion Ray##32960
|tip Use it on Azuremyst Pink Elekks around this area.
|tip They look like pink elephants with four horns around this area.
kill 3 Azuremyst Pink Elekk##23528 |q 11118/1 |goto The Exodar/0 79.18,57.47
|only if haveq(11118) or completedq(11118)
step
Equip your Helm |complete not goaltype("equipped",{targetid=46735}) |q 11118
|tip Remove the Synthebrew Goggles and re-equip your helm.
|only if haveq(11118) or completedq(11118)
step
talk Goldark Snipehunter##23486
turnin Pink Elekks On Parade##11118 |goto Dun Morogh/0 55.13,37.72
|only if haveq(11118) or completedq(11118)
step
Reach Level 80 |ding 80
|tip Coren Direbrew is level 87 elite.
step
talk Darna Honeybock##27584
accept Save Brewfest!##12318 |goto Dun Morogh/0 52.96,51.01
|tip This quest is elite and will require a group.
step
talk Brewfest Spy##26719
|tip Queue for Coren Direbrew.
turnin Save Brewfest!##12318
step
talk Brewfest Spy##26719
|tip Queue for Coren Direbrew.
accept Insult Coren Direbrew##12062
|tip This quest is elite and will require a group.
step
talk Coren Direbrew##23872
|tip Inside the Grim Guzzler in the Blackrock Depths dungeon.
turnin Insult Coren Direbrew##12062
|tip This quest is elite and will require a group.
step
kill Coren Direbrew##23872
|tip Form a group and travel to the Blackrock Depths dungeon.
|tip Someone with the daily quest "Insult Coren Direbrew" can talk to him to make him hostile.
|tip This quest is available in the Grim Guzzler in Blackrock Depths.
|confirm
step
talk Ipfelkofer Ironkeg##24710
turnin Direbrew's Dire Brew##12491 |goto Dun Morogh/0 55.12,38.08
|only if haveq(12491)
]])
QuestCore:RegisterGuide("Events Guides\\Brewfest\\Brewfest Dailies",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent("Brewfest") end,
description="This guide section will walk you through completing the daily quests for the Brewfest event.",
},[[
step
Complete the "Brewfest Quests" Guide |complete completedq(11122)
step
label "Begin_Dailies"
talk Neill Ramstein##23558
Select _"Do you still need some help shipping kegs from Kharanos?"_
Begin the Keg Run |havebuff Ramstein's Swift Work Ram##43880 |goto Dun Morogh/0 53.68,38.55
step
map Dun Morogh/0
path follow strictbounce; loop off; ants curved; dist 20
path	53.55,38.69	53.66,40.23	54.59,43.32	54.57,47.45	53.93,49.28
path	53.12,50.78
Follow the waypoint path:
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100 between buckets.
|tip Ride over buckets of apples to refresh your Ram's fatigue level.
Flynn Firebrew will throw you a keg when you get close
Once you have a keg, run back and turn it in to Pol Amberstill
|tip Just get near him and you will throw the keg to him.
Deliver as Many Kegs as you Can 4 Minutes |nobuff Ramstein's Swift Work Ram##43880
|tip If you lose your ram, return to Neill Ramstein to acquire another.
step
talk Becan Barleybrew##23627
accept Bark for the Barleybrews!##11293 |goto Dun Morogh/0 56.13,38.06 |or
talk Daran Thunderbrew##23628
accept Bark for the Thunderbrews!##11294 |goto Dun Morogh/0 56.58,36.91 |or
|tip You will only be able to accept one of these quests per day.
step
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
Ride your ram into Ironforge |goto Ironforge/0 21.83,77.49 < 30 |c |q 11293
|only if haveq(11293)
step
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
Ride your ram into Ironforge |goto Ironforge/0 21.83,77.49 |noway |c |q 11294
|only if haveq(11294)
step
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
|tip Ride around the outer ring of Ironforge.
Bark Outside the Bank |q 11293/1 |goto Ironforge/0 32.03,64.97
|only if haveq(11293)
step
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
|tip Ride around the outer ring of Ironforge.
Bark Outside the Bank |q 11294/1 |goto Ironforge/0 32.03,64.97
|only if haveq(11294)
step
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
|tip Ride around the outer ring of Ironforge.
Bark in the Military Ward |q 11293/2 |goto Ironforge/0 64.18,78.08 |notravel
|only if haveq(11293)
step
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
|tip Ride around the outer ring of Ironforge.
Bark in the Hall of Explorers |q 11293/3 |goto Ironforge/0 64.56,24.49 |notravel
|only if haveq(11293)
step
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
|tip Ride around the outer ring of Ironforge.
Bark in the Mystic Ward |q 11293/4 |goto Ironforge/0 28.61,15.12 |notravel
|only if haveq(11293)
step
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
|tip Ride around the outer ring of Ironforge.
Bark in the Military Ward |q 11294/2 |goto Ironforge/0 64.18,78.08 |notravel
|only if haveq(11294)
step
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
|tip Ride around the outer ring of Ironforge.
Bark in the Hall of Explorers |q 11294/3 |goto Ironforge/0 64.56,24.49 |notravel
|only if haveq(11294)
step
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
|tip Ride around the outer ring of Ironforge.
Bark in the Mystic Ward |q 11294/4 |goto Ironforge/0 28.61,15.12 |notravel
|only if haveq(11294)
step
Stop Riding the Ram |nobuff Rental Racing Ram##43883
|tip Right-click the "Rental Racing Ram" buff on your buff bar.
step
talk Becan Barleybrew##23627
turnin Bark for the Barleybrews!##11293 |goto Dun Morogh/0 56.13,38.06
|only if haveq(11293)
step
talk Daran Thunderbrew##23628
turnin Bark for the Thunderbrews!##11294 |goto Dun Morogh/0 56.58,36.91
|only if haveq(11294)
step
Wait for the Dark Iron Defense event to start
|tip This even occurs every 30 minutes.
|tip You have to defend the three kegs at these locations in order to complete it.
click Complimentary Brewfest Sampler##186189+ |goto Dun Morogh/0 55.94,37.33
click Complimentary Brewfest Sampler##186189+ |goto Dun Morogh/0 55.94,37.33
use the Alcohol-Free Brewfest Sampler##33096
|tip Use it to throw it at the Dark Iron Dwarves and the Mole Machines around this area.
click Dark Iron Mole Machine Wreckage##189989
|tip It looks like a big metal gear laying on ground in the middle of the festival.
|tip It appears after the Dark Iron dwarves attack the Brewfest festival, so you may have to wait for it to appear.
accept This One Time, When I Was Drunk...##12020 |goto Dun Morogh/0 48.69,39.13 |or
'|complete not completedq(11293,11294,12020) |next "Begin_Dailies" |or
step
talk Boxey Boltspinner##27215
turnin This One Time, When I Was Drunk...##12020 |goto Dun Morogh/0 54.67,38.09
step
Reach Level 75 |ding 75 |or
|tip Coren Direbrew is level 82 elite.
'|complete not completedq(11293,11294,12020) |next "Begin_Dailies" |or
step
talk Darna Honeybock##27584
accept Save Brewfest!##12318 |goto Dun Morogh/0 52.96,51.01 |or
|tip This quest is elite and will require a group.
'|complete not completedq(11293,11294,12020) |next "Begin_Dailies" |or
step
Enter the Blackrock Depths Dungeon with your Group |goto Blackrock Depths/1 0,0 |q 12062 |future |or
'|complete not completedq(11293,11294,12020) |next "Begin_Dailies" |or
step
talk Brewfest Spy##26719
|tip Queue for Coren Direbrew.
turnin Save Brewfest!##12318 |or
'|complete not completedq(11293,11294,12020) |next "Begin_Dailies" |or
step
talk Brewfest Spy##26719
|tip Inside the Grim Guzzler in the Blackrock Depths dungeon.
accept Insult Coren Direbrew##12062 |or
|tip This quest is elite and will require a group.
'|complete not completedq(11293,11294,12020) |next "Begin_Dailies" |or
step
talk Coren Direbrew##23872
|tip Inside the Grim Guzzler in the Blackrock Depths dungeon.
turnin Insult Coren Direbrew##12062 |or
|tip This quest is elite and will require a group.
'|complete not completedq(11293,11294,12020) |next "Begin_Dailies" |or
step
kill Coren Direbrew##23872
|tip Form a group and travel to the Blackrock Depths dungeon.
|tip Someone with the daily quest "Insult Coren Direbrew" can talk to him to make him hostile.
|tip This quest is available in the Grim Guzzler in Blackrock Depths.
Click Here to Continue |confirm |or
'|complete not completedq(11293,11294,12020) |next "Begin_Dailies" |or
step
talk Ipfelkofer Ironkeg##24710
turnin Direbrew's Dire Brew##12491 |goto Dun Morogh/0 55.12,38.08 |or
'|complete not completedq(11293,11294,12020) |next "Begin_Dailies" |or
|only if haveq(12491)
step
You have completed the available daily quests
|tip This guide will reset when more become available.
'|complete not completedq(11293,11294,12020) |next "Begin_Dailies"
]])
QuestCore:RegisterGuide("Events Guides\\Brewfest\\Achievements\\Brew of the Month",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return achieved(2796) end,
description="Join the Brew of the Month club.",
},[[
step
collect 200 Brewfest Prize Token##37829 |or
|tip These are earned by doing Brewfest Dailies.
Load the "Brewfest Dailies" Guide |confirm |loadguide "Events Guides\\Brewfest\\Brewfest Dailies"
|tip Click the line above to load the guide.
'|complete achieved(2796) |or
step
talk Belbi Quikswitch##23710
buy "Brew of the Month" Club Membership Form##37736 |goto Dun Morogh/0 56.39,37.84 |or
'|complete achieved(2796) |or
step
use the "Brew of the Month" Club Membership Form##37736
accept Brew of the Month Club##12420
step
Enter the building |goto Ironforge/0 20.65,53.21 < 5 |walk
talk Larkin Thunderbrew##27478
|tip Inside the building.
turnin Brew of the Month Club##12420 |goto Ironforge/0 18.80,53.11
step
Earn the "Brew of the Month" Achievement |achieve 2796
]])
QuestCore:RegisterGuide("Events Guides\\Brewfest\\Achievements\\Brew of the Year",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return achieved(1183) end,
description="Sample the following beers featured in the Brew of the Month club:\n\nBinary Brew\nAutumnal Acorn Ale\n"..
"Bartlett's Bitter Brew\nLord of Frost's Private Label\nWild Winter Pilsner\nIzzard's Ever Flavor\nAromatic Honey Brew\n"..
"Metok's Bubble Bock\nSpringtime Stout\nBlackrock Lager\nStranglethorn Brew\nDraenic Pale Ale",
},[[
step
collect 200 Brewfest Prize Token##37829 |or
|tip These are earned by doing Brewfest Dailies.
Load the "Brewfest Dailies" Guide |confirm |loadguide "Events Guides\\Brewfest\\Brewfest Dailies"
|tip Click the line above to load the guide.
'|complete achieved(2796) |or
step
talk Belbi Quikswitch##23710
buy "Brew of the Month" Club Membership Form##37736 |goto Dun Morogh/0 56.39,37.84 |or
'|complete achieved(2796) |or
step
use the "Brew of the Month" Club Membership Form##37736
accept Brew of the Month Club##12420
step
Enter the building |goto Ironforge/0 20.65,53.21 < 5 |walk
talk Larkin Thunderbrew##27478
|tip Inside the building.
turnin Brew of the Month Club##12420 |goto Ironforge/0 18.80,53.11
step
collect Binary Brew##37496 |or
|tip This brew will be in your mailbox for the month of September.
'|complete achieved(1183,5) |or
step
use the Binary Brew##37496
Drink September's Brew |achieve 1183/5
step
collect Autumnal Acorn Ale##37497 |or
|tip This brew will be in your mailbox for the month of October.
'|complete achieved(1183,4) |or
step
use the Autumnal Acorn Ale##37497
Drink October's Brew |achieve 1183/4
step
collect Bartlett's Bitter Brew##37498 |or
|tip This brew will be in your mailbox for the month of November.
'|complete achieved(1183,3) |or
step
use Bartlett's Bitter Brew##37498
Drink November's Brew |achieve 1183/3
step
collect Lord of Frost's Private Label##37499 |or
|tip This brew will be in your mailbox for the month of December.
'|complete achieved(1183,2) |or
step
use Lord of Frost's Private Label##37499
Drink December's Brew |achieve 1183/2
step
collect Wild Winter Pilsner##37488 |or
|tip This brew will be in your mailbox for the month of January.
'|complete achieved(1183,1) |or
step
use the Wild Winter Pilsner##37488
Drink January's Brew |achieve 1183/1
step
collect Izzard's Ever Flavor##37489 |or
|tip This brew will be in your mailbox for the month of February.
'|complete achieved(1183,8) |or
step
use the Izzard's Ever Flavor##37489
Drink February's Brew |achieve 1183/8
step
collect Aromatic Honey Brew##37490 |or
|tip This brew will be in your mailbox for the month of March.
'|complete achieved(1183,11) |or
step
use the Aromatic Honey Brew##37490
Drink March's Brew |achieve 1183/11
step
collect Metok's Bubble Bock##37491 |or
|tip This brew will be in your mailbox for the month of April.
'|complete achieved(1183,12) |or
step
use Metok's Bubble Bock##37491
Drink April's Brew |achieve 1183/12
step
collect Springtime Stout##37492 |or
|tip This brew will be in your mailbox for the month of May.
'|complete achieved(1183,9) |or
step
use the Springtime Stout##37492
Drink May's Brew |achieve 1183/9
step
collect Blackrock Lager##37493 |or
|tip This brew will be in your mailbox for the month of June.
'|complete achieved(1183,6) |or
step
use the Blackrock Lager##37493
Drink June's Brew |achieve 1183/6
step
collect Stranglethorn Brew##37494 |or
|tip This brew will be in your mailbox for the month of July.
'|complete achieved(1183,10) |or
step
use the Stranglethorn Brew##37494
Drink July's Brew |achieve 1183/10
step
collect Draenic Pale Ale##37495 |or
|tip This brew will be in your mailbox for the month of August.
'|complete achieved(1183,7) |or
step
use the Draenic Pale Ale##37495
Drink August's Brew |achieve 1183/7
step
Earn the "Brew of the Year" Achievement |achieve 1183
|tip This achievment requires you to drink a new brew every month for a year.
]])
QuestCore:RegisterGuide("Events Guides\\Brewfest\\Achievements\\Direbrewfest",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return achieved(295) end,
description="Kill Coren Direbrew.",
},[[
step
talk Darna Honeybock##27584
accept Save Brewfest!##12318 |goto Dun Morogh/0 52.96,51.01 |or
|tip This quest is elite and will require a group.
step
talk Brewfest Spy##26719
|tip Queue for Coren Direbrew.
turnin Save Brewfest!##12318 |goto Blackrock Depths/1 0.00,0.00
accept Insult Coren Direbrew##12062 |goto Blackrock Depths/1 0.00,0.00 |or
'|complete achieved(295) |or
step
talk Coren Direbrew##23872
|tip Coren Direbrew is located in the bar.
|tip He will attack you after turnin this quest in.
turnin Insult Coren Direbrew##12062 |or
'|complete achieved(295) |or
step
kill Coren Direbrew##23872
Earn the "Direbrewfest" Achievement |achieve 295
]])
QuestCore:RegisterGuide("Events Guides\\Brewfest\\Achievements\\Disturbing the Peace",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return achieved(293) end,
description="While wearing 3 pieces of Brewfest clothing, get completely smashed and dance in Dalaran.",
},[[
step
collect 350 Brewfest Prize Token##37829 |or
|tip These are earned by doing Brewfest Dailies.
Load the "Brewfest Dailies" Guide |confirm |loadguide "Events Guides\\Brewfest\\Brewfest Dailies"
|tip Click the line above to load the guide.
'|complete achieved(293) |or
step
talk Belbi Quikswitch##23710
collect Blue Brewfest Hat##33968 |goto Dun Morogh/0 56.39,37.84 |or
collect Purple Brewfest Hat##33969 |goto Dun Morogh/0 56.39,37.84 |or
collect Green Brewfest Hat##33967 |goto Dun Morogh/0 56.39,37.84 |or
collect Brown Brewfest Hat##33864 |goto Dun Morogh/0 56.39,37.84 |or
|tip Purchase one of these from the vendor.
|tip It will require 50 Brewfest Coins.
'|complete achieved(293) |or
step
talk Belbi Quikswitch##23710
collect Brewfest Dress##33863 |goto Dun Morogh/0 56.39,37.84 |or
collect Brewfest Regalia##33862 |goto Dun Morogh/0 56.39,37.84 |or
|tip Purchase one of these from the vendor.
|tip It will require 200 Brewfest Coins.
'|complete achieved(293) |or
step
talk Belbi Quikswitch##23710
collect Brewfest Boots##33868 |goto Dun Morogh/0 56.39,37.84 |or
collect Brewfest Slippers##33966 |goto Dun Morogh/0 56.39,37.84 |or
|tip Purchase one of these from the vendor.
|tip It will require 100 Brewfest Coins.
'|complete achieved(293) |or
step
talk Arille Azuregaze##29049
|tip Inside the building.
buy 5 Caraway Burnwine##40042 |goto Dalaran/1 48.54,37.44 |or
'|complete achieved(293) |or
step
Equip the Blue Brewfest Hat |equipped Blue Brewfest Hat##33968 |goto Dalaran/1 50.58,48.36 |only if default |or
Equip the Purple Brewfest Hat |equipped Purple Brewfest Hat##33969 |goto Dalaran/1 50.58,48.36 |only if itemcount(33969) >= 1 |or
Equip the Green Brewfest Hat |equipped Green Brewfest Hat##33967 |goto Dalaran/1 50.58,48.36 |only if itemcount(33967) >= 1 |or
Equip the Brown Brewfest Hat |equipped Brown Brewfest Hat##33864 |goto Dalaran/1 50.58,48.36 |only if itemcount(33864) >= 1 |or
'|complete achieved(293) |or
step
Equip the Brewfest Dress |equipped Brewfest Dress##33863 |goto Dalaran/1 50.58,48.36 |only if default |or
Equip the Brewfest Regalia |equipped Brewfest Regalia##33862 |goto Dalaran/1 50.58,48.36 |only if itemcount(33862) >= 1 |or
'|complete achieved(293) |or
step
Equip the Brewfest Boots |equipped Brewfest Boots##33868 |goto Dalaran/1 50.58,48.36 |only if default |or
Equip the Brewfest Slippers |equipped Brewfest Slippers##33966 |goto Dalaran/1 50.58,48.36 |only if itemcount(33966) >= 1 |or
'|complete achieved(293) |or
step
use the Caraway Burnwine##40042
|tip Use them all until you are "Completely Smashed."
Dance in Dalaran |script DoEmote("Dance")
Earn the "Disturbing the Peace" Achievement |achieve 293 |goto Dalaran/1 50.58,48.36
]])
QuestCore:RegisterGuide("Events Guides\\Brewfest\\Achievements\\Does Your Wolpertinger Linger?",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return achieved(1936) end,
description="Obtain a Wolpertinger pet.",
},[[
step
talk Belbi Quikswitch##23710
buy Wolpertinger's Tankard##32233 |goto Dun Morogh/0 56.39,37.84 |or
'|complete achieved(1936) |or
step
use the Wolpertinger's Tankard##32233
Earn the "Does Your Wopertinger Linger?" Achievement |achieve 1936
]])
QuestCore:RegisterGuide("Events Guides\\Brewfest\\Achievements\\Down With The Dark Iron",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return achieved(1186) end,
description="Defend the Brewfest camp from the Dark Iron attack and complete the quest, \"This One Time, When I Was Drunk...\"",
},[[
step
Wait for the Dark Iron Defense event to start
|tip This even occurs every 30 minutes.
|tip You have to defend the three kegs at these locations in order to complete it.
click Complimentary Brewfest Sampler##186189+ |goto Dun Morogh/0 55.94,37.33
click Complimentary Brewfest Sampler##186189+ |goto Dun Morogh/0 55.94,37.33
use the Alcohol-Free Brewfest Sampler##33096
|tip Use it to throw it at the Dark Iron Dwarves and the Mole Machines around this area.
click Dark Iron Mole Machine Wreckage##189989
|tip It looks like a big metal gear laying on ground in the middle of the festival.
|tip It appears after the Dark Iron dwarves attack the Brewfest festival, so you may have to wait for it to appear.
accept This One Time, When I Was Drunk...##12020 |goto Dun Morogh/0 48.69,39.13 |or
'|complete achieved(1186) |or
step
talk Boxey Boltspinner##27215
turnin This One Time, When I Was Drunk...##12020 |goto Dun Morogh/0 54.67,38.09 |or
'|complete achieved(1186) |or
step
Earn the "Down With The Dark Iron" Achievement |achieve 1186
]])
QuestCore:RegisterGuide("Events Guides\\Brewfest\\Achievements\\Drunken Stupor",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return achieved(1260) end,
description="Fall 65 yards without dying while completely smashed during the Brewfest Holiday.",
},[[
step
talk Kylene##19186
|tip Walking around the building.
buy 5 Flagon of Dwarven Honeymead##2594 |goto Shattrath City/0 75.11,32.27 |or
'|complete achieved(1260) |or
step
use Flagon of Dwarven Honeymead##2594
|tip Use them until you are "Completely Smashed" before jumping.
Earn the "Drunken Stupor" Achievement |achieve 1260 |goto Shattrath City/0 50.22,62.42
|tip You must fall at least 65 yards and not die to receive this achievement.
|tip From this point, run off the edge and miss the platform below, landing on the ground.
|tip You must do this while "Completely Smashed" drunk.
|tip Paladin "Divine Shield" and Mage "Ice Block" allow you to earn this without risk of fall damage.
]])
QuestCore:RegisterGuide("Events Guides\\Brewfest\\Achievements\\Have Keg, Will Travel",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return achieved(303) end,
description="Obtain a Brewfest mount, or transform yours into one using Brewfest Hops.",
},[[
step
collect 2 Brewfest Prize Token##37829 |or
|tip These are earned by doing Brewfest Dailies.
Load the "Brewfest Dailies" Guide |confirm |loadguide "Events Guides\\Brewfest\\Brewfest Dailies"
|tip Click the line above to load the guide.
'|complete achieved(303) |or
step
Reach Level 20 |ding 20
|tip You must be level 20 to complete this achievement.
|tip Use the leveling guides to accomplish this.
step
talk Belbi Quikswitch##23710
buy Fresh Brewfest Hops##37750 |goto Dun Morogh/0 56.39,37.84 |or
|tip You will need 2 Brewfest Prize Tokens to purchase this.
'|complete achieved(303) |or
step
use the Fresh Brewfest Hops##37750
|tip Mount up and use the hops to make your mount festive.
Earn the "Have Keg, Will Travel" Achievement |achieve 303
]])
QuestCore:RegisterGuide("Events Guides\\Brewfest\\Achievements\\Strange Brew",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return achieved(1184) end,
description="Drink the following Brewfest beers:\n\nThunderbrew Stout\nThunderbrew Ale\nThunder 45\n"..
"Barleybrew Dark\nBarleybrew Light\nBarleybrew Clear\nOgre Mead\nMudder's Milk\nGordok Grog",
},[[
step
talk Thunderbrew Apprentice##23510
buy Thunderbrew Stout##33033 |goto Dun Morogh/0 56.59,37.00 |achieve 1184
buy Thunderbrew Ale##33032 |goto Dun Morogh/0 56.59,37.00 |achieve 1184
buy Thunder 45##33031 |goto Dun Morogh/0 56.59,37.00 |achieve 1184
step
talk Barleybrew Apprentice##23482
buy Barleybrew Dark##33029 |goto Dun Morogh/0 56.06,38.09 |achieve 1184
buy Barleybrew Light##33028 |goto Dun Morogh/0 56.06,38.09 |achieve 1184
buy Barleybrew Clear##33030 |goto Dun Morogh/0 56.06,38.09 |achieve 1184
step
talk Gordok Brew Apprentice##23511
buy Ogre Mead##33035 |goto Dun Morogh/0 55.47,36.68 |achieve 1184
buy Mudder's Milk##33036 |goto Dun Morogh/0 55.47,36.68 |achieve 1184
buy Gordok Grog##33034 |goto Dun Morogh/0 55.47,36.68 |achieve 1184
step
use the Thunderbrew Stout##33033
Drink Some Thunderbrew Stout |achieve 1184/2
step
use the Thunderbrew Ale##33032
Drink Some Thunderbrew Ale |achieve 1184/4
step
use the Thunder 45##33031
Drink Some Thunder 45 |achieve 1184/9
step
use the Barleybrew Dark##33029
Drink Some Barleybrew Dark |achieve 1184/1
step
use the Barleybrew Light##33028
Drink Some Barleybrew Light |achieve 1184/8
step
use the Barleybrew Clear##33030
Drink Some Barleybrew Clear |achieve 1184/3
step
use the Ogre Mead##33035
Drink Some Ogre Mead |achieve 1184/5
step
use the Mudder's Milk##33036
Drink Some Mudder's Milk |achieve 1184/6
step
use the Gordok Grog##33034
Drink Some Gordok Grog |achieve 1184/7
step
Earn the "Strange Brew" Achievement |achieve 1184
]])
QuestCore:RegisterGuide("Events Guides\\Brewfest\\Achievements\\The Brewfest Diet",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return achieved(1185) end,
description="Eat all 8 of the following Brewfest foods:\n\nSucculent Sausage\nDried Sausage\nPickled Sausage\n"..
"Savory Sausage\nSpiced Onion Cheese\nSpicy Smoked Sausage\nThe Essential Brewfest Pretzel\nThe Golden Link",
},[[
step
talk Keiran Donoghue##23481
buy Succulent Sausage##34064 |goto Dun Morogh/0 56.02,36.39 |achieve 1185
buy Dried Sausage##34063 |goto Dun Morogh/0 56.02,36.39 |achieve 1185
buy Pickled Sausage##33024 |goto Dun Morogh/0 56.02,36.39 |achieve 1185
buy Savory Sausage##33023 |goto Dun Morogh/0 56.02,36.39 |achieve 1185
buy Spicy Smoked Sausage##33025 |goto Dun Morogh/0 56.02,36.39 |achieve 1185
buy The Golden Link##33026 |goto Dun Morogh/0 56.02,36.39 |achieve 1185
step
talk Anne Summers##23521
buy Spiced Onion Cheese##34065 |goto Dun Morogh/0 56.46,37.71 |achieve 1185
step
talk Arlen Lochlan##23522
buy The Essential Brewfest Pretzel##33043 |goto Dun Morogh/0 55.57,38.21 |achieve 1185
step
use The Essential Brewfest Pretzel##33043
Eat The Essential Brewfest Pretzel |achieve 1185/2
step
use the Spiced Onion Cheese##34065
Eat Some Spiced Onion Cheese |achieve 1185/4
step
use the Dried Sausage##34063
Eat Some Dried Sausage |achieve 1185/7
step
use the Succulent Sausage##34064
Eat Some Succulent Sausage |achieve 1185/8
step
use the Savory Sausage##33023
Eat Some Savory Sausage |achieve 1185/5
step
use the Pickled Sausage##33024
Eat Some Pickled Sausage |achieve 1185/6
step
use the Spicy Smoked Sausage##33025
Eat Some Spicy Smoked Sausage |achieve 1185/3
step
use the The Golden Link##33026
Eat The Golden Link |achieve 1185/1
step
Earn "The Brewfest Diet" Achievement |achieve 1185
]])
QuestCore:RegisterGuide("Events Guides\\Children's Week\\Children's Week Stormwind Quests",{
expansion="mists",
mopready=true,
description="This guide section will walk you through completing the Stormwind questline for the Children's Week event.",
condition_suggested=function() return isevent("Children's Week") end,
condition_end=function() return completedq(171) end,
startlevel=10,
},[[
step
talk Orphan Matron Nightingale##14450
accept Children's Week##1468 |goto Stormwind City/0 56.31,54.00
step
use the Human Orphan Whistle##18598
_Next to you:_
talk Human Orphan##14305
turnin Children's Week##1468
accept Cruisin' the Chasm##29093
accept The Biggest Diamond Ever!##29106
accept Malfurion Has Returned!##29107
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
|tip This quest is currently bugged and not properly completing.
clicknpc Rental Chopper##52189
Jump in the Chopper |invehicle |q 29093 |goto Westfall/0 57.76,53.04
step
Watch the dialogue
|tip This quest is currently bugged and not properly completing.
Take a Chopper Tour of the Raging Chasm |q 29093/1
step
Run down the ramp |goto Ironforge/0 44.16,51.94 < 5 |walk
Run up the stairs |goto Ironforge/0 40.20,47.07 < 5 |walk
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
Visit King Magni in Old Ironforge |q 29106/1 |goto Ironforge/0 33.27,47.81
step
use the Human Orphan Whistle##18598
Visit Malfurion Stormrage with your Orphan |q 29107/1 |goto Darnassus/0 43.14,77.91
|tip Upstairs inside the Temple of the Moon.
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
_Next to you:_
talk Human Orphan##14305
turnin The Biggest Diamond Ever!##29106
turnin Cruisin' the Chasm##29093
turnin Malfurion Has Returned!##29107
accept Let's Go Fly a Kite##29117
accept You Scream, I Scream...##29119
step
talk Craggle Wobbletop##52358
|tip He walks around the Trade District canal.
buy 1 Dragon Kite 2-Pack##68890 |q 29117 |goto Stormwind City/0 57.33,65.64
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
use the Dragon Kite 2-Pack##68890
Fly Dragon Kites with Your Orphan |q 29117/1
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
_Next to you:_
talk Human Orphan##14305
turnin Let's Go Fly a Kite##29117
step
talk Hans Coldhearth##52421
buy 1 Cone of Cold##69027 |q 29119 |goto Stormwind City/0 48.97,89.74
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
use Cone of Cold##69027
Take Your Orphan Out for Ice Cream |q 29119/1
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
_Next to you:_
talk Human Orphan##14305
turnin You Scream, I Scream...##29119
accept A Warden of the Alliance##171
step
talk Craggle Wobbletop##52358
|tip He walks around the Trade District canal.
buy 1 Foam Sword Rack##69057 |q 171/1 |goto Stormwind City/0 57.33,65.64
step
talk Orphan Matron Nightingale##51988
turnin A Warden of the Alliance##171 |goto Stormwind City/0 56.31,54.00
]])
QuestCore:RegisterGuide("Events Guides\\Children's Week\\Children's Week Shattrath Quests",{
expansion="mists",
mopready=true,
description="This guide section will walk you through completing the Shattrath questline for the Children's Week event.",
condition_suggested=function() return isevent("Children's Week") end,
condition_end=function() return completedq(10966) end,
startlevel=10,
},[[
step
talk Orphan Matron Mercy##22819
accept Children's Week##10943 |goto Shattrath City/0 75.08,47.90
step
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan.
_Next to you:_
talk Draenei Orphan##22818
turnin Children's Week##10943 |goto Shattrath City/0 75.08,47.90
accept Auchindoun and the Ring of Observance##10950 |goto Shattrath City/0 75.08,47.90
accept A Trip to the Dark Portal##10952 |goto Shattrath City/0 75.08,47.90
accept Jheel is at Aeris Landing!##10954 |goto Shattrath City/0 75.08,47.90
step
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan, if needed.
Take Dornaa to Aeris Landing |q 10954/1 |goto Nagrand/0 31.47,57.49
step
talk Jheel##22836
turnin Jheel is at Aeris Landing!##10954 |goto Nagrand/0 31.49,57.61
step
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan, if needed.
Take Dornaa to the Ring of Observance |q 10950/1 |goto Terokkar Forest/0 39.90,64.69
step
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan, if needed.
_Next to you:_
talk Draenei Orphan##22818
turnin Auchindoun and the Ring of Observance##10950 |goto Terokkar Forest/0 39.90,64.69
step
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan, if needed.
Take Dornaa to the Dark Portal |q 10952/1 |goto Hellfire Peninsula/0 88.68,50.22
step
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan, if needed.
_Next to you:_
talk Draenei Orphan##22818
turnin A Trip to the Dark Portal##10952 |goto Hellfire Peninsula/0 88.68,50.22
accept The Seat of the Naaru##10956 |goto Hellfire Peninsula/0 88.68,50.22
accept Time to Visit the Caverns##10962 |goto Hellfire Peninsula/0 88.68,50.22
step
Enter the cave |goto Tanaris/0 65.09,49.93 < 15 |walk
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan, if needed.
Take Dornaa to the Caverns of Time |q 10962/2 |goto Tanaris/0 59.92,57.11
|tip Down inside caverns of time in front of Zaladormu.
step
talk Alurmi##21643
buy 1 Toy Dragon##31951 |q 10962/1 |goto Tanaris/0 63.00,57.31
step
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan, if needed.
_Next to you:_
talk Draenei Orphan##22818
turnin Time to Visit the Caverns##10962
step
Follow the path |goto The Exodar/0 63.31,41.65 < 10 |only if walking
Run down the ramp |goto The Exodar/0 59.68,33.99 < 10 |only if walking
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan, if needed.
Take Dornaa to the Seat of the Naaru |q 10956/1 |goto The Exodar/0 57.59,41.21
step
talk O'ros##17538
turnin The Seat of the Naaru##10956
accept Call on the Farseer##10968 |goto The Exodar/0 57.94,41.42
step
Run up the ramp |goto The Exodar/0 54.69,36.29 < 10 |only if walking
Run up the ramp |goto The Exodar/0 26.97,29.79 < 7 |only if walking
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan, if needed.
Take Dornaa to Farseer Nobundo |q 10968/1 |goto The Exodar/0 31.09,28.11
step
talk Farseer Nobundo##17204
|tip He walks around this area.
turnin Call on the Farseer##10968 |goto The Exodar/0 30.82,30.80
step
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan, if needed.
_Next to you:_
talk Draenei Orphan##22818
accept Back to the Orphanage##10966
step
talk Orphan Matron Mercy##22819
turnin Back to the Orphanage##10966 |goto Shattrath City/0 75.08,47.90
]])
QuestCore:RegisterGuide("Events Guides\\Children's Week\\Children's Week Dalaran Quests",{
expansion="mists",
mopready=true,
description="This guide section will walk you through completing the Dalaran questline for the Children's Week event.",
condition_suggested=function() return isevent("Children's Week") end,
condition_end=function() return completedq(28880) or completedq(13960) or completedq(13959) or completedq(28879) end,
startlevel=10,
},[[
step
talk Orphan Matron Aria##34365
accept Little Orphan Roo Of The Oracles##13926 |goto Dalaran/1 49.36,63.26 |noautoaccept |or
accept Little Orphan Kekek Of The Wolvar##13927 |goto Dalaran/1 49.36,63.26 |noautoaccept |or
|tip You can only complete one of these quests.
|tip The one you choose will determine what questline you complete.
|tip Choose Oracles or Wolvar.
|noautoaccept
step
talk Orphan Matron Aria##34365
Choose _<Ask about the orphans.>_
Speak to Orphan Matron Aria |q 13926/1 |goto Dalaran/1 49.36,63.26
|only if haveq(13926) or completedq(13926)
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan.
_Next to you:_
talk Oracle Orphan##33533
turnin Little Orphan Roo Of The Oracles##13926 |goto Dalaran/1 49.36,63.26
|only if haveq(13926) or completedq(13926)
step
talk Orphan Matron Aria##34365
Choose _<Ask about the orphans.>_
Speak to Orphan Matron Aria |q 13927/1 |goto Dalaran/1 49.35,63.25
|only if haveq(13927) or completedq(13927)
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan.
_Next to you:_
talk Wolvar Orphan##33532
turnin Little Orphan Kekek Of The Wolvar##13927 |goto Dalaran/1 49.35,63.25
|only if haveq(13927) or completedq(13927)
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan.
_Next to you:_
talk Oracle Orphan##33533
accept The Biggest Tree Ever!##13929 |goto Dalaran/1 49.36,63.26
accept The Bronze Dragonshrine##13933 |goto Dalaran/1 49.36,63.26
accept Playmates!##13950 |goto Dalaran/1 49.36,63.26
|only if completedq(13926)
step
Follow the path |goto Grizzly Hills/0 50.39,46.40 < 10 |only if walking
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
|tip Wait a moment for your orphan to speak.
Take Roo to Visit Grizzlemaw |q 13929/1 |goto Grizzly Hills/0 50.68,44.09
|only if completedq(13926)
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
_Next to you:_
talk Oracle Orphan##33533
turnin The Biggest Tree Ever!##13929 |goto Grizzly Hills/0 50.68,44.09
|only if completedq(13926)
step
Follow the path |goto Dragonblight/0 69.66,46.14 < 10 |only if walking
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
Take Roo to Visit the Bronze Dragonshrine |q 13933/1 |goto Dragonblight/0 71.11,41.10
|only if completedq(13926)
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
_Next to you:_
talk Oracle Orphan##33533
turnin The Bronze Dragonshrine##13933 |goto Dragonblight/0 71.11,41.10
|only if completedq(13926)
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
Take Roo to Visit Winterfin Retreat |q 13950/1 |goto Borean Tundra/0 43.55,13.65
|only if completedq(13926)
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
_Next to you:_
talk Oracle Orphan##33533
turnin Playmates!##13950 |goto Borean Tundra/0 43.55,13.65
|only if completedq(13926)
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
_Next to you:_
talk Oracle Orphan##33533
accept The Dragon Queen##13954 |goto Borean Tundra/0 43.55,13.65
accept Meeting a Great One##13956 |goto Borean Tundra/0 43.55,13.65
|only if completedq(13926)
step
Step into the light |goto Sholazar Basin/0 40.35,83.11
|tip You might need to actually land on the platform to teleport.
Teleport to Un'Goro Crater |goto Un'Goro Crater/0 |c |noway
|only if completedq(13926)
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
Take Roo to Visit The Etymidian |q 13956/1 |goto Un'Goro Crater/0 47.60,9.17
|only if completedq(13926)
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
_Next to you:_
talk Oracle Orphan##33533
turnin Meeting a Great One##13956 |goto Un'Goro Crater/0 47.60,9.17
|only if completedq(13926)
step
Step into the light |goto Un'Goro Crater/0 50.53,7.75
|tip You might need to actually land on the platform to teleport.
Teleport to Sholazar Basin |goto Sholazar Basin/0 |c |noway
|only if completedq(13926)
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
|tip She is at the top of Wyrmrest Temple.
Take Roo to Visit Alexstrasza the Life-Binder |q 13954/1 |goto Dragonblight/0 59.84,54.59
|only if completedq(13926)
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
_Next to you:_
talk Oracle Orphan##33533
turnin The Dragon Queen##13954 |goto Dragonblight/0 59.84,54.59
|only if completedq(13926)
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
_Next to you:_
talk Oracle Orphan##33533
accept A Trip To The Wonderworks##13937 |goto Dragonblight/0 59.84,54.59
|only if completedq(13926)
step
talk Jepetto Joybuzz##29478
|tip Inside the building.
buy 1 Small Paper Zeppelin##46693 |q 13937 |goto Dalaran/1 44.82,45.63
|only if completedq(13926)
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
use the Small Paper Zeppelin##46693
|tip Use it on your Oracle Orphan.
Throw the Small Paper Zeppelin to Roo |q 13937/1 |goto Dalaran/1 44.82,45.63
|only if completedq(13926)
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
_Next to you:_
talk Oracle Orphan##33533
turnin A Trip To The Wonderworks##13937 |goto Dalaran/1 44.82,45.63
|only if completedq(13926)
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
_Next to you:_
talk Oracle Orphan##33533
accept Back To The Orphanage##28879 |goto Dalaran/1 44.82,45.63 |or
accept Back To The Orphanage##13959 |goto Dalaran/1 44.82,45.63 |or
|tip You will only be able to accept one quest.
|only if completedq(13926)
step
talk Orphan Matron Aria##34365
turnin Back To The Orphanage##28879 |goto Dalaran/1 49.35,63.25 |only if haveq(28879) or completedq(28879)
turnin Back To The Orphanage##13959 |goto Dalaran/1 49.35,63.25 |only if haveq(13959) or completedq(13959)
|only if completedq(13926)
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan.
_Next to you:_
talk Wolvar Orphan##33532
accept Home Of The Bear-Men##13930 |goto Dalaran/1 49.35,63.25
accept The Bronze Dragonshrine##13934 |goto Dalaran/1 49.35,63.25
accept Playmates!##13951 |goto Dalaran/1 49.35,63.25
|only if completedq(13927)
step
Follow the path |goto Grizzly Hills/0 50.39,46.40 < 10 |only if walking
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
|tip Wait a moment for your orphan to speak.
Take Kekek to Visit Grizzlemaw |q 13930/1 |goto Grizzly Hills/0 50.68,44.09
|only if completedq(13927)
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
_Next to you:_
talk Wolvar Orphan##33532
turnin Home Of The Bear-Men##13930 |goto Grizzly Hills/0 50.68,44.09
|only if completedq(13927)
step
Follow the path |goto Dragonblight/0 69.66,46.14 < 10 |only if walking
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
Take Kekek to Visit the Bronze Dragonshrine |q 13934/1 |goto Dragonblight/0 71.11,41.10
|only if completedq(13927)
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
_Next to you:_
talk Wolvar Orphan##33532
turnin The Bronze Dragonshrine##13934 |goto Dragonblight/0 71.11,41.10
|only if completedq(13927)
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
Take Kekek to Visit Snowfall Glade |q 13951/1 |goto Dragonblight/0 45.28,63.29
|only if completedq(13927)
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
_Next to you:_
talk Wolvar Orphan##33532
turnin Playmates!##13951 |goto Dragonblight/0 45.28,63.29
|only if completedq(13927)
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
_Next to you:_
talk Wolvar Orphan##33532
accept The Dragon Queen##13955 |goto Dragonblight/0 45.28,63.29
accept The Mighty Hemet Nesingwary##13957 |goto Dragonblight/0 45.28,63.29
|only if completedq(13927)
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
|tip She is at the top of Wyrmrest Temple.
Take Kekek to Visit Alexstrasza the Life-Binder |q 13955/1 |goto Dragonblight/0 59.84,54.59
|only if completedq(13927)
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
_Next to you:_
talk Wolvar Orphan##33532
turnin The Dragon Queen##13955 |goto Dragonblight/0 59.84,54.59
|only if completedq(13927)
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
Take Kekek to Visit Hemet Nesingwary |q 13957/1 |goto Sholazar Basin/0 27.13,59.23
|only if completedq(13927)
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
_Next to you:_
talk Wolvar Orphan##33532
turnin The Mighty Hemet Nesingwary##13957 |goto Sholazar Basin/0 27.13,59.23
|only if completedq(13927)
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
_Next to you:_
talk Wolvar Orphan##33532
accept A Visit To The Wonderworks##13938 |goto Sholazar Basin/0 27.13,59.23
|only if completedq(13927)
step
Run up the stairs |goto Dalaran/1 41.92,47.99 < 5 |only if walking
Enter the building |goto Dalaran/1 43.27,45.30 < 5 |walk
talk Jepetto Joybuzz##29478
|tip Inside the building.
buy 1 Small Paper Zeppelin##46693 |q 13938 |goto Dalaran/1 44.82,45.63
|only if completedq(13927)
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
use Small Paper Zeppelin##46693
|tip Use it on your Wolvar Orphan.
Throw the Small Paper Zeppelin to Kekek |q 13938/1 |goto Dalaran/1 44.82,45.63
|only if completedq(13927)
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
_Next to you:_
talk Wolvar Orphan##33532
turnin A Visit To The Wonderworks##13938 |goto Dalaran/1 44.82,45.63
|only if completedq(13927)
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
_Next to you:_
talk Wolvar Orphan##33532
accept Back To The Orphanage##28880 |goto Dalaran/1 44.82,45.63 |or
accept Back To The Orphanage##13960 |goto Dalaran/1 44.82,45.63 |or
|tip You will only be able to accept one quest.
|only if completedq(13927)
step
Leave the building |goto Dalaran/1 43.17,45.17 < 3 |walk
talk Orphan Matron Aria##34365
turnin Back To The Orphanage##28880 |goto Dalaran/1 49.35,63.25 |only if haveq(28880) or completedq(28880)
turnin Back To The Orphanage##13960 |goto Dalaran/1 49.35,63.25 |only if haveq(13960) or completedq(13960)
|only if completedq(13927)
]])
QuestCore:RegisterGuide("Events Guides\\Children's Week\\Achievements\\Aw, Isn't It Cute?",{
expansion="mists",
mopready=true,
description="Obtain one of the Children's Week reward pets through questing.",
condition_suggested=function() return isevent("Children's Week") end,
achieveid={1792},
patch='30009',
startlevel=10,
},[[
leechsteps "Events Guides\\Children's Week\\Children's Week Shattrath Quests" 1-17
step
_Congratulations!_
You Earned the "Aw, Isn't It Cute?" Achievement.
]])
QuestCore:RegisterGuide("Events Guides\\Children's Week\\Achievements\\Bad Example",{
expansion="mists",
mopready=true,
description="Eat the following sweets while your orphan is watching:\n\nTigule's Strawberry Ice Cream\n"..
"Tasty Cupcake\nRed Velvet Cupcake\nDelicious Chocolate Cake\nLovely Cake Slice\nDalaran Brownie\nDalran Doughnut",
condition_suggested=function() return isevent("Children's Week") end,
achieveid={1788},
patch='30002',
startlevel=10,
},[[
step
talk Orphan Matron Nightingale##14450
Select _"Children's Week is not yet over...may I have another Orphan Whistle?"_
collect 1 Human Orphan Whistle##18598 |achieve 1793 |goto Stormwind City/0 56.32,53.99
step
talk Emmithue Smails##14481
buy 1 Tigule's Strawberry Ice Cream##7228 |achieve 1788 |goto Stormwind City/0 61.30,75.02
step
talk Auctioneer Fitch##8719
|tip Purchase the follow items from the Auction House, or use your Cooking ability to create them.
collect 1 Tasty Cupcake##43490 |achieve 1788 |goto Stormwind City/0 61.16,70.78
collect 1 Delicious Chocolate Cake##33924 |achieve 1788 |goto Stormwind City/0 61.16,70.78
step
talk Aimee##29548
buy 1 Red Velvet Cupcake##42429 |achieve 1788 |goto Dalaran/1 51.17,29.07
buy 1 Lovely Cake##42438 |achieve 1788 |goto Dalaran/1 51.17,29.07
buy 1 Dalaran Doughnut##42430 |achieve 1788 |goto Dalaran/1 51.17,29.07
buy 1 Dalaran Brownie##42431 |achieve 1788 |goto Dalaran/1 51.17,29.07
step
use the Lovely Cake##42438
|tip Use it to place a cake on the ground.
click Lovely Cake
collect 1 Lovely Cake Slice##42434 |achieve 1788
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
use Tigule's Strawberry Ice Cream##7228
Eat Tigule's Strawberry Ice Cream |achieve 1788/1
step
use the Tasty Cupcake##43490
Eat Tasty Cupcake |achieve 1788/2
step
use the Red Velvet Cupcake##42429
Eat Red Velvet Cupcake |achieve 1788/3
step
use the Delicious Chocolate Cake##33924
Eat Delicious Chocolate Cake |achieve 1788/4
step
use the Lovely Cake Slice##42434
Eat Lovely Cake Slice |achieve 1788/5
step
use the Dalaran Brownie##42431
Eat Dalaran Brownie |achieve 1788/6
step
use the Dalaran Doughnut##42430
Eat Dalaran Doughnut |achieve 1788/7
step
|achieve 1788
step
_Congratulations!_
You Earned the "Bad Example" Achievement.
]])
QuestCore:RegisterGuide("Events Guides\\Children's Week\\Achievements\\Daily Chores",{
expansion="mists",
mopready=true,
description="Complete five daily quests with your orphan out.",
condition_suggested=function() return isevent("Children's Week") end,
achieveid={1789},
patch='30003',
startlevel=10,
},[[
step
talk Orphan Matron Nightingale##14450
Select _"Children's Week is not yet over...may I have another Orphan Whistle?"_
collect 1 Human Orphan Whistle##18598 |achieve 1793 |goto Stormwind City/0 56.32,53.99
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
Complete any 5 daily quests of your choice:
|tip World Quests do not count for this achievement.
|tip Use the various daily quest guides to complete this.
|tip Make sure your orphan is standing next to you when turning in the daily quests, or you won't get credit for this achievement.
|achieve 1789
step
_Congratulations!_
You Earned the "Daily Chores" Achievement.
]])
QuestCore:RegisterGuide("Events Guides\\Children's Week\\Achievements\\Home Alone",{
expansion="mists",
mopready=true,
description="Use your Hearthstone while your orphan is with you.",
condition_suggested=function() return isevent("Children's Week") end,
achieveid={1791},
patch='30002',
startlevel=10,
},[[
step
talk Orphan Matron Nightingale##14450
Select _"Children's Week is not yet over...may I have another Orphan Whistle?"_
collect 1 Human Orphan Whistle##18598 |achieve 1793 |goto Stormwind City/0 56.32,53.99
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
use Hearthstone##6948
|tip Use it while your Orphan is standing next to you.
|achieve 1791
step
_Congratulations!_
You Earned the "Home Alone" Achievement.
]])
QuestCore:RegisterGuide("Events Guides\\Children's Week\\Achievements\\School of Hard Knocks",{
expansion="mists",
mopready=true,
description="Take your orphan into the battlegrounds and complete the feats listed below:\n\nCapture the flag "..
"in Eye of the Storm\nAssault a flag in Arathi Basin\nAssault a tower in Alterac Valley\nReturn a "..
"fallen flag in Warsong Gulch",
condition_suggested=function() return isevent("Children's Week") end,
achieveid={1786},
patch='30002',
startlevel=10,
},[[
step
talk Orphan Matron Nightingale##14450
Select _"Children's Week is not yet over...may I have another Orphan Whistle?"_
collect 1 Human Orphan Whistle##18598 |achieve 1793 |goto Stormwind City/0 56.32,53.99
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
|tip Enter the Eye of the Storm battleground and capture the flag.
Capture the flag in Eye of the Storm |achieve 1786/1
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
|tip Enter the Alterac Valley battleground and assault a tower.
Assault a Tower in Alterac Valley |achieve 1786/2
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
|tip Enter the Arathi Basin battleground and assault a flag.
Assault a Flag in Arathi Basin |achieve 1786/3
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
|tip Enter the Warsong Gulch battleground and return a fallen flag.
Return a fallen Flag in Warsong Gulch |achieve 1786/4
step
_Congratulations!_
You Earned the "School of Hard Knocks" Achievement.
]])
QuestCore:RegisterGuide("Events Guides\\Children's Week\\Achievements\\Veteran Nanny",{
expansion="mists",
mopready=true,
description="Acquire Egbert's Egg, Sleepy Willy, and Elekk Training Collar on a single character.",
condition_suggested=function() return isevent("Children's Week") end,
achieveid={275},
patch='30001',
startlevel=10,
},[[
step
This achievement takes three years to complete
|tip You must do the following questline once each year on the same character.
|tip Ensure that you only choose Egbert's Egg, Sleepy Willy, and the Elekk Training Collar as rewards.
|confirm
leechsteps "Events Guides\\Children's Week\\Children's Week Shattrath Quests" 1-17
step
_Congratulations!_
You Earned the "Veteran Nanny" Achievement.
]])
QuestCore:RegisterGuide("Events Guides\\Darkmoon Faire\\Darkmoon Faire Quests",{
expansion="mists",
condition_suggested=function() return isevent('Darkmoon Faire') end,
description="This guide will help you navigate through the Darkmoon Faire Event",
},[[
step
You can Ride the Roller Coaster or Carousel for a Reputation and Experience Buff
|tip You can purchase a Ride Ticket Book from an NPC near either ride.
|tip Ride the either ride to gain a 10% bonus to your experience and reputation gained for 1 hour.
|tip Leaving the ride before it is finished will diminish the duration of your buff.
|tip You can also get a Darkmoon Top hat from Darkmoon Game Prizes that grants the same buff.
|tip Use these wisely as need to improve your level or faction standing.
confirm
step
talk Darkmoon Faire Mystic Mage##54334
accept The Darkmoon Faire##7905 |goto Stormwind City/0 62.26,72.96
|tip After accepting the quest, you can ask her to teleport you to the Darkmoon Faire.
step
talk Innkeeper Farley##295
|tip Inside the building.
buy 5 Moonberry Juice##1645 |goto Elwynn Forest/0 43.77,65.81 |q 29506 |future
|only if skill("Alchemy") >= 1
step
talk Tharynn Bouden##66
buy 5 Light Parchment##39354 |goto Elwynn Forest/0 41.89,67.08 |q 29515 |future
|only if skill("Inscription") >= 1
step
talk Tharynn Bouden##66
buy 1 Coarse Thread##2320 |goto Elwynn Forest/0 41.89,67.08 |q 29520 |future
buy 1 Blue Dye##6260 |goto Elwynn Forest/0 41.89,67.08 |q 29520 |future
buy 1 Red Dye##2604 |goto Elwynn Forest/0 41.89,67.08 |q 29520 |future
|only if skill("Tailoring") >= 1
step
talk Tharynn Bouden##66
buy 5 Coarse Thread##2320 |goto Elwynn Forest/0 41.89,67.08 |q 29517 |future
buy 5 Blue Dye##6260 |goto Elwynn Forest/0 41.89,67.08 |q 29517 |future
buy 10 Shiny Bauble##6529 |goto Elwynn Forest/0 41.89,67.08 |q 29517 |future
|only if skill("Leatherworking") >= 1
step
talk Tharynn Bouden##66
buy 5 Simple Flour##30817 |goto Elwynn Forest/0 41.89,67.08 |q 29509 |future
|only if skill("Cooking") >= 1
step
clicknpc Darkmoon Strider##68491
Mount the Darkmoon Strider |havebuff Darkmoon Strider##134931 |goto Darkmoon Island/0 51.64,24.67
|only if level < 20
step
talk Zina Sharpworth##55266
buy 1 Sack o' Tokens##78910 |goto Darkmoon Island/0 54.34,53.15 |q 29433 |future |or
use the Sack o' Tokens##78910
collect 20 Darkmoon Faire Game Token##71083 |goto Darkmoon Island/0 54.34,53.15 |q 7905 |or
|tip This will let you play all the games at the faire. You can skip this step if you know you need less tokens.
step
talk Gelvas Grimegate##14828
turnin The Darkmoon Faire##7905 |goto Darkmoon Island/0 47.90,64.74
step
talk Selina Dourman##10445
accept Banners, Banners Everywhere!##29520 |goto Darkmoon Island/0 55.56,55.00
|only if skill("Tailoring") >= 1
step
talk Professor Thaddeus Paleo##14847
accept Fun for the Little Ones##29507 |goto Darkmoon Island/0 51.89,60.93
|only if skill("Archaeology") >= 1
step
talk Rinling##14841
accept Rearm, Reuse, Recycle##29518 |goto Darkmoon Island/0 49.25,60.78
|only if skill("Mining") >= 1
step
talk Rinling##14841
accept Talkin' Tonks##29511 |goto Darkmoon Island/0 49.25,60.78
|only if skill("Engineering") >= 1
step
talk Rinling##14841
accept Eyes on the Prizes##29517 |goto Darkmoon Island/0 49.25,60.78
|only if skill("Leatherworking") >= 1
step
talk Stamp Thunderhorn##14845
accept Putting the Crunch in the Frog##29509 |goto Darkmoon Island/0 52.89,67.94
|only if skill("Cooking") >= 1
step
talk Stamp Thunderhorn##14845
accept Spoilin' for Salty Sea Dogs##29513 |goto Darkmoon Island/0 52.89,67.94
|only if skill("Fishing") >= 1
step
talk Sayge##14822
accept Writing the Future##29515 |goto Darkmoon Island/0 53.23,75.84
|only if skill("Inscription") >= 1
step
talk Chronos##14833
accept Tan My Hide##29519 |goto Darkmoon Island/0 54.99,70.77
|only if skill("Skinning") >= 1
step
talk Chronos##14833
accept Herbs for Healing##29514 |goto Darkmoon Island/0 54.99,70.77
|only if skill("Herbalism") >= 1
step
talk Sylannia##14844
accept A Fizzy Fusion##29506 |goto Darkmoon Island/0 50.53,69.57
|only if skill("Alchemy") >= 1
step
talk Chronos##14833
accept Keeping the Faire Sparkling##29516 |goto Darkmoon Island/0 54.99,70.77
|only if skill("Jewelcrafting") >= 1
step
talk Sayge##14822
accept Putting Trash to Good Use##29510 |goto Darkmoon Island/0 53.23,75.84
|only if skill("Enchanting") >= 1
step
talk Yebb Neblegear##14829
accept Baby Needs Two Pair of Shoes##29508 |goto Darkmoon Island/0 51.10,82.04
|only if skill("Blacksmithing") >= 1
step
use the Plump Frogs##72056
collect 5 Breaded Frog##72057 |q 29509
|only if skill("Cooking") >= 1
step
use the Breaded Frog##72057
|tip Use it five times.
Prepare #5# Crunchy Frogs |q 29509/1 |goto Darkmoon Island/0 52.70,68.10
|only if skill("Cooking") >= 1
step
cast Fishing##7620
|tip Equip a fishing pole if you have one.
collect 5 Great Sea Herring##73269 |q 29513/1 |goto Darkmoon Island/0 51.74,91.31
|only if skill("Fishing") >= 1
step
click Discarded Weapon##209283+
|tip They look like sparkling piles of rubble on the ground around this area.
collect 6 Discarded Weapon##72018 |goto Darkmoon Island/0 49.47,71.33 |q 29510
|only if skill("Enchanting") >= 1
step
use the Discarded Weapon##72018
|tip Use it six times.
collect 6 Soothsayer's Dust##71979 |q 29510/1
|only if skill("Enchanting") >= 1
step
click Tonk Scrap##209275
|tip They look like random pieces of metal on the ground around this area.
collect 6 Tonk Scrap##71968 |q 29518/1 |goto Darkmoon Island/0 49.47,71.33
|only if skill("Mining") >= 1
step
click Bit of Glass##209287+
|tip They look like small green pieces of broken glass on the ground around this area.
|tip You can find these all over the island.
collect 5 Bits of Glass##72052 |goto Darkmoon Island/0 49.47,71.33 |q 29516
|only if skill("Jewelcrafting") >= 1
step
use the Bit of Glass##72052
|tip Use it five times.
collect 5 Sparkling 'Gemstone'##72050 |q 29516/1
|only if skill("Jewelcrafting") >= 1
step
clicknpc Damaged Tonk##54504+
|tip They look like broken Tonk toys on the ground around this area.
use the Battered Wrench##72110
|tip Use it on Damaged Tonks.
Repair #5# Damaged Tonk's |q 29511/1 |goto Darkmoon Island/0 49.47,71.33
|only if skill("Engineering") >= 1
step
click Darkblossom##209284+
|tip They look like small purple flowers on the ground around this area.
|tip You can find these all over the island.
collect 6 Darkblossom##72046 |q 29514/1 |goto Darkmoon Island/0 49.47,71.33
|only if skill("Herbalism") >= 1
step
click Staked Skin##209276+
|tip They look like wooden frames with a hide stretched tight inside on the ground around this area.
|tip You can find these all over the island.
Scrape #4# Staked Skins |q 29519/1 |goto Darkmoon Island/0 49.47,71.33
|only if skill("Skinning") >= 1
step
talk Sylannia##14844
buy 5 Fizzy Faire Drink##19299 |q 29506 |goto Darkmoon Island/0 50.53,69.57
|only if skill("Alchemy") >= 1
step
use the Cocktail Shaker##72043
|tip Use it five times.
Create #5# Servings of Moonberry Fizz |q 29506/1
|only if skill("Alchemy") >= 1
step
cast Survey##80451
|tip Use this ability at Fossil Digsites across Kalimdor.
|tip You can find them in Desolace, Dustwallow Marsh, Stonetalon Mountains, Southern Barrens, Tanaris, and Un'Goro Crater.
earn 15 Fossil Fragments##393 |q 29507
|only if skill("Archaeology") >= 1
step
use the Darkmoon Banner Kit##72048
Plant a Darkmoon Banner |q 29520/1 |goto Darkmoon Island/0 48.65,72.75
|only if skill("Tailoring") >= 1
step
use the Iron Stock##71964
|tip Use it next to the Forge.
collect 4 Horseshoes##71967 |q 29508 |goto Darkmoon Island/0 55.12,71.56
|only if skill("Blacksmithing") >= 1
step
use Horseshoe##71967
Put New Horshoes On Baby |q 29508/1 |goto Darkmoon Island/0 51.30,81.80
|only if skill("Blacksmithing") >= 1
step
use the Bundle of Exotic Herbs##71971
collect Prophetic Ink##71972 |q 29515
|only if skill("Inscription") >= 1
step
use Prophetic Ink##71972
|tip Each Fortune requires 1 Light Parchment to create.
|tip Use it five times.
collect 5 Fortune##71974 |q 29515/1
|only if skill("Inscription") >= 1
step
use the Darkmoon Craftsman's Kit##71977
|tip Use it five times.
collect 5 Darkmoon Prize##71976 |q 29517/1
|only if skill("Leatherworking") >= 1
step
talk Stamp Thunderhorn##14845
turnin Putting the Crunch in the Frog##29509 |goto Darkmoon Island/0 52.89,67.94
|only if skill("Cooking") >= 1
step
talk Professor Thaddeus Paleo##14847
turnin Fun for the Little Ones##29507 |goto Darkmoon Island/0 51.89,60.93
|only if skill("Archaeology") >= 1
step
talk Stamp Thunderhorn##14845
turnin Spoilin' for Salty Sea Dogs##29513 |goto Darkmoon Island/0 52.89,67.94
|only if skill("Fishing") >= 1
step
talk Selina Dourman##10445
turnin Banners, Banners Everywhere!##29520 |goto Darkmoon Island/0 55.56,55.00
|only if skill("Tailoring") >= 1
step
talk Sayge##14822
turnin Writing the Future##29515 |goto Darkmoon Island/0 53.23,75.84
|only if skill("Inscription") >= 1
step
talk Chronos##14833
turnin Tan My Hide##29519 |goto Darkmoon Island/0 54.99,70.77
|only if skill("Skinning") >= 1
step
talk Chronos##14833
turnin Keeping the Faire Sparkling##29516 |goto Darkmoon Island/0 54.99,70.77
|only if skill("Jewelcrafting") >= 1
step
talk Rinling##14841
turnin Eyes on the Prizes##29517 |goto Darkmoon Island/0 49.25,60.78
|only if skill("Leatherworking") >= 1
step
talk Rinling##14841
turnin Talkin' Tonks##29511 |goto Darkmoon Island/0 49.25,60.78
|only if skill("Engineering") >= 1
step
talk Chronos##14833
turnin Herbs for Healing##29514 |goto Darkmoon Island/0 54.99,70.77
|only if skill("Herbalism") >= 1
step
talk Sylannia##14844
turnin A Fizzy Fusion##29506 |goto Darkmoon Island/0 50.53,69.57
|only if skill("Alchemy") >= 1
step
talk Rinling##14841
turnin Rearm, Reuse, Recycle##29518 |goto Darkmoon Island/0 49.25,60.78
|only if skill("Mining") >= 1
step
talk Sayge##14822
turnin Putting Trash to Good Use##29510 |goto Darkmoon Island/0 53.23,75.84
|only if skill("Enchanting") >= 1
step
talk Yebb Neblegear##14829
turnin Baby Needs Two Pair of Shoes##29508 |goto Darkmoon Island/0 51.10,82.04
|only if skill("Blacksmithing") >= 1
step
talk Kerri Hicks##14832
accept Test Your Strength##29433 |goto Darkmoon Island/0 47.90,67.12
step
talk Selina Dourman##10445
Select _"Darkmoon Adventurer's Guide?"_
collect 1 Darkmoon Adventurer's Guide##71634 |goto Darkmoon Island/0 55.56,55.00 |q 29433
|only if haveq(29433)
step
Kill enemies or players anywhere
|tip Only enemies and players that yield experience or honor will award Grisly Trophies.
|tip You will need to keep the Darkmoon Adventurer's Guide in your inventory.
|tip You can kill these anywhere you choose.
|tip We recommend passively completeing this quest while doing other activities in the game.
collect 250 Grisly Trophy##71096 |q 29433/1
|only if haveq(29433)
step
talk Kerri Hicks##14832
turnin Test Your Strength##29433 |goto Darkmoon Island/0 47.90,67.12
step
Kill enemies in dungeons
|tip Darkmoon dungeon items can be dropped by trash mobs and bosses from appropriate level dungeons.
|tip Appropriate dungeons are those that still yield experience or those that are max level.
|tip You will need to keep the Darkmoon Adventurer's Guide in your inventory.
Collect the Five Darkmoon Dungeon Items |complete completedq(29445) and completedq(29444) and completedq(29451) and completedq(29446) and completedq(29443)
|tip You still need to collect the following items: |only if not completedq(29445) and not completedq(29444) and not completedq(29451) and not completedq(29446) and not completedq(29443)
|tip Mysterious Grimoire |only if not completedq(29445)
|tip Monstrous Egg |only if not completedq(29444)
|tip A Treatise on Strategy |only if not completedq(29451)
|tip Ornate Weapon |only if not completedq(29446)
|tip Imbued Crystal |only if not completedq(29443)
step
use the Mysterious Grimoire##71637
accept An Inriguing Grimoire##29445
step
talk Sayge##14822
turnin An Intriguing Grimoire##29445 |goto Darkmoon Island/0 53.23,75.84
step
use the Monstrous Egg##71636
accept An Exotic Egg##29444
step
talk Yebb Neblegear##14829
turnin An Exotic Egg##29444 |goto Darkmoon Island/0 51.10,82.04
step
use A Treatise on Strategy##71715
accept The Master Strategist##29451
step
use the Ornate Weapon##71638
accept A Wondrous Weapon##29446
step
use the Imbued Crystal##71635
accept A Curious Crystal##29443
step
talk Professor Thaddeus Paleo##14847
turnin The Master Strategist##29451 |goto Darkmoon Island/0 51.89,60.93
turnin A Wondrous Weapon##29446 |goto Darkmoon Island/0 51.89,60.93
turnin A Curious Crystal##29443 |goto Darkmoon Island/0 51.89,60.93
step
Kill enemies in raids
|tip This item can be dropped by trash mobs and bosses from appropriate level raids.
|tip Appropriate raids are those that still yield experience or those that are max level.
|tip You will need to keep the Darkmoon Adventurer's Guide in your inventory.
collect Soothsayer's Runes##71716 |q 29464 |future
step
use the Soothsayer's Runes##71716
accept Tools of Divination##29464
step
talk Professor Thaddeus Paleo##14847
turnin Tools of Divination##29464 |goto Darkmoon Island/0 51.89,60.93
step
Kill enemies in Battlegrounds
|tip Darkmoon Battleground items can be dropped by trash mobs and enemy players from PvP Battlegrounds.
|tip You will need to keep the Darkmoon Adventurer's Guide in your inventory.
|tip Loot the bodies for a chance to pick up a Darkmoon Faire quest item.
Collect the Three Darkmoon Battleground Items |complete completedq(29458) and completedq(29456) and completedq(29457)
|tip You still need to collect the following items: |only if not completedq(29458) and not completedq(29456) and not completedq(29457)
|tip Fallen Adventurer's Journal |only if not completedq(29458)
|tip Banner of the Fallen |only if not completedq(29456)
|tip Captured Insignia |only if not completedq(29457)
step
use the Adventurer's Journal##71953
accept The Captured Journal##29458
step
use the Banner of the Fallen##71951
accept A Captured Banner##29456
step
use the Captured Insignia##71952
accept The Enemy's Insignia##29457
step
talk Professor Thaddeus Paleo##14847
turnin The Captured Journal##29458 |goto Darkmoon Island/0 51.89,60.93
turnin A Captured Banner##29456 |goto Darkmoon Island/0 51.89,60.93
turnin The Enemy's Insignia##29457 |goto Darkmoon Island/0 51.89,60.93
]])
QuestCore:RegisterGuide("Events Guides\\Darkmoon Faire\\Darkmoon Faire Dailies", {
expansion="mists",
condition_suggested=function() return isevent('Darkmoon Faire') end,
description="This guide will help you navigate through the Darkmoon Faire Event",
},[[
step
You can Ride the Roller Coaster or Carousel for a Reputation and Experience Buff
|tip You can purchase a Ride Ticket Book from an NPC near either ride.
|tip Ride the either ride to gain a 10% bonus to your experience and reputation gained for 1 hour.
|tip Leaving the ride before it is finished will diminish the duration of your buff.
|tip You can also get a Darkmoon Top hat from Darkmoon Game Prizes that grants the same buff.
|tip Use these wisely as need to improve your level or faction standing.
confirm
step
label "Guide_Home"
talk Zina Sharpworth##55266
buy 1 Sack o' Tokens##78910 |goto Darkmoon Island/0 54.34,53.15 |q 29433 |future |or
use the Sack o' Tokens##78910
collect 20 Darkmoon Faire Game Token##71083 |goto Darkmoon Island/0 54.34,53.15 |q 29433 |or
|tip This will let you play all the games at the faire. You can skip this step if you know you need less tokens.
step
talk Mola##54601
accept It's Hammer Time##29463 |goto Darkmoon Island/0 53.29,54.36
step
talk Mola##54601
Select _"Ready to whack!"_
Gain the "Whack-a-Gnoll!" Buff |havebuff Whack-a-Gnoll!##110230 |goto Darkmoon Island/0 53.29,54.36 |q 29463
step
Whack #30# Gnolls |q 29463/1 |goto Darkmoon Island/0 52.59,53.42
|tip Use the "Whack!" ability on your action bar to whack the Gnolls as they appear.
|tip Do not whack the Doll or you will be stunned for a few seconds.
step
talk Mola##54601
turnin It's Hammer Time##29463 |goto Darkmoon Island/0 53.29,54.36
step
talk Maxima Blastenheimer##15303
accept The Humanoid Cannonball##29436 |goto Darkmoon Island/0 52.50,56.14
|next "The_Humanoid_Cannonball_Start"
step
label "The_Humanoid_Cannonball_Missed"
talk Teleportologist Fozlebub##57850 |goto Darkmoon Island/0 57.09,89.70
Tell him "_Teleport me to the cannon._"
Teleport to the Cannon |goto Darkmoon Island/0 52.73,56.03 < 25 |noway |c |q 29436
step
label "The_Humanoid_Cannonball_Start"
talk Maxima Blastenheimer##15303
Tell her "_Launch me! (Darkmoon Game Token)_"
Wait for the Cannon to Launch You |havebuff texture:135992 |goto Darkmoon Island/0 52.50,56.14 |q 29436
step
Accrue #5# Cannon Target Points |q 29436/1 |goto Darkmoon Island/0 56.33,93.17 |next "Turnin_The_Humanoid_Cannonball" |or
|tip Use the "Cancel Magic Wings" ability on your action bar.
|tip You will continue your forward momentum, so aim appropriately.
If you Missed, Click Here |confirm |next "The_Humanoid_Cannonball_Missed" |or |q 29436
step
label "Turnin_The_Humanoid_Cannonball"
talk Teleportologist Fozlebub##57850 |goto Darkmoon Island/0 57.09,89.70
Tell him "_Teleport me to the cannon._"
Teleport to the Cannon |goto Darkmoon Island/0 52.73,56.03 < 25 |noway |c |q 29436
step
talk Maxima Blastenheimer##15303
turnin The Humanoid Cannonball##29436 |goto Darkmoon Island/0 52.50,56.14
step
talk Rinling##14841
accept He Shoots, He Scores!##29438 |goto Darkmoon Island/0 49.25,60.78
step
talk Rinling##14841
Select _"Let's shoot! (Darkmoon Game Token)"_
Gain the "Crack Shot!" Buff |havebuff texture:135614 |goto Darkmoon Island/0 49.25,60.78 |q 29438
step
Hit #25# Targets |q 29438/1 |goto Darkmoon Island/0 49.46,60.68
|tip Use the "Shoot" ability on the target with a green icon above it.
|tip Make sure you are directly facing the target before you shoot.
step
talk Rinling##14841
turnin He Shoots, He Scores!##29438 |goto Darkmoon Island/0 49.25,60.78
step
talk Finlay Coolshot##54605
accept Tonk Commander##29434 |goto Darkmoon Island/0 50.69,65.14
step
talk Finlay Coolshot##54605
Select _"Ready to Play! (Darkmoon Game Token)"_
Control a Tonk |invehicle |goto Darkmoon Island/0 50.69,65.14 |q 29434
step
kill Tonk Target##33081+
|tip Use the "Cannon" ability on your action bar.
|tip If you get "Marked," use the "Nitrous Boost" ability on your action bar.
Destroy #30# Targets |q 29434/1 |goto Darkmoon Island/0 52.05,65.60
step
Leave the Vehicle |outvehicle |q 29434
|tip Use the "Exit" ability on your action bar.
step
talk Finlay Coolshot##54605
turnin Tonk Commander##29434 |goto Darkmoon Island/0 50.69,65.14
step
talk Jessica Rogers##54485
accept Target: Turtle##29455 |goto Darkmoon Island/0 51.51,77.71
step
talk Jessica Rogers##54485
Select _"Ready to play! (Darkmoon Game Token)"_
Start the Ring Toss Game |havebuff texture:133345 |goto Darkmoon Island/0 51.51,77.71
step
Land #3# Rings on Dubenko |q 29455/1 |goto Darkmoon Island/0 51.64,78.00
|tip Use the "Ring Toss" ability on your action bar.
|tip Throw rings on the turtle.
|tip There is a one second cast time plus travel time, so aim accordingly.
step
talk Jessica Rogers##54485
turnin Target: Turtle##29455 |goto Darkmoon Island/0 51.51,77.71
step
Click Here if Dailies Have Reset |confirm |next "Guide_Home"
]])
QuestCore:RegisterGuide("Events Guides\\Darkmoon Faire\\Achievements\\Taking the Show on the Road",{
expansion="mists",
description="Launch off Darkmoon Fireworks in every friendly capital city.",
condition_suggested=function() return isevent('Darkmoon Faire') end,
achieveid={6030},
patch='40300',
},[[
step
talk Boomie Sparks##55278
buy 6 Darkmoon Firework##74142 |goto Darkmoon Island/0 48.40,71.90
|only if not hastoy(122119)
step
use the Darkmoon Firework##74142 |only if default
use the Everlasting Darkmoon Firework##122119 |only if hastoy(122119)
Use your Darkmoon Firework |achieve 6030/4 |goto Ironforge/0 28.61,14.25
step
use the Darkmoon Firework##74142 |only if default
use the Everlasting Darkmoon Firework##122119 |only if hastoy(122119)
Use your Darkmoon Firework |achieve 6030/6 |goto Stormwind City/0 49.73,85.93
step
use the Darkmoon Firework##74142 |only if default
use the Everlasting Darkmoon Firework##122119 |only if hastoy(122119)
Use your Darkmoon Firework |achieve 6030/2 |goto Darnassus/0 37.32,50.47
step
use the Darkmoon Firework##74142 |only if default
use the Everlasting Darkmoon Firework##122119 |only if hastoy(122119)
Use your Darkmoon Firework |achieve 6030/3 |goto The Exodar/0 47.62,59.82
step
use the Darkmoon Firework##74142 |only if default
use the Everlasting Darkmoon Firework##122119 |only if hastoy(122119)
Use your Darkmoon Firework |achieve 6030/5 |goto Shattrath City/0 53.01,49.21
step
use the Darkmoon Firework##74142 |only if default
use the Everlasting Darkmoon Firework##122119 |only if hastoy(122119)
Use your Darkmoon Firework |achieve 6030/1 |goto Dalaran/1 55.92,46.79
step
achieve 6030
]])
QuestCore:RegisterGuide("Events Guides\\Darkmoon Faire\\Achievements\\Fairegoer's Feast",{
expansion="mists",
description="Consume one of every Darkmoon food and drink.",
condition_suggested=function() return isevent('Darkmoon Faire') end,
achieveid={6026},
patch='40300',
},[[
step
talk Sylannia##14844
buy 1 Cheap Beer##19222 |goto Darkmoon Island/0 50.53,69.57
buy 1 Darkmoon Special Reserve##19221 |goto Darkmoon Island/0 50.53,69.57
buy 1 Fizzy Faire Drink##19299 |goto Darkmoon Island/0 50.53,69.57
buy 1 Bottled Winterspring Water##19300 |goto Darkmoon Island/0 50.53,69.57
buy 1 Iced Berry Slush##33234 |goto Darkmoon Island/0 50.53,69.57
buy 1 Fizzy Faire Drink "Classic"##33236 |goto Darkmoon Island/0 50.53,69.57
buy 1 Fresh-Squeezed Limeade##44941 |goto Darkmoon Island/0 50.53,69.57
buy 1 Sasparilla Sinker##74822 |goto Darkmoon Island/0 50.53,69.57
step
use the Cheap Beer##19222
Drink Cheap Beer |achieve 6026/12
step
use the Special Reserve##19221
Drink Darkmoon Special Reserve |achieve 6026/13
step
use the Fizzy Faire Drink##19299
Drink Fizzy Faire Drink |achieve 6026/14
step
use the Bottled Winterspring Water##19300
Drink Bottled Winterspring Water |achieve 6026/11
step
use the Iced Berry Slush##33234
Drink Iced Berry Slush |achieve 6026/17
step
use the Fizzy Faire Drink "Classic"##33236
Drink Fizzy Faire Drink "Classic" |achieve 6026/15
step
use the Fresh-Squeezed Limeade##44941
Drink Fresh-Squeezed Limeade |achieve 6026/16
step
use the Sasparilla Sinker##74822
Drink Sasparilla Sinker |achieve 6026/18
step
talk Stamp Thunderhorn##14845
buy Darkmoon Dog##19223 |goto Darkmoon Island/0 52.89,67.94
buy Spiced Beef Jerky##19304 |goto Darkmoon Island/0 52.89,67.94
buy Pickled Kodo Foot##19305 |goto Darkmoon Island/0 52.89,67.94
buy Red Hot Wings##19224 |goto Darkmoon Island/0 52.89,67.94
buy Crunchy Frog##19306 |goto Darkmoon Island/0 52.89,67.94
buy Deep Fried Candybar##19225 |goto Darkmoon Island/0 52.89,67.94
buy Funnel Cake##33246 |goto Darkmoon Island/0 52.89,67.94
buy Forest Strider Drumstick##33254 |goto Darkmoon Island/0 52.89,67.94
buy Corn-Breaded Sausage##44940 |goto Darkmoon Island/0 52.89,67.94
buy Salty Sea Dog##73260 |goto Darkmoon Island/0 52.89,67.94
step
use the Darkmoon Dog##19223
Eat Darkmoon Dog |achieve 6026/3
step
use the Spiced Beef Jerky##19304
Eat Spiced Beef Jerky |achieve 6026/10
step
use the Pickled Kodo Foot##19305
Eat Pickled Kodo Foot |achieve 6026/7
step
use the Red Hot Wings##19224
Eat Red Hot Wings |achieve 6026/8
step
use the Crunchy Frog##19306
Eat Crunchy Frog |achieve 6026/2
step
use the Deep Fried Candybar##19225
Eat Deep Fried Candybar |achieve 6026/4
step
use the Funnel Cake##33246
Eat Funnel Cake |achieve 6026/6
step
use the Forest Strider Drumstick##33254
Eat Forest Strider Drumstick |achieve 6026/5
step
use the Corn-Breaded Sausage##44940
Eat Corn-Breaded Sausage |achieve 6026/1
step
use the Salty Sea Dog##73260
Eat Salty Sea Dog |achieve 6026/9
step
achieve 6026
]])
QuestCore:RegisterGuide("Events Guides\\Darkmoon Faire\\Achievements\\Come One, Come All!",{
expansion="mists",
description="Attend the Darkmoon Faire.",
condition_suggested=function() return isevent('Darkmoon Faire') end,
achieveid={6019},
patch='60100',
},[[
step
achieve 6019 |goto Darkmoon Island/0 51.64,24.67
|tip Simply zone into the Darkmoon Faire event area while it is active.
]])
QuestCore:RegisterGuide("Events Guides\\Darkmoon Faire\\Achievements\\Blastenheimer Bullseye",{
expansion="mists",
description="Score a bullseye when launched from the Darkmoon Cannon.",
condition_suggested=function() return isevent('Darkmoon Faire') end,
achieveid={6021},
patch='60100',
},[[
step
talk Maxima Blastenheimer##15303
accept The Humanoid Cannonball##29436 |goto Darkmoon Island/0 52.50,56.14
|next "The_Humanoid_Cannonball_Start"
step
label "The_Humanoid_Cannonball_Missed"
step
talk Teleportologist Fozlebub##57850 |goto Darkmoon Island/0 57.09,89.70
Select _"Teleport me to the cannon."_
Teleport to the Cannon |goto Darkmoon Island/0 52.73,56.03 < 25 |noway |c |q 29436
step
label "The_Humanoid_Cannonball_Start"
|script GossipFrame:SelectGossipOption(2); C_Timer.After(11.30, function() for i=1,40 do local _,_,_,_,_,_,_,_,_,spellID=UnitBuff("player", i) if spellID==102116 then CancelUnitBuff("player", i) return end end end)
talk Maxima Blastenheimer##15303
|tip Open the talk window with Maxima and click the button on this step.
|tip Wait to be launched, and you will automatically land in the bullseye.
|tip Do not adjust your camera or move until you land.
Wait for the Cannon to Launch You |havebuff texture:135992 |goto Darkmoon Island/0 52.50,56.14 |q 29436
step
achieve 6021 |goto Darkmoon Island/0 56.33,93.17 |next "Turnin_The_Humanoid_Cannonball" |or
|tip You will automatically land in the bullseye.
|tip Do not adjust your camera or move until you land.
If you Missed, Click Here |confirm |next "The_Humanoid_Cannonball_Missed" |or |q 29436
step
label "Turnin_The_Humanoid_Cannonball"
talk Teleportologist Fozlebub##57850 |goto Darkmoon Island/0 57.09,89.70
Select _"Teleport me to the cannon."_
Teleport to the Cannon |goto Darkmoon Island/0 52.73,56.03 < 25 |noway |c |q 29436
step
talk Maxima Blastenheimer##15303
turnin The Humanoid Cannonball##29436 |goto Darkmoon Island/0 52.50,56.14
step
achieve 6021
]])
QuestCore:RegisterGuide("Events Guides\\Darkmoon Faire\\Achievements\\Darkmoon Defender",{
expansion="mists",
description="Turn in all three battleground Darkmoon Artifacts.",
condition_suggested=function() return isevent('Darkmoon Faire') end,
achieveid={6028},
patch='40300',
},[[
step
talk Darkmoon Faire Mystic Mage##54334
accept The Darkmoon Faire##7905 |goto Stormwind City/0 62.26,72.96
step
clicknpc Darkmoon Strider##68491
Mount the Darkmoon Strider |havebuff Darkmoon Strider##134931 |goto Darkmoon Island/0 51.64,24.67 |q 7905
|only if level < 10
step
talk Gelvas Grimegate##14828
turnin The Darkmoon Faire##7905 |goto Darkmoon Island/0 47.90,64.74
step
talk Selina Dourman##10445
collect Darkmoon Adventurer's Guide##71634 |goto Darkmoon Island/0 55.56,54.99
|tip Complete "The Darkmoon Faire" quest in the quest guide.
|tip If you do not have this item any more, you can talk to Selina and request another.
|tip This item must be in your inventory to colllect artifacts.
|tip You can turn in artifacts once per Faire.
step
collect Captured Insignia##71952 |q 29457 |future
collect Banner of the Fallen##71951 |q 29456 |future
collect Fallen Adventurer's Journal##71953 |q 29458 |future
|tip Run battlegrounds and loot any player corpses you can.
|tip These have a chance to drop from any lootable player.
|tip You can turn in artifacts once per Faire.
|tip Darkmoon Adventurer's Guide must be in your inventory to colllect artifacts.
step
use the Captured Insignia##71952
accept The Enemy's Insignia##29457
step
use the Banner of the Fallen##71951
accept A Captured Banner##29456
step
use the Fallen Adventurer's Journal##71953
accept The Captured Journal##29458
step
talk Professor Thaddeus Paleo##14847
turnin The Enemy's Insignia##29457 |goto Darkmoon Island/0 51.89,60.94
turnin A Captured Banner##29456 |goto Darkmoon Island/0 51.89,60.94
turnin The Captured Journal##29458 |goto Darkmoon Island/0 51.89,60.94
step
achieve 6028
]])
QuestCore:RegisterGuide("Events Guides\\Darkmoon Faire\\Achievements\\Darkmoon Dungeoneer",{
expansion="mists",
description="Turn in all five dungeon Darkmoon Artifacts.",
condition_suggested=function() return isevent('Darkmoon Faire') end,
achieveid={6027},
patch='40300',
},[[
step
talk Darkmoon Faire Mystic Mage##54334
accept The Darkmoon Faire##7905 |goto Stormwind City/0 62.26,72.96
step
clicknpc Darkmoon Strider##68491
Mount the Darkmoon Strider |havebuff Darkmoon Strider##134931 |goto Darkmoon Island/0 51.64,24.67 |q 7905
|only if level < 10
step
talk Gelvas Grimegate##14828
turnin The Darkmoon Faire##7905 |goto Darkmoon Island/0 47.90,64.74
step
talk Selina Dourman##10445
collect Darkmoon Adventurer's Guide##71634 |goto Darkmoon Island/0 55.56,54.99
|tip Complete "The Darkmoon Faire" quest in the quest guide.
|tip If you do not have this item any more, you can talk to Selina and request another.
|tip This item must be in your inventory to colllect artifacts.
|tip You can turn in artifacts once per Faire.
step
collect A Treatise on Strategy##71715 |q 29451 |future
|tip You can turn in artifacts once per Faire.
|tip Darkmoon Adventurer's Guide must be in your inventory to colllect artifacts.
step
collect Imbued Crystal##71635 |q 29443 |future
|tip You can turn in artifacts once per Faire.
|tip Darkmoon Adventurer's Guide must be in your inventory to colllect artifacts.
step
collect Monstrous Egg##71636 |q 29444 |future
|tip You can turn in artifacts once per Faire.
|tip Darkmoon Adventurer's Guide must be in your inventory to colllect artifacts.
step
collect Mysterious Grimoire##71637 |q 29445 |future
|tip You can turn in artifacts once per Faire.
|tip Darkmoon Adventurer's Guide must be in your inventory to colllect artifacts.
step
collect Ornate Weapon##71638 |q 29446 |future
|tip You can turn in artifacts once per Faire.
|tip Darkmoon Adventurer's Guide must be in your inventory to colllect artifacts.
step
use A Treatise on Strategy##71715
accept The Master Strategist##29451
step
use the Imbued Crystal##71635
accept A Curious Crystal##29443
step
use the Monstrous Egg##71636
accept An Exotic Egg##29444
step
use the Mysterious Grimoire##71637
accept An Intriguing Grimoire##29445
step
use the Ornate Weapon##71638
accept A Wondrous Weapon##29446
step
talk Professor Thaddeus Paleo##14847
turnin The Master Strategist##29451 |goto Darkmoon Island/0 51.89,60.94
turnin A Curious Crystal##29443 |goto Darkmoon Island/0 51.89,60.94
turnin An Exotic Egg##29444 |goto Darkmoon Island/0 51.89,60.94
turnin An Intriguing Grimoire##29445 |goto Darkmoon Island/0 51.89,60.94
turnin A Wondrous Weapon##29446 |goto Darkmoon Island/0 51.89,60.94
step
achieve 6027
]])
QuestCore:RegisterGuide("Events Guides\\Darkmoon Faire\\Achievements\\Darkmoon Despoiler",{
expansion="mists",
description="Turn in all nine Darkmoon Artifacts.",
condition_suggested=function() return isevent('Darkmoon Faire') end,
achieveid={6029},
patch='40300',
},[[
leechsteps "Events Guides\\Darkmoon Faire\\Achievements\\Darkmoon Defender"
leechsteps "Events Guides\\Darkmoon Faire\\Achievements\\Darkmoon Dungeoneer"
]])
QuestCore:RegisterGuide("Events Guides\\Darkmoon Faire\\Achievements\\Faire Favors",{
expansion="mists",
description="Complete at least five profession-based quests at the Darkmoon Faire.",
condition_suggested=function() return isevent('Darkmoon Faire') end,
achieveid={6032},
patch='40300',
},[[
step
achieve 6032
|tip Complete five profession quests at the Darkmoon Faire.
|tip You can accomplish this by traning primary and secondary professions and then completing the "Darkmoon Faire Quests" guide.
|tip If you train two primary professions, Archaeology, Cooking, and Fishing, you can complete this achievement in one guide playthrough.
|tip Otherwise, complete the quest guide and train other professions to complete at least 5 quests.
|tip You only need a skill level of 1.
|loadguide "Events Guides\\Darkmoon Faire\\Darkmoon Faire Quests"
]])
QuestCore:RegisterGuide("Events Guides\\Darkmoon Faire\\Achievements\\Taking this Show on the Road",{
expansion="mists",
description="Have each of the band's roles assigned to you after participating in the Blight Boar concert.",
condition_suggested=function() return isevent('Darkmoon Faire') end,
achieveid={11919},
patch='40300',
},[[
]])
QuestCore:RegisterGuide("Events Guides\\Darkmoon Faire\\Achievements\\I Was Promised a Pony",{
expansion="mists",
description="Ride a Darkmoon Pony.",
condition_suggested=function() return isevent('Darkmoon Faire') end,
achieveid={6025},
patch='40300',
},[[
step
clicknpc Darkmoon Pony##55715
|tip Simply click the pony and mount up.
achieve 6025 |goto Darkmoon Island/0 56.69,81.36
]])
QuestCore:RegisterGuide("Events Guides\\Darkmoon Faire\\Achievements\\Quick Shot",{
expansion="mists",
description="Score a Quick Shot at the Shooting Gallery.",
condition_suggested=function() return isevent('Darkmoon Faire') end,
achieveid={6022},
patch='40300',
},[[
step
label "Collect_Tokens"
talk Zina Sharpworth##55266
collect 1 Darkmoon Game Token##71083 |goto Darkmoon Island/0 54.34,53.16 |or
|tip You need to purchase at least one game token to play a game.
'|achieve 6022 |or
step
talk Rinling##14841
Select _"Let's shoot!"_ |gossip 31203
achieve 6022 |goto Darkmoon Island/0 49.43,60.63 |or
|tip Zoom your camera in.
|tip Use the "Shoot" ability on your bar while facing the target with the green arrow on it.
|tip Shoot the green target quickly as soon as it spawns to earn the achievement.
|tip You may need to play the game more than once.
|tip Standing in the middle is the easiest spot to reach all 3 tagets.
'|achieve 6022 |or
]])
QuestCore:RegisterGuide("Events Guides\\Darkmoon Faire\\Achievements\\Step Right Up",{
expansion="mists",
description="Play five different Darkmoon games.",
condition_suggested=function() return isevent('Darkmoon Faire') end,
achieveid={6020},
patch='40300',
},[[
step
talk Zina Sharpworth##55266
collect 5 Darkmoon Game Token##71083 |goto Darkmoon Island/0 54.34,53.16 |or
|tip You need to purchase at least five game tokens to play five games.
|tip You may want to purchase more.
'|achieve 6020 |or
step
talk Mola##54601
accept It's Hammer Time##29463 |goto Darkmoon Island/0 53.29,54.36 |or
'|achieve 6020 |or
step
Whack #30# Gnolls |q 29463/1 |goto Darkmoon Island/0 53.29,54.36 |or
|tip Use the "Whack!" ability to swing at gnolls that pop out of the barrels.
|tip Larger dark colored gnolls are the top priority and grant the most points.
|tip Medium sized lighter colored gnolls are secondary priority.
|tip Small baby gnolls should not be hit or they will stun you and grant no points.
'|achieve 6020 |or
step
talk Mola##54601
turnin It's Hammer Time##29463 |goto Darkmoon Island/0 53.29,54.36 |or
'|achieve 6020 |or
step
talk Maxima Blastenheimer##15303
accept The Humanoid Cannonball##29436 |goto Darkmoon Island/0 52.50,56.14 |or
'|achieve 6020 |or
step
|script GossipFrame:SelectGossipOption(2); C_Timer.After(11.30, function() for i=1,40 do local _,_,_,_,_,_,_,_,_,spellID=UnitBuff("player", i) if spellID==102116 then CancelUnitBuff("player", i) return end end end)
talk Maxima Blastenheimer##15303
|tip Open the talk window with Maxima and click the button on this step.
|tip Wait to be launched, and you will automatically land in the bullseye.
|tip Do not adjust your camera or move until you land.
Wait for the Cannon to Launch You |havebuff texture:135992 |goto Darkmoon Island/0 52.50,56.14 |q 29436 |or
'|achieve 6020 |or
step
achieve 6021 |goto Darkmoon Island/0 56.33,93.17 |next "Turnin_The_Humanoid_Cannonball" |or
|tip You will automatically land in the bullseye.
|tip Do not adjust your camera or move until you land.
'|achieve 6020 |or
step
talk Teleportologist Fozlebub##57850 |goto Darkmoon Island/0 57.09,89.70
Select _"Teleport me to the cannon."_
Teleport to the Cannon |goto Darkmoon Island/0 52.73,56.03 < 25 |noway |c |q 29436 |or
'|achieve 6020 |or
step
label "Turnin_The_Humanoid_Cannonball"
talk Maxima Blastenheimer##15303
turnin The Humanoid Cannonball##29436 |goto Darkmoon Island/0 52.50,56.14 |or
'|achieve 6020 |or
step
talk Rinling##14841
accept He Shoots, He Scores!##29438 |goto Darkmoon Island/0 49.25,60.79 |or
'|achieve 6020 |or
step
talk Rinling##14841
Select _"Let's shoot!"_ |gossip 31203
Hit #25# Targets |q 29438/1 |goto Darkmoon Island/0 49.43,60.63 |or
|tip Zoom your camera in.
|tip Use the "Shoot" ability on your bar while facing the target with the green arrow on it.
|tip Shoot 25 targets total.
|tip You may need to play the game more than once.
|tip Standing in the middle is the easiest spot to reach all 3 tagets.
'|achieve 6020 |or
step
talk Rinling##14841
turnin He Shoots, He Scores!##29438 |goto Darkmoon Island/0 49.25,60.79 |or
'|achieve 6020 |or
step
talk Finlay Coolshot##54605
accept Tonk Commander##29434 |goto Darkmoon Island/0 50.70,65.15 |or
'|achieve 6020 |or
step
talk Finlay Coolshot##54605
Select _"Ready to play!"_ |gossip  39246
Destroy #30# Targets |q 29434/1 |goto Darkmoon Island/0 50.70,65.15 |or
|tip Use the "Cannon" ability to shoot targets around the game area.
|tip Use the "Nitrous Boost" ability for a brief speed boost to avoid other tonks and zeppelins and reach new targets quicker.
'|achieve 6020 |or
step
talk Finlay Coolshot##54605
turnin Tonk Commander##29434 |goto Darkmoon Island/0 50.70,65.15 |or
'|achieve 6020 |or
step
talk Jessica Rogers##54485
accept Target: Turtle##29455 |goto Darkmoon Island/0 51.51,77.71 |or
'|achieve 6020 |or
step
talk Jessica Rogers##54485
Select _"Ready to play! (Darkmoon Game Token)"_ |gossip 40225
Land #3# Rings |q 29455/1 |goto Darkmoon Island/0 51.51,77.71 |or
|tip Zoom your camera in all the way.
|tip Observe the turtle's path and note where it walks to in the middle.
|tip When it walks away from the middle, you should throw a ring at the middle spot right when it turns around to walk back.
|tip It should land on the turtle in the middle point each time.
'|achieve 6020 |or
step
talk Jessica Rogers##54485
turnin Target: Turtle##29455 |goto Darkmoon Island/0 51.51,77.71 |or
'|achieve 6020 |or
step
achieve 6020
]])
QuestCore:RegisterGuide("Events Guides\\Hallow's End\\Hallow's End Quests",{
expansion="mists",
mopready=true,
condition_end=function() return completedq(8373) end,
description="Complete the quests for the Hallow's End event.",
patch='40405',
},[[
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to be able to accept these quests.
|tip Use the Leveling guides to accomplish this.
step
talk Human Commoner##18927
accept A Season for Celebration##29074 |goto Stormwind City/0 61.68,74.18
accept Costumed Orphan Matron##11356 |goto Stormwind City/0 61.68,74.18
step
talk Celestine of the Harvest##51665
turnin A Season for Celebration##29074 |goto Elwynn Forest/0 32.04,50.51
step
talk Jesper##15310
accept Hallow's End Treats for Jesper!##8311 |goto Elwynn Forest/0 32.03,50.39
step
talk Gretchen Fenlow##51934
accept A Friend in Need##29430 |goto Elwynn Forest/0 32.35,50.88
step
click Candy Bucket
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12336 |goto Stormwind City/0 60.51,75.33
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
talk Innkeeper Allison##6740
|tip Inside the building.
accept Flexing for Nougat##8356 |goto Stormwind City/0 60.39,75.28 |complete completedq(8311) or completedq(8356)
step
clicknpc Innkeeper Allison##6740
|tip Inside the building.
|tip Target Innkeeper Allison and type "/flex" into your chat to perform the Flex emote.
Flex for Inkeeper Allison |q 8356/1 |goto Stormwind City/0 60.39,75.28 |complete completedq(8311) or completedq("8356/1")
'|script DoEmote("FLEX")
step
talk Innkeeper Allison##6740
|tip Inside the building.
turnin Flexing for Nougat##8356 |goto Stormwind City/0 60.39,75.28 |complete completedq(8311) or completedq(8356)
step
collect Stormwind Nougat##20492 |q 8311/1
|tip Save this, you will need it later.
step
talk Anson Hastings##53949
|tip Inside the building.
turnin A Friend in Need##29430 |goto Stormwind City/0 60.04,75.13
accept Missing Heirlooms##29392 |goto Stormwind City/0 60.04,75.13
step
Search the Courier's Cabin |q 29392/1 |goto Stormwind City/0 24.03,44.81
|tip Downstairs inside the middle deck of the ship.
step
talk Hired Courier##53950
|tip Downstairs inside the middle deck of the ship.
turnin Missing Heirlooms##29392 |goto Stormwind City/0 24.04,44.82
accept Fencing the Goods##29398 |goto Stormwind City/0 24.04,44.82
step
talk Auctioneer Fitch##8719
Select _"Has anyone suspicious tried to list a crate of goods recently?"_ |gossip 113772
Watch the dialogue
Follow the Thief's Trail |q 29398/1 |goto Stormwind City/0 61.11,70.62
step
talk Auctioneer Fitch##8719
turnin Fencing the Goods##29398 |goto Stormwind City/0 61.11,70.62
accept Shopping Around##29399 |goto Stormwind City/0 61.11,70.62
step
Watch the dialogue
|tip Inside the building.
Investigate the Shady Lady |q 29399/1 |goto Stormwind City/0 64.17,46.29
step
talk Hudson Barnes##54021
turnin Shopping Around##29399 |goto Stormwind City/0 64.17,46.29
accept Taking Precautions##29402 |goto Stormwind City/0 64.17,46.29
step
click Blood Nettle##209059+
|tip They look like red and white plants on the ground around this area.
|tip They appear on you minimap as yellow dots.
collect 5 Blood Nettle##71035 |q 29402/3 |goto Stormwind City/0 54.32,14.82
step
talk Keldric Boucher##1257
|tip Inside the building.
Select _"I want to browse your goods."_ |gossip 87621
buy 5 Crystal Vial##3371 |q 29402/1 |goto Stormwind City/0 62.79,75.05
buy 5 Arcane Powder##17020 |q 29402/2 |goto Stormwind City/0 62.79,75.05
step
talk Hudson Barnes##54021
|tip Inside the building.
turnin Taking Precautions##29402 |goto Stormwind City/0 64.17,46.29
accept The Collector's Agent##29403 |goto Stormwind City/0 64.17,46.29
step
Enter the building |goto Stormwind City/0 52.93,50.96 < 7 |walk
Run down the ramp |goto Stormwind City/0 51.24,44.20 < 7 |walk
|tip Follow the little purple spiders downstairs and to the left.
Watch the dialogue
kill Unleashed Void##54114
|tip It will spawn after the dialogue down in the lowest part of the cathedral catacombs.
Disrupt the Meeting |q 29403/1 |goto Stormwind City/0 55.48,43.30
step
click Stolen Crate##209072
|tip In the lowest part of the cathedral catacombs.
turnin The Collector's Agent##29403 |goto Stormwind City/0 55.39,43.41
accept What Now?##29411 |goto Stormwind City/0 55.39,43.41
step
talk Hudson Barnes##54118
|tip Inside the building.
turnin What Now?##29411 |goto Stormwind City/0 65.17,33.47
step
click Anson's Crate##209076
|tip Inside the building.
accept The Creepy Crate##29413 |goto Stormwind City/0 65.07,33.52
step
talk Costumed Orphan Matron##24519
turnin Costumed Orphan Matron##11356 |goto Elwynn Forest/0 42.62,64.39
accept Fire Brigade Practice##11360 |goto Elwynn Forest/0 42.62,64.39
step
click Water Barrel |goto Elwynn Forest/0 42.51,64.49
|tip Click the Water Barrel to pick up a bucket of water.
collect Water Bucket##32971 |n
use the Water Bucket##32971
|tip Throw the buckets at the fires on top of buildings around this area.
|tip You may have to wait a short amount of time for the Horseman to attack.
Put Out #5# Fires |q 11360/1 |goto Elwynn Forest/0 42.43,65.63
step
talk Large Jack-O'-Lantern
accept Smash the Pumpkin##12133 |goto Elwynn Forest/0 42.39,65.87
|tip This will only be available after the Headless Horseman is defeated.
|tip You can skip this step if it does not drop.
|only if not completedq(8311)
step
click Candy Bucket
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12286 |goto Elwynn Forest/0 43.74,65.89
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
talk Costumed Orphan Matron##24519
turnin Fire Brigade Practice##11360 |goto Elwynn Forest/0 42.62,64.39
turnin Smash the Pumpkin##12133 |goto Elwynn Forest/0 42.62,64.39 |only if haveq(12133) or completedq(12133)
step
Enter the building |goto Ironforge/0 20.57,53.22 < 5 |walk
talk Innkeeper Firebrew##5111
|tip Inside the building.
accept Chicken Clucking for a Mint##8353 |goto Ironforge/0 18.16,51.44 |complete completedq(8311) or completedq(8353)
step
clicknpc Innkeeper Firebrew##5111
|tip Inside the building.
|tip Target Innkeeper Firebrew and type "/chicken" into your chat to perform the Chicken emote.
Cluck Like a Chicken for Innkeeper Firebrew |q 8353/1 |goto Ironforge/0 18.16,51.44 |complete completedq(8311) or completedq("8353/1")
'|script DoEmote("CHICKEN")
step
talk Innkeeper Firebrew##5111
|tip Inside the building.
turnin Chicken Clucking for a Mint##8353 |goto Ironforge/0 18.16,51.44 |complete completedq(8311) or completedq(8353)
step
collect Ironforge Mint##20490 |q 8311/3
|tip Save this, you will need it later.
step
click Candy Bucket
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12335 |goto Ironforge/0 18.36,50.94
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
talk Talvash del Kissel##6826
accept Incoming Gumdrop##8355 |goto Ironforge/0 36.38,3.62 |complete completedq(8311) or completedq(8355)
step
clicknpc Talvash del Kissel##6826
|tip Target Talvash del Kissel and type "/train" into your chat to perform the Train emote.
Do the "Train" for Talvash |q 8355/1 |goto Ironforge/0 36.38,3.62 |complete completedq(8311) or completedq("8355/1")
'|script DoEmote("TRAIN")
step
talk Talvash del Kissel##6826
turnin Incoming Gumdrop##8355 |goto Ironforge/0 36.38,3.62 |complete completedq(8311) or completedq(8355)
step
collect Gnomeregan Gumdrop##20494 |q 8311/2
|tip Save this, you will need it later.
step
talk Innkeeper Saelienne##6735
accept Dancing for Marzipan##8357 |goto Darnassus/0 62.52,32.79 |complete completedq(8311) or completedq(8357)
step
clicknpc Innkeeper Saelienne##6735
|tip Target Innkeeper Saelienne and type "/dance" into your chat to perform the Dance emote.
Dance for Inkeeper Saelienne |q 8357/1 |goto Darnassus/0 62.52,32.79 |complete completedq(8311) or completedq("8357/1")
'|script DoEmote("DANCE")
step
talk Innkeeper Saelienne##6735
turnin Dancing for Marzipan##8357 |goto Darnassus/0 62.52,32.79 |complete completedq(8311) or completedq(8357)
step
collect Darnassus Marzipan##20496 |q 8311/4
|tip Save this, you will need it later.
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12334 |goto Darnassus/0 62.27,33.15
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
talk Jesper##15310
|tip Inside the building.
turnin Hallow's End Treats for Jesper!##8311 |goto Elwynn Forest/0 32.03,50.39
|next "Events Guides\\Hallow's End\\Hallow's End Daily Quests"
]])
QuestCore:RegisterGuide("Events Guides\\Hallow's End\\Hallow's End Daily Quests",{
expansion="mists",
mopready=true,
description="Put out fires in Razor Hill and kill the Headless Horseman.",
patch='40405',
},[[
step
label "Begin_Dailies"
talk Human Commoner##18927
accept Costumed Orphan Matron##11356 |goto Stormwind City/0 61.76,74.15
step
talk Celestine of the Harvest##51665
accept A Time to Gain##29075 |goto Elwynn Forest/0 32.04,50.51
step
talk Keira##52064
accept A Time to Lose##29371 |goto Elwynn Forest/0 32.08,50.60
step
talk Gretchen Fenlow##51934
accept Stink Bombs Away!##29054 |goto Elwynn Forest/0 32.35,50.88
accept Clean Up in Stormwind##29144 |goto Elwynn Forest/0 32.35,50.88
step
talk Gertrude Fenlow##52548
Select _"I'm ready to fly, let's bomb the Undercity!"_ |gossip 113573
Begin Your Flight to Undercity |invehicle |goto Elwynn Forest/0 32.21,50.77 |q 29054
step
Reach Undercity |complete zone("Undercity") or completedq(29054)
step
Drop #25# Bombs |q 29054/1 |goto Elwynn Forest/0 32.21,50.77
|tip Use the {o}Toss Stink Bomb{} ability on your vehicle bar to drop bombs across Undercity.
|tip You can drop them anywhere.
|tip If you're feeling kind, focus on dropping them in areas where Horde players can easily remove them later.
step
Return to Elwynn Forest |complete zone("Elwynn Forest") or zone("Stormwind City") or completedq(29054)
|tip Use the {o}Return Home{} button on your vehicle bar.
step
click Bonfire
Use the Bonfire |q 29075/1 |goto Elwynn Forest/0 32.86,49.37
step
use the Arcane Cleanser##69191
|tip Use it all over Stormwind City on large orange clouds of smoke coming from the ground.
Remove #10# Stink Bombs |q 29144/1 |goto Stormwind City/0 57.58,63.42
step
talk Celestine of the Harvest##51665
turnin A Time to Gain##29075 |goto Elwynn Forest/0 32.04,50.51
step
talk Gretchen Fenlow##51934
turnin Stink Bombs Away!##29054 |goto Elwynn Forest/0 32.35,50.88
turnin Clean Up in Stormwind##29144 |goto Elwynn Forest/0 32.35,50.88
step
talk Costumed Orphan Matron##24519
turnin Costumed Orphan Matron##11356 |goto Elwynn Forest/0 42.62,64.39
step
talk Costumed Orphan Matron##24519
accept Stop the Fires!##11131 |goto Elwynn Forest/0 42.62,64.39 |or
accept "Let the Fires Come!"##12135 |goto Elwynn Forest/0 42.62,64.39 |or
|tip You will only be able to accept one of these quests.
|tip The quest offered depends on whether Goldshire is under attack or not.
step
click Water Barrel |goto Elwynn Forest/0 42.51,64.49
|tip Click the Water Barrel to pick up a bucket of water.
collect Water Bucket##32971 |n
use the Water Bucket##32971
|tip Throw the buckets at the fires on top of buildings around this area.
Put Out the Fires |q 11131/1 |goto Elwynn Forest/0 42.43,65.63
|only if haveq(11131) or completedq(11131)
step
click Water Barrel |goto Elwynn Forest/0 42.51,64.49
|tip Click the Water Barrel to pick up a bucket of water.
collect Water Bucket##32971 |n
use the Water Bucket##32971
|tip Throw the buckets at the fires on top of buildings around this area.
Put Out the Fires |q 12135/1 |goto Elwynn Forest/0 42.43,65.63
|only if haveq(12135) or completedq(12135)
step
talk Large Jack-O'-Lantern
accept Smash the Pumpkin##12133 |goto Elwynn Forest/0 42.39,65.87
|tip This will only be available after the Headless Horseman is defeated.
step
talk Costumed Orphan Matron##24519
turnin Stop the Fires!##11131 |goto Elwynn Forest/0 42.62,64.39 |only if haveq(11131) or completedq(11131) |or
turnin "Let the Fires Come!"##12135 |goto Elwynn Forest/0 42.62,64.39 |only if haveq(12135) or completedq(12135) |or
turnin Smash the Pumpkin##12133 |goto Elwynn Forest/0 42.62,64.39 |only if haveq(12133) or completedq(12133)
step
use Dousing Agent##68648
Douse the Horde's Wickerman |q 29371/1 |goto Tirisfal Glades/0 62.37,68.20
step
talk Keira##52064
turnin A Time to Lose##29371 |goto Elwynn Forest/0 32.08,50.60
step
Reach Level 75 |ding 75 |or
|tip You must be at least level 75 to be able to kill the Headless Horseman.
|tip Use the Leveling guides to accomplish this.
'|complete not completedq(11131,12135,11404) |next "Begin_Dailies" |or
step
click Pumpkin Shrine
|tip It's in the courtyard of the Scarlet Monastery Graveyard dungeon.
|tip You will need a full group for this.
accept Call the Headless Horseman##11404 |or
'|complete not completedq(11131,12135,11404) |next "Begin_Dailies" |or
step
click Loosely Turned Soil
|tip In front of the crypt behind the Pumpkin Shine.
kill Headless Horseman##23682
|tip He will fly down shortly after disturbing the soil.
|tip When he reaches 1% health, his head will fly off.
|tip Burn the head down to make it rejoin his body.
|tip You will need to do this twice.
|tip After the second time, he will start spawning 4 pumpkins every 30 seconds.
|tip Group them up and AoE them down.
|tip Kill his head the third time it separates to defeat him.
confirm |or
'|complete not completedq(11131,12135,11404) |next "Begin_Dailies" |or
step
click Pumpkin Shrine
turnin Call the Headless Horseman##11404 |or
'|complete not completedq(11131,12135,11404) |next "Begin_Dailies" |or
step
You have completed the availble daily quests for Hallow's End
|tip This guide will reset when more become available.
'|complete not completedq(11131,12135,11404) |next "Begin_Dailies" |or
]])
QuestCore:RegisterGuide("Events Guides\\Hallow's End\\Hallow's End Candy Buckets",{
expansion="mists",
mopready=true,
description="Visit innkeeper candy buckets in Eastern Kingdoms, Kalimdor, and Outland "..
"for tasty treats.",
achieveid={971,963,969,966,5836,5837,7601},
patch='40405',
},[[
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12336 |goto Stormwind City/0 60.52,75.32
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12286 |goto Elwynn Forest/0 43.74,65.89
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12342 |goto Redridge Mountains/0 26.47,41.50
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28955 |goto Badlands/0 65.86,35.65
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28956 |goto Badlands/0 20.86,56.31
step
click Candy Bucket##208144
|tip It's on the top level of the tower.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28965 |goto Searing Gorge/0 39.49,66.04
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12332 |goto Dun Morogh/0 54.49,50.77
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12335 |goto Ironforge/0 18.34,50.97
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12339 |goto Loch Modan/0 35.54,48.49
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28963 |goto Loch Modan/0 83.02,63.53
step
click Candy Bucket##208144
|tip It's on the bottom floor.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28980 |goto Twilight Highlands/0 79.48,78.54
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28977 |goto Twilight Highlands/0 60.35,58.24
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28979 |goto Twilight Highlands/0 43.50,57.27
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28978 |goto Twilight Highlands/0 49.60,30.36
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12343 |goto Wetlands/0 10.82,60.96
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28990 |goto Wetlands/0 26.07,25.99
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28991 |goto Wetlands/0 58.21,39.20
step
click Candy Bucket##208144
|tip It's inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28954 |goto Arathi Highlands/0 40.06,49.09
step
click Candy Bucket##208144
|tip Upstairs inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12351 |goto The Hinterlands/0 14.19,44.60
step
click Candy Bucket##208144
|tip It's inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28970 |goto The Hinterlands/0 66.16,44.43
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12402 |goto Eastern Plaguelands/0 75.57,52.31
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28988 |goto Western Plaguelands/0 43.39,84.38
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12340 |goto Westfall/0 52.91,53.74
If you do not find the Candy Bucket here then it will be located at [56.79,47.27]
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12344 |goto Duskwood/0 73.80,44.26
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28968 |goto Swamp of Sorrows/0 28.93,32.40
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28967 |goto Swamp of Sorrows/0 71.65,14.10
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28960 |goto Blasted Lands/0 60.69,14.08
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28961 |goto Blasted Lands/0 44.35,87.59
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28964 |goto Northern Stranglethorn/0 53.16,66.98
step
click Candy Bucket##208144
|tip It's on the bottom floor of the tavern.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12397 |goto The Cape of Stranglethorn/0 40.91,73.72
step
Ride the Boat to The Barrens |complete zone("The Barrens") or completedq(12396) |goto The Cape of Stranglethorn/0 38.94,66.96
|tip Wait for the boat to take you to Kalimdor.
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12396 |goto The Barrens/0 67.33,74.66
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29006 |goto Southern Barrens/0 39.01,10.99
step
click Candy Bucket##208144
|tip It's inside the base of the tower.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29007 |goto Southern Barrens/0 65.60,46.54
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29008 |goto Southern Barrens/0 49.05,68.50
step
click Candy Bucket##208144
|tip It's inside the inn on the second floor.
|tip If the city is a crater, you can skip this or talk to Zidormi in the pillar of light at the entrance to the city crater to see the old version.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12349 |goto Dustwallow Marsh/0 66.60,45.28
step
click Candy Bucket##208144
|tip It's inside the inn on the second floor.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12398 |goto Dustwallow Marsh/0 41.86,74.09
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12399 |goto Tanaris/0 52.56,27.10
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29014 |goto Tanaris/0 55.70,60.96
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29017 |goto Uldum/0 54.68,33.01
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29018 |goto Un'Goro Crater/0 55.27,62.11
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29016 |goto Uldum/0 26.59,7.23
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12401 |goto Silithus/0 55.47,36.78
step
click Candy Bucket##208144
|tip It's inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12350 |goto Feralas/0 46.33,45.19
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28952 |goto Feralas/0 51.07,17.82
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28993 |goto Desolace/0 56.72,50.13
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12348 |goto Desolace/0 66.33,6.59
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29010 |goto Stonetalon Mountains/0 71.02,79.08
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29011 |goto Stonetalon Mountains/0 59.05,56.33
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29013 |goto Stonetalon Mountains/0 31.53,60.66
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29012 |goto Stonetalon Mountains/0 39.48,32.81
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12345 |goto Ashenvale/0 37.01,49.26
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29000 |goto Mount Hyjal/0 18.63,37.32
step
click Candy Bucket##208144
|tip It's under the ramp.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29001 |goto Mount Hyjal/0 42.68,45.71
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28999 |goto Mount Hyjal/0 63.05,24.14
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12400 |goto Winterspring/0 59.83,51.21
step
click Candy Bucket##208144
|tip It's inside the big tree.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28995 |goto Felwood/0 61.86,26.71
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28994 |goto Felwood/0 44.58,28.98
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28951 |goto Darkshore/0 50.79,18.89
step
Go up the ramp |goto The Exodar/0 56.38,31.15 < 15 |walk
click Candy Bucket##208144
|tip Inside the building inside The Exodar.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12337 |goto The Exodar/0 59.23,18.48
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12333 |goto Azuremyst Isle/0 48.49,49.05
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12341 |goto Bloodmyst Isle/0 55.69,59.96
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12334 |goto Darnassus/0 62.27,33.15
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12331 |goto Teldrassil/0 55.36,52.29
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12404 |goto Shattrath City/0 56.31,81.95
only if rep ('The Scryers')>=Neutral
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12404 |goto Shattrath City/0 28.23,49.07
only if rep ('The Aldor')>=Neutral
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12357 |goto Nagrand/0 54.19,75.88
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12356 |goto Terokkar Forest/0 56.60,53.22
step
click Candy Bucket##208144
|tip It's inside the inn back in the corner.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12360 |goto Shadowmoon Valley/0 37.01,58.29
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12409 |goto Shadowmoon Valley/0 56.37,59.82
only if rep ('The Scryers')>=Neutral
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12409 |goto Shadowmoon Valley/0 61.00,28.17
only if rep ('The Aldor')>=Neutral
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12352 |goto Hellfire Peninsula/0 54.27,63.66
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12353 |goto Hellfire Peninsula/0 23.42,36.38
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12403 |goto Zangarmarsh/0 78.45,62.88
step
click Candy Bucket##208144
|tip It's inside the inn atop the giant mushroom.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12354 |goto Zangarmarsh/0 67.16,48.94
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12355 |goto Zangarmarsh/0 41.90,26.17
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12358 |goto Blade's Edge Mountains/0 35.83,63.74
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12359 |goto Blade's Edge Mountains/0 61.05,68.08
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12406 |goto Blade's Edge Mountains/0 62.90,38.33
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12407 |goto Netherstorm/0 32.02,64.44
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12408 |goto Netherstorm/0 43.31,36.10
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13436 |goto Borean Tundra/0 58.52,67.87
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13460 |goto Borean Tundra/0 78.45,49.16
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13437 |goto Borean Tundra/0 57.12,18.81
step
click Candy Bucket##208144
|tip It's under the tent.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12950 |goto Sholazar Basin/0 26.61,59.20
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13438 |goto Dragonblight/0 28.95,56.22
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13459 |goto Dragonblight/0 48.12,74.66
step
click Candy Bucket##208144
|tip It's on the bottom floor.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13456 |goto Dragonblight/0 60.15,53.45
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13439 |goto Dragonblight/0 77.50,51.28
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12944 |goto Grizzly Hills/0 31.94,60.22
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12945 |goto Grizzly Hills/0 59.64,26.36
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13435 |goto Howling Fjord/0 60.47,15.90
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13433 |goto Howling Fjord/0 58.32,62.82
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13434 |goto Howling Fjord/0 30.83,41.43
step
click Candy Bucket##208144
|tip It's inside the underground inn.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13452 |goto Howling Fjord/0 25.44,59.82
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12941 |goto Zul'Drak/0 40.87,66.04
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12940 |goto Zul'Drak/0 59.33,57.20
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13461 |goto The Storm Peaks/0 41.07,85.85
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13448 |goto The Storm Peaks/0 28.72,74.29
step
click Candy Bucket##208144
|tip It's inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13462 |goto The Storm Peaks/0 30.92,37.16
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13463 |goto Dalaran/1 48.14,41.31
step
click Candy Bucket##208144
|tip It's under the stairs.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13473 |goto Dalaran/1 42.35,63.07
step
click Candy Bucket##208144
|tip It's in the side room on the left.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13472 |goto Dalaran/1 38.20,59.61
step
For the last buckets, you will need to level through Cataclysm
|tip Complete the Vashj'ir leveling guide to unlock all of the various areas of that zone.
|tip Complete the beginning of the Deepholm leveling guide to gain access to Deepholm.
|confirm
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29020 |goto Deepholm/0 47.35,51.71
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28985 |goto Abyssal Depths/0 54.67,72.11
Enter the cave here [60.07,79.40]
|tip Swim underwater into the cave if you do not have the flight path.
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28983 |goto Shimmering Expanse/0 49.72,57.39
Enter the cave here [47.17,57.42]
|tip Swim underwater into the cave if you do not have the flight path.
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28982 |goto Shimmering Expanse/0 49.18,41.87
Enter the cave here [50.07,39.35]
|tip Swim underwater into the cave if you do not have the flight path.
step
Enter the cave |goto Kelp'thar Forest/0 61.48,63.54 < 20 |walk
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28981 |goto Kelp'thar Forest/0 63.50,60.16
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32049 |goto The Jade Forest/0 44.80,84.36
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32033 |goto The Jade Forest/0 59.56,83.24
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32032 |goto The Jade Forest/0 54.61,63.33
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32027 |goto The Jade Forest/0 45.77,43.61
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32021 |goto The Jade Forest/0 41.68,23.14
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32031 |goto The Jade Forest/0 55.72,24.41
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32029 |goto The Jade Forest/0 48.09,34.62
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32039 |goto Kun-Lai Summit/0 72.73,92.28
step
click Candy Bucket##208144
|tip You {o}must complete{} the {o}Challenge Accepted{} quest to access this candy bucket.	|only if not completedq(30514)
|tip Complete the {o}few quests{} at {o}Binan Village{} nearby.					|only if not completedq(30514)
|tip The {o}quests will lead you{} to Westwind Rest.						|only if not completedq(30514)
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32042 |goto Kun-Lai Summit/0 54.07,82.82
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32037 |goto Kun-Lai Summit/0 57.45,59.95
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32041 |goto Kun-Lai Summit/0 64.21,61.27
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32051 |goto Kun-Lai Summit/0 62.50,28.90
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32043 |goto Townlong Steppes/0 71.11,57.78
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32044 |goto Vale of Eternal Blossoms/0 35.14,77.78
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32052 |goto Shrine of Seven Stars/1 37.81,65.92
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32026 |goto The Veiled Stair/0 55.10,72.23
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32048 |goto Valley of the Four Winds/0 83.64,20.15
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32046 |goto Valley of the Four Winds/0 19.87,55.79
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32024 |goto Dread Wastes/0 55.93,32.27
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32023 |goto Dread Wastes/0 55.22,71.19
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32036 |goto Krasarang Wilds/0 75.92,6.87
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32034 |goto Krasarang Wilds/0 51.40,77.29
]])
QuestCore:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\The Mask Task",{
expansion="mists",
mopready=true,
startlevel=1,
achieveid={979},
patch='40405',
condition_suggested=function() return isevent("Hallow's End") end,
description="To earn this achievement, you will need to obtain a Flimsy Mask during Hallow's End.",
},[[
step
Earn "The Mask Task" Achievement |achieve 979
|tip Obtain any type of flimsy mask by Trick or Treating hourly.
|tip You also have a chance to obtain one from the Crudely Wrapped Gift from daily fire quests.
]])
QuestCore:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\Rotten Hallow",{
expansion="mists",
mopready=true,
startlevel=25,
achieveid={1040},
patch='40300',
condition_suggested=function() return isevent("Hallow's End") end,
description="Ruin Hallow's End for the Horde and foil their attempts to wreck the Alliance celebration by completing the following quests:\n\n"..
"A Time to Gain\nA Time to Lose\nStink Bombs Away!\nClean Up in Stormwind",
},[[
step
talk Celestine of the Harvest##51665
accept A Time to Gain##29075 |goto Elwynn Forest/0 32.04,50.51
step
talk Keira##52064
accept A Time to Lose##29371 |goto Elwynn Forest/0 32.08,50.60
step
talk Gretchen Fenlow##51934
accept Stink Bombs Away!##29054 |goto Elwynn Forest/0 32.35,50.88
accept Clean Up in Stormwind##29144 |goto Elwynn Forest/0 32.35,50.88
step
talk Gertrude Fenlow##52548
Select _"I'm ready to fly, let's bomb the Undercity!"_ |gossip 113573
Begin Your Flight to Undercity |invehicle |goto Elwynn Forest/0 32.21,50.77 |q 29054
step
Reach Undercity |complete zone("Undercity") or completedq(29054)
step
Drop #25# Bombs |q 29054/1 |goto Elwynn Forest/0 32.21,50.77
|tip Use the {o}Toss Stink Bomb{} ability on your vehicle bar to drop bombs across Undercity.
|tip You can drop them anywhere.
|tip If you're feeling kind, focus on dropping them in areas where Horde players can easily remove them later.
step
Return to Elwynn Forest |complete zone("Elwynn Forest") or zone("Stormwind City") or completedq(29054)
|tip Use the {o}Return Home{} button on your vehicle bar.
step
click Bonfire
Use the Bonfire |q 29075/1 |goto Elwynn Forest/0 32.86,49.37
step
use the Arcane Cleanser##69191
|tip Use it all over Stormwind City on large orange clouds of smoke coming from the ground.
Remove #10# Stink Bombs |q 29144/1 |goto Stormwind City/0 57.58,63.42
step
talk Celestine of the Harvest##51665
turnin A Time to Gain##29075 |goto Elwynn Forest/0 32.04,50.51
step
talk Gretchen Fenlow##51934
turnin Stink Bombs Away!##29054 |goto Elwynn Forest/0 32.35,50.88
turnin Clean Up in Stormwind##29144 |goto Elwynn Forest/0 32.35,50.88
step
use Dousing Agent##68648
Douse the Horde's Wickerman |q 29371/1 |goto Tirisfal Glades/0 62.37,68.20
step
talk Keira##52064
turnin A Time to Lose##29371 |goto Elwynn Forest/0 32.08,50.60
step
Earn "Rotten Hallow" Achievement |achieve 1040
]])
QuestCore:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\The Savior of Hallow's End",{
expansion="mists",
mopready=true,
startlevel=1,
achieveid={289},
patch='40405',
condition_suggested=function() return isevent("Hallow's End") end,
description="To earn this achievement, complete one of the quests to save a village from the Headless Horseman.",
},[[
step
talk Human Commoner##18927
accept Costumed Orphan Matron##11356 |goto Stormwind City/0 61.75,74.13
step
talk Costumed Orphan Matron##24519
turnin Costumed Orphan Matron##11356 |goto Elwynn Forest/0 Elwynn Forest/0 42.62,64.39
accept Fire Brigade Practice##11360 |goto Elwynn Forest/0 42.62,64.39
|tip You may need to wait for the Horseman's assault to stop.
step
click Water Barrel |goto Elwynn Forest/0 42.51,64.49
|tip Click the Water Barrel to pick up a bucket of water.
collect Water Bucket##32971 |n
use the Water Bucket##32971
|tip Throw the buckets at the fires on top of buildings around this area.
|tip You may have to wait a short amount of time for the Horseman to attack.
Put Out #5# Fires |q 11360/1 |goto Elwynn Forest/0 42.43,65.63
step
talk Large Jack-O'-Lantern
accept Smash the Pumpkin##12133 |goto Elwynn Forest/0 42.39,65.87
|tip This will only be available after the Headless Horseman is defeated.
|tip You can skip this step if it does not drop.
step
talk Costumed Orphan Matron##24519
turnin Fire Brigade Practice##11360 |goto Elwynn Forest/0 42.62,64.39
turnin Smash the Pumpkin##12133 |goto Elwynn Forest/0 42.62,64.39 |only if haveq(12133) or completedq(12133)
step
talk Costumed Orphan Matron##24519
accept Stop the Fires!##11131 |goto Elwynn Forest/0 42.62,64.39 |or
accept "Let the Fires Come!"##12135 |goto Elwynn Forest/0 42.62,64.39 |or
|tip You will only be able to accept one of these quests.
|tip The quest offered depends on whether Goldshire is under attack or not.
step
click Water Barrel |goto Elwynn Forest/0 42.51,64.49
|tip Click the Water Barrel to pick up a bucket of water.
collect Water Bucket##32971 |n
use the Water Bucket##32971
|tip Throw the buckets at the fires on top of buildings around this area.
Put Out the Fires |q 11131/1 |goto Elwynn Forest/0 42.43,65.63
|only if haveq(11131) or completedq(11131)
step
click Water Barrel |goto Elwynn Forest/0 42.51,64.49
|tip Click the Water Barrel to pick up a bucket of water.
collect Water Bucket##32971 |n
use the Water Bucket##32971
|tip Throw the buckets at the fires on top of buildings around this area.
Put Out the Fires |q 12135/1 |goto Elwynn Forest/0 42.43,65.63
|only if haveq(12135) or completedq(12135)
step
talk Large Jack-O'-Lantern
accept Smash the Pumpkin##12133 |goto Elwynn Forest/0 42.39,65.87
|tip This will only be available after the Headless Horseman is defeated.
step
talk Costumed Orphan Matron##24519
turnin Stop the Fires!##11131 |goto Elwynn Forest/0 42.62,64.39 |only if haveq(11131) or completedq(11131) |or
turnin "Let the Fires Come!"##12135 |goto Elwynn Forest/0 42.62,64.39 |only if haveq(12135) or completedq(12135) |or
turnin Smash the Pumpkin##12133 |goto Elwynn Forest/0 42.62,64.39 |only if haveq(12133) or completedq(12133)
|only if haveq(11131,12135,12133) or completedq(11131,12135,12133)
step
Earn "The Savior of Hallow's End" Achievement |achieve 289
]])
QuestCore:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\Trick or Treat!",{
expansion="mists",
mopready=true,
startlevel=1,
achieveid={972},
patch='40405',
condition_suggested=function() return isevent("Hallow's End") end,
description="To earn this achievement you will visit a single candy bucket.",
},[[
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12336 |goto Stormwind City/0 60.51,75.33
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
Earn the "Trick or Treat!" Achievement |achieve 972
]])
QuestCore:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\Don't Lose Your Head, Man",{
expansion="mists",
mopready=true,
startlevel=75,
achieveid={18959},
patch='40405',
condition_suggested=function() return isevent("Hallow's End") end,
description="To earn this achievement, you will have to kill the Headless Horseman.",
},[[
step
Reach Level 75 |ding 75
|tip You will need to be level 75 to summon the Horseman yourself.
|tip You can be any level and skip this if someone can summon for you.
|tip Use the leveling guides to accomplish this.
step
Inside the Scarlet Monastery Graveyard:
kill Headless Horseman##23682
|tip Enter the Scarlet Monastery Graveyard with a group.
|tip Accept the daily in the couryard at the Pumpkin Shrine when you are ready.
achieve 18959
]])
QuestCore:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\Out With It",{
expansion="mists",
mopready=true,
startlevel=1,
achieveid={288},
patch='40405',
condition_suggested=function() return isevent("Hallow's End") end,
description="To earn this achievement you will have to eat so many Tricky Treats that you get an upset tummy.",
},[[
step
use the Tricky Treat##33226
|tip You get these by completing Hallows End quests.
|tip Keep using your Tricky Treats quickly until you puke.
|tip You will need at least 2-3 Tricky Treats.
|tip Use the "Hallow's End Candy Buckets" guide to collect treats.
Earn the "Out With It" Achievement |achieve 288
]])
QuestCore:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\A Mask for All Occasions",{
expansion="mists",
mopready=true,
startlevel=1,
achieveid={284},
patch='40405',
condition_suggested=function() return isevent("Hallow's End") end,
description="To earn this achievement, collect the following 24 masks:\n\n"..
"Blood Elf Male/Female\nDraenei Male/Female\nDwarf Male/Female\nGnome Male/Female\n"..
"Human Male/Female\nNight Elf Male/Female\nOrc Male/Female\nTauren Male/Female\n"..
"Troll Male/Female\nUndead Male/Female",
},[[
step
Obtain a Flimsy Male Orc Mask |achieve 284/1 |only if not achieved(284,1)
Obtain a Flimsy Male Blood Elf Mask |achieve 284/2 |only if not achieved(284,2)
Obtain a Flimsy Female Orc Mask |achieve 284/3 |only if not achieved(284,3)
Obtain a Flimsy Female Human Mask |achieve 284/4 |only if not achieved(284,4)
Obtain a Flimsy Female Gnome Mask |achieve 284/5 |only if not achieved(284,5)
Obtain a Flimsy Female Draenei Mask |achieve 284/6 |only if not achieved(284,6)
Obtain a Flimsy Male Troll Mask |achieve 284/7 |only if not achieved(284,7)
Obtain a Flimsy Female Undead Mask |achieve 284/8 |only if not achieved(284,8)
Obtain a Flimsy Female Troll Mask |achieve 284/9 |only if not achieved(284,9)
Obtain a Flimsy Female Blood Elf Mask |achieve 284/10 |only if not achieved(284,10)
Obtain a Flimsy Male Undead Mask |achieve 284/11 |only if not achieved(284,11)
Obtain a Flimsy Male Draenei Mask |achieve 284/12 |only if not achieved(284,12)
Obtain a Flimsy Female Night Elf Mask |achieve 284/13 |only if not achieved(284,13)
Obtain a Flimsy Male Night Elf Mask |achieve 284/14 |only if not achieved(284,14)
Obtain a Flimsy Male Gnome Mask |achieve 284/15 |only if not achieved(284,15)
Obtain a Flimsy Male Tauren Mask |achieve 284/16 |only if not achieved(284,16)
Obtain a Flimsy Male Human Mask |achieve 284/17 |only if not achieved(284,17)
Obtain a Flimsy Male Dwarf Mask |achieve 284/18 |only if not achieved(284,18)
Obtain a Flimsy Female Tauren Mask |achieve 284/19 |only if not achieved(284,19)
Obtain a Flimsy Female Dwarf Mask |achieve 284/20 |only if not achieved(284,20)
|tip Obtain all flimsy masks by Trick or Treating hourly.
|tip You also have a chance to obtain one from the Crudely Wrapped Gift from daily fire quests.
Earn the "A Mask for All Occasions" Achievement |achieve 284
]])
QuestCore:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\That Sparkling Smile",{
expansion="mists",
mopready=true,
startlevel=1,
achieveid={981},
patch='40405',
condition_suggested=function() return isevent("Hallow's End") end,
description="To earn this achievement you will need to show off your sparkling smile by using a Tooth Pick.",
},[[
step
collect 1 Tooth Pick##37604
|tip These drop from the Headless Horseman.
|tip They have a small chance to drop from the Treat Bag from Trick or Treating hourly.
|tip The also have a small chance to drop from the Crudely Wrapped Gift reward from the "Putting out the Fires" daily quest
step
use the Tooth Pick##37604
Earn the "That Sparkling Smile" Achievement |achieve 981
]])
QuestCore:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\G.N.E.R.D. Rage",{
expansion="mists",
mopready=true,
startlevel=1,
achieveid={1261},
patch='40405',
condition_suggested=function() return isevent("Hallow's End") end,
description="Earn 50 Honorable Hills while Under the Influence of the G.N.E.R.D. Buff.",
},[[
step
use G.N.E.R.D.S.##37583
|tip You can collect these from Handfuls of Candy after Trick or Treating.
|tip Use them every 30 minutes while PvPing to keep the buff on.
|tip If you don't have the buff active while killing players, you won't get credit.
Do any type of PvP of your choice
|tip You must be killing players that give you honor.
Earn #50# Honorable Hills while Under the Influence of the G.N.E.R.D. Buff |achieve 1261
]])
QuestCore:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\Check Your Head",{
expansion="mists",
mopready=true,
startlevel=1,
achieveid={291},
patch='40405',
condition_suggested=function() return isevent("Hallow's End") end,
description="To earn this achievement you have to use Weighted Jack-o'-Lanterns to put pumpkin heads on each of the races listed below:\n\n"..
"Blood Elf\nDraenei\nDwarf\nGnome\nHuman\nNight Elf\nOrc\nTauren\nTroll\nUndead",
},[[
step
use the Weighted Jack-o'-Lantern##34068
|tip You receive Weighted Jack-o'-Lanterns by doing the Hallow's End daily quests and killing the Headless Horseman.
|tip Make sure the player doesn't already have a jack-o-lantern on their head or you won't get credit.
|tip Use your Weighted Jack-o'-Lanterns on the following races:
Undead |achieve 291/1 |goto Dalaran/1 49.38,28.50 |only if not achieved(291,1)
Troll |achieve 291/2 |goto Dalaran/1 49.38,28.50 |only if not achieved(291,2)
Tauren |achieve 291/3 |goto Dalaran/1 49.38,28.50 |only if not achieved(291,3)
Orc |achieve 291/4 |goto Dalaran/1 49.38,28.50 |only if not achieved(291,4)
Night Elf |achieve 291/5 |goto Dalaran/1 49.00,61.36 |only if not achieved(291,5)
Human |achieve 291/6 |goto Dalaran/1 49.00,61.36 |only if not achieved(291,6)
Draenei |achieve 291/7 |goto Dalaran/1 49.00,61.36 |only if not achieved(291,7)
Blood Elf |achieve 291/8 |goto Dalaran/1 49.38,28.50 |only if not achieved(291,8)
Gnome |achieve 291/9 |goto Dalaran/1 49.00,61.36 |only if not achieved(291,9)
Dwarf |achieve 291/10 |goto Dalaran/1 49.00,61.36 |only if not achieved(291,10)
Earn the "Check Your Head" Achievement |achieve 291
]])
QuestCore:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\Hallowed Be Thy Name",{
expansion="mists",
mopready=true,
startlevel=1,
achieveid={1656},
patch='40405',
condition_suggested=function() return isevent("Hallow's End") end,
description="To earn this achievement, complete the following Hallow's End achievements:\n\n"..
"Trick or Treat!\nOut With It\nDon't Lose Your Head, Man\nThe Savior of Hallow's End\n"..
"That Sparkling Smile\nRotten Hallow\nG.N.E.R.D. Rage\nCheck Your Head\nThe Masquerade\n"..
"Sinister Calling\nTricks and Treats of Azeroth",
},[[
leechsteps "Events Guides\\Hallow's End\\Achievements\\Out With It" 1-1
leechsteps "Events Guides\\Hallow's End\\Achievements\\Don't Lose Your Head, Man" 1-2
leechsteps "Events Guides\\Hallow's End\\Achievements\\The Savior of Hallow's End" 1-11
leechsteps "Events Guides\\Hallow's End\\Achievements\\Rotten Hallow" 1-7
leechsteps "Events Guides\\Hallow's End\\Achievements\\G.N.E.R.D. Rage" 1-1
leechsteps "Events Guides\\Hallow's End\\Achievements\\Check Your Head" 1-1
leechsteps "Events Guides\\Hallow's End\\Achievements\\The Masquerade" 1-1
leechsteps "Events Guides\\Hallow's End\\Achievements\\Sinister Calling" 1-3
leechsteps "Events Guides\\Hallow's End\\Achievements\\That Sparkling Smile" 1-2
leechsteps "Events Guides\\Hallow's End\\Hallow's End Candy Buckets" 1-81
]])
QuestCore:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\The Masquerade",{
expansion="mists",
mopready=true,
startlevel=1,
achieveid={283},
patch='40405',
condition_suggested=function() return isevent("Hallow's End") end,
description="To earn this achievement you will have to get transformed by the Hallowed Wands listed below:\n\n"..
"Hallowed Wand - Bat\nHallowed Wand - Ghost\nHallowed Wand - Leper Gnome\nHallowed Wand - Ninja\n"..
"Hallowed Wand - Pirate\nHallowed Wand - Skeleton\nHallowed Wand - Wisp",
},[[
step
Transform into a Bat |achieve 283/1 |only if not achieved(283,1)
Transform into a Ghost |achieve 283/2 |only if not achieved(283,2)
Transform into a Leper Gnome |achieve 283/3 |only if not achieved(283,3)
Transform into a Ninja |achieve 283/4 |only if not achieved(283,4)
Transform into a Pirate |achieve 283/5 |only if not achieved(283,5)
Transform into a Skeleton |achieve 283/6 |only if not achieved(283,6)
Transform into a Wisp |achieve 283/7 |only if not achieved(283,7)
|tip Have other players use Hallowed Wands on you while in a party to transform.
|tip Find someone to team up with or ask around in Dalaran.
]])
QuestCore:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\Sinister Calling",{
expansion="mists",
mopready=true,
startlevel=1,
achieveid={292},
patch='40405',
condition_suggested=function() return isevent("Hallow's End") end,
description="To earn this achievement, you will need to obtain a Sinister Squashling pet and Hallowed Helm.",
},[[
step
collect 1 Sinister Squashling##33154
collect 1 Hallowed Helm##33292
|tip These drop from the Headless Horseman.
|tip They have a very small chance to drop from the Treat Bag from Trick or Treating hourly.
step
use the Sinister Squashling##33154
Obtain a Sinister Squashling Pet |achieve 292/1
step
use the Hallowed Helm##33292
Obtain a Hallowed Helm |achieve 292/2
]])
QuestCore:RegisterGuide("Events Guides\\Harvest Festival\\Harvest Festival Quest",{
expansion="mists",
mopready=true,
condition_end=function() return completedq(8149) end,
description="Complete the quest \"Honoring a Hero\" for the Harvest Festival event.",
},[[
step
Reach Level 30 |ding 30
|tip You must be at least level 30 to be able to accept the quest.
|tip Use the Leveling guides to accomplish this.
step
_Note:_
|tip While you can accept this quest at level 30, you must go to an area with level 50-52 enemies.
|tip If you are not high enough level to kill enemies of that level, try to find someone to help you.
Click Here to Continue |confirm |q 8149 |future
step
talk Wagner Hammerstrike##15011
accept Honoring a Hero##8149 |goto Dun Morogh/0 59.74,34.27
step
use Uther's Tribute##19850
|tip Inside the building.
Place a Tribute at Uther's Tomb |q 8149/1 |goto Western Plaguelands/0 52.14,83.57
step
talk Wagner Hammerstrike##15011
turnin Honoring a Hero##8149 |goto Dun Morogh/0 59.74,34.27
]])
QuestCore:RegisterGuide("Events Guides\\Feast of Winter Veil\\Feast of Winter Veil Quests",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Feast of Winter Veil') and not completedq(7045) end,
description="This guide section will walk you through completing the quests for the Feast of Winter Veil event.",
},[[
step
Reach Level 40 |ding 40
|tip You can skip this step and proceed, but several quests require level 30 to level 40.
|tip All quests in this guide require a minimum of level 10 to accept.
step
talk Gwenna Firebrew##5112
|tip Inside the building.
buy 1 Ice Cold Milk##1179 |goto Ironforge/0 18.63,51.77 |q 7025 |future
step
talk Wulmort Jinglepocket##13433
accept Greatfather Winter is Here!##7022 |goto Ironforge/0 33.59,67.92
step
talk Greatfather Winter##13444
turnin Greatfather Winter is Here!##7022 |goto Ironforge/0 33.16,65.43
accept Treats for Greatfather Winter##7025 |goto Ironforge/0 33.16,65.43
step
talk Goli Krumn##1365
accept The Reason for the Season##7062 |goto Ironforge/0 30.26,59.41
step
Enter the building |goto Ironforge/0 59.29,37.87 < 10 |walk
talk Daryl Riknussun##5159
|tip Inside the building.
Train Cooking |skillmax Cooking,1 |goto Ironforge/0 60.07,36.43
step
talk Historian Karnik##2916
|tip Inside the building.
turnin The Reason for the Season##7062 |goto Ironforge/0 77.54,11.82
accept The Feast of Winter Veil##7063 |goto Ironforge/0 77.54,11.82
step
Enter the building |goto Ironforge/0 44.64,49.38 < 7 |walk
talk King Magni Bronzebeard##2784
|tip Inside the building.
turnin The Feast of Winter Veil##7063 |goto Ironforge/0 39.17,56.09
step
Leave the building |goto Ironforge/0 44.55,49.50 < 7 |walk
talk Wulmort Jinglepocket##13433
buy 1 Recipe: Gingerbread Cookie##17200 |goto Ironforge/0 33.59,67.92 |q 7025 |only if not knowsrecipe(21143)
buy 5 Holiday Spices##17194 |goto Ironforge/0 33.59,67.92 |q 7025
step
use the Recipe: Gingerbread Cookie##17200
learn Gingerbread Cookie##21143
step
talk Auctioneer Redmuse##8720
|tip Inside the building.
buy 5 Small Egg##6889 |goto Ironforge/0 24.24,74.54 |next "Cook_Gingerbread_Cookies" |q 7025 |or
_Or_
Click Here to Farm Them |confirm |next "Farm_Small_Eggs" |or
step
label "Farm_Small_Eggs"
Kill Fleshripper enemies around this area
|tip You can find them flying all over Westfall.
collect 5 Small Egg##6889 |goto Westfall/0 50.61,27.62 |q 7025
step
label "Cook_Gingerbread_Cookies"
cast Basic Campfire##818
|tip Stand next to your fire or a Dwarven Brazier in Ironforge.
create 5 Gingerbread Cookie##21143,Cooking,5 total |q 7025/1 |goto Ironforge/0 33.50,65.58
step
talk Greatfather Winter##13444
turnin Treats for Greatfather Winter##7025 |goto Ironforge/0 33.16,65.43
step
ding 80
|tip You will also need 300 cooking skill for one quest.
|tip It will not be shown if you do not meet the skill requirement.
step
talk Strange Snowman##13636
accept You're a Mean One...##7043 |goto Hillsbrad Foothills/0 42.35,41.14
step
kill The Abominable Greench##54499
|tip This is a boss and will require a group.
collect Stolen Treats##17662 |q 7043/2 |goto Hillsbrad Foothills/0 43.56,39.13
step
Free Metzen the Reindeer |q 7043/1 |goto Hillsbrad Foothills/0 44.12,38.56
|tip Metzen will run free shortly after killing the Greench.
step
talk Wulmort Jinglepocket##13433
turnin You're a Mean One...##7043 |goto Ironforge/0 33.59,67.92
step
talk Wulmort Jinglepocket##13433
|tip These should be available after completing You're a Mean One...
accept A Smokywood Pastures' Thank You!##7045 |goto Ironforge/0 33.59,67.92
accept The Hero of the Day##8763 |goto Ironforge/0 33.59,67.92 |only if skill("Cooking") >= 300
step
talk Greatfather Winter##13444
turnin A Smokywood Pastures' Thank You!##7045 |goto Ironforge/0 33.16,65.43
stickystart "Collect_5_Gold"
step
Kill Rock Elemental enemies |kill Lesser Rock Elemental##2735,kill Rock Elemental##92
collect 1 Deeprock Salt##8150 |q 8763/1 |goto Badlands/0 17.08,31.80
|tip You can also purchase this item from the auction house.
You can find more around [Badlands/0 41.00,69.12]
|only if haveq(8763) or completedq(8763)
step
label "Collect_5_Gold"
Collect 5 Gold |complete _G.GetMoney() >= 50000 |q 8763 |future
|only if haveq(8763) or completedq(8763)
step
click Holly Preserver##180715
turnin The Hero of the Day##8763 |goto Ironforge/0 37.40,70.21
|only if haveq(8763) or completedq(8763)
]])
QuestCore:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\'Tis the Season",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(277) end,
achieveid={277},
patch='30002',
description="During the Feast of Winter Veil, wear 3 pieces of winter clothing and eat Graccu's Mince Meat Fruitcake.",
},[[
step
Complete the "Feast of Winter Veil Quests" guide |complete completedq(7045) |only if level >= 80
Complete the "Feast of Winter Veil Quests" guide |complete completedq(7063) |only if default
step
talk Auctioneer Redmuse##8720
buy 1 Red Winter Clothes##34085 |goto Ironforge/0 24.24,74.54 |next "Collect_Winter_Boots" |or
buy 1 Green Winter Clothes##34087 |goto Ironforge/0 24.24,74.54 |next "Collect_Winter_Boots" |or
|tip You only need one of these.
_Or_ |only if skill("Tailoring") >= 250 |or
Click Here to Craft Clothes with Tailoring |confirm |next "Craft_Winter_Clothes" |only if skill("Tailoring") >= 250 |or
'|complete achieved(277) |or
step
label "Craft_Winter_Clothes"
talk Wulmort Jinglepocket##13433
buy 1 Pattern: Red Winter Clothes##34319 |goto Ironforge/0 33.59,67.92 |or
'|complete achieved(277) |or
step
use the Pattern: Red Winter Clothes##34319
learn Red Winter Clothes##44958 |or
'|complete achieved(277) |or
step
collect 16 Runecloth##14047 |or
|tip Farm them from humanoid mobs or purchase them from the Auction House.
'|complete achieved(277) |or
step
collect 3 Wool Cloth##2592 |or
|tip Farm them from humanoid mobs or purchase them from the Auction House.
'|complete achieved(277) |or
step
talk Bombus Finespindle##5128
|tip Inside the building.
buy 1 Rune Thread##14341 |goto Ironforge/0 39.61,34.47
buy 2 Red Dye##2604 |goto Ironforge/0 39.61,34.47
step
create 1 Bolt of Woolen Cloth##2964,Tailoring,1 total |or
'|complete achieved(277) |or
step
create 4 Bolt of Runecloth##18401,Tailoring,4 total |or
'|complete achieved(277) |or
step
create 1 Green Winter Clothes##44950,Tailoring,1 total |or
'|complete achieved(277) |or
step
label "Collect_Winter_Boots"
talk Auctioneer Redmuse##8720
|tip Inside the building.
buy 1 Winter Boots##34086 |goto Ironforge/0 24.24,74.54 |next "Collect_Winter_Hat" |or
_Or_ |only if skill("Leatherworking") >= 285
Click Here to Craft Boots with Leatherworking |confirm |next "Create_Winter_Boots" |or |only if skill("Leatherworking") >= 285
'|complete achieved(277) |or
step
label "Create_Winter_Boots"
talk Wulmort Jinglepocket##13433
buy Pattern: Winter Boots##34262 |goto Ironforge/0 33.59,67.92 |or
'|complete achieved(277) |or
step
use the Pattern: Winter Boots##34262
learn Winter Boots##44953 |or
'|complete achieved(277) |or
step
collect 1 Copper Bar##2840 |or
|tip Farm and Smelt it with Mining or purchase it from the Auction House.
'|complete achieved(277) |or
step
collect 1 Bolt of Woolen Cloth##2997 |or
|tip Farm the cloth from humanoid mobs and create it with Tailoring or purchase it from the Auction House.
'|complete achieved(277) |or
step
collect 4 Rugged Leather##8170 |or
|tip Farm it with Skinning or purchase it from the Auction House.
'|complete achieved(277) |or
step
create 1 Winter Boots##44953,Leatherworking,1 total |or
'|complete achieved(277) |or
step
label "Collect_Winter_Hat"
kill Grand Magus Telestra##26731
|tip Inside "The Nexus" dungeon.
|tip It's the bottom portal.
|tip The hat will only drop on Heroic difficulty.
Collect a Winter Hat |complete itemcount(21525) >=1 or itemcount(21524) >= 1 |goto The Nexus/1 |achieve 277 |future
step
collect Smokywood Pastures Sampler##17685 |or
|tip You should have this from completing "Treats for Greatfather Winter" in the quest guide.
|tip It can take a while for this to appear in your mailbox.
'|complete achieved(277) |or
step
use the Smokywood Pastures Sampler##17685
use Smokywood Pastures Extra-Special Gift##21216
|tip You may also receive this later in the mail.
collect 1 Graccu's Mince Meat Fruitcake##21215 |or
'|complete achieved(277) |or
step
use the Red Winter Clothes##34085
Equip the Red Winter Clothes |equipped Red Winter Clothes##34085
|only if itemcount(34085) >= 1
step
use the Green Winter Clothes##34087
Equip the Green Winter Clothes |equipped Green Winter Clothes##34087
|only if itemcount(34087) >= 1
step
use the Winter Boots##151791
Equip the Winter Boots |equipped Winter Boots##151791
step
use the Green Winter Hat##21525
Equip the Green Winter Hat |equipped Green Winter Hat##21525
|only if itemcount(21525) >= 1
step
use the Red Winter Hat##21524
Equip the Red Winter Hat |equipped Red Winter Hat##21524
|only if itemcount(21524) >= 1
]])
QuestCore:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\A Frosty Shake",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(1690) end,
achieveid={1690},
patch='30003',
description="During the Feast of Winter Veil, use your Winter Veil Disguise kit to become a "..
"snowman and then dance with another snowman in Dalaran.",
},[[
step
Reach Level 80 |ding 80
step
Complete the "Feast of Winter Veil Quests" Guide |complete completedq(7043)
step
collect 1 Winter Veil Disguise Kit##17712 |or
|tip This should appear in your mailbox within 24 hours of completing the quest guide.
'|complete achieved(1690) |or
step
talk Wulmort Jinglepocket##13433
buy 1 Snowball##17202 |goto Ironforge/0 33.59,67.92 |or
'|complete achieved(1690) |or
step
use the Winter Veil Disguise Kit##17712
|tip Use it near another snowman because it will root you.
|tip You may have to search around Dalaran.
Become a Snowman |complete hasbuff(21848) or achieved(1690) |goto Dalaran/1 48.11,62.79
step
|script DoEmote("DANCE")
Dance with Another Snowman |achieve 1690
|tip Target another snowman player.
]])
QuestCore:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\BB King",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(4436) end,
achieveid={4436},
patch='30300',
description="Pelt the following enemy leaders:\n\nBaine Bloodhoof\nLady Sylvanas Windrunner\n"..
"Lor'themar Theron\nHigh Overlord Saurfang",
},[[
step
click A Winter Veil Gift
|tip You can only open a present from December 25 to January 2.
accept A Winter Veil Gift##13966 |goto Ironforge/0 33.71,65.98
step
use Winter Veil Gift##46740
collect 1 Red Rider Air Rifle##46725 |or
|tip You can only open a present from December 25 to January 2.
'|complete achieved(4436) |or
step
clicknpc Garrosh Hellscream##39605
use the Red Rider Air Rifle##46725
|tip Use it on Garrosh Hellscream inside the building.
Use your Red Rider Air Rifle on Garrosh Hellscream |achieve 4436/4 |goto Orgrimmar/1 48.10,70.46
step
clicknpc Baine Bloodhoof##36648
use the Red Rider Air Rifle##46725
|tip Use it on Baine Bloodhoof inside the building.
Use your Red Rider Air Rifle on Baine Bloodhoof |achieve 4436/1 |goto Thunder Bluff/0 60.25,51.67
step
Enter the tunnel |goto Undercity/0 51.95,64.64 < 10 |walk
clicknpc Lady Sylvanas Windrunner##10181
use the Red Rider Air Rifle##46725
|tip Use it on Lady Sylvanas Windrunner inside the building.
Use your Red Rider Air Rifle on Lady Sylvanas Windrunner |achieve 4436/2 |goto Undercity/0 58.05,91.78
step
clicknpc Lor'themar Theron##16802
use the Red Rider Air Rifle##46725
|tip Use it on Lor'themar Theron inside the building.
Use your Red Rider Air Rifle on Lor'themar Theron |achieve 4436/3 |goto Silvermoon City/0 53.80,20.25
]])
QuestCore:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\Crashin' & Thrashin'",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(1295) end,
achieveid={1295},
patch='30002',
description="Gain 25 crashes with your Crashin' Thrashin' Racer during the Feast of Winter Veil.",
},[[
step
Enter the building |goto Dalaran/1 43.15,45.13 < 5
talk Jepetto Joybuzz##29478
buy 1 Blue Crashin' Thrashin' Racer Controller##54343 |goto Dalaran/1 44.81,45.62 |or
'|complete achieved(1295) |or
step
use the Blue Crashin' Thrashin' Racer Controller##54343
|tip Use the "Racer Rocket Slam" ability on other players' race controllers.
|tip You will likely need to search for them.
|tip Having a friend to do this with helps.
Gain #25# Crashes with your Racer |achieve 1295 |goto Dalaran/1 48.67,62.04
]])
QuestCore:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\Fa-la-la-la-Ogri'la",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(1282) end,
achieveid={1282},
patch='30001',
description="Complete the Bomb Them Again! quest while mounted on a flying reindeer during the Feast of Winter Veil.",
},[[
step
Kiss a Winter Reveler |script DoEmote("KISS")
|tip Emote kiss Winter Revelers for a chance at Mistletoe.
|tip They can be found in capital cities around inns.
|tip You can only get a reward from them once per hour.
|tip You may need to do this multiple times before proceeding.
Collect a Fresh Holly or Preserved Holly |complete itemcount(21212) >= 1 or itemcount(21212) >= 1 or achieved(1282)
step
Routing to proper section |next "Complete_Achievement_Quest" |only if completedq(11010)
Routing to proper section |next "Unlock_Ogri'la_Dailies" |only if not completedq(11010)
step
label "Unlock_Ogri'la_Dailies"
talk Chu'a'lor##23233
accept The Trouble Below##11057 |goto Blade's Edge Mountains/0 28.75,57.38
accept The Crystals##11025 |goto Blade's Edge Mountains/0 28.75,57.38
step
Kill enemies around this area
|tip They spawn all around the crystal-covered hills.
collect 6 Apexis Shard##32569 |goto Blade's Edge Mountains/0 29.23,53.70 |q 11025
step
talk Chu'a'lor##23233
turnin The Crystals##11025 |goto Blade's Edge Mountains/0 28.75,57.38
accept An Apexis Relic##11058 |goto Blade's Edge Mountains/0 28.75,57.38
step
talk Torkus##23316
accept Our Boy Wants To Be A Skyguard Ranger##11030 |goto Blade's Edge Mountains/0 28.38,57.65
step
kill Gan'arg Analyzer##23386+
|tip They can respawn during this process.
click Apexis Relic
|tip It looks like a small crystal of alternating colors floating in the air.
|tip Kill more enemies for shards if needed.
Choose _"Insert an Apexis Shard to begin!"_
|tip Stand on the white globe and watch as the crystal floating above you casts a beam on the surrounding clusters.
|tip Click the clusters in the same color pattern as the crystal.
|tip You must do this eight times.
|tip If you make a mistake, you will be given a few chances to correct yourself before having to start over.
Attain the Apexis Emanations |q 11058/1 |goto Blade's Edge Mountains/0 29.05,47.00
step
Kill enemies around this area
|tip They spawn all around the crystal-covered hills.
collect 11 Apexis Shard##32569 |goto Blade's Edge Mountains/0 29.23,53.70 |q 11030
step
Click the Fel Crystalforge
|tip It looks like a big metal machine with green smoke coming out of it.
Choose _"Purchase 1 Unstable Flask of the Beast for the cost of 10 Apexis Shards"_
collect 1 Unstable Flask of the Beast##32598 |q 11030/1 |goto Blade's Edge Mountains/0 32.79,40.49
step
talk Chu'a'lor##23233
turnin An Apexis Relic##11058 |goto Blade's Edge Mountains/0 28.75,57.38
accept The Relic's Emanation##11080 |goto Blade's Edge Mountains/0 28.75,57.38
step
talk Torkus##23316
turnin Our Boy Wants To Be A Skyguard Ranger##11030 |goto Blade's Edge Mountains/0 28.38,57.65
step
kill Gan'arg Analyzer##23386+
|tip They can respawn during this process.
click Apexis Relic
|tip It looks like a small crystal of alternating colors floating in the air.
|tip Kill more enemies for shards if needed.
Choose _"Insert an Apexis Shard to begin!"_
|tip Stand on the white globe and watch as the crystal floating above you casts a beam on the surrounding clusters.
|tip Click the clusters in the same color pattern as the crystal.
|tip You must do this eight times.
|tip If you make a mistake, you will be given a few chances to correct yourself before having to start over.
Attain the Apexis Vibrations |q 11080/1 |goto Blade's Edge Mountains/0 31.49,63.35
step
talk Chu'a'lor##23233
turnin The Relic's Emanation##11080 |goto Blade's Edge Mountains/0 28.75,57.38
accept The Skyguard Outpost##11062 |goto Blade's Edge Mountains/0 28.75,57.38
step
talk Sky Commander Keller##23334
turnin The Skyguard Outpost##11062 |goto Blade's Edge Mountains/0 27.40,52.69
step
label "Complete_Achievement_Quest"
talk Sky Sergeant Vanderlip##23120
accept Bombing Run##11010 |goto Blade's Edge Mountains/0 27.58,52.91
step
use the Skyguard Bombs##32456
|tip While on your flying reindeer mount, use them on Fel Cannonball Stacks.
|tip They are located next to cannons and marked with a red arrow.
|tip Keep moving and avoid the fel cannonfire.
Destroy #15# Fel Cannonball Stacks |q 11010/1 |goto Blade's Edge Mountains/0 34.49,40.99 |achieve 1282 |future
step
talk Sky Sergeant Vanderlip##23120
turnin Bombing Run##11010 |goto Blade's Edge Mountains/0 27.58,52.91
accept Bomb Them Again!##11023 |goto Blade's Edge Mountains/0 27.58,52.91
step
_You must be on a flying mount!_
use the Preserved Holly##21213 |only if itemcount(21213) >= 1
use the Fresh Holly##21212 |only if itemcount(21212) >= 1
Use Holly While Riding your Flying Mount |havebuff Festive Holiday Mount##62061 |achieve 1282 |future
step
_You must be on a flying reindeer mount!_
use the Skyguard Bombs##32456
|tip While on your flying reindeer mount, use them on Fel Cannonball Stacks.
|tip They are located next to cannons and marked with a red arrow.
|tip Keep moving and avoid the fel cannonfire.
Destroy #15# Fel Cannonball Stacks |q 11023/1 |goto Blade's Edge Mountains/0 34.49,40.99 |achieve 1282 |future
step
_You must be on a flying reindeer mount!_
talk Sky Sergeant Vanderlip##23120
turnin Bomb Them Again!##11023 |goto Blade's Edge Mountains/0 27.58,52.91
]])
QuestCore:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\He Knows If You've Been Naughty",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(1689) end,
achieveid={1689},
patch='30002',
description="Open one of the presents underneath the Winter Veil tree once they are available.",
},[[
step
Click a present under the tree
|tip You can only open a present from December 25 to January 2.
|tip No peeking!
|achieve 1689 |goto Ironforge/0 33.71,65.98
]])
QuestCore:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\Holiday Bromance",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(1686) end,
achieveid={1686},
patch='30002',
description="Use Mistletoe on the eight Alliance \"Brothers\" during the Feast of Winter Veil.",
},[[
step
Kiss a Winter Reveler |script DoEmote("KISS")
|tip Emote kiss Winter Revelers for a chance at Mistletoe.
|tip They can be found in capital cities around inns.
|tip You can only get a reward from them once per hour.
|tip You may need to do this multiple times before proceeding.
collect 8 Mistletoe##21519 |achieve 1686 |future
step
clicknpc Brother Kristoff##1444
use the Mistletoe##21519
|tip Use it on Brother Kristoff outside the buildings.
Use Mistletoe on Brother Kristoff |achieve 1686/5 |goto Stormwind City/0 55.04,54.16
step
clicknpc Brother Benjamin##5484
use the Mistletoe##21519
|tip Use it on Brother Benjamin.
|tip He patrols back and forth on the right side of the room.
Use Mistletoe on Brother Benjamin |achieve 1686/1 |goto Stormwind City/0 51.46,46.09
step
clicknpc Brother Cassius##1351
use the Mistletoe##21519
|tip Use it on Brother Cassius inside the building.
Use Mistletoe on Brother Cassius |achieve 1686/3 |goto Stormwind City/0 53.33,45.30
step
Run down the ramp |goto Stormwind City/0 51.22,44.81 < 5 |walk
clicknpc Brother Crowley##12336
use the Mistletoe##21519
|tip Use it on Brother Crowley inside the building.
Use Mistletoe on Brother Crowley |achieve 1686/6 |goto Stormwind City/0 52.62,43.18
step
Run up the ramp |goto Stormwind City/0 51.12,44.29 < 5 |walk
clicknpc Brother Joshua##5489
use the Mistletoe##21519
|tip Use it on Brother Joshua inside the building.
Use Mistletoe on Brother Joshua |achieve 1686/9 |goto Stormwind City/0 49.51,45.21
step
clicknpc Brother Wilhelm##927
use the Mistletoe##21519
|tip Use it on Brother Wilhelm.
Use Mistletoe on Brother Wilhelm |achieve 1686/2 |goto Elwynn Forest/0 41.09,66.04
step
clicknpc Brother Nimetz##739
use the Mistletoe##21519
|tip Use it on Brother Nimetz.
Use Mistletoe on Brother Nimetz |achieve 1686/8 |goto Stranglethorn Vale/0 37.83,3.56
step
clicknpc Brother Karman##8140
use the Mistletoe##21519
|tip Use it on Brother Karman.
Use Mistletoe on Brother Karman |achieve 1686/4 |goto Dustwallow Marsh/0 67.40,47.41
step
clicknpc Brother Anton##1182
use the Mistletoe##21519
|tip Use it on Brother Anton inside the building.
Use Mistletoe on Brother Anton |achieve 1686/7 |goto Desolace/0 66.52,7.90
]])
QuestCore:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\Let It Snow",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(1687) end,
achieveid={1687},
patch='30002',
description="During the Feast of Winter Veil, use a Handful of Snowflakes on the following "..
"race/class combinations:\n\nBlood Elf Warlock\nDraenei Priest\nDwarf Paladin\n"..
"Gnome Mage\nHuman Warrior\nNight Elf Druid\nOrc Death Knight\nTauren Shaman\n"..
"Troll Hunter\nUndead Rogue",
},[[
step
Kiss a Winter Reveler |script DoEmote("KISS")
|tip Inside the building.
|tip Emote kiss Winter Revelers for a chance at Mistletoe.
|tip You can only get a reward from them once per hour.
|tip You may need to do this multiple times before proceeding.
collect 10 Handful of Snowflakes##34191 |goto Ironforge/0 20.06,53.74 |or
'|complete achieved(1687) |or
step
Use a Handful of Snowflakes on the following race/class combinations:
use the Handful of Snowflakes##34191
|tip Use one on each of the races below.
Blood Elf Warlock |achieve 1687/10 |goto Stormwind City/0 62.74,72.93
Draenei Priest |achieve 1687/1 |goto Stormwind City/0 62.74,72.93
Dwarf Paladin |achieve 1687/6 |goto Stormwind City/0 62.74,72.93
Gnome Mage |achieve 1687/7 |goto Stormwind City/0 62.74,72.93
Human Warrior |achieve 1687/3 |goto Stormwind City/0 62.74,72.93
Night Elf Druid |achieve 1687/8 |goto Stormwind City/0 62.74,72.93
Orc Death Knight |achieve 1687/4 |goto Stormwind City/0 62.74,72.93
Tauren Shaman |achieve 1687/9 |goto Stormwind City/0 62.74,72.93
Troll Hunter |achieve 1687/2 |goto Stormwind City/0 62.74,72.93
Undead Rogue |achieve 1687/5 |goto Stormwind City/0 62.74,72.93
]])
QuestCore:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\On Metzen!",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(273) end,
achieveid={273},
patch='30008',
description="Save Metzen the Reindeer.",
},[[
step
Reach Level 80 |ding 80
step
talk Wulmort Jinglepocket##13433
accept Metzen the Reindeer##8762 |goto Ironforge/0 33.59,67.92
step
use the Smokywood Satchel##21315
Open the Smokywood Satchel |complete itemcount(21315) == 0 or completedq(8762)
step
clicknpc Metzen the Reindeer##15664
Choose _"Sprinkle some of the reindeer dust onto Metzen."_
Free Metzen the Reindeer |q 8762/1 |goto Searing Gorge/0 68.76,34.23
step
talk Wulmort Jinglepocket##13433
turnin Metzen the Reindeer##8762 |goto Ironforge/0 33.59,67.92
]])
QuestCore:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\Scrooge",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(1255) end,
achieveid={1255},
patch='30001',
description="Throw a snowball at King Magni Bronzebeard during the Feast of Winter Veil.",
},[[
step
talk Wulmort Jinglepocket##13433
buy 1 Snowball##17202 |goto Ironforge/0 33.59,67.92 |or
'|complete achieved(1255) |or
step
Enter the building |goto Ironforge/0 44.64,49.38 < 10 |walk
talk King Magni Bronzebeard##2784
use the Snowball##17202
|tip Use it on King Magni Bronzebeard.
Throw a Snowball at King Magni Bronzebeard |achieve 1255 |goto Ironforge/0 39.17,56.09
]])
QuestCore:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\Simply Abominable",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(279) end,
achieveid={279},
patch='30008',
description="Complete the quest to retrieve Smokywood Pastures' stolen treats and receive a Smokywood Pastures' Thank You.",
},[[
step
ding 80
|tip You will also need 300 cooking skill for one quest.
|tip It will not be shown if you do not meet the skill requirement.
step
talk Strange Snowman##13636
accept You're a Mean One...##7043 |goto Hillsbrad Foothills/0 42.35,41.14
step
kill The Abominable Greench##54499
|tip This is a boss and will require a group.
collect Stolen Treats##17662 |q 7043/2 |goto Hillsbrad Foothills/0 43.56,39.13
step
Free Metzen the Reindeer |q 7043/1 |goto Hillsbrad Foothills/0 44.12,38.56
|tip Metzen will run free shortly after killing the Greench.
step
talk Wulmort Jinglepocket##13433
turnin You're a Mean One...##7043 |goto Ironforge/0 33.59,67.92
step
talk Wulmort Jinglepocket##13433
accept A Smokywood Pastures' Thank You!##7045 |goto Ironforge/0 33.59,67.92
|tip This should be available after completing You're a Mean One...
step
talk Greatfather Winter##13444
turnin A Smokywood Pastures' Thank You!##7045 |goto Ironforge/0 33.16,65.43
]])
QuestCore:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\The Winter Veil Gourmet",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(1688) end,
achieveid={1688},
patch='30003',
description="During the Feast of Winter Veil, use your culinary expertise to produce a Gingerbread "..
"Cookie, Winter Veil Egg Nog and Hot Apple Cider.",
},[[
step
Reach 325 Cooking Skill |complete skill("Cooking") >= 325 or achieved(1688)
|tip Use the "Cooking 1-525" Profession guide.
|loadguide "Profession Guides\\Cooking\\Cooking (1-525)"
step
talk Gwenna Firebrew##5112
|tip Inside the building.
buy 1 Ice Cold Milk##1179 |goto Ironforge/0 18.63,51.77 |or
'|complete achieved(1688) |or
step
talk Macey Jinglepocket##13434
buy 1 Sparkling Apple Cider##34412 |goto Ironforge/0 33.67,67.26 |or
'|complete achieved(1688) |or
step
talk Wulmort Jinglepocket##13433
buy 1 Recipe: Winter Veil Egg Nog##17201 |goto Ironforge/0 33.59,67.92
buy 1 Recipe: Hot Apple Cider##34413 |goto Ironforge/0 33.59,67.92
buy 1 Recipe: Gingerbread Cookie##17200 |goto Ironforge/0 33.59,67.92
buy 3 Holiday Spices##17194 |goto Ironforge/0 33.59,67.92
buy 2 Holiday Spirits##17196 |goto Ironforge/0 33.59,67.92
'|complete achieved(1688) |or
step
talk Auctioneer Redmuse##8720
|tip Inside the building.
buy 2 Small Egg##6889 |goto Ironforge/0 24.24,74.54 |next "Learn_Hot_Apple_Cider" |or
_Or_
Click Here to Farm Them |confirm |next "Farm_Small_Eggs" |or
'|complete achieved(1688) |or
step
label "Farm_Small_Eggs"
Kill Fleshripper enemies around this area
collect 2 Small Egg##6889 |goto Westfall/0 50.61,27.62 |or
'|complete achieved(1688) |or
step
label "Learn_Hot_Apple_Cider"
use the Recipe: Hot Apple Cider##34413
learn Hot Apple Cider##45022 |or
'|complete achieved(1688) |or
step
use the Recipe: Egg Nog##17201
learn Egg Nog##21144 |or
'|complete achieved(1688) |or
step
use the Recipe: Gingerbread Cookie##17200
learn Gingerbread Cookie##21143 |or
'|complete achieved(1688) |or
step
cast Basic Campfire##818
|tip Stand next to your fire or a Dwarven Brazier in Ironforge.
create 1 Gingerbread Cookie##21143,Cooking,1 total |achieve 1688/1 |goto Ironforge/0 33.46,65.53
step
cast Basic Campfire##818
|tip Stand next to your fire or a Dwarven Brazier in Ironforge.
create 1 Egg Nog##21144,Cooking,1 total |achieve 1688/2 |goto Ironforge/0 33.46,65.53
step
cast Basic Campfire##818
|tip Stand next to your fire or a Dwarven Brazier in Ironforge.
create 1 Hot Apple Cider##45022,Cooking,1 total |achieve 1688/3 |goto Ironforge/0 33.46,65.53
]])
QuestCore:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\With a Little Helper from My Friends",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(252) end,
achieveid={252},
patch='30001',
description="Earn 50 honorable kills as a Little Helper from the Winter Wondervolt machine.",
},[[
step
label "Become_A_Little_Helper"
Become a Little Helper |havebuff texture:135849 |goto Dun Morogh/0 60.32,33.93 |or
|tip Step on the blue pad.
'|complete achieved(252) |or
step
Kill enemies in PvP combat
|tip Queue up for PvP Battlegrounds and kill enemy players.
Earn #50# PvP Kills as a Little Helper |achieve 252 |or
'|nobuff texture:135849 |next "Become_A_Little_Helper" |or |only if not achieved(252)
'|complete achieved(252) |or
]])
QuestCore:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\Merrymaker",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(1691) end,
achieveid={1691},
patch='30003',
description="Complete the following Winter Veil achievements:\n\nOn Metzen!\nScrooge\n"..
"'Tis the Season\nLet It Snow\nThe Winter Veil Gourmet\nA Frosty Shake\n"..
"With a Little Helper from My Friends\nFa-la-la-la-Ogri'la\nSimply Abominable\n"..
"Bros. Before Ho Ho Ho's\nHe Knows If You've Been Naughty",
},[[
step
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\On Metzen!"
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\Scrooge"
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\'Tis the Season"
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\Let It Snow"
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\The Winter Veil Gourmet"
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\A Frosty Shake"
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\With a Little Helper from My Friends"
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\Fa-la-la-la-Ogri'la"
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\Simply Abominable"
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\Holiday Bromance"
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\He Knows If You've Been Naughty"
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\A-Caroling We Will Go"
]])
QuestCore:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\A-Caroling We Will Go",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(5853) end,
achieveid={5853},
patch='40001',
description="Use your Gaudy Winter Veil Sweater to carol in enemy capital cities during the Feast of Winter Veil.",
},[[
step
collect Gaudy Winter Veil Sweater##70923
|tip Gifts under the tree on or after December 25th award this item.
|tip You will need it to carol in capital cities.
step
use the Gaudy Winter Veil Sweater##70923
Carol in Orgrimmar |achieve 5853/2 |goto Orgrimmar/1 49.55,85.78
|tip This is an enemy capital city and has hostile NPCs and players.
step
use the Gaudy Winter Veil Sweater##70923
Carol in Thunder Bluff |achieve 5853/4 |goto Thunder Bluff/0 36.26,68.10
|tip This is an enemy capital city and has hostile NPCs and players.
step
use the Gaudy Winter Veil Sweater##70923
Carol in Silvermoon City |achieve 5853/1 |goto Silvermoon City/0 71.00,79.85
|tip This is an enemy capital city and has hostile NPCs and players.
step
use the Gaudy Winter Veil Sweater##70923
Carol in Undercity |achieve 5853/3 |goto Undercity/0 66.04,36.81
|tip This is an enemy capital city and has hostile NPCs and players.
]])
QuestCore:RegisterGuide("Events Guides\\Love is in the Air\\Love is in the Air Main Questline",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Love is in the Air') and not completedq(24657) end,
description="This guide will walk you through completing the main questline for the Love is in the Air event.",
},[[
step
talk Inspector Snip Snagglebolt##38066
accept Something Stinks##24655 |goto Stormwind City/0 61.51,75.27
step
clicknpc Stormwind City Guard##68+
|tip Look for Stormwind Guards that have the Heavily Perfumed buff.
|tip They look like Stormwind Guards with a glowing purple aura around them all over Stormwind.
use Snagglebolt's Air Analyzer##50131
|tip Use it on Stormwind Guards around this area.
Analyze #6# Perfumed Guards |q 24655/1 |goto Stormwind City/0 61.86,72.49
step
talk Inspector Snip Snagglebolt##38066
turnin Something Stinks##24655 |goto Stormwind City/0 61.51,75.27
accept Pilfering Perfume##24656 |goto Stormwind City/0 61.51,75.27
step
label "Gain_Crown_Parcel_Service_Uniform_Buff"
talk Inspector Snip Snagglebolt##38066
Tell him  _"I need another disguise."_
Gain the "Crown Parcel Service Uniform" Buff |havebuff Crown Parcel Service Uniform##71450 |goto Stormwind City/0 61.51,75.27 |or
'|complete completedq(24656) |or
step
Return the Crown Chemical Co. Package |complete readyq(24656) or completedq(24656) |goto Elwynn Forest/0 34.07,47.27 |or
|tip Quickly run by the boxes to get the package.
|tip A crate will appear on your back.
|tip You have to move quickly before your disguise wears off or you drop the package.
|tip Walk next to Inspector Snip Snagglebolt to return the package to him.
Return it to Snagglebolt at [Stormwind City/0 61.51,75.27]
'|complete not hasbuff(71450) and not readyq(24656) and not completedq(24656) |next "Gain_Crown_Parcel_Service_Uniform_Buff" |or
step
talk Inspector Snip Snagglebolt##38066
turnin Pilfering Perfume##24656 |goto Stormwind City/0 61.51,75.27
accept Fireworks At The Gilded Rose##24848 |goto Stormwind City/0 61.51,75.27
step
Enter the inn |goto Stormwind City/0 60.79,74.90 < 5
talk Marion Sutton##38325
|tip Upstairs inside the building.
turnin Fireworks At The Gilded Rose##24848 |goto Stormwind City/0 60.61,76.36
accept Hot On The Trail##24849 |goto Stormwind City/0 60.61,76.36
step
Watch the dialogue
|tip Inside the building.
Search the Stormwind Counting House |q 24849/1 |goto Stormwind City/0 63.03,78.74
step
Watch the dialogue
|tip Inside the building.
Search the Stormwind Auction House |q 24849/2 |goto Stormwind City/0 61.42,71.61
step
Watch the dialogue
|tip Inside the building.
Search the Stormwind Barber Shop |q 24849/3 |goto Stormwind City/0 61.31,65.39
step
Enter the inn |goto Stormwind City/0 60.79,74.90 < 5
talk Marion Sutton##38325
|tip Upstairs inside the building.
turnin Hot On The Trail##24849 |goto Stormwind City/0 60.61,76.36
accept A Friendly Chat...##24657 |goto Stormwind City/0 60.61,76.36
step
talk Snivel Rustrocket##37715
Select _"I have a rocket here with your mark on it, Snivel."_
collect 1 Snivel's Ledger##49915 |q 24657/1 |goto Stormwind City/0 27.43,34.83
step
talk Inspector Snip Snagglebolt##38066
turnin A Friendly Chat...##24657 |goto Stormwind City/0 61.51,75.27
]])
QuestCore:RegisterGuide("Events Guides\\Love is in the Air\\Love is in the Air Dailies",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Love is in the Air') and completedq(24657) and not completedq(44558,24629,24635,24636,24597,44560,24610,24611,24609) end,
description="This guide section will walk you through completing the Love is in the Air event daily quests.",
},[[
step
label "Complete_Leveling_Guide"
Complete the "Love is in the Air Main Questline" guide before using this guide |complete completedq(24657)
step
talk Inspector Snip Snagglebolt##38066
accept Crushing the Crown##24658 |goto Stormwind City/0 61.61,75.29 |only if level >= 5 and level <= 13
accept Crushing the Crown##24659 |goto Stormwind City/0 61.61,75.29 |only if level >= 14 and level <= 22
accept Crushing the Crown##24660 |goto Stormwind City/0 61.61,75.29 |only if level >= 23 and level <= 31
accept Crushing the Crown##24662 |goto Stormwind City/0 61.61,75.29 |only if level >= 32 and level <= 40
accept Crushing the Crown##24663 |goto Stormwind City/0 61.61,75.29 |only if level >= 41 and level <= 50
accept Crushing the Crown##24664 |goto Stormwind City/0 61.61,75.29 |only if level >= 51 and level <= 60
accept Crushing the Crown##24665 |goto Stormwind City/0 61.61,75.29 |only if level >= 61 and level <= 70
accept Crushing the Crown##24666 |goto Stormwind City/0 61.61,75.29 |only if level >= 71 and level <= 80
accept Crushing the Crown##28934 |goto Stormwind City/0 61.61,75.29 |only if level <= 81
accept Man on the Inside##24792 |goto Stormwind City/0 61.61,75.29 |only if Level == 80
step
talk Public Relations Agent##37675
accept A Perfect Puff of Perfume##24629 |goto Stormwind City/0 62.41,75.38 |or
accept A Cloudlet of Classy Cologne##24635 |goto Stormwind City/0 62.41,75.38 |or
accept Bonbon Blitz##24636 |goto Stormwind City/0 62.41,75.38 |or
|tip You will only be able to accept one of these quests.
step
talk Kwee Q. Peddlefeet##16075
accept A Gift for the King of Stormwind##24597 |goto Stormwind City/0 62.53,74.96
step
use the Crown Cologne Sprayer##49669
|tip Use it on NPCs and other players without a red heart over their head.
|tip You can do this anywhere in Stormwind.
Give #10# Cologne Samples |q 24635/1 |goto Stormwind City/0 62.35,72.50
|only if haveq(24635) or completedq(24635)
step
talk Kwee Q. Peddlefeet##37887
Select _"I'd like a Lovely Charm Collector's Kit."_
collect 1 Lovely Charm Collector's Kit##49661 |goto Stormwind City/0 62.53,74.95
step
use the Crown Perfume Sprayer##49668
|tip Use it on NPCs and other players without a red heart over their head.
|tip You can do this anywhere in Stormwind.
Give #10# Perfume Samples |q 24629/1 |goto Stormwind City/0 62.35,72.50
|only if haveq(24629) or completedq(24629)
step
use the Crown Chocolate Sampler##49670
|tip Use it on NPCs and other players without a red heart over their head.
|tip You can do this anywhere in Stormwind.
Give #10# Chocolate Samples |q 24636/1 |goto Stormwind City/0 62.35,72.50
|only if haveq(24636) or completedq(24636)
stickystart "Kill_Crown_Lackeys"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24658/1 |goto Elwynn Forest/0 29.29,65.38
|only if haveq(24658) or completedq(24658)
step
label "Kill_Crown_Lackeys"
kill 5 Crown Lackey##37214 |q 24658/2 |goto Elwynn Forest/0 29.29,65.38
|only if haveq(24658) or completedq(24658)
stickystart "Kill_Crown_Thugs"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24659/1 |goto Darkshore/0 44.18,77.88
|only if haveq(24659) or completedq(24659)
step
label "Kill_Crown_Thugs"
kill 5 Crown Thug##37917 |q 24659/2 |goto Darkshore/0 44.18,77.88
|only if haveq(24659) or completedq(24659)
stickystart "Kill_Crown_Dusters"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24660/1 |goto Duskwood/0 75.82,55.52
|only if haveq(24660) or completedq(24660)
step
label "Kill_Crown_Dusters"
kill 5 Crown Duster##37984 |q 24660/2 |goto Duskwood/0 75.82,55.52
|only if haveq(24660) or completedq(24660)
stickystart "Kill_Crown_Hoodlums"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24662/1 |goto Dustwallow Marsh/0 60.71,38.20
|only if haveq(24662) or completedq(24662)
step
label "Kill_Crown_Hoodlums"
kill 5 Crown Hoodlum##38006 |q 24662/2 |goto Dustwallow Marsh/0 60.71,38.20
|only if haveq(24662) or completedq(24662)
stickystart "Kill_Crown_Agents"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24663/1 |goto The Hinterlands/0 23.47,53.72
|only if haveq(24663) or completedq(24663)
step
label "Kill_Crown_Agents"
kill 5 Crown Agent##38016 |q 24663/2 |goto The Hinterlands/0 23.47,53.72
|only if haveq(24663) or completedq(24663)
stickystart "Kill_Crown_Sprinklers"
step
Follow the path up |goto Winterspring/0 63.36,36.11 < 15 |only if walking
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24664/1 |goto Winterspring/0 63.34,49.83
|only if haveq(24664) or completedq(24664)
step
label "Kill_Crown_Sprinklers"
kill 5 Crown Sprinkler##38023 |q 24664/2 |goto Winterspring/0 63.34,49.83
|only if haveq(24664) or completedq(24664)
stickystart "Kill_Crown_Underlings"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24665/1 |goto Terokkar Forest/0 41.45,22.49
|only if haveq(24665) or completedq(24665)
step
label "Kill_Crown_Underlings"
kill 5 Crown Underling##38030 |q 24665/2 |goto Terokkar Forest/0 41.45,22.49
|only if haveq(24665) or completedq(24665)
stickystart "Kill_Crown_Sprayers"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24666/1 |goto Crystalsong Forest/0 50.55,50.06
|only if haveq(24666) or completedq(24666)
step
label "Kill_Crown_Sprayers"
kill 5 Crown Sprayer##38032 |q 24666/2 |goto Crystalsong Forest/0 50.55,50.06
|only if haveq(24666) or completedq(24666)
stickystart "Kill_Crown_Technician"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 28934/1 |goto Uldum/0 66.88,19.33
|only if haveq(28934) or completedq(28934)
step
label "Kill_Crown_Technician"
kill 5 Crown Technician##51613 |q 28934/2 |goto Uldum/0 66.88,19.33
|only if haveq(28934) or completedq(28934)
step
Kill enemies that yield experience
|tip Any enemy that is green, yellow, or red difficulty will drop charms.
|tip You can kill enemies in dungeons or the open-world zone of your choice.
collect 40 Lovely Charm##49655 |q 24609 |future
step
use the Lovely Charm##49655
collect 4 Lovely Charm Bracelet##49916 |q 24609 |future
step
talk Inspector Snip Snagglebolt##38066
turnin Crushing the Crown##24658 |goto Stormwind City/0 61.61,75.29 |only if haveq(24658) or completedq(24658)
turnin Crushing the Crown##24659 |goto Stormwind City/0 61.61,75.29 |only if haveq(24659) or completedq(24659)
turnin Crushing the Crown##24660 |goto Stormwind City/0 61.61,75.29 |only if haveq(24660) or completedq(24660)
turnin Crushing the Crown##24662 |goto Stormwind City/0 61.61,75.29 |only if haveq(24662) or completedq(24662)
turnin Crushing the Crown##24663 |goto Stormwind City/0 61.61,75.29 |only if haveq(24663) or completedq(24663)
turnin Crushing the Crown##24664 |goto Stormwind City/0 61.61,75.29 |only if haveq(24664) or completedq(24664)
turnin Crushing the Crown##24665 |goto Stormwind City/0 61.61,75.29 |only if haveq(24665) or completedq(24665)
turnin Crushing the Crown##24666 |goto Stormwind City/0 61.61,75.29 |only if haveq(24666) or completedq(24666)
turnin Crushing the Crown##28934 |goto Stormwind City/0 61.61,75.29 |only if haveq(28934) or completedq(2428934666)
|only if haveq(24658,24659,24660,24662,24663,24664,24665,24666,28934) or completedq(24658,24659,24660,24662,24663,24664,24665,24666,28934)
step
talk Public Relations Agent##37675
turnin A Perfect Puff of Perfume##24629 |goto Stormwind City/0 62.41,75.38 |only if haveq(24629) or completedq(24629)
turnin A Cloudlet of Classy Cologne##24635 |goto Stormwind City/0 62.41,75.38 |only if haveq(24635) or completedq(24635)
turnin Bonbon Blitz##24636 |goto Stormwind City/0 62.41,75.38 |only if haveq(24636) or completedq(24636)
|only if haveq(24629,24635,24636) or completedq(24629,24635,24636)
step
talk Anduin Wrynn##107574
|tip Inside Stormwind Keep.
turnin A Gift for the King of Stormwind##24597 |goto Stormwind City/0 85.91,31.57
step
talk Kwee Q. Peddlefeet##16075
accept A Gift for the High Priestess of Elune##24610 |goto Darnassus/0 42.50,52.01
step
Enter the building |goto Darnassus/0 39.05,76.76 < 10 |walk
talk Tyrande Whisperwind##7999
|tip Upstairs inside the building.
turnin A Gift for the High Priestess of Elune##24610 |goto Darnassus/0 39.10,81.57
step
Run up the ramp |goto The Exodar/0 52.71,33.69 < 15 |walk
Continue up the ramp |goto The Exodar/0 64.13,35.99 < 15 |walk
talk Kwee Q. Peddlefeet##16075
accept A Gift for the Prophet##24611 |goto The Exodar/0 73.65,57.01
step
Run down the ramp |goto The Exodar/0 73.51,53.36 < 15 |walk
Run up the stairs |goto The Exodar/0 31.09,60.83 < 10 |walk
talk Prophet Velen##17468
turnin A Gift for the Prophet##24611 |goto The Exodar/0 32.85,54.48
step
talk Kwee Q. Peddlefeet##16075
accept A Gift for the Lord of Ironforge##24609 |goto Ironforge/0 33.57,65.60
step
Enter the building |goto Ironforge/0 44.39,49.69 < 10 |walk
talk Muradin Bronzebeard##42928
turnin A Gift for the Lord of Ironforge##24609 |goto Ironforge/0 39.19,56.09
step
Inside the Shadowfang Keep Dungeon:
talk Investigator Fezzen Brasstacks##38208
turnin Man on the Inside##24792
accept You've Been Served##14488
|only if Level == 80
step
Inside the Shadowfang Keep Dungeon:
use the Standard Apothecary Serving Kit##49631
collect Standard Apothecary Serving Kit##49631 |q 14488/1
|only if Level == 80
step
talk Apothecary Hummel##36296
turnin You've Been Served##14488
|tip This will trigger the boss encounter.
|only if Level == 80
step
You have completed all available daily quests
|tip This guide will reset when more become available.
'|complete not completedq(24629,24635,24636,24597,24610,24611,24609,14488) |next "Complete_Leveling_Guide"
]])
QuestCore:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Be Mine!",{
expansion="mists",
mopready=true,
description="Eat the eight \"Bag of Candies\" heart candies listed below:\n\nBe Mine!\nAll yours.\nHot Lips.\n"..
"You're the best!\nI'll follow you all around Azeroth.\nI'm all yours!\nYou're Mine!\nI LOVE YOU",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1701) end,
achieveid={1701},
patch='30002',
},[[
step
talk Lovely Merchant##37674
buy Bag of Heart Candies##21813 |goto Stormwind City/0 62.49,75.24 |n
use the Bag of Heart Candies##21813
|tip Collect the 8 different types of Heart Candy from the Bag of Heart Candies.
Collect "Be Mine" |collect 1 Heart Candy##21816 |only if not achieved(1701,1)
Collect "I'll Follow You All Around Azeroth" |collect 1 Heart Candy##21818 |only if not achieved(1701,2)
Collect "All Yours" |collect 1 Heart Candy##21819 |only if not achieved(1701,3)
Collect "I'm All Yours" |collect 1 Heart Candy##21821 |only if not achieved(1701,4)
Collect "Hot Lips" |collect 1 Heart Candy##21823 |only if not achieved(1701,5)
Collect "You're Mine" |collect 1 Heart Candy##21822 |only if not achieved(1701,6)
Collect "You're the Best" |collect 1 Heart Candy##21820 |only if not achieved(1701,7)
Collect "I LOVE YOU" |collect 1 Heart Candy##21817 |only if not achieved(1701,8)
step
use Heart Candy##21816
Eat the "Be Mine!" Heart Candy |achieve 1701/1
step
use Heart Candy##21817
Eat the "I LOVE YOU" Heart Candy |achieve 1701/2
step
use Heart Candy##21818
Eat the "I'll follow you all around Azeroth." Heart Candy |achieve 1701/3
step
use Heart Candy##21821
Eat the "I'm all yours!" Heart Candy |achieve 1701/4
step
use Heart Candy##21820
Eat the "You're the best!" Heart Candy |achieve 1701/5
step
use Heart Candy##21823
Eat the "Hot lips." Heart Candy |achieve 1701/6
step
use Heart Candy##21819
Eat the "All yours." Heart Candy |achieve 1701/7
step
use Heart Candy##21822
Eat the "You're mine!" Heart Candy |achieve 1701/8
]])
QuestCore:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Charming",{
expansion="mists",
mopready=true,
description="Create 12 Lovely Charm Bracelets.",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(260) end,
achieveid={260},
patch='30001',
},[[
step
talk Kwee Q. Peddlefeet##37887
collect 1 Lovely Charm Collector's Kit##49661 |goto Stormwind City/0 62.40,75.00 |or
'|complete achieved(260) |or
'|accept A Gift for the King of Stormwind##24597 |n
step
collect 120 Lovely Charm##49655 |or
|tip They come from killing enemies that are at least green difficulty to you.
|tip They will not drop if they are grey difficulty.
|tip You can run dungeons or pick a zone of your choice and kill anything.
'|complete achieved(260)|or
step
use the Lovely Charm##49655
Create #12# Lovely Charm Bracelet##49916 |or
'|complete achieved(260) |or
]])
QuestCore:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Dangerous Love",{
expansion="mists",
mopready=true,
description="Assist the Steamwheedle Cartel in stopping the sinister Crown Chemical Co. plot.",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1695) end,
achieveid={1695},
patch='30003',
},[[
leechsteps "Events Guides\\Love is in the Air\\Love is in the Air Main Questline"
step
talk Inspector Snip Snagglebolt##38066
accept Crushing the Crown##24658 |goto Stormwind City/0 61.61,75.29 |only if level >= 5 and level <= 13
accept Crushing the Crown##24659 |goto Stormwind City/0 61.61,75.29 |only if level >= 14 and level <= 22
accept Crushing the Crown##24660 |goto Stormwind City/0 61.61,75.29 |only if level >= 23 and level <= 31
accept Crushing the Crown##24662 |goto Stormwind City/0 61.61,75.29 |only if level >= 32 and level <= 40
accept Crushing the Crown##24663 |goto Stormwind City/0 61.61,75.29 |only if level >= 41 and level <= 50
accept Crushing the Crown##24664 |goto Stormwind City/0 61.61,75.29 |only if level >= 51 and level <= 60
accept Crushing the Crown##24665 |goto Stormwind City/0 61.61,75.29 |only if level >= 61 and level <= 70
accept Crushing the Crown##24666 |goto Stormwind City/0 61.61,75.29 |only if level >= 71 and level <= 80
accept Man on the Inside##24792 |goto Stormwind City/0 61.61,75.29 |only if Level == 80
stickystart "Kill_Crown_Lackeys"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24658/1 |goto Elwynn Forest/0 29.29,65.38
|only if haveq(24658) or completedq(24658)
step
label "Kill_Crown_Lackeys"
kill 5 Crown Lackey##37214 |q 24658/2 |goto Elwynn Forest/0 29.29,65.38
|only if haveq(24658) or completedq(24658)
stickystart "Kill_Crown_Thugs"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24659/1 |goto Darkshore/0 42.54,79.61
|only if haveq(24659) or completedq(24659)
step
label "Kill_Crown_Thugs"
kill 5 Crown Thug##37917 |q 24659/2 |goto Darkshore/0 42.54,79.61
|only if haveq(24659) or completedq(24659)
stickystart "Kill_Crown_Dusters"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24660/1 |goto Duskwood/0 28.16,38.08
|only if haveq(24660) or completedq(24660)
step
label "Kill_Crown_Dusters"
kill 5 Crown Duster##37984 |q 24660/2 |goto Duskwood/0 28.16,38.08
|only if haveq(24660) or completedq(24660)
stickystart "Kill_Crown_Hoodlums"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24662/1 |goto Dustwallow Marsh/0 60.71,38.20
|only if haveq(24662) or completedq(24662)
step
label "Kill_Crown_Hoodlums"
kill 5 Crown Hoodlum##38006 |q 24662/2 |goto Dustwallow Marsh/0 60.71,38.20
|only if haveq(24662) or completedq(24662)
stickystart "Kill_Crown_Agents"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24663/1 |goto The Hinterlands/0 23.30,53.66
|only if haveq(24663) or completedq(24663)
step
label "Kill_Crown_Agents"
kill 5 Crown Agent##38016 |q 24663/2 |goto The Hinterlands/0 23.30,53.66
|only if haveq(24663) or completedq(24663)
stickystart "Kill_Crown_Sprinklers"
step
Follow the path up |goto Winterspring/0 63.36,36.11 < 15 |only if walking
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24664/1 |goto Winterspring/0 64.52,37.39
|only if haveq(24664) or completedq(24664)
step
label "Kill_Crown_Sprinklers"
kill 5 Crown Sprinkler##38023 |q 24664/2 |goto Winterspring/0 64.52,37.39
|only if haveq(24664) or completedq(24664)
stickystart "Kill_Crown_Underlings"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24665/1 |goto Terokkar Forest/0 41.45,22.49
|only if haveq(24665) or completedq(24665)
step
label "Kill_Crown_Underlings"
kill 5 Crown Underling##38030 |q 24665/2 |goto Terokkar Forest/0 41.45,22.49
|only if haveq(24665) or completedq(24665)
stickystart "Kill_Crown_Sprayers"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24666/1 |goto Crystalsong Forest/0 50.55,50.06
|only if haveq(24666) or completedq(24666)
step
label "Kill_Crown_Sprayers"
kill 5 Crown Sprayer##38032 |q 24666/2 |goto Crystalsong Forest/0 50.55,50.06
|only if haveq(24666) or completedq(24666)
step
Kill enemies that yield experience
|tip Any enemy that is green, yellow, or red difficulty will drop charms.
|tip You can kill enemies in dungeons or the open-world zone of your choice.
collect 40 Lovely Charm##49655 |q 24609 |future
step
use the Lovely Charm##49655
collect 4 Lovely Charm Bracelet##49916 |q 24609 |future
step
talk Inspector Snip Snagglebolt##38066
turnin Crushing the Crown##24658 |goto Stormwind City/0 61.61,75.29 |only if haveq(24658) or completedq(24658)
turnin Crushing the Crown##24659 |goto Stormwind City/0 61.61,75.29 |only if haveq(24659) or completedq(24659)
turnin Crushing the Crown##24660 |goto Stormwind City/0 61.61,75.29 |only if haveq(24660) or completedq(24660)
turnin Crushing the Crown##24662 |goto Stormwind City/0 61.61,75.29 |only if haveq(24662) or completedq(24662)
turnin Crushing the Crown##24663 |goto Stormwind City/0 61.61,75.29 |only if haveq(24663) or completedq(24663)
turnin Crushing the Crown##24664 |goto Stormwind City/0 61.61,75.29 |only if haveq(24664) or completedq(24664)
turnin Crushing the Crown##24665 |goto Stormwind City/0 61.61,75.29 |only if haveq(24665) or completedq(24665)
turnin Crushing the Crown##24666 |goto Stormwind City/0 61.61,75.29 |only if haveq(24666) or completedq(24666)
|only if haveq(24658,24659,24660,24662,24663,24664,24665,24666) or completedq(24658,24659,24660,24662,24663,24664,24665,24666)
step
Earn the "Dangerous Love" Achievement |achieve 1695
]])
QuestCore:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Fistful of Love",{
expansion="mists",
mopready=true,
description="Use a Handful of Rose Petals on each of the race/class combinations listed below:\n\nGnome Warlock\n"..
"Human Death Knight\nOrc Shaman\nUndead Warrior\nBlood Elf Mage\nDwarf Hunter\nOrc Death Knight\nNight Elf Priest"..
"\nTauren Druid\nTroll Rogue\nDraenei Paladin",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1699) end,
achieveid={1699},
patch='30003',
},[[
step
collect 6 Love Token##49927 |or
|tip Earn these by completing daily quests.
|tip You can also kill mobs to assemble Lovely Charm Bracelets and trade them to the Lovely Merchant.
'|complete achieved(1699) |or
step
talk Lovely Merchant##37674
buy 15 Handful of Rose Petals##22218 |goto Stormwind City/0 62.49,75.24 |or
'|complete achieved(1699) |or
stickystart "Use_Petals_on_Undead_Warrior"
stickystart "Use_Petals_on_Human_Death_Knight"
stickystart "Use_Petals_on_Gnome_Warlock"
stickystart "Use_Petals_on_Draenei_Paladin"
stickystart "Use_Petals_on_Troll_Rogue"
stickystart "Use_Petals_on_Dwarf_Hunter"
stickystart "Use_Petals_on_Blood_Elf_Mage"
stickystart "Use_Petals_on_Tauren_Druid"
stickystart "Use_Petals_on_Orc_Shaman"
stickystart "Use_Petals_on_Night_Elf_Priest"
stickystart "Use_Petals_on_Orc_Death_Knight"
step
use the Handful of Rose Petals##22218
|tip Battlegrounds and capital cities are good locations.
Use them once on each of the following classes:
'|complete achieved(1699)
step
label "Use_Petals_on_Undead_Warrior"
Use Rose Petals on a "Undead Warrior" |achieve 1699/1
step
label "Use_Petals_on_Human_Death_Knight"
Use Rose Petals on a "Human Death Knight" |achieve 1699/2
step
label "Use_Petals_on_Gnome_Warlock"
Use Rose Petals on a "Gnome Warlock" |achieve 1699/3
step
label "Use_Petals_on_Draenei_Paladin"
Use Rose Petals on a "Draenei Paladin" |achieve 1699/4
step
label "Use_Petals_on_Troll_Rogue"
Use Rose Petals on a "Troll Rogue" |achieve 1699/5
step
label "Use_Petals_on_Dwarf_Hunter"
Use Rose Petals on a "Dwarf Hunter" |achieve 1699/6
step
label "Use_Petals_on_Blood_Elf_Mage"
Use Rose Petals on a "Blood Elf Mage" |achieve 1699/7
step
label "Use_Petals_on_Tauren_Druid"
Use Rose Petals on a "Tauren Druid" |achieve 1699/8
step
label "Use_Petals_on_Orc_Shaman"
Use Rose Petals on a "Orc Shaman" |achieve 1699/9
step
label "Use_Petals_on_Night_Elf_Priest"
Use Rose Petals on a "Night Elf Priest" |achieve 1699/10
step
label "Use_Petals_on_Orc_Death_Knight"
Use Rose Petals on a "Orc Death Knight" |achieve 1699/11
]])
QuestCore:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Flirt With Disaster",{
expansion="mists",
mopready=true,
description="Get completely smashed, put on your best perfume, throw a handful of rose petals "..
"on Sraaz and then kiss him. You'll regret it in the morning.",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1279) end,
achieveid={1279},
patch='30001',
},[[
step
collect 3 Love Token##49927 |or
|tip Earn these by completing daily quests.
|tip You can also kill mobs to assemble Lovely Charm Bracelets and trade them to the Lovely Merchant.
'|complete achieved(1280) |or
step
talk Lovely Merchant##37674
buy 1 "VICTORY" Perfume##49856 |goto Stormwind City/0 62.49,75.24 |or 2
buy 1 Handful of Rose Petals##22218 |goto Stormwind City/0 62.49,75.24 |or 2
'|complete achieved(1279) |or 2 |override
step
talk Bruuk Barleybeard##5570
|tip Inside the building.
buy 3 Flagon of Dwarven Mead##2594 |goto Ironforge/0 72.52,76.95 |or
'|complete achieved(1279) |or
step
use the "VICTORY" Perfume##49856
Gain the "'VICTORY' Perfume" Buff |havebuff "VICTORY" Perfume##70233 |or
'|complete achieved(1279) |or
step
clicknpc Sraaz##9099
|tip He's a gnome that walks the circle around The Great Forge.
use the Flagon of Dwarven Mead##2594
|tip Use all 3 of your Flagons of Dwarven Mead to get Completely Smashed.
use Handful of Rose Petals##22218
|tip Use them on Sraaz.
Use the Handful of Rose Petals on Sraaz While Completely Smashed |achieve 1279/1 |goto Ironforge/0 55.82,35.34 |or
'|complete achieved(1279) |or
step
clicknpc Sraaz##9099
"Kiss" Sraaz |script DoEmote("KISS")
Kiss Sraaz While Completely Smashed |achieve 1279/2 |goto Ironforge/0 55.82,35.34
]])
QuestCore:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\I Pitied The Fool",{
expansion="mists",
mopready=true,
description="Pity the Love Fool in the locations specified below:\n\nWintergrasp\nNaxxramas\n"..
"Arathi Basin Blacksmith\nBattle Ring of Gurubashi Arena\nThe Culling of Stratholme",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1704) end,
achieveid={1704},
patch='30002',
},[[
step
collect 50 Love Token##49927 |or
|tip Earn these by completing daily quests.
|tip You can also kill mobs to assemble Lovely Charm Bracelets and trade them to the Lovely Merchant.
'|complete achieved(1704) |or
step
talk Lovely Merchant##37674
buy 5 Love Fool##22261 |goto Stormwind City/0 62.49,75.24 |or
'|complete achieved(1704) |or
step
use the Love Fool##22261
|tip You can use your Love Fool anywhere inside Wintergrasp.
clicknpc Love Fool##16111
"Pity" the Love Fool |script DoEmote("PITY")
Target and Pity the Love Fool in Wintergrasp |achieve 1704/2 |goto Wintergrasp/0 70.30,32.28
step
use the Love Fool##22261
|tip You can use your Love Fool anywhere inside the Gurubashi Arena.
clicknpc Love Fool##16111
"Pity" the Love Fool |script DoEmote("PITY")
Target and Pity the Love Fool in the Gurubashi Arena |achieve 1704/5 |goto Stranglethorn Vale/0 30.78,48.09
step
use the Love Fool##22261
|tip Use your Love Fool near the Blacksmith node inside of the Arathi Basin Battleground.
clicknpc Love Fool##16111
"Pity" the Love Fool |script DoEmote("PITY")
Target and Pity the Love Fool in the Arathi Basin Battleground |achieve 1704/4
step
use the Love Fool##22261
|tip You can use your Love Fool anywhere inside the Culling of Stratholme Dungeon.
clicknpc Love Fool##16111
"Pity" the Love Fool |script DoEmote("PITY")
Target and Pity the Love Fool in The Culling of Stratholme Dungeon |achieve 1704/1 |goto The Culling of Stratholme/1 0.00,0.00
step
use the Love Fool##22261
|tip You need to be inside the actual raid before you use this.
clicknpc Love Fool##16111
"Pity" the Love Fool |script DoEmote("PITY")
Target and Pity the Love Fool in the Naxxramas Raid |achieve 1704/3 |goto Naxxramas/4 0.00,0.00
]])
QuestCore:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Lonely?",{
expansion="mists",
mopready=true,
description="Enjoy a Buttermilk Delight with someone in Dalaran at a Romantic Picnic during the Love is in the Air celebration.",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1291) end,
achieveid={1291},
patch='30100',
},[[
step
collect 10 Love Token##49927 |or
|tip Earn these by completing daily quests.
|tip You can also kill mobs to assemble Lovely Charm Bracelets and trade them to the Lovely Merchant.
'|complete achieved(1291) |or
step
talk Lovely Merchant##37674
buy 1 Romantic Picnic Basket##34480 |goto Stormwind City/0 62.49,75.24 |or
'|complete achieved(1291) |or
step
talk Lovely Merchant##37674
buy 1 Box of Chocolates##49909 |goto Stormwind City/0 62.49,75.24 |n
|tip These cost 10 Love Tokens each.
|tip You can acquire Love Tokens by completing Love is in the Air daily quests.
|tip Use the "Love is in the Air Dailies" event guide to accomplish this.
use the Box of Chocolates##49909
collect 1 Buttermilk Delight##22236 |or
'|complete achieved(1291) |or
step
use the Romantic Picnic Basket##34480
|tip Find a player to have a picnic with you.
|tip It can be anywhere in Dalaran.
use the Buttermilk Delight##22236
|tip While having a picnic, use your Buttermilk Delight.
Enjoy a Buttermilk Delight with Someone in Dalaran at a Romantic Picnic |achieve 1291 |goto Dalaran/1 53.61,39.65
]])
QuestCore:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Lovely Luck Is On Your Side",{
expansion="mists",
mopready=true,
description="Open a Lovely Dress Box and receive a Lovely Black Dress.",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1694) end,
achieveid={1694},
patch='30002',
},[[
step
collect 20 Love Token##49927 |or
|tip Earn these by completing daily quests.
|tip You can also kill mobs to assemble Lovely Charm Bracelets and trade them to the Lovely Merchant.
'|complete achieved(1694) |or
step
talk Lovely Merchant##37674
buy 1 Lovely Dress Box##50160 |n
|tip These cost 20 Love Tokens each.
|tip You can acquire Love Tokens by completing Love is in the Air daily quests.
|tip Use the "Love is in the Air Dailies" event guide to accomplish this.
use the Lovely Dress Box##50160
collect 1 Lovely Black Dress##22279 |goto Stormwind City/0 62.49,75.24
'|complete achieved(1694) |or
step
Earn the "Lovely Luck Is On Your Side" Achievement |achieve 1694
]])
QuestCore:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\My Love is Like a Red, Red Rose",{
expansion="mists",
mopready=true,
description="Obtain a Bouquet of Red or Ebon Roses during the Love is in the Air celebration.",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1703) end,
achieveid={1703},
patch='30002',
},[[
step
collect 1 Bouquet of Red Roses##22206 |n
collect 1 Bouquet of Ebon Roses##44731 |n
|tip Killing Prince Keleseth in Utgarde Keep is the fastest way to get one of these.
|tip They can also be dropped by the following dungeon bosses:
|tip Lorekeeper Pokelt in Scholomance.
|tip Archivist Galford in Strahtholme (Live).
|tip Illyanna Ravenoak in Dire Maul.
|tip Prince Taldaram in Ahn'kahet: The Old Kingdom.
|tip Maiden of Grief in Halls of Stone.
|tip Princess Moira Bronzebeard in Blackrock Depths.
|tip You will need one or the other, not both.
Earn the "My Love is Like a Red, Red Rose" Achievement |achieve 1703
]])
QuestCore:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Nation of Adoration",{
expansion="mists",
mopready=true,
description="Complete the Lovely Charm Bracelet daily quest for each Alliance capital.",
condition_suggested=function() return isevent('Love is in the Air') and completedq(36941) and not achieved(1697) end,
achieveid={1697},
patch='30303',
},[[
leechsteps "Events Guides\\Love is in the Air\\Love is in the Air Main Questline"
step
talk Kwee Q. Peddlefeet##16075
accept A Gift for the King of Stormwind##24597 |goto Stormwind City/0 62.53,74.96 |or
'|complete achieved(1697,1) |or
step
Kill enemies that yield experience
|tip Any enemy that is green, yellow, or red difficulty will drop charms.
|tip You can kill enemies in dungeons or the open-world zone of your choice.
collect 40 Lovely Charm##49655 |or
'|complete achieved(1697) |or
step
use the Lovely Charm##49655
collect 4 Lovely Charm Bracelet##49916 |or
'|complete achieved(1697) |or
step
talk King Varian Wrynn##29611
|tip Inside Stormwind Keep.
turnin A Gift for the King of Stormwind##24597 |goto Stormwind City/0 80.02,38.44 |or
'|complete achieved(1697,1) |or
step
talk Kwee Q. Peddlefeet##16075
accept A Gift for the High Priestess of Elune##24610 |goto Darnassus/0 42.53,52.03 |or
'|complete achieved(1697,4) |or
step
collect Lovely Charm Bracelet##49916 |q 24610/1 |or
|tip You created this in a previous step.
'|complete achieved(1697,4) |or
step
Enter the building |goto Darnassus/0 39.04,77.09 < 10 |walk
talk Tyrande Whisperwind##7999
|tip Upstairs inside the building.
turnin A Gift for the High Priestess of Elune##24610 |goto Darnassus/0 39.09,81.59 |or
'|complete achieved(1697,4) |or
step
Run up the ramp |goto The Exodar/0 52.71,33.69 < 15 |walk
talk Kwee Q. Peddlefeet##16075
|tip Outside the Exodar.
accept A Gift for the Prophet##24611 |goto The Exodar/0 73.65,57.01 |or
'|complete achieved(1697,3) |or
step
collect Lovely Charm Bracelet##49916 |q 24611/1 |or
|tip You created this in a previous step.
'|complete achieved(1697,3) |or
step
Run up the stairs |goto The Exodar/0 31.09,60.83 < 10 |walk
talk Prophet Velen##17468
turnin A Gift for the Prophet##24611 |goto The Exodar/0 32.85,54.48 |or
'|complete achieved(1697,3) |or
step
talk Kwee Q. Peddlefeet##16075
accept A Gift for the Lord of Ironforge##24609 |goto Ironforge/0 33.57,65.60 |or
'|complete achieved(1697,2) |or
step
collect Lovely Charm Bracelet##49916 |q 24609/1 |or
|tip You created this in a previous step.
'|complete achieved(1697,2) |or
step
Enter the building |goto Ironforge/0 44.39,49.69 < 10 |walk
talk Muradin Bronzebeard##42928
turnin A Gift for the Lord of Ironforge##24609 |goto Ironforge/0 39.19,56.09 |or
'|complete achieved(1697,2) |or
step
Earn the "Nation of Adoration" Achievement |achieve 1697
]])
QuestCore:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Perma-Peddle",{
expansion="mists",
mopready=true,
description="Obtain a permanent Peddlefeet pet by procuring a Truesilver Shafted Arrow.",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1700) end,
achieveid={1700},
patch='30003',
},[[
step
collect 40 Love Token##49927 |or
|tip You can acquire these by completing Love is in the Air daily quests.
|tip Use the "Love is in the Air Dailies" event guide to accomplish this.
'|complete achieved(1700) |or
step
talk Lovely Merchant##37674
buy 1 Truesilver Shafted Arrow##22235 |goto Stormwind City/0 62.49,75.24
'|complete achieved(1700) |or
step
Earn the "Perma-Peddle" Achievement |achieve 1700
]])
QuestCore:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Shafted!",{
expansion="mists",
mopready=true,
description="Shoot 10 players with a Silver Shafted Arrow.",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1188) end,
achieveid={1188},
patch='30003',
},[[
step
collect 10 Love Token##49927 |or
|tip You can acquire these by completing Love is in the Air daily quests.
|tip Use the "Love is in the Air Dailies" event guide to accomplish this.
'|complete achieved(1188) |or
step
talk Lovely Merchant##37674
buy 10 Silver Shafted Arrow##22200 |goto Stormwind City/0 62.49,75.24 |or
'|complete achieved(1188) |or
step
use the Silver Shafted Arrow##22200
|tip Use your Silver Shafted Arrows on 10 players.
|tip This can be done anywhere.
Shoot #10# Players with the Silver Shafted Arrow |achieve 1188 |goto Stormwind City/0 62.49,75.24
]])
QuestCore:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Sweet Tooth",{
expansion="mists",
mopready=true,
description="Sample the following holiday candy:\n\nButtermilk Delight\nDark Desire\n"..
"Sweet Surprise\nVery Berry Cream",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1702) end,
achieveid={1702},
patch='30008',
},[[
step
talk Lovely Merchant##37674
buy 1 Box of Chocolates##49909 |goto Stormwind City/0 62.49,75.24 |n
|tip These cost 10 Love Tokens each.
|tip You can acquire Love Tokens by completing Love is in the Air daily quests.
|tip Use the "Love is in the Air Dailies" event guide to accomplish this.
use Box of Chocolates##49909
collect 1 Buttermilk Delight##22236 |or 4
collect 1 Dark Desire##22237 |or 4
collect 1 Sweet Surprise##22239 |or 4
collect 1 Very Berry Cream##22238 |or 4
'|achieved(1702) |or 4 |override
step
use the Buttermilk Delight##22236
Sample the "Buttermilk Delight" Candy |achieve 1702/3
|tip Save the remaining Buttermilk Delights for a later achievement.
step
use the Dark Desire##22237
Sample the "Dark Desire" Candy |achieve 1702/4
step
use the Sweet Surprise##22239
Sample the "Sweet Surprise" Candy |achieve 1702/2
step
use the Very Berry Cream##22238
Sample the "Very Berry Cream" Candy |achieve 1702/1
]])
QuestCore:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\The Rocket's Pink Glare",{
expansion="mists",
mopready=true,
description="Shoot off 10 Love Rockets in 20 seconds or less.",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1696) end,
achieveid={1696},
patch='30002',
},[[
step
collect 10 Love Token##49927 |or
|tip You can acquire these by completing Love is in the Air daily quests.
|tip Use the "Love is in the Air Dailies" event guide to accomplish this.
'|complete achieved(1696) |or
step
talk Lovely Merchant##37674
buy 10 Love Rocket##34258 |goto Stormwind City/0 62.49,75.24 |or
'|complete achieved(1696) |or
step
use the Love Rocket##34258
|tip Use them quickly to set off all 10 in 20 seconds or less.
Shoot off #10# Love Rockets in 20 Seconds or Less |achieve 1696
]])
QuestCore:RegisterGuide("Events Guides\\Lunar Festival\\Lunar Festival Main Questline",{
expansion="mists",
mopready=true,
description="This guide will walk you through the quests for the \"Lunar Festival\" event.",
condition_end=function() return completedq(8862) end,
},[[
step
talk Lunar Festival Emissary##15892
accept The Lunar Festival##8870 |goto Ironforge/0 30.93,61.61
step
talk Lunar Festival Harbinger##15895
turnin The Lunar Festival##8870 |goto Ironforge/0 28.84,16.22
accept Lunar Fireworks##8867 |goto Ironforge/0 28.84,16.22
step
talk Lunar Festival Vendor##15898
buy 8 Small Blue Rocket##21558 |goto Ironforge/0 29.92,14.22 |q 8867
buy 2 Blue Rocket Cluster##21571 |goto Ironforge/0 29.92,14.22 |q 8867
buy 30 Red Rocket Cluster##21576 |goto Ironforge/0 29.92,14.22 |q 8868
|tip You need 30 red, green, or blue rocket clusters to summon Omen.
|tip If you do not buy these, you will have to wait for someone else to summon it.
stickystart "Fire_Lunar_Fireworks_Clusters"
step
use the Small Blue Rocket##21558
Fire #8# Lunar Fireworks |q 8867/1 |goto Ironforge/0 30.69,17.78
step
label "Fire_Lunar_Fireworks_Clusters"
use the Blue Rocket Cluster##21571
Fire #2# Lunar Fireworks Clusters |q 8867/2 |goto Ironforge/0 30.69,17.78
step
talk Lunar Festival Harbinger##15895
turnin Lunar Fireworks##8867 |goto Ironforge/0 28.84,16.22
accept Valadar Starsong##8883 |goto Ironforge/0 28.84,16.22
step
use the Lunar Festival Invitation##21711
|tip This will teleport you to Moonglade.
Use the Lunar Festival Invitation in the Beam of Light |complete zone("Moonglade") or completedq(8883) |goto Ironforge/0 30.68,17.79
step
talk Valadar Starsong##15864
turnin Valadar Starsong##8883 |goto Moonglade 53.65,35.26
step
talk Valadar Starsong##15864
accept Elune's Blessing##8868 |goto Moonglade/0 53.65,35.25
step
use the Red Rocket Cluster##21576
kill Omen##15467
|tip To summon Omen, someone will need to shoot 30 red, blue, or green rocket clusters at the cluster launcher.
|tip Lucky Rocket Clusters will not work.
|tip The first rocket cluster will summon level 84 Minions of Omen.
|tip The 30th rocket cluster will summon Omen from the lake who will then attack you.
|tip This boss will require a raid group.
|tip Stand in the pillar of light after it dies.
|tip If it was already killed, quickly jump in the pillar of light before it disappears.
Gain Elune's Blessing |q 8868/1 |goto Moonglade/0 64.67,60.48
step
talk Valadar Starsong##15864
turnin Elune's Blessing##8868 |goto Moonglade/0 53.60,35.40
]])
QuestCore:RegisterGuide("Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path",{
expansion="mists",
mopready=true,
description="This guide will walk you through an optimized path, honoring the elders for the \"Lunar Festival\" event.",
},[[
step
talk Innkeeper Firebrew##5111
|tip Inside Ironforge.
home Ironforge |goto Ironforge/0 18.16,51.44 |q 8645 |future
step
talk Elder Bronzebeard##15871
|tip Inside Ironforge.
accept Bronzebeard the Elder##8866 |goto Ironforge/0 29.19,17.03
step
talk Elder Goldwell##15569
accept Goldwell the Elder##8653 |goto Dun Morogh/0 53.92,49.92
step
talk Elder Silvervein##15558
accept Silvervein the Elder##8642 |goto Loch Modan/0 33.32,46.55
step
talk Elder Firebeard##55219
accept Firebeard the Elder##29737 |goto Twilight Highlands/0 50.91,70.45
step
talk Elder Darkfeather##55218
accept Darkfeather the Elder##29736 |goto Twilight Highlands/0 51.88,33.06
step
talk Elder Highpeak##15559
accept Highpeak the Elder##8643 |goto The Hinterlands/0 49.99,48.04
step
talk Elder Windrun##15592
|tip Inside the tower.
accept Windrun the Elder##8688 |goto Eastern Plaguelands/0 35.57,68.85
step
talk Elder Snowcrown##15566
accept Snowcrown the Elder##8650 |goto Eastern Plaguelands/0 75.73,54.56
step
talk Elder Farwhisper##15607
|tip He is located in the Stratholme dungeon on the Service Entrance (Scarlet/Live) side.
|tip Follow the right side and through the plague rat gate and he will be around the corner when it turns back left.
|tip You may need to run this dungeon with a group.
accept Farwhisper the Elder##8727 |or
|tip
Click Here to Skip This Elder |confirm |or
step
Enter the cave |goto Western Plaguelands/0 64.76,38.70 < 10 |walk
talk Elder Meadowrun##15602
|tip Inside the cave.
accept Meadowrun the Elder##8722 |goto Western Plaguelands/0 63.51,36.11
step
Enter the building |goto Western Plaguelands/0 69.73,73.37 < 15 |only if walking
Run up the stairs |goto Western Plaguelands/0 69.27,72.15 < 5 |only if walking
Run up the stairs |goto Western Plaguelands/0 68.95,72.30 < 5 |only if walking
talk Elder Moonstrike##15594
|tip Upstairs on the outer wall of the building.
accept Moonstrike the Elder##8714 |goto Western Plaguelands/0 69.18,73.45
step
talk Elder Graveborn##15568
|tip If you cannot see this elder, talk to Zidormi just outside the gates of Undercity. |only if completedq(12499)
|tip This is a Horde area and may flag you for PvP.
accept Graveborn the Elder##8652 |goto Tirisfal Glades/0 61.86,53.91
step
talk Elder Darkcore##15564
|tip Inside the entrance to Undercity.
|tip If you cannot see this elder, talk to Zidormi just outside the gates of Undercity. |only if completedq(12499)
|tip This is a Horde area and may flag you for PvP.
accept Darkcore the Elder##8648 |goto Undercity/0 66.63,38.20
step
talk Elder Obsidian##15561
|tip This is a Horde area and may flag you for PvP.
accept Obsidian the Elder##8645 |goto Silverpine Forest/0 44.98,41.14
step
talk Elder Dawnstrider##15585
accept Dawnstrider the Elder##8683 |goto Burning Steppes/0 52.38,23.94
step
Cross the bridge |goto Burning Steppes/0 64.44,37.55 < 7 |only if walking
Follow the path |goto Burning Steppes/0 67.76,40.56 < 7 |only if walking
talk Elder Rumblerock##15557
accept Rumblerock the Elder##8636 |goto Burning Steppes/0 70.11,45.39
step
talk Elder Ironband##15567
accept Ironband the Elder##8651 |goto Searing Gorge/0 21.29,79.12
step
talk Elder Morndeep##15549
|tip He is located in the middle of the Ring of Law in the Blackrock Depths dungeon.
|tip Talking to him will start the event.
|tip You may need to run this dungeon with a group.
accept Morndeep the Elder##8619 |or
|tip
Click Here to Skip This Elder |confirm |or
step
talk Elder Stonefort##15560
|tip He is located on the left side after crossing the first rope brige in Hordemar City on the way to Omokk in the Lower Blackrock Spire dungeon.
|tip You may need to run this dungeon with a group.
accept Stonefort the Elder##8644 |or
|tip
Click Here to Skip This Elder |confirm |or
step
talk Elder Hammershout##15562
accept Hammershout the Elder##8646 |goto Elwynn Forest/0 34.56,50.26
step
talk Elder Stormbrow##15565
accept Stormbrow the Elder##8649 |goto Elwynn Forest/0 39.79,63.67
step
talk Elder Skychaser##15577
|tip At the top of the building.
accept Skychaser the Elder##8675 |goto Westfall/0 56.64,47.09
step
talk Elder Starsong##15593
|tip Take the path on the left after entering Sunken Temple dungeon.
|tip Go up the spiral staircase and go left again to the large round room.
|tip The elder is in the rear of the alcove on the left.
|tip You may need to run this dungeon with a group.
accept Starsong the Elder##8713 |or
|tip
Click Here to Skip This Elder |confirm |or
step
talk Elder Bellowrage##15563
accept Bellowrage the Elder##8647 |goto Blasted Lands/0 54.28,49.49
step
talk Elder Starglade##15596
accept Starglade the Elder##8716 |goto Northern Stranglethorn/0 71.04,34.31
step
talk Elder Winterhoof##15576
|tip On top of the bank.
accept Winterhoof the Elder##8674 |goto The Cape of Stranglethorn/0 39.96,72.51
step
talk Innkeeper Wiley##6791
home Ratchet |goto The Barrens/0 67.30,74.66 |q 8680 |future
step
talk Elder Windtotem##15582
accept Windtotem the Elder##8680 |goto The Barrens/0 68.36,69.96
step
talk Elder Runetotem##15572
|tip This is a Horde area and may flag you for PvP.
accept Runetotem the Elder##8670 |goto Durotar/0 53.23,43.61
step
talk Elder Darkhorn##15579
|tip This is a Horde area and may flag you for PvP.
accept Darkhorn the Elder##8677 |goto Orgrimmar/1 52.28,60.00
step
talk Elder Skygleam##15600
accept Skygleam the Elder##8720 |goto Azshara/0 64.73,79.34
step
talk Elder Stonespire##15574
accept Stonespire the Elder##8672 |goto Winterspring/0 59.96,49.94
step
talk Elder Brightspear##15606
accept Brightspear the Elder##8726 |goto Winterspring/0 53.23,56.75
step
talk Elder Evershade##55227
accept Evershade the Elder##29740 |goto Mount Hyjal/0 62.54,22.82
step
talk Elder Windsong##55224
accept Windsong the Elder##29739 |goto Mount Hyjal/0 26.69,62.05
step
talk Elder Riversong##15605
accept Riversong the Elder##8725 |goto Ashenvale/0 35.54,48.91
step
talk Elder Nightwind##15603
accept Nightwind the Elder##8723 |goto Felwood/0 38.36,52.85
step
talk Elder Starweave##15601
accept Starweave the Elder##8721 |goto Darkshore/0 49.54,18.95
step
talk Elder Bladeswift##15598
accept Bladeswift the Elder##8718 |goto Darnassus/0 39.22,31.86
step
talk Elder Bladeleaf##15595
accept Bladeleaf the Elder##8715 |goto Teldrassil/0 56.85,53.10
step
talk Elder Moonwarden##15597
|tip This is a Horde area and may flag you for PvP.
accept Moonwarden the Elder##8717 |goto The Barrens/0 48.52,59.27
step
talk Elder High Mountain##15588
|tip This is a Horde area and may flag you for PvP.
accept High Mountain the Elder##8686 |goto Southern Barrens/0 41.60,47.45
step
talk Elder Bloodhoof##15575
|tip This is a Horde area and may flag you for PvP.
accept Bloodhoof the Elder##8673 |goto Mulgore/0 48.50,53.24
step
talk Elder Ezra Wheathoof##15580
|tip On Elder Rise.
|tip This is a Horde area and may flag you for PvP.
accept Wheathoof the Elder##8678 |goto Thunder Bluff/0 72.98,23.38
step
talk Elder Splitrock##15556
|tip He is located inside the Maraudon dungeon near the east exit beyond Rotgrip.
|tip He is at the top of a path at the end of the tunnel.
|tip You may need to run this dungeon with a group.
accept Splitrock the Elder##8635 |or
|tip
Click Here to Skip This Elder |confirm |goto Maraudon/1 0.00,0.00 |or
step
Run up the ramp |goto Feralas/0 59.12,44.66 < 20 |only if walking
Enter the tunnel |goto Feralas/0 61.20,34.86 < 20 |only if walking
talk Elder Mistwalker##15587
|tip Down in the pit.
accept Mistwalker the Elder##8685 |goto Feralas/0 62.56,31.08
step
talk Elder Grimtotem##15581
accept Grimtotem the Elder##8679 |goto Feralas/0 76.71,37.89
step
talk Elder Primestone##15570
accept Primestone the Elder##8654 |goto Silithus/0 30.80,13.32
step
talk Elder Bladesing##15599
accept Bladesing the Elder##8719 |goto Silithus/0 53.02,35.48
step
talk Elder Thunderhorn##15583
accept Thunderhorn the Elder##8681 |goto Un'Goro Crater/0 50.37,76.16
step
talk Elder Menkhaf##55211
accept Menkhaf the Elder##29742 |goto Uldum/0 65.52,18.67
step
talk Elder Sekhemi##55210
accept Sekhemi the Elder##29741 |goto Uldum/0 31.59,62.98
step
talk Elder Ragetotem##15573
accept Ragetotem the Elder##8671 |goto Tanaris/0 37.24,79.06
step
talk Elder Wildmane##15578
|tip She is located inside the Zul'Farak dungeon near the pool that spawns Gaz'Rilla.
|tip You may need to run this dungeon with a group.
accept Wildmane the Elder##8676 |or
|tip
Click Here to Skip This Elder |confirm |or
step
talk Elder Dreamseer##15586
accept Dreamseer the Elder##8684 |goto Tanaris/0 51.40,28.81
step
talk Elder Morningdew##15604
accept Morningdew the Elder##8724 |goto Thousand Needles/0 77.09,75.61
step
talk Elder Skyseer##15584
accept Skyseer the Elder##8682 |goto Thousand Needles/0 46.35,51.01
step
talk Elder Sardis##30348
accept Sardis the Elder##13012 |goto Borean Tundra/0 59.09,65.63
step
talk Elder Pamuya##30371
accept Pamuya the Elder##13029 |goto Borean Tundra/0 42.94,49.57
step
talk Elder Arp##30364
accept Arp the Elder##13033 |goto Borean Tundra/0 57.40,43.72
step
talk Elder Northal##30360
accept Northal the Elder##13016 |goto Borean Tundra/0 33.80,34.36
step
map The Nexus/1
path follow smart; loop off; ants curved; dist 20
path	36.59,81.29	45.91,68.17	48.92,67.10	51.51,62.58	53.52,53.76
path	64.56,53.33	64.99,61.08	55.38,64.73
talk Elder Igasho##30536
|tip Open the world map to see an ant trail guiding you to your destination.
accept Igasho the Elder##13021 |goto The Nexus/1 55.38,64.73 |or
|tip
Click Here to Skip This Elder |confirm |or
step
talk Elder Sandrene##30362
accept Sandrene the Elder##13018 |goto Sholazar Basin/0 49.78,63.62
step
talk Elder Wanikaya##30365
accept Wanikaya the Elder##13024 |goto Sholazar Basin/0 63.80,49.02
step
talk Elder Bluewolf##30368
|tip Inside the building.
|tip You can only get to this NPC when your faction controls Wintergrasp.
accept Bluewolf the Elder##13026 |goto Wintergrasp/0 49.03,13.94 |or
If your faction does not control Wintergrasp, click here to continue |confirm |or
step
talk Elder Morthie##30358
accept Morthie the Elder##13014 |goto Dragonblight/0 29.75,55.91
step
map Azjol-Nerub/1
path follow smart; loop off; ants curved; dist 20
path	13.06,86.67	19.23,71.83	25.68,35.49	53.80,44.73	64.13,44.52
path	74.03,44.30	82.50,44.52	88.95,44.73	80.78,40.22	70.59,33.55
map Azjol-Nerub/1
path	39.17,28.82	53.09,15.91	60.98,32.04	49.21,62.58
talk Elder Nurgen##30533
|tip Open the world map to see an ant trail guiding you to your destination.
accept Nurgen the Elder##13022 |goto Azjol-Nerub/1 21.81,43.23 |or
|tip
Click Here to Skip This Elder |confirm |or
step
talk Elder Skywarden##30373
accept Skywarden the Elder##13031 |goto Dragonblight/0 35.10,48.35
step
talk Elder Thoim##30363
accept Thoim the Elder##13019 |goto Dragonblight/0 48.77,78.18
step
talk Elder Graymane##30370
accept Graymane the Elder##13028 |goto The Storm Peaks/0 41.16,84.72
step
talk Elder Fargal##30359
accept Fargal the Elder##13015 |goto The Storm Peaks/0 28.88,73.71
step
Enter the building |goto The Storm Peaks/0 30.64,37.02 < 15 |walk
talk Elder Stonebeard##30375
|tip Inside the building.
accept Stonebeard the Elder##13020 |goto The Storm Peaks/0 31.26,37.61
step
map Halls of Stone/1
path follow smart; loop off; ants curved; dist 20
path	36.16,36.13	45.05,35.92	50.22,45.16	48.49,53.33
path	39.60,54.20	34.15,50.32	29.27,61.72
talk Elder Yurauk##30535
|tip Open the world map to see an ant trail guiding you to your destination.
accept Yurauk the Elder##13066 |goto Halls of Stone/1 29.27,61.72 |or
|tip
Click Here to Skip This Elder |confirm |or
step
talk Elder Muraco##30374
accept Muraco the Elder##13032 |goto The Storm Peaks/0 64.59,51.34
step
talk Elder Tauros##30369
accept Tauros the Elder##13027 |goto Zul'Drak/0 58.91,55.97
step
map Drak'Tharon Keep/1
path follow smart; loop off; ants curved; dist 20
path	33.14,78.28	40.89,86.67	47.35,79.14	47.78,45.16	56.67,30.97
path	56.82,18.28	67.00,17.85	63.42,31.83	68.01,40.00	67.72,54.63
path	60.40,57.64	55.96,59.14	55.52,77.42	63.70,76.99	68.87,78.93
talk Elder Kilias##30534
|tip Open the world map to see an ant trail guiding you to your destination.
accept Kilias the Elder##13023 |goto Drak'Tharon Keep/1 68.87,78.93 |or
|tip
Click Here to Skip This Elder |confirm |or
step
map Gundrak/1
path follow smart; loop off; ants curved; dist 20
path	58.68,37.21	59.25,48.82	57.96,67.96	51.08,73.55	46.34,70.97
path	45.34,61.08
talk Elder Ohanzee##30537
|tip Open the world map to see an ant trail guiding you to your destination.
accept Ohanzee the Elder##13065 |goto Gundrak/1 45.34,61.08 |or
|tip
Click Here to Skip This Elder |confirm |or
step
talk Elder Beldak##30357
accept Beldak the Elder##13013 |goto Grizzly Hills/0 60.57,27.67
step
talk Elder Whurain##30372
accept Whurain the Elder##13030 |goto Grizzly Hills/0 64.18,46.99
step
talk Elder Lunaro##30367
accept Lunaro the Elder##13025 |goto Grizzly Hills/0 80.53,37.11
step
map Utgarde Keep/1
path follow smart; loop off; ants curved; dist 20
path	68.72,70.54	63.56,46.67	62.27,40.22	65.57,29.03	58.82,23.44
path	50.07,28.17	43.76,27.31	34.00,32.04	24.10,38.93	26.40,51.83
path	28.26,61.94	21.66,76.35	28.69,87.53	39.60,86.02	49.21,81.94
path	47.32,69.46
talk Elder Jarten##30531
|tip Open the world map to see an ant trail guiding you to your destination.
accept Jarten the Elder##13017 |goto Utgarde Keep/1 47.32,69.46 |or
|tip
Click Here to Skip This Elder |confirm |or
step
map Utgarde Pinnacle/1
path follow smart; loop off; ants curved; dist 20
path	44.48,17.85	44.19,35.70	33.86,36.13	33.72,50.97	34.43,68.39
path	39.60,68.60	39.31,76.35
map Utgarde Pinnacle/1
path	30.99,74.41	35.87,76.35	36.01,85.16	45.62,85.81
map Utgarde Pinnacle/1
path	52.51,73.98	51.65,83.66	60.55,83.87	60.83,69.89	68.15,69.25
path	68.44,52.04	68.15,36.35	60.98,37.42	56.24,37.42
map Utgarde Pinnacle/1
path	48.49,23.01
talk Elder Chogan'gada##30538
|tip Open the world map to see an ant trail guiding you to your destination.
accept Chogan'gada the Elder##13067 |goto Utgarde Pinnacle/1 48.71,23.12 |or
|tip
Click Here to Skip This Elder |confirm |or
step
talk Elder Bluewolf##30368
|tip Inside the building.
|tip Your faction must control Wintergrasp to reach this Elder.
accept Bluewolf the Elder##13026 |goto Wintergrasp/0 49.03,13.94 |or
step
map The Nexus/1
path follow smart; loop off; ants curved; dist 20
path	36.59,81.29	45.91,68.17	48.92,67.10	51.51,62.58	53.52,53.76
path	64.56,53.33	64.99,61.08	55.38,64.73
talk Elder Igasho##30536
|tip Open the world map to see an ant trail guiding you to your destination.
accept Igasho the Elder##13021 |goto The Nexus/1 55.38,64.73
step
map Azjol-Nerub/1
path follow smart; loop off; ants curved; dist 20
path	13.06,86.67	19.23,71.83	25.68,35.49	53.80,44.73	64.13,44.52
path	74.03,44.30	82.50,44.52	88.95,44.73	80.78,40.22	70.59,33.55
map Azjol-Nerub/1
path	39.17,28.82	53.09,15.91	60.98,32.04	49.21,62.58
talk Elder Nurgen##30533
|tip Open the world map to see an ant trail guiding you to your destination.
accept Nurgen the Elder##13022 |goto Azjol-Nerub/1 21.81,43.23
step
map Drak'Tharon Keep/1
path follow smart; loop off; ants curved; dist 20
path	33.14,78.28	40.89,86.67	47.35,79.14	47.78,45.16	56.67,30.97
path	56.82,18.28	67.00,17.85	63.42,31.83	68.01,40.00	67.72,54.63
path	60.40,57.64	55.96,59.14	55.52,77.42	63.70,76.99	68.87,78.93
talk Elder Kilias##30534
|tip Open the world map to see an ant trail guiding you to your destination.
accept Kilias the Elder##13023 |goto Drak'Tharon Keep/1 68.87,78.93
step
map Halls of Stone/1
path follow smart; loop off; ants curved; dist 20
path	36.16,36.13	45.05,35.92	50.22,45.16	48.49,53.33
path	39.60,54.20	34.15,50.32	29.27,61.72
talk Elder Yurauk##30535
|tip Open the world map to see an ant trail guiding you to your destination.
accept Yurauk the Elder##13066 |goto Halls of Stone/1 29.27,61.72
step
map Gundrak/1
path follow smart; loop off; ants curved; dist 20
path	58.68,37.21	59.25,48.82	57.96,67.96	51.08,73.55	46.34,70.97
path	45.34,61.08
talk Elder Ohanzee##30537
|tip Open the world map to see an ant trail guiding you to your destination.
accept Ohanzee the Elder##13065 |goto Gundrak/1 45.34,61.08
step
map Utgarde Keep/1
path follow smart; loop off; ants curved; dist 20
path	68.72,70.54	63.56,46.67	62.27,40.22	65.57,29.03	58.82,23.44
path	50.07,28.17	43.76,27.31	34.00,32.04	24.10,38.93	26.40,51.83
path	28.26,61.94	21.66,76.35	28.69,87.53	39.60,86.02	49.21,81.94
path	47.32,69.46
talk Elder Jarten##30531
|tip Open the world map to see an ant trail guiding you to your destination.
accept Jarten the Elder##13017 |goto Utgarde Keep/1 47.32,69.46
step
map Utgarde Pinnacle/1
path follow smart; loop off; ants curved; dist 20
path	44.48,17.85	44.19,35.70	33.86,36.13	33.72,50.97	34.43,68.39
path	39.60,68.60	39.31,76.35
map Utgarde Pinnacle/1
path	30.99,74.41	35.87,76.35	36.01,85.16	45.62,85.81
map Utgarde Pinnacle/1
path	52.51,73.98	51.65,83.66	60.55,83.87	60.83,69.89	68.15,69.25
path	68.44,52.04	68.15,36.35	60.98,37.42	56.24,37.42
map Utgarde Pinnacle/1
path	48.49,23.01
talk Elder Chogan'gada##30538
|tip Open the world map to see an ant trail guiding you to your destination.
accept Chogan'gada the Elder##13067 |goto Utgarde Pinnacle/1 48.71,23.12
step
click Hero's Call Board##10016
accept Hero's Call Vashj'ir##27724 |goto Stormwind City 62.90,71.55
|only if level >= 80
step
accept A Personal Summons##28825 |goto Stormwind City 74.54,19.02
|tip You will automatically accept this quest when you enter Stormwind City.
|only if level >= 80
step
talk Naraat the Earthspeaker##45226
turnin A Personal Summons##28825 |goto Stormwind City 74.54,19.02
accept Eye of the Storm##28826 |goto Stormwind City 74.54,19.02
|only if level >= 80
step
click Waters of Farseeing##445
Peer into the Waters of Farseeing |q 28826/1 |goto Stormwind City 74.39,19.53
|only if level >= 80
step
talk Naraat the Earthspeaker##45226
turnin Eye of the Storm##28826 |goto Stormwind City 74.54,19.02
|only if level >= 80
step
talk Recruiter Burns##36799
turnin Hero's Call Vashj'ir##27724 |goto Stormwind City 27.37,24.15 |only if haveq(27724) or completedq(27724)
accept Call of Duty##14482 |goto Stormwind City 27.37,24.15
|only if level >= 80
step
Ride the Mercenary Ship to Vashj'ir |q 14482/1 |goto Stormwind City 18.19,25.48
|only if level >= 80
step
Watch the dialogue
Wait to Be Rescued |condition subzone("The Briny Cutter") |q 14482
|only if level >= 80
step
talk Erunak Stonespeaker##36915
|tip Inside the ship.
turnin Call of Duty##14482 |goto Kelp'thar Forest/0 45.24,23.36
accept Sea Legs##24432 |goto Kelp'thar Forest/0 45.24,23.36
|only if level >= 80
stickystart "Collect_Saltwater_Starfish"
step
click Conch Shell##202560
|tip It looks like a large shell.
collect Conch Shell##52504 |q 24432/2 |goto Kelp'thar Forest/0 45.14,26.80
|only if level >= 80
step
label "Collect_Saltwater_Starfish"
click Saltwater Stars##205989+
|tip They look like yellow starfish.
collect 3 Saltwater Starfish##54828 |q 24432/1 |goto Kelp'thar Forest/0 44.29,27.17
|only if level >= 80
step
talk Erunak Stonespeaker##36915
|tip Inside the ship.
turnin Sea Legs##24432 |goto Kelp'thar Forest/0 45.24,23.35
|only if level >= 80
step
talk Elder Moonlance##55228
|tip You cannot officially unlock Vashj'ir. |only if level < 80
|tip To gain access to this elder, you can fly directly to Vashj'ir to the edge of the Shimmering Expanse map. |only if level < 80
|tip If you go in a straight line with at least artisan riding skill, you will make it with plenty of fatigue to spare. |only if level < 80
accept Moonlance the Elder##29738 |goto Shimmering Expanse/0 57.26,86.15
step
Reach Level 82 |ding 82
|tip You must be level 82 to unlock access to Deepholm.
step
click Hero's Call Board##250720
accept Hero's Call: Deepholm!##27727 |goto Stormwind City/0 62.91,71.54
step
talk Naraat the Earthspeaker##45226
turnin Hero's Call: Deepholm!##27727 |goto Stormwind City/0 74.54,19.02 |only if haveq(27727) or completedq(27727)
accept The Maelstrom##27203 |goto Stormwind City/0 74.54,19.02
step
click Portal to the Maelstrom##249858
Teleport to the Maelstrom |condition subzone("The Maelstrom") |goto Stormwind City/0 74.48,18.39 |q 27203
step
talk Thrall##45042
turnin The Maelstrom##27203 |goto The Maelstrom/0 33.37,50.17
accept Deepholm, Realm of Earth##27123 |goto The Maelstrom/0 33.37,50.17
step
clicknpc Wyvern##45005
Begin Traveling to Deepholm |invehicle |goto The Maelstrom/0 32.48,51.95 |q 27123
step
Watch the dialogue
Fly Through the Maelstrom to Deepholm |condition zone("Deepholm") |q 27123
step
Watch the dialogue
Fly Through the Maelstrom to Deepholm |invehicle |q 27123
step
Watch the dialogue
Travel to Deepholm |outvehicle |goto Deepholm/0 49.88,54.72 |q 27123 |notravel
step
talk Maruut Stonebinder##43065
|tip Inside the building.
turnin Deepholm, Realm of Earth##27123 |goto Deepholm/0 49.62,52.94
step
talk Elder Stonebrand##55217
|tip Inside the building.
accept Stonebrand the Elder##29735 |goto Deepholm/0 49.70,54.89
step
talk Elder Deepforge##55216
accept Deepforge the Elder##29734 |goto Deepholm/0 27.70,69.18
]])
QuestCore:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\A Coin of Ancestry",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={605},
patch='30401',
description="Receive a Coin of Ancestry.",
},[[
step
leechsteps "Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path" 1-1
step
|achieve 605
]])
QuestCore:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\5 Coins of Ancestry",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={606},
patch='30401',
description="Receive 5 Coins of Ancestry.",
},[[
step
leechsteps "Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path" 1-5
step
|achieve 606
]])
QuestCore:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\10 Coins of Ancestry",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={607},
patch='30401',
description="Receive 10 Coins of Ancestry.",
},[[
step
leechsteps "Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path" 1-14
step
|achieve 607
]])
QuestCore:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\25 Coins of Ancestry",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={608},
patch='30401',
description="Receive 25 Coins of Ancestry.",
},[[
step
leechsteps "Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path" 1-35
step
|achieve 608
]])
QuestCore:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\50 Coins of Ancestry",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={609},
patch='30401',
description="Receive 50 Coins of Ancestry.",
},[[
step
leechsteps "Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path" 1-64
step
|achieve 609
]])
QuestCore:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\Elders of Eastern Kingdoms",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={912},
patch='30401',
description="Honor the Elders of the following zones:\n\nElder Goldwell, Kharanos\n"..
"Elder Bellowrage, Blasted Lands\nElder Stormbrow, Goldshire\nElder Meadowrun, "..
"Western Plaguelands\nElder Starglade, Zul'Gurub\nElder Winterhoof, Booty Bay\n"..
"Elder Silvervein, Thelsamar\nElder Skychaser, Sentinel Hill\nElder Rumblerock, "..
"Burning Steppes\nElder Dawnstrider, Flame Crest\nElder Highpeak, The Hinterlands\n"..
"Elder Ironband, Searing Gorge\nElder Graveborn, Brill\nElder Obsidian, The Sepulcher"..
"\nElder Windrun, Eastern Plaguelands\nElder Snowcrown, Light's Hope Chapel\n"..
"Elder Moonstrike, Scholomance",
},[[
step
talk Innkeeper Firebrew##5111
home Ironforge |goto Ironforge/0 18.16,51.44 |q 8645 |future
step
talk Elder Goldwell##15569
accept Goldwell the Elder##8653 |goto Dun Morogh/0 46.82,51.61
step
talk Elder Silvervein##15558
accept Silvervein the Elder##8642 |goto Loch Modan/0 33.32,46.55
step
talk Elder Highpeak##15559
accept Highpeak the Elder##8643 |goto The Hinterlands/0 49.99,48.04
step
talk Elder Snowcrown##15566
accept Snowcrown the Elder##8650 |goto Eastern Plaguelands/0 75.73,54.56
step
talk Elder Windrun##15592
|tip Inside the tower.
accept Windrun the Elder##8688 |goto Eastern Plaguelands/0 35.57,68.85
step
talk Elder Meadowrun##15602
accept Meadowrun the Elder##8722 |goto Western Plaguelands/0 63.51,36.11
step
Enter the building |goto Western Plaguelands/0 69.73,73.37 < 15 |only if walking
Run up the stairs |goto Western Plaguelands/0 69.27,72.15 < 5 |only if walking
Run up the stairs |goto Western Plaguelands/0 68.95,72.30 < 5 |only if walking
talk Elder Moonstrike##15594
|tip Upstairs on the outer wall of the building.
accept Moonstrike the Elder##8714 |goto Western Plaguelands/0 69.18,73.45
step
talk Elder Graveborn##15568
|tip If you cannot see this elder, talk to Zidormi just outside the gates of Undercity. |only if completedq(12499)
|tip This is a Horde area and may flag you for PvP.
accept Graveborn the Elder##8652 |goto Tirisfal Glades/0 61.87,53.85
step
talk Elder Obsidian##15561
accept Obsidian the Elder##8645 |goto Silverpine Forest/0 44.98,41.15
step
talk Elder Ironband##15567
accept Ironband the Elder##8651 |goto Searing Gorge/0 21.29,79.12
step
talk Elder Dawnstrider##15585
accept Dawnstrider the Elder##8683 |goto Burning Steppes/0 52.38,23.94
step
Cross the bridge |goto Burning Steppes/0 64.44,37.55 < 7 |only if walking
Follow the path |goto Burning Steppes/0 67.76,40.56 < 7 |only if walking
talk Elder Rumblerock##15557
accept Rumblerock the Elder##8636 |goto Burning Steppes/0 70.11,45.39
step
talk Elder Stormbrow##15565
accept Stormbrow the Elder##8649 |goto Elwynn Forest/0 39.79,63.67
step
talk Elder Bellowrage##15563
accept Bellowrage the Elder##8647 |goto Blasted Lands/0 54.28,49.49
step
talk Elder Skychaser##15577
|tip At the top of the building.
accept Skychaser the Elder##8675 |goto Westfall/0 56.64,47.09
step
talk Elder Starglade##15596
accept Starglade the Elder##8716 |goto Northern Stranglethorn/0 71.04,34.31
step
talk Elder Winterhoof##15576
|tip On top of the bank.
accept Winterhoof the Elder##8674 |goto The Cape of Stranglethorn/0 39.96,72.51
step
|achieve 912
]])
QuestCore:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\Elders of Kalimdor",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={911},
patch='30401',
description="Honor the Elders of the following zones:\n\nElder Runetotem, Razor Hill\n"..
"Elder Skygleam, Azshara\nElder Moonwarden, The Crossroads\nElder High "..
"Mountain, Vendetta Point\nElder Windtotem, Ratchet\nElder Bladeleaf, "..
"Dolanaar\nElder Starweave, Lor'danel\nElder Bloodhoof, Bloodhoof Village\n"..
"Elder Riversong, Astranaar\nElder Grimtotem, Feralas\nElder Mistwalker, "..
"Dire Maul\nElder Nightwind, Felwood\nElder Skyseern Freewind Post\nElder"..
" Morningdew, Fizzle and Pozzik's Speedbarge\nElder Ragetotem, Tanaris\n"..
"Elder Dreamseer, Gadgetzan\nElder Thunderhorn, Un'Goro\nElder Brightspear,"..
" Winterspring\nElder Stonespire, Everlook\nElder Primestone, Silithus\n"..
"Elder Bladesing, Cenarion Hold",
},[[
step
talk Elder Bladeleaf##15595
accept Bladeleaf the Elder##8715 |goto Teldrassil/0 56.85,53.10
step
talk Elder Starweave##15601
accept Starweave the Elder##8721 |goto Darkshore/0 49.54,18.95
step
talk Elder Nightwind##15603
accept Nightwind the Elder##8723 |goto Felwood/0 38.36,52.85
step
talk Elder Riversong##15605
accept Riversong the Elder##8725 |goto Ashenvale/0 35.54,48.91
step
talk Elder Brightspear##15606
accept Brightspear the Elder##8726 |goto Winterspring/0 53.23,56.75
step
talk Elder Stonespire##15574
accept Stonespire the Elder##8672 |goto Winterspring/0 59.96,49.94
step
talk Elder Skygleam##15600
accept Skygleam the Elder##8720 |goto Azshara/0 64.73,79.34
step
talk Elder Runetotem##15572
|tip This is a Horde area and may flag you for PvP.
accept Runetotem the Elder##8670 |goto Durotar/0 53.23,43.61
step
talk Elder Windtotem##15582
accept Windtotem the Elder##8680 |goto The Barrens/0 68.36,69.96
step
talk Elder Moonwarden##15597
|tip This is a Horde area and may flag you for PvP.
accept Moonwarden the Elder##8717 |goto The Barrens/0 48.52,59.27
step
talk Elder High Mountain##15588
|tip This is a Horde area and may flag you for PvP.
accept High Mountain the Elder##8686 |goto Southern Barrens/0 41.60,47.45
step
talk Elder Bloodhoof##15575
|tip This is a Horde area and may flag you for PvP.
accept Bloodhoof the Elder##8673 |goto Mulgore/0 48.50,53.24
step
Run up the ramp |goto Feralas/0 59.12,44.66 < 20 |only if walking
Enter the tunnel |goto Feralas/0 61.20,34.86 < 20 |walk
talk Elder Mistwalker##15587
|tip Down in the pit.
accept Mistwalker the Elder##8685 |goto Feralas/0 62.56,31.08
step
talk Elder Grimtotem##15581
accept Grimtotem the Elder##8679 |goto Feralas/0 76.71,37.89
step
talk Elder Skyseer##15584
accept Skyseer the Elder##8682 |goto Thousand Needles/0 46.35,51.01
step
talk Elder Morningdew##15604
accept Morningdew the Elder##8724 |goto Thousand Needles/0 77.09,75.61
step
talk Elder Dreamseer##15586
accept Dreamseer the Elder##8684 |goto Tanaris/0 51.40,28.81
step
talk Elder Ragetotem##15573
accept Ragetotem the Elder##8671 |goto Tanaris/0 37.24,79.06
step
talk Elder Thunderhorn##15583
accept Thunderhorn the Elder##8681 |goto Un'Goro Crater/0 50.37,76.17
step
talk Elder Bladesing##15599
accept Bladesing the Elder##8719 |goto Silithus/0 53.02,35.48
step
talk Elder Primestone##15570
accept Primestone the Elder##8654 |goto Silithus/0 30.80,13.32
step
|achieve 911
]])
QuestCore:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\Elders of Northrend",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={1396},
patch='30401',
description="Honor the Elders of the following zones:\n\nElder Sardis, Valiance Keep\n"..
"Elder Morthie, Star's Rest\nElder Arp, D.E.H.T.A\nElder Sandrene, Lakeside"..
" Landing\nElder Lunaro, Ruins of Tethys\nElder Tauros, Zim'Torga\nElder "..
"Graymane, K3\nElder Pamuya, Warsong Hold\nElder Skywarden, Agmar's Hammer\n"..
"Elder Beldak, Westfall Brigade\nElder Fargal, Frosthold\nElder Northal, "..
"Transitus Shield\nElder Wanikaya, Rainspeaker Rapids\nElder Bluewolf, "..
"Wintergrasp\nElder Thoim, Moa'ki Harbor\nElder Stonebeard, Bouldercrag's "..
"Refuge\nElder Whurain, Camp Oneqwah\nElder Muraco, Camp Tunka'lo",
},[[
step
talk Elder Sardis##30348
accept Sardis the Elder##13012 |goto Borean Tundra/0 59.09,65.63
step
talk Elder Pamuya##30371
accept Pamuya the Elder##13029 |goto Borean Tundra/0 42.94,49.57
step
talk Elder Arp##30364
accept Arp the Elder##13033 |goto Borean Tundra/0 57.40,43.72
step
talk Elder Northal##30360
accept Northal the Elder##13016 |goto Borean Tundra/0 33.80,34.36
step
talk Elder Sandrene##30362
accept Sandrene the Elder##13018 |goto Sholazar Basin/0 49.78,63.62
step
talk Elder Wanikaya##30365
accept Wanikaya the Elder##13024 |goto Sholazar Basin/0 63.80,49.02
step
talk Elder Bluewolf##30368
|tip Inside the building.
|tip You can only get to this NPC when your faction controls Wintergrasp.
accept Bluewolf the Elder##13026 |goto Wintergrasp/0 49.03,13.94 |or
If your faction does not control Wintergrasp, click here to continue |confirm |or
step
talk Elder Morthie##30358
accept Morthie the Elder##13014 |goto Dragonblight/0 29.75,55.91
step
talk Elder Skywarden##30373
accept Skywarden the Elder##13031 |goto Dragonblight/0 35.10,48.35
step
talk Elder Thoim##30363
accept Thoim the Elder##13019 |goto Dragonblight/0 48.77,78.18
step
talk Elder Graymane##30370
accept Graymane the Elder##13028 |goto The Storm Peaks/0 41.16,84.72
step
talk Elder Fargal##30359
accept Fargal the Elder##13015 |goto The Storm Peaks/0 28.88,73.71
step
Enter the building |goto The Storm Peaks/0 30.64,37.02 < 15 |walk
talk Elder Stonebeard##30375
|tip Inside the building.
accept Stonebeard the Elder##13020 |goto The Storm Peaks/0 31.26,37.61
step
talk Elder Muraco##30374
accept Muraco the Elder##13032 |goto The Storm Peaks/0 64.59,51.34
step
talk Elder Tauros##30369
accept Tauros the Elder##13027 |goto Zul'Drak/0 58.91,55.97
step
talk Elder Beldak##30357
accept Beldak the Elder##13013 |goto Grizzly Hills/0 60.57,27.67
step
talk Elder Whurain##30372
accept Whurain the Elder##13030 |goto Grizzly Hills/0 64.18,46.99
step
talk Elder Lunaro##30367
accept Lunaro the Elder##13025 |goto Grizzly Hills/0 80.53,37.11
step
talk Elder Bluewolf##30368
|tip Inside the building.
|tip Your faction must control Wintergrasp to reach this Elder.
accept Bluewolf the Elder##13026 |goto Wintergrasp/0 49.03,13.94 |or
step
|achieve 1396
]])
QuestCore:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\Elders of Cataclysm",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={6006},
patch='40400',
description="Honor the Elders of Cataclysm zones.",
},[[
step
talk Elder Firebeard##55219
accept Firebeard the Elder##29737 |goto Twilight Highlands/0 50.91,70.45
step
talk Elder Darkfeather##55218
accept Darkfeather the Elder##29736 |goto Twilight Highlands/0 51.88,33.06
step
talk Elder Evershade##55227
accept Evershade the Elder##29740 |goto Mount Hyjal/0 62.54,22.82
step
talk Elder Windsong##55224
accept Windsong the Elder##29739 |goto Mount Hyjal/0 26.69,62.05
step
talk Elder Menkhaf##55211
accept Menkhaf the Elder##29742 |goto Uldum/0 65.52,18.67
step
talk Elder Sekhemi##55210
accept Sekhemi the Elder##29741 |goto Uldum/0 31.59,62.98
step
click Hero's Call Board##10016
accept Hero's Call Vashj'ir##27724 |goto Stormwind City 62.90,71.55
|only if level >= 80
step
accept A Personal Summons##28825 |goto Stormwind City 74.54,19.02
|tip You will automatically accept this quest when you enter Stormwind City.
|only if level >= 80
step
talk Naraat the Earthspeaker##45226
turnin A Personal Summons##28825 |goto Stormwind City 74.54,19.02
accept Eye of the Storm##28826 |goto Stormwind City 74.54,19.02
|only if level >= 80
step
click Waters of Farseeing##445
Peer into the Waters of Farseeing |q 28826/1 |goto Stormwind City 74.39,19.53
|only if level >= 80
step
talk Naraat the Earthspeaker##45226
turnin Eye of the Storm##28826 |goto Stormwind City 74.54,19.02
|only if level >= 80
step
talk Recruiter Burns##36799
turnin Hero's Call Vashj'ir##27724 |goto Stormwind City 27.37,24.15 |only if haveq(27724) or completedq(27724)
accept Call of Duty##14482 |goto Stormwind City 27.37,24.15
|only if level >= 80
step
Ride the Mercenary Ship to Vashj'ir |q 14482/1 |goto Stormwind City 18.19,25.48
|only if level >= 80
step
Watch the dialogue
Wait to Be Rescued |condition subzone("The Briny Cutter") |q 14482
|only if level >= 80
step
talk Erunak Stonespeaker##36915
|tip Inside the ship.
turnin Call of Duty##14482 |goto Kelp'thar Forest/0 45.24,23.36
accept Sea Legs##24432 |goto Kelp'thar Forest/0 45.24,23.36
|only if level >= 80
stickystart "Collect_Saltwater_Starfish"
step
click Conch Shell##202560
|tip It looks like a large shell.
collect Conch Shell##52504 |q 24432/2 |goto Kelp'thar Forest/0 45.14,26.80
|only if level >= 80
step
label "Collect_Saltwater_Starfish"
click Saltwater Stars##205989+
|tip They look like yellow starfish.
collect 3 Saltwater Starfish##54828 |q 24432/1 |goto Kelp'thar Forest/0 44.29,27.17
|only if level >= 80
step
talk Erunak Stonespeaker##36915
|tip Inside the ship.
turnin Sea Legs##24432 |goto Kelp'thar Forest/0 45.24,23.35
|only if level >= 80
step
talk Elder Moonlance##55228
|tip You cannot officially unlock Vashj'ir. |only if level < 80
|tip To gain access to this elder, you can fly directly to Vashj'ir to the edge of the Shimmering Expanse map. |only if level < 80
|tip If you go in a straight line with at least artisan riding skill, you will make it with plenty of fatigue to spare. |only if level < 80
accept Moonlance the Elder##29738 |goto Shimmering Expanse/0 57.26,86.15
step
Reach Level 82 |ding 82
|tip You must be level 82 to unlock access to Deepholm.
step
click Hero's Call Board##250720
accept Hero's Call: Deepholm!##27727 |goto Stormwind City/0 62.91,71.54
step
talk Naraat the Earthspeaker##45226
turnin Hero's Call: Deepholm!##27727 |goto Stormwind City/0 74.54,19.02 |only if haveq(27727) or completedq(27727)
accept The Maelstrom##27203 |goto Stormwind City/0 74.54,19.02
step
click Portal to the Maelstrom##249858
Teleport to the Maelstrom |condition subzone("The Maelstrom") |goto Stormwind City/0 74.48,18.39 |q 27203
step
talk Thrall##45042
turnin The Maelstrom##27203 |goto The Maelstrom/0 33.37,50.17
accept Deepholm, Realm of Earth##27123 |goto The Maelstrom/0 33.37,50.17
step
clicknpc Wyvern##45005
Begin Traveling to Deepholm |invehicle |goto The Maelstrom/0 32.48,51.95 |q 27123
step
Watch the dialogue
Fly Through the Maelstrom to Deepholm |condition zone("Deepholm") |q 27123
step
Watch the dialogue
Fly Through the Maelstrom to Deepholm |invehicle |q 27123
step
Watch the dialogue
Travel to Deepholm |outvehicle |goto Deepholm/0 49.88,54.72 |q 27123 |notravel
step
talk Maruut Stonebinder##43065
|tip Inside the building.
turnin Deepholm, Realm of Earth##27123 |goto Deepholm/0 49.62,52.94
step
talk Elder Stonebrand##55217
|tip Inside the building.
accept Stonebrand the Elder##29735 |goto Deepholm/0 49.70,54.89
step
talk Elder Deepforge##55216
accept Deepforge the Elder##29734 |goto Deepholm/0 27.70,69.18
step
|achieve 6006
]])
QuestCore:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\Elders of the Dungeons",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={910},
patch='30401',
description="Honor the Elders of the following dungeons:\n\nElder Wildmane, Zul'Farrak\nElder "..
"Splitrock, Maraudon\nElder Morndeep, Blackrock Depths\nElder Jarten, Utgarde "..
"Keep\nElder Nurgen, Azjol-Nerub\nElder Ohanzee, Gundrak\nElder Chogan'gada, "..
"Utgarde Pinnacle\nElder Starsong, the Sunken Temple\nElder Stonefort, Blackrock"..
" Spire\nElder Farwhisper, Stratholme\nElder Igasho, The Nexus\nElder Kilias, "..
"Drak'Tharon Keep\nElder Yurauk, the Halls of Stone",
},[[
step
talk Elder Wildmane##15578
|tip She is located inside the Zul'Farak dungeon near the pool that spawns Gaz'Rilla.
|tip You may need to run this dungeon with a group.
accept Wildmane the Elder##8676 |goto Zul'Farrak/0 0.00,0.00
step
talk Elder Splitrock##15556
|tip He is located inside the Maraudon dungeon near the east exit beyond Rotgrip.
|tip He is at the top of a path at the end of the tunnel.
|tip You may need to run this dungeon with a group.
|tip Using the small portal entrance to enter at the waterfall is the shortest route.
accept Splitrock the Elder##8635
step
talk Elder Starsong##15593
|tip Take the path on the left after entering the Sunken Temple dungeon.
|tip Go up the spiral staircase and go left again to the large round room.
|tip The elder is in the rear of the alcove on the left.
|tip You may need to run this dungeon with a group.
accept Starsong the Elder##8713
step
talk Elder Morndeep##15549
|tip He is located in the middle of the Ring of Law in the Blackrock Depths dungeon.
|tip Talking to him will start the event.
|tip You may need to run this dungeon with a group.
accept Morndeep the Elder##8619
step
talk Elder Stonefort##15560
|tip He is located on the left side after crossing the first rope brige in Hordemar City on the way to Omokk in the Lower Blackrock Spire dungeon.
|tip You may need to run this dungeon with a group.
accept Stonefort the Elder##8644
step
talk Elder Farwhisper##15607
|tip He is located in the Stratholme dungeon on the Service Entrance (Scarlet/Live) side.
|tip Follow the right side and through the plague rat gate and he will be around the corner when it turns back left.
|tip You may need to run this dungeon with a group.
accept Farwhisper the Elder##8727
step
map The Nexus/1
path follow smart; loop off; ants curved; dist 20
path	36.59,81.29	45.91,68.17	48.92,67.10	51.51,62.58	53.52,53.76
path	64.56,53.33	64.99,61.08	55.38,64.73
talk Elder Igasho##30536
|tip Open the world map to see an ant trail guiding you to your destination.
accept Igasho the Elder##13021 |goto The Nexus/1 55.38,64.73
step
map Azjol-Nerub/2
path follow smart; loop off; ants curved; dist 20
path	13.06,86.67	19.23,71.83	25.68,35.49	53.80,44.73	64.13,44.52
path	74.03,44.30	82.50,44.52	88.95,44.73	80.78,40.22	70.59,33.55
map Azjol-Nerub/1
path	39.17,28.82	53.09,15.91	60.98,32.04	49.21,62.58
talk Elder Nurgen##30533
|tip Open the world map to see an ant trail guiding you to your destination.
accept Nurgen the Elder##13022 |goto Azjol-Nerub/1 21.81,43.23
step
map Drak'Tharon Keep/1
path follow smart; loop off; ants curved; dist 20
path	33.14,78.28	40.89,86.67	47.35,79.14	47.78,45.16	56.67,30.97
path	56.82,18.28	67.00,17.85	63.42,31.83	68.01,40.00	67.72,54.63
path	60.40,57.64	55.96,59.14	55.52,77.42	63.70,76.99	68.87,78.93
talk Elder Kilias##30534
|tip Open the world map to see an ant trail guiding you to your destination.
accept Kilias the Elder##13023 |goto Drak'Tharon Keep/1 68.87,78.93
step
map Halls of Stone/1
path follow smart; loop off; ants curved; dist 20
path	36.16,36.13	45.05,35.92	50.22,45.16	48.49,53.33
path	39.60,54.20	34.15,50.32	29.27,61.72
talk Elder Yurauk##30535
|tip Open the world map to see an ant trail guiding you to your destination.
accept Yurauk the Elder##13066 |goto Halls of Stone/1 29.27,61.72
step
map Gundrak/1
path follow smart; loop off; ants curved; dist 20
path	58.68,37.21	59.25,48.82	57.96,67.96	51.08,73.55	46.34,70.97
path	45.34,61.08
talk Elder Ohanzee##30537
|tip Open the world map to see an ant trail guiding you to your destination.
accept Ohanzee the Elder##13065 |goto Gundrak/1 45.34,61.08
step
map Utgarde Keep/1
path follow smart; loop off; ants curved; dist 20
path	68.72,70.54	63.56,46.67	62.27,40.22	65.57,29.03	58.82,23.44
path	50.07,28.17	43.76,27.31	34.00,32.04	24.10,38.93	26.40,51.83
path	28.26,61.94	21.66,76.35	28.69,87.53	39.60,86.02	49.21,81.94
path	47.32,69.46
talk Elder Jarten##30531
|tip Open the world map to see an ant trail guiding you to your destination.
accept Jarten the Elder##13017 |goto Utgarde Keep/1 47.32,69.46
step
map Utgarde Pinnacle/1
path follow smart; loop off; ants curved; dist 20
path	44.48,17.85	44.19,35.70	33.86,36.13	33.72,50.97	34.43,68.39
path	39.60,68.60	39.31,76.35
map Utgarde Pinnacle/1
path	30.99,74.41	35.87,76.35	36.01,85.16	45.62,85.81
map Utgarde Pinnacle/1
path	52.51,73.98	51.65,83.66	60.55,83.87	60.83,69.89	68.15,69.25
path	68.44,52.04	68.15,36.35	60.98,37.42	56.24,37.42
map Utgarde Pinnacle/1
path	48.49,23.01
talk Elder Chogan'gada##30538
|tip Open the world map to see an ant trail guiding you to your destination.
accept Chogan'gada the Elder##13067 |goto Utgarde Pinnacle/1 48.71,23.12
step
|achieve 910
]])
QuestCore:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\Elders of the Alliance",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={915},
patch='30401',
description="Honor the Elders of the following zones:\n\nElder Bladeswift, Darnassus\n"..
"Elder Bronzebeard, Ironforge\nElder Hammershout, Stormwind",
},[[
step
talk Elder Hammershout##15562
accept Hammershout the Elder##8646 |goto Elwynn Forest/0 34.56,50.26
step
talk Elder Bronzebeard##15871
|tip Inside Ironforge.
accept Bronzebeard the Elder##8866 |goto Ironforge/0 29.19,17.06
step
talk Elder Bladeswift##15598
accept Bladeswift the Elder##8718 |goto Darnassus/0 39.22,31.86
step
|achieve 915
]])
QuestCore:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\Elders of the Horde",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={914},
patch='30401',
description="Honor the Elders of the following zones:\n\nElder Darkhorn, Orgrimmar\n"..
"Elder Wheathoof, Thunder Bluff\nElder Darkcore, Undercity",
},[[
step
talk Elder Darkcore##15564
|tip Inside the entrance area building, before the Undercity elevators.
|tip If you cannot see this elder, talk to Zidormi just outside the gates of Undercity. |only if completedq(12499)
|tip This is a Horde area and may flag you for PvP.
accept Darkcore the Elder##8648 |goto Undercity/0 66.63,38.20
step
talk Elder Darkhorn##15579
|tip On Elder Rise.
|tip This is a Horde area and may flag you for PvP.
accept Darkhorn the Elder##8677 |goto Orgrimmar/1 52.28,60.00
step
talk Elder Ezra Wheathoof##15580
|tip This is a Horde area and may flag you for PvP.
accept Wheathoof the Elder##8678 |goto Thunder Bluff/0 72.99,23.34
step
|achieve 914
]])
QuestCore:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\Elune's Blessing",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={937},
patch='30401',
description="Complete the Elune's Blessing quest by defeating Omen.",
},[[
step
talk Lunar Festival Vendor##15898
buy 30 Red Rocket Cluster##21576 |goto Ironforge/0 29.92,14.22 |q 8868
|tip You need 30 red, green, or blue rocket clusters to summon Omen.
|tip If you do not buy these, you will have to wait for someone else to summon it.
step
talk Valadar Starsong##15864
accept Elune's Blessing##8868 |goto Moonglade/0 53.60,35.40
step
use the Red Rocket Cluster##21576
kill Omen##15467
|tip To summon Omen, someone will need to shoot 30 red, blue, or green rocket clusters at the cluster launcher.
|tip Lucky Rocket Clusters will not work.
|tip The first rocket cluster will summon level 84 Minions of Omen.
|tip The 30th rocket cluster will summon Omen from the lake who will then attack you.
|tip This boss will require a raid group.
|tip Stand in the pillar of light after it dies.
|tip If it was already killed, quickly jump in the pillar of light before it disappears.
Gain Elune's Blessing |q 8868/1 |goto Moonglade/0 64.67,60.48
step
talk Valadar Starsong##15864
turnin Elune's Blessing##8868 |goto Moonglade/0 53.60,35.40
step
|achieve 937
]])
QuestCore:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\Frenzied Firecracker",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={1552},
patch='30401',
description="Shoot off 10 Festival Firecrackers in 30 seconds or less.",
},[[
step
talk Lunar Festival Vendor##15898
buy 10 Festival Firecracker##21747 |goto Ironforge/0 29.92,14.22 |achieve 1552 |future
step
use the Festival Firecracker##21747
|tip Spam it quickly until you use all 10.
|tip You will need to target the ground after using it.
|achieve 1552 |goto Ironforge/0 30.26,18.59
]])
QuestCore:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\The Rocket's Red Glare",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={1281},
patch='30401',
description="Shoot off 10 Red Rocket Clusters in 25 seconds or less.",
},[[
step
talk Lunar Festival Vendor##15898
buy 10 Red Rocket Cluster##21576 |goto Ironforge/0 29.92,14.22 |achieve 1281 |future
step
use the Red Rocket Cluster##21576
|tip Spam it quickly until you use all 10.
|achieve 1281 |goto Ironforge/0 30.26,18.59
]])
QuestCore:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\Lunar Festival Finery",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={626},
patch='30401',
description="Purchase a festive pant suit or festive dress with Coins of Ancestry.",
},[[
step
collect 5 Coin of Ancestry##21100 |achieve 626 |future
|tip Use the "Lunar Festival Optimized Elders Path" event guide to accomplish this.
step
talk Valadar Starsong##15864
Purchase any Pant Suit or Dress |achieve 626 |goto Moonglade/0 53.63,35.41
]])
QuestCore:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\To Honor One's Elders",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={913},
patch='30401',
description="Complete the following Lunar Festival achievements:\n\nElders of Cataclysm\n"..
"Elders of Eastern Kingdoms\nElders of Kalimdor\nElders of the Dungeons\n"..
"Elders of the Horde\nElders of the Alliance\nElders of Northrend\n50 Coins of "..
"Ancestry\nLunar Festival Finery\nThe Rocket's Red Glare\nFrenzied Firecracker\n"..
"Elune's Blessing",
},[[
leechsteps "Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path"
leechsteps "Events Guides\\Lunar Festival\\Achievements\\Elune's Blessing"
leechsteps "Events Guides\\Lunar Festival\\Achievements\\Lunar Festival Finery"
leechsteps "Events Guides\\Lunar Festival\\Achievements\\The Rocket's Red Glare"
leechsteps "Events Guides\\Lunar Festival\\Achievements\\Frenzied Firecracker"
step
|achieve 913
]])
QuestCore:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Quests",{
expansion="mists",
mopready=true,
description="This guide will help you complete the Midsummer Fire Festival event quests.\n\n"..
"|cffff0000NOTE:|r You will need to be at least level 75 to fully complete this guide.",
condition_end=function() return completedq(11972) end,
achieveid={263},
},[[
step
talk Innkeeper Allison##6740
|tip Inside the building.
home Trade District |goto Stormwind City/0 60.39,75.27
|only if not Mage
step
talk Human Commoner##18927
accept The Master of Summer Lore##11970 |goto Stormwind City/0 61.67,74.17
step
talk Festival Loremaster##16817
turnin The Master of Summer Lore##11970 |goto Stormwind City/0 49.53,72.26
accept Incense for the Summer Scorchlings##11964 |goto Stormwind City/0 49.53,72.26
|tip You may need to skip this step if this quest is not offered to you.
step
talk Earthen Ring Elder##26221
accept Unusual Activity##11886 |goto Stormwind City/0 49.32,72.27
step
talk Master Fire Eater##25975
accept Torch Tossing##11731 |goto Stormwind City/0 50.14,72.56
step
use the Practice Torches##34862
|tip Throw them at the Torch Target Braziers nearby.
|tip You must throw the torches at the correct braziers.
|tip Throw the torches at the Torch Target Braziers when they have a floating red arrow point down above them.
|tip You will have 40 seconds to complete this before the quest fails.
Hit 8 Braziers |q 11731/1 |goto Stormwind City/0 49.89,71.83
step
talk Master Fire Eater##25975
turnin Torch Tossing##11731 |goto Stormwind City/0 50.14,72.56
accept Torch Catching##11657 |goto Stormwind City/0 50.14,72.56
step
use the Unlit Torches##34833
|tip As soon as you light the torch, it will fly in the air.
|tip There will be a small round shadow on the ground indicating where the torch is flying.
|tip Follow that shadow and catch the torch.
|tip When you catch the torch, it will be thrown in the air again.
|tip Follow the shadow again and catch the torch.
|tip Do this until you've caught the torch 4 times in a row without it hitting the ground.
Catch #4# Torches in a Row |q 11657/1 |goto Stormwind City/0 49.81,71.77
step
talk Master Fire Eater##25975
turnin Torch Catching##11657 |goto Stormwind City/0 50.14,72.56
step
talk Elwynn Forest Flame Warden##25898
accept Honor the Flame##11816 |goto Elwynn Forest/0 43.47,62.63
step
talk Summer Scorchling##26401
|tip Under the tent.
turnin Incense for the Summer Scorchlings##11964 |goto Elwynn Forest/0 43.49,62.50
|only if haveq(11964) or completedq(11964)
step
talk Fire Eater##25962
accept Playing with Fire##11882 |goto Elwynn Forest/0 43.69,62.23
step
talk Master Fire Eater##25975
turnin Playing with Fire##11882 |goto Stormwind City/0 50.14,72.56
step
Kill Twilight enemies around this area
collect Twilight Correspondence##35277 |q 11886/1 |goto Ashenvale/0 14.75,19.33
step
use the Totemic Beacon##35828
Watch the dialogue
_Next to you:_
talk Earthen Ring Guide##25324
turnin Unusual Activity##11886 |goto Ashenvale/0 14.49,19.22
accept An Innocent Disguise##11891 |goto Ashenvale/0 14.49,19.22
step
use the Orb of the Crawler##35237
Gain the Crab Disguise Buff |havebuff Crab Disguise##46337 |q 11891 |goto Ashenvale/0 9.52,12.85
step
Watch the dialogue
Listen to the Plan of the Twilight Cultists |q 11891/1 |goto Ashenvale/0 9.37,12.71
step
use the Totemic Beacon##35828
Watch the dialogue
_Next to you:_
talk Earthen Ring Guide##25324
turnin An Innocent Disguise##11891 |goto Ashenvale/0 9.52,12.85
accept Inform the Elder##12012 |goto Ashenvale/0 9.52,12.85
step
talk Earthen Ring Elder##26221
turnin Inform the Elder##12012 |goto Stormwind City/0 49.32,72.27
step
Reach Level 75 |ding 75
|tip To finish these quests, you need to be level 75.
step
talk Earthen Ring Elder##26221
accept Ahune, the Frost Lord##11955 |goto Stormwind City/0 49.32,72.27
step
talk Numa Cloudsister##25710
|tip Numa can be found inside The Slave Pens dungeon on any difficulty.
|tip She is at the beginning of the dungeon as you zone in.
|tip Ahune is level 73 elite and will require a group to kill.
turnin Ahune, the Frost Lord##11955 |goto Zangarmarsh/0 48.92,35.74
accept Ahune is Here!##11696 |goto Zangarmarsh/0 48.92,35.74
step
talk Luma Skymother##25697
|tip Luma can be found inside The Slave Pens dungeon on any difficulty.
|tip She is near the beginning of the dungeon before Mennu the Betrayer.
turnin Ahune is Here!##11696
accept Summon Ahune##11691
step
click Ice Stone
|tip The Ice Stone can be found inside The Slave Pens dungeon on any difficulty.
|tip It is near the beginning of the dungeon before Mennu the Betrayer.
turnin Summon Ahune##11691
|tip Turning in this quest will summon Ahune.
|tip Ahune will immediately attack.
step
kill Ahune##25740
|tip You will need a group for this.
click Ice Chest
|tip It spawns after he dies.
collect Shards of Ahune##35723 |q 11972 |future
step
use the Shards of Ahune##35723
accept Shards of Ahune##11972
step
talk Luma Skymother##25697
|tip Luma can be found inside The Slave Pens dungeon on any difficulty.
|tip She is near the beginning of the dungeon before Mennu the Betrayer.
turnin Shards of Ahune##11972
]])
QuestCore:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Dailies",{
expansion="mists",
mopready=true,
description="This guide will walk you through completing the Midsummer Fire Festival Dailies.\n\n"..
"|cffff0000NOTE:|r You will need to be at least level 22 to fully complete this guide.",
},[[
step
Complete the "Midsummer Fire Festival Quests" Event Guide |complete completedq(12012)
step
label "Begin_Daily_Quests"
talk Master Fire Eater##25975
accept More Torch Tossing##11921 |goto Stormwind City/0 50.14,72.56
accept More Torch Catching##11924 |goto Stormwind City/0 50.14,72.56
step
use the Practice Torches##34862
|tip Throw them at the Torch Target Braziers nearby.
|tip You must throw the torches at the correct braziers.
|tip Throw the torches at the Torch Target Braziers when they have a floating red arrow point down above them.
|tip You will have 40 seconds to complete this before the quest fails.
Hit 20 Braziers |q 11921/1 |goto Stormwind City/0 49.81,71.77
step
use the Unlit Torches##34833
|tip As soon as you light the torch, it will fly in the air.
|tip There will be a small round shadow on the ground indicating where the torch is flying.
|tip Follow that shadow and catch the torch.
|tip When you catch the torch, it will be thrown in the air again.
|tip Follow the shadow again and catch the torch.
|tip Do this until you've caught the torch 10 times in a row without it hitting the ground.
Catch 10 Torches in a Row |q 11924/1 |goto Stormwind City/0 49.81,71.77
step
talk Master Fire Eater##25975
turnin More Torch Tossing##11921 |goto Stormwind City/0 50.14,72.56
turnin More Torch Catching##11924 |goto Stormwind City/0 50.14,72.56
step
talk Earthen Ring Elder##26221
accept Striking Back##11917 |goto Stormwind City/0 49.32,72.27 |only if level >= 22 and level < 32
accept Striking Back##11947 |goto Stormwind City/0 49.32,72.27 |only if level >= 32 and level < 43
accept Striking Back##11948 |goto Stormwind City/0 49.32,72.27 |only if level >= 43 and level < 51
accept Striking Back##11952 |goto Stormwind City/0 49.32,72.27 |only if level >= 51 and level < 60
accept Striking Back##11953 |goto Stormwind City/0 49.32,72.27 |only if level >= 60 and level < 67
accept Striking Back##11954 |goto Stormwind City/0 49.32,72.27 |only if level >= 67
|only if level >= 22
step
click Ice Stone##188149
|tip Inside the cave. |only if haveq(11952)
Choose _"Lay your hand on the stone"_
kill Frostwave Lieutenant##26116 |q 11917/1 |goto Ashenvale/0 9.62,12.20
|only if haveq(11917) or completedq(11917)
step
click Ice Stone##188149
Choose _"Lay your hand on the stone"_
kill Hailstone Lieutenant##26178 |q 11947/1 |goto Desolace/0 40.35,30.27
|only if haveq(11947) or completedq(11947)
step
click Ice Stone##188149
Choose _"Lay your hand on the stone"_
kill Glacial Lieutenant##26215 |q 11953/1 |goto Silithus/0 68.88,20.44
|only if haveq(11953) or completedq(11953)
step
click Ice Stone##188149
Choose _"Lay your hand on the stone"_
kill Chillwind Lieutenant##26204 |q 11948/1 |goto Stranglethorn Vale/0 21.31,40.95
|only if haveq(11948) or completedq(11948)
step
Enter the cave |goto Searing Gorge/0 21.83,36.18 < 20 |walk
click Ice Stone##188149
Choose _"Lay your hand on the stone"_
kill Frigid Lieutenant##26214 |q 11952/1 |goto Searing Gorge/0 16.02,36.86
|only if haveq(11952) or completedq(11952)
step
click Ice Stone##188149
Choose _"Lay your hand on the stone"_
kill Glacial Templar##26216 |q 11954/1 |goto Hellfire Peninsula/0 85.64,47.09
|only if haveq(11954) or completedq(11954)
step
talk Earthen Ring Elder##26221
turnin Striking Back##11917 |goto Stormwind City/0 49.32,72.27 |only if haveq(11917) or completedq(11917)
turnin Striking Back##11947 |goto Stormwind City/0 49.32,72.27 |only if haveq(11947) or completedq(11947)
turnin Striking Back##11948 |goto Stormwind City/0 49.32,72.27 |only if haveq(11948) or completedq(11948)
turnin Striking Back##11952 |goto Stormwind City/0 49.32,72.27 |only if haveq(11952) or completedq(11952)
turnin Striking Back##11953 |goto Stormwind City/0 49.32,72.27 |only if haveq(11953) or completedq(11953)
turnin Striking Back##11954 |goto Stormwind City/0 49.32,72.27 |only if haveq(11954) or completedq(11954)
|only if haveq(11917,11947,11948,11952,11953,11954) or completedq(11917,11947,11948,11952,11953,11954)
step
You have completed all available dailies
|tip This guide will reset when more become available.
'|complete not completedq(11921,11924,11917,11947,11948,11952,11953,11954) |next "Begin_Daily_Quests"
]])
QuestCore:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Bonfires",{
expansion="mists",
achieveid={1035,1022,1023,1024,1028,1029,1030,1145,1034},
description="This guide section will walk you through finding all of the bonfires for the Midsummer Fire Festival event.",
},[[
step
talk Elwynn Forest Flame Warden##25898
accept Honor the Flame##11816 |goto Elwynn Forest/0 43.47,62.63
step
talk Stranglethorn Vale Flame Warden##25915
accept Honor the Flame##11832 |goto The Cape of Stranglethorn/0 51.97,67.64
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11801 |goto The Cape of Stranglethorn/0 50.53,70.72
step
talk Northern Stranglethorn Flame Warden##51574
accept Honor the Flame##28922 |goto Northern Stranglethorn/0 52.05,63.56
step
click Horde Bonfire##194039
accept Desecrate this Fire!##28911 |goto Northern Stranglethorn/0 40.72,51.85
step
talk Flame Warden##25890
accept Honor the Flame##11808 |goto Blasted Lands/0 55.54,14.89
step
click Horde Bonfire##194039
accept Desecrate this Fire!##28917 |goto Blasted Lands/0 46.36,14.27
step
talk Swamp of Sorrows Flame Warden##51602
accept Honor the Flame##28929 |goto Swamp of Sorrows/0 70.25,15.74
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11781 |goto Swamp of Sorrows/0 76.62,14.17
step
talk Duskwood Flame Warden##25896
accept Honor the Flame##11814 |goto Duskwood/0 73.69,54.61
step
talk Westfall Flame Warden##25910
accept Honor the Flame##11583 |goto Westfall/0 44.77,62.06
step
talk Redridge Flame Warden##25904
accept Honor the Flame##11822 |goto Redridge Mountains/0 24.90,53.38
step
talk Burning Steppes Flame Warden##25892
accept Honor the Flame##11810 |goto Burning Steppes/0 68.34,60.64
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11768 |goto Burning Steppes/0 51.42,29.22
step
talk Badlands Flame Warden##51585
accept Honor the Flame##28925 |goto Badlands/0 18.77,55.91
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11766 |goto Badlands/0 23.94,37.14
step
talk Loch Modan Flame Warden##25902
accept Honor the Flame##11820 |goto Loch Modan/0 32.56,40.95
step
talk Dun Morogh Flame Warden##25895
accept Honor the Flame##11813 |goto Dun Morogh/0 53.80,45.23
step
talk Wetlands Flame Warden##25911
accept Honor the Flame##11828 |goto Wetlands/0 13.46,47.07
step
talk Twilight Highlands Flame Warden##51650
accept Honor the Flame##28945 |goto Twilight Highlands/0 47.26,28.96
step
click Horde Bonfire##194039
accept Desecrate this Fire!##28944 |goto Twilight Highlands/0 53.29,46.47
step
talk Arathi Flame Warden##25887
accept Honor the Flame##11804 |goto Arathi Highlands/0 44.30,46.04
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11764 |goto Arathi Highlands/0 69.07,42.76
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11776 |goto Hillsbrad Foothills/0 54.53,49.93
step
talk Western Plaguelands Flame Warden##25909
accept Honor the Flame##11827 |goto Western Plaguelands/0 43.46,82.33
step
click Horde Bonfire##194039
accept Desecrate this Fire!##28918 |goto Western Plaguelands/0 29.08,56.73
step
talk The Hinterlands Flame Warden##25908
accept Honor the Flame##11826 |goto The Hinterlands/0 14.34,50.07
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11784 |goto The Hinterlands/0 76.59,74.64
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11580 |goto Silverpine Forest/0 49.63,38.68
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11786 |goto Tirisfal Glades/0 57.04,51.84
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11774 |goto Ghostlands/0 46.98,26.04
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11772 |goto Eversong Woods/0 46.43,50.41
step
talk Darkshore Flame Warden##25893
accept Honor the Flame##11811 |goto Darkshore/0 48.72,22.66
step
talk Teldrassil Flame Warden##25906
accept Honor the Flame##11824 |goto Teldrassil/0 54.88,52.78
step
talk Azuremyst Isle Flame Warden##25888
accept Honor the Flame##11806 |goto Azuremyst Isle/0 44.48,52.50
step
talk Bloodmyst Isle Flame Warden##25891
accept Honor the Flame##11809 |goto Bloodmyst Isle/0 55.83,67.88
step
talk Winterspring Flame Warden##25917
accept Honor the Flame##11834 |goto Winterspring/0 61.24,47.25
step
click Horde Bonfire##194039
accept Descrate this Fire!##11803 |goto Winterspring/0 58.15,47.29
step
talk Hyjal Flame Guardian##51682
accept Honor the Flame##29030 |goto Mount Hyjal/0 62.83,22.71
step
click Horde Bonfire##194039
accept Desecrate this Fire!##28919 |goto Azshara/0 60.43,53.51
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11765 |goto Ashenvale/0 51.53,66.62
step
talk Ashenvale Flame Warden##25883
accept Honor the Flame##11805 |goto Ashenvale/0 86.94,41.86
step
talk Southern Barrens Flame Warden##51586
accept Honor the Flame##28926 |goto Southern Barrens/0 48.33,72.23
step
click Horde Bonfire##194039
accept Desecrate this Fire!##28914 |goto Southern Barrens/0 40.75,67.41
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11770 |goto Durotar/0 52.10,47.15
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11783 |goto The Barrens/0 49.92,54.40
step
talk Stonetalon Mountains Flame Warden##51588
accept Honor the Flame##28928 |goto Stonetalon Mountains/0 49.30,51.32
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11780 |goto Stonetalon Mountains/0 53.00,62.37
step
talk Desolace Flame Warden##25894
accept Honor the Flame##11812 |goto Desolace/0 66.12,17.09
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11769 |goto Desolace/0 26.26,77.23
step
talk Feralas Flame Warden##25899
accept Honor the Flame##11817 |goto Feralas/0 46.82,43.70
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11773 |goto Feralas/0 72.47,47.70
step
talk Silithus Flame Warden##25914
accept Honor the Flame##11831 |goto Silithus/0 60.30,33.50
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11800 |goto Silithus/0 50.78,41.60
step
talk Un'Goro Crater Flame Warden##51606
accept Honor the Flame##28932 |goto Un'Goro Crater/0 59.86,63.24
step
click Horde Bonfire##194039
accept Desecrate this Fire!##28920 |goto Un'Goro Crater/0 56.33,66.35
step
talk Uldum Flame Warden##51653
accept Honor the Flame##28950 |goto Uldum/0 53.60,31.85
step
click Horde Bonfire##194039
accept Desecrate this Fire!##28948 |goto Uldum/0 53.02,34.51
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11802 |goto Tanaris/0 49.79,28.07
step
talk Tanaris Flame Warden##25916
accept Honor the Flame##11833 |goto Tanaris/0 52.64,30.26
step
talk Dustwallow Marsh Flame Warden##25897
accept Honor the Flame##11815 |goto Dustwallow Marsh/0 61.82,40.46
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11771 |goto Dustwallow Marsh/0 33.28,30.87
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11777 |goto Mulgore/0 51.94,59.37
step
talk Deepholm Flame Guardian##51698
accept Honor the Flame##29036 |goto Deepholm/0 49.39,51.33
step
click Earthen Ring Bonfire##208188
turnin Honor the Flame##29036 |goto Deepholm/0 49.37,51.39
step
talk Vashj'ir Flame Guardian##51697
|tip Inside the underwater cave.
accept Honor the Flame##29031 |goto Shimmering Expanse/0 49.35,41.99
step
click Earthen Ring Bonfire##208188
|tip Inside the underwater cave.
turnin Honor the Flame##29031 |goto Shimmering Expanse/0 49.33,41.93
step
talk Hellfire Peninsula Flame Warden##25900
accept Honor the Flame##11818 |goto Hellfire Peninsula/0 62.17,58.29
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11775 |goto Hellfire Peninsula/0 57.19,41.92
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11799 |goto Netherstorm/0 32.26,68.35
step
talk Netherstorm Flame Warden##25913
accept Honor the Flame##11830 |goto Netherstorm/0 31.21,62.66
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11767 |goto Blade's Edge Mountains/0 49.94,59.00
step
talk Blade's Edge Flame Warden##25889
accept Honor the Flame##11807 |goto Blade's Edge Mountains/0 41.57,65.90
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11787 |goto Zangarmarsh/0 35.52,51.79
step
talk Zangarmarsh Flame Warden##25912
accept Honor the Flame##11829 |goto Zangarmarsh/0 68.79,51.95
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11778 |goto Nagrand/0 51.08,33.94
step
talk Nagrand Flame Warden##25903
accept Honor the Flame##11821 |goto Nagrand/0 49.61,69.46
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11782 |goto Terokkar Forest/0 51.94,43.17
step
talk Terokkar Forest Flame Warden##25907
accept Honor the Flame##11825 |goto Terokkar Forest/0 54.06,55.52
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11779 |goto Shadowmoon Valley/0 33.48,30.31
step
talk Shadowmoon Valley Flame Warden##25905
accept Honor the Flame##11823 |goto Shadowmoon Valley/0 39.62,54.64
step
talk Sholazar Basin Flame Warden##32802
accept Honor the Flame##13486 |goto Sholazar Basin/0 48.11,66.05
step
click Horde Bonfire##194039
accept Desecrate this Fire!##13450 |goto Sholazar Basin/0 47.32,61.51
step
talk Borean Tundra Flame Warden##32801
accept Honor the Flame##13485 |goto Borean Tundra/0 55.10,19.95
step
click Horde Bonfire##194039
accept Desecrate this Fire!##13441 |goto Borean Tundra/0 51.04,11.79
step
click Horde Bonfire##194039
accept Desecrate this Fire!##13451 |goto Dragonblight/0 38.47,48.19
step
talk Dragonblight Flame Warden##32803
accept Honor the Flame##13487 |goto Dragonblight/0 75.29,43.81
step
talk Crystalsong Forest Flame Warden##32807
accept Honor the Flame##13491 |goto Crystalsong Forest/0 78.18,74.96
step
click Horde Bonfire##194039
accept Desecrate this Fire!##13457 |goto Crystalsong Forest/0 80.35,52.75
step
click Horde Bonfire##194039
accept Desecrate this Fire!##13455 |goto The Storm Peaks/0 40.37,85.61
step
talk Storm Peaks Flame Warden##32806
accept Honor the Flame##13490 |goto The Storm Peaks/0 41.44,86.69
step
talk Zul'Drak Flame Warden##32808
accept Honor the Flame##13492 |goto Zul'Drak/0 40.38,61.30
step
click Horde Bonfire##194039
accept Desecrate this Fire!##13458 |goto Zul'Drak/0 43.32,71.34
step
click Horde Bonfire##194039
accept Desecrate this Fire!##13454 |goto Grizzly Hills/0 19.13,61.44
step
talk Grizzly Hills Flame Warden##32805
accept Honor the Flame##13489 |goto Grizzly Hills/0 33.91,60.45
step
click Horde Bonfire##194039
accept Desecrate this Fire!##13453 |goto Howling Fjord/0 48.40,13.34
step
talk Howling Fjord Flame Warden##32804
accept Honor the Flame##13488 |goto Howling Fjord/0 57.81,16.12
]])
QuestCore:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Burning Hot Pole Dance",{
expansion="mists",
mopready=true,
description="Dance at the ribbon pole for 60 seconds while wearing completed Midsummer set.",
achieveid={271},
},[[
step
collect 400 Burning Blossom##23247 |or
|tip You can acquire these by visiting bonfires across Eastern Kingomds, Kalimdor, Outland, and Northrend.
'|achieve 271 |or
step
talk Midsummer Supplier##26123
buy Vestment of Summer##34685 |goto Stormwind City/0 49.03,71.97 |or 3
buy Sandals of Summer##34683 |goto Stormwind City/0 49.03,71.97 |or 3
buy Mantle of the Fire Festival##23324 |goto Stormwind City/0 49.03,71.97 |or 3
'|achieve 271 |or 3 |override
step
Equip the Vestment of Summer |equipped Vestment of Summer##34685 |goto Elwynn Forest/0 43.95,62.12 |or
'|achieve 271 |or
step
Equip the Sandals of Summer |equipped Sandals of Summer##34683 |goto Elwynn Forest/0 43.95,62.12 |or
'|achieve 271 |or
step
Equip the Mantle of the Fire Festival |equipped Mantle of the Fire Festival##23324 |goto Elwynn Forest/0 43.95,62.12 |or
'|achieve 271 |or
step
click Ribbon Pole
|tip Dance at the pole for at least 60 seconds.
Earn the "Burning Hot Pole Dance" Achievement |achieve 271 |goto Elwynn Forest/0 43.95,62.12
]])
QuestCore:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Torch Juggler",{
expansion="mists",
mopready=true,
description="Juggle 40 torches in 15 seconds in Dalaran.",
achieveid={272},
},[[
step
collect 40 Burning Blossom##23247 |or
|tip You can acquire these by visiting bonfires across Eastern Kingomds, Kalimdor, Outland, and Northrend.
'|achieve 272 |or
step
talk Midsummer Supplier##26123
buy 40 Juggling Torch##34599 |goto Stormwind City/0 49.03,71.97 |or
'|achieve 272 |or
step
use the Juggling Torch##34599
|tip Throw it on the ground at your feet over and over quickly.
Juggle 40 Torches in 15 Seconds in Dalaran |achieve 272 |goto Dalaran/1 55.54,54.11
]])
QuestCore:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Quests\\Pilgrim's Bounty Quests",{
expansion="mists",
mopready=true,
description="This guide section will walk you through completing the quests for the Pilgrim's Bounty event.",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
condition_end=function() return completedq(14035) end,
patch='40401',
},[[
step
talk Human Commoner##18927
accept Pilgrim's Bounty##14022 |goto Stormwind City/0 61.67,74.17
|tip If this quest is not available, skip this step.
step
talk Gregory Tabor##34675
turnin Pilgrim's Bounty##14022 |goto Elwynn Forest/0 34.10,51.45
|only if haveq(14022) or completedq(14022)
step
talk Bountiful Table Hostess##34653
accept Sharing a Bountiful Feast##14064 |goto Elwynn Forest/0 34.18,51.07
step
clicknpc The Pie Chair##34822
|tip Use the "Feast On Pie" ability on your action bar five times.
Eat Five Pie Helpings |complete hasbuff(61845,5) or hasbuff(61849) |goto Elwynn Forest/0 34.24,51.23 |or |q 14064
step
Leave the Table |outvehicle |or |q 14064
|tip Click the "Exit" button on your action bar.
step
clicknpc The Turkey Chair##34812
|tip Use the "Feast On Turky" ability on your action bar five times.
Eat Five Turkey Helpings |complete hasbuff(61842,5) or hasbuff(61849) |goto Elwynn Forest/0 34.29,51.07 |or |q 14064
step
Leave the Table |outvehicle |or |q 14064
|tip Click the "Exit" button on your action bar.
step
clicknpc The Cranberry Chair##34823
|tip Use the "Feast On Cranberries" ability on your action bar five times.
Eat Five Cranberry Helpings |complete hasbuff(61841,5) or hasbuff(61849) |goto Elwynn Forest/0 34.40,51.06 |or |q 14064
step
Leave the Table |outvehicle |or |q 14064
|tip Click the "Exit" button on your action bar.
step
clicknpc The Sweet Potato Chair##34824
|tip Use the "Feast On Sweet Potatoes" ability on your action bar five times.
Eat #5# Five Sweet Potato Helpings |complete hasbuff(61844,5) or hasbuff(61849) |goto Elwynn Forest/0 34.43,51.23 |or |q 14064
step
Leave the Table |outvehicle |or |q 14064
|tip Click the "Exit" button on your action bar.
step
clicknpc The Stuffing Chair##34819
|tip Use the "Feast On Stuffing" ability on your action bar five times.
Eat Five Stuffing Helpings |complete hasbuff(61843,5) or hasbuff(61849) |goto Elwynn Forest/0 34.33,51.33 |or |q 14064
step
Gain the Spirit of Sharing |q 14064/1 |goto Elwynn Forest/0 34.29,51.07
step
label "Leave_The_Table"
Leave the Table |outvehicle |q 14064
|tip Click the "Exit" button on your action bar.
step
talk Bountiful Table Hostess##34653
turnin Sharing a Bountiful Feast##14064 |goto Elwynn Forest/0 34.18,51.07
step
talk Ellen Moore##34710
Train Cooking |skillmax Cooking,300 |goto Elwynn Forest/0 33.71,50.63
step
talk Ellen Moore##34710
learn Spice Bread##37836 |goto Elwynn Forest/0 33.71,50.63
step
talk Wilmina Holbeck##34682
buy 1 Bountiful Cookbook##46809 |goto Elwynn Forest/0 34.14,51.53 |q 14023 |future |or
'|learn Slow-Roasted Turkey##62045 |or
step
use the Bountiful Cookbook##46809
collect Recipe: Spice Bread Stuffing##44860 |q 14023 |future |or
'|learn Spice Bread Stuffing##62050 |or
step
use the Bountiful Cookbook##46809
collect Recipe: Pumpkin Pie##44862 |q 14024 |future |or
'|learn Pumpkin Pie##62044 |or
step
use the Bountiful Cookbook##46809
collect Recipe: Cranberry Chutney##44858 |q 14028 |future |or
'|learn Cranberry Chutney##62049 |or
step
use the Bountiful Cookbook##46809
collect Recipe: Candied Sweet Potato##44859 |q 14030 |future |or
'|learn Candied Sweet Potato##62051 |or
step
use the Bountiful Cookbook##46809
collect Recipe: Slow-Roasted Turkey##44861 |q 14035 |future |or
'|learn Slow-Roasted Turkey##62045 |or
step
use the Recipe: Spice Bread Stuffing##44860
learn Spice Bread Stuffing##62050
step
talk Gregory Tabor##34675
accept Spice Bread Stuffing##14023 |goto Elwynn Forest/0 34.10,51.45
step
talk Wilmina Holbeck##34682
buy 10 Simple Flour##30817 |goto Elwynn Forest/0 34.14,51.53 |q 14023
buy 10 Mild Spices##2678 |goto Elwynn Forest/0 34.14,51.53 |q 14023
buy 10 Autumnal Herbs##44835 |goto Elwynn Forest/0 34.14,51.53 |q 14023
step
create 10 Spice Bread##37836,Cooking,10 total |goto Elwynn Forest/0 33.82,50.84 |q 14023
step
create 10 Spice Bread Stuffing##62050,Cooking,10 total |goto Elwynn Forest/0 33.82,50.84 |q 14023
|tip Save five for later.
step
create Spice Bread Stuffing##62050,Cooking,100 |goto Elwynn Forest/0 33.82,50.84
|tip Continue making Spice Bread Stuffing to reach 100 Cooking.
|tip Each one requires 1 Spice Bread and 1 Autumnal Herbs.
|tip Each Spice Bread requires 1 Simple Flour and 1 Mild Spices.
step
talk Ellen Moore##34710
Train Journeyman Cooking |skillmax Cooking,150 |goto Elwynn Forest/0 33.71,50.63
step
create Spice Bread Stuffing##62050,Cooking,100 |goto Elwynn Forest/0 33.82,50.84
|tip Continue making Spice Bread Stuffing to reach 100 Cooking.
|tip Each one requires 1 Spice Bread and 1 Autumnal Herbs.
|tip Each Spice Bread requires 1 Simple Flour and 1 Mild Spices.
step
talk Jasper Moore##34744
turnin Spice Bread Stuffing##14023 |goto Elwynn Forest/0 33.89,50.81
accept Pumpkin Pie##14024 |goto Elwynn Forest/0 33.89,50.81
step
use the Recipe: Pumpkin Pie##44862
learn Pumpkin Pie##62044
step
talk Wilmina Holbeck##34682
buy 10 Ripe Elwynn Pumpkin##46784 |goto Elwynn Forest/0 34.14,51.53 |q 14024
buy 10 Honey##44853 |goto Elwynn Forest/0 34.14,51.53 |q 14024
step
create 10 Pumpkin Pie##62044,Cooking,10 total |goto Elwynn Forest/0 33.83,50.73 |q 14024
|tip Click the line to open your cooking panel and create them.
|tip Save five for later.
step
create Pumpkin Pie##62044,Cooking,160 |skill Cooking,160 |goto Elwynn Forest/0 33.83,50.73
|tip Continue making Pumpkin Pie to reach 160 Cooking.
|tip Each one requires 1 Ripe Elwynn Pumpkin and 1 Honey.
step
talk Ellen Moore##34710
Train Expert Cooking |skillmax Cooking,225 |goto Elwynn Forest/0 33.71,50.63
step
create Pumpkin Pie##62044,Cooking,160
|tip Continue making Pumpkin Pie to reach 160 Cooking.
|tip Each one requires 1 Ripe Elwynn Pumpkin and 1 Honey.
step
talk Edward Winslow##34644
turnin Pumpkin Pie##14024 |goto Dun Morogh/0 59.81,34.34
accept Cranberry Chutney##14028 |goto Dun Morogh/0 59.81,34.34
step
use the Recipe: Cranberry Chutney##44858
learn Cranberry Chutney##62049
step
talk Elizabeth Barker Winslow##34645
buy 5 Tangy Southfury Cranberries##44854 |goto Dun Morogh/0 59.77,34.34 |q 14028
buy 5 Honey##44853 |goto Dun Morogh/0 59.77,34.34 |q 14028
step
create 5 Cranberry Chutney##66035,Cooking,5 total |goto Dun Morogh/0 60.01,34.41 |q 14028
|tip Click the line to open your cooking panel and create them.
step
create Cranberry Chutney##66035,Cooking,220 |goto Dun Morogh/0 60.01,34.41
|tip Continue making Cranberry Chutneys to reach 220 Cooking.
|tip Each one requires 1 Tangy Southfury Cranberries and 1 Honey.
step
talk Caitrin Ironkettle##34708
Train Artisan Cooking |skillmax Cooking,300 |goto Dun Morogh/0 60.04,34.31
step
talk Jasper Moore##34744
turnin Cranberry Chutney##14028 |goto Elwynn Forest/0 33.89,50.81
accept They're Ravenous In Darnassus##14030 |goto Elwynn Forest/0 33.89,50.81
step
collect 5 Spice Bread Stuffing##44837 |q 14030/1
|tip You should have these from a previous step.
step
collect 5 Pumpkin Pie##44836 |q 14030/2
|tip You should have these from a previous step.
step
Travel to Darnassus |goto Darnassus/0 45.86,50.44 < 10000 |q 14030
step
talk Isaac Allerton##34676
turnin They're Ravenous In Darnassus##14030 |goto Darnassus/0 61.47,49.08
accept Candied Sweet Potatoes##14033 |goto Darnassus/0 61.47,49.08
step
use the Recipe: Candied Sweet Potato##44859
learn Candied Sweet Potato##62051
step
talk Ikaneba Summerset##34681
buy 5 Teldrassil Sweet Potato##44855 |goto Darnassus/0 61.64,49.10 |q 14033
buy 5 Honey##44853 |goto Darnassus/0 61.64,49.10 |q 14033
buy 5 Autumnal Herbs##44835 |goto Darnassus/0 61.64,49.10 |q 14033
step
create 5 Candied Sweet Potato##66034,Cooking,5 total |goto Darnassus/0 62.09,46.14 |q 14033
|tip Click the line to open your cooking panel and create them.
step
create Candied Sweet Potato##66034,Cooking,280 |goto Darnassus/0 62.09,46.14
|tip Continue making Candied Sweet Potatoes to reach 280 Cooking.
|tip Each one requires 1 Teldrassil Sweet Potato, 1 Autumnal Herbs, and 1 Honey.
step
talk Gregory Tabor##34675
turnin Candied Sweet Potatoes##14033 |goto Elwynn Forest/0 34.10,51.45
accept Slow-roasted Turkey##14035 |goto Elwynn Forest/0 34.10,51.45
step
use the Recipe: Slow-Roasted Turkey##44861
learn Slow-Roasted Turkey##62045
step
kill Wild Turkey##32820+
|tip You can find these all over Elwynn Forest.
collect 5 Wild Turkey##44834 |q 14035 |goto Elwynn Forest/0 38.40,63.18
step
talk Wilmina Holbeck##34682
buy 10 Honey##44853 |goto Elwynn Forest/0 34.15,51.52 |q 14035
buy 5 Autumnal Herbs##44835 |goto Elwynn Forest/0 34.15,51.52 |q 14035
step
create 5 Slow-Roasted Turkey##66037,Cooking,5 total |goto Elwynn Forest/0 33.83,50.73 |q 14035
|tip Click the line to open your cooking panel and create them.
step
talk Isaac Allerton##34676
turnin Slow-roasted Turkey##14035 |goto Darnassus/0 61.47,49.08
]])
QuestCore:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Quests\\Pilgrim's Bounty Daily Quests",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
description="This guide section will walk you through completing the daily quests for the Pilgrim's Bounty event.",
patch='40401',
},[[
step
label "Guide_Start"
Complete the "Pilgrim's Bounty Quests" Event Guide |complete completedq(14035)
step
talk Jasper Moore##34744
accept She Says Potato##14055 |goto Elwynn Forest/0 33.88,50.80
step
talk Ellen Moore##34710
accept We're Out of Cranberry Chutney Again?##14053 |goto Elwynn Forest/0 33.71,50.63
step
talk Wilmina Holbeck##34682
buy 20 Ripe Elwynn Pumpkin##46784 |goto Elwynn Forest/0 34.15,51.52 |q 14054 |future
buy 20 Simple Flour##30817 |goto Elwynn Forest/0 34.15,51.52 |q 14051 |future
buy 20 Mild Spices##2678 |goto Elwynn Forest/0 34.15,51.52 |q 14051 |future
buy 60 Autumnal Herbs##44835 |goto Elwynn Forest/0 34.15,51.52 |q 14055
buy 100 Honey##44853 |goto Elwynn Forest/0 34.15,51.52 |q 14054 |future
step
kill Wild Turkey##32820+
|tip You can find these all over Elwynn Forest.
collect 20 Wild Turkey##44834 |goto Elwynn Forest/0 38.40,63.18 |q 14048 |future
step
talk Caitrin Ironkettle##34708
accept Don't Forget The Stuffing!##14051 |goto Dun Morogh/0 60.04,34.31
accept Can't Get Enough Turkey##14048 |goto Dun Morogh/0 60.04,34.31
step
talk Elizabeth Barker Winslow##34645
buy 20 Tangy Wetland Cranberries##44854 |goto Dun Morogh/0 59.77,34.34 |q 14051
step
talk Ikaneba Summerset##34681
buy 20 Teldrassil Sweet Potato##44855 |goto Darnassus/0 61.64,49.10 |q 14055
step
talk Mary Allerton##34711
accept Easy As Pie##14054 |goto Darnassus/0 61.89,46.17
step
create 20 Pumpkin Pie##62044,Cooking,20 total |goto Darnassus/0 62.13,46.18 |q 14054
|tip Click the line to open your cooking panel and create them.
step
create 20 Spice Bread##37836,Cooking,20 total |goto Darnassus/0 62.13,46.18 |q 14051
|tip Click the line to open your cooking panel and create them.
step
create 20 Spice Bread Stuffing##62050,Cooking,20 total |goto Darnassus/0 62.13,46.18 |q 14051
|tip Click the line to open your cooking panel and create them.
step
create 20 Slow-Roasted Turkey##66037,Cooking,20 total |goto Darnassus/0 62.13,46.18 |q 14048
|tip Click the line to open your cooking panel and create them.
step
create 20 Candied Sweet Potato##66034,Cooking,20 total |goto Darnassus/0 62.13,46.18 |q 14055
|tip Click the line to open your cooking panel and create them.
step
create 20 Cranberry Chutney##66035,Cooking,20 total |goto Darnassus/0 62.13,46.18 |q 14053
|tip Click the line to open your cooking panel and create them.
step
talk Mary Allerton##34711
turnin Easy As Pie##14054 |goto Darnassus/0 61.89,46.17
step
talk Caitrin Ironkettle##34708
turnin Can't Get Enough Turkey##14048 |goto Dun Morogh/0 60.04,34.31
turnin Don't Forget The Stuffing!##14051 |goto Dun Morogh/0 60.04,34.31
step
talk Ellen Moore##34710
turnin We're Out of Cranberry Chutney Again?##14053 |goto Elwynn Forest/0 33.71,50.63
step
talk Jasper Moore##34744
turnin She Says Potato##14055 |goto Elwynn Forest/0 33.89,50.81
step
Wait for New Daily Quests |complete not completedq(14054,14048,14051,14053,14055) |next "Guide_Start"
|tip This guide will reset when more daily quests become available.
]])
QuestCore:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Achievements\\FOOD FIGHT!",{
expansion="mists",
mopready=true,
description="Bounce food off a fellow feaster's head at a Bountiful Table.",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
achieveid={3579},
patch='40401',
},[[
step
clicknpc The Turkey Chair##34812
|tip Use the "Pass The Turkey" ability to pass the food to other players at the table.
|tip You must target the other players and use the "Pass the Turkey" ability.
|tip Do this repeatedly until you earn the "FOOD FIGHT!" achievement.
|tip You can sit in another chair and pass other food too.
Start a Food Fight! |achieve 3579 |goto Elwynn Forest/0 34.29,51.07
]])
QuestCore:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Achievements\\Now We're Cookin'",{
expansion="mists",
mopready=true,
description="Cook up each of the following Pilgrim's Bounty dishes:\n\n"..
"Candied Sweet Potato\nCranberry Chutney\nPumpkin Pie\n"..
"Slow-Roasted Turkey\nSpice Bread Stuffing",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
achieveid={3576},
patch='40401',
},[[
step
talk Wilmina Holbeck##34682
buy 1 Bountiful Cookbook##46809 |goto Elwynn Forest/0 34.14,51.53 |or
'|learn Spice Bread##37836 |or
step
talk Ellen Moore##34710
Train Cooking |skillmax Cooking,300 |goto Elwynn Forest/0 33.71,50.63
step
talk Ellen Moore##34710
learn Spice Bread##37836 |goto Elwynn Forest/0 33.71,50.63
step
use the Bountiful Cookbook##46809
collect Recipe: Spice Bread Stuffing##44860 |or
'|learn Spice Bread##37836 |or
step
use the Bountiful Cookbook##46809
collect Recipe: Pumpkin Pie##44862 |or
'|learn Pumpkin Pie##62044 |or
step
use the Bountiful Cookbook##46809
collect Recipe: Cranberry Chutney##44858 |or
'|learn Cranberry Chutney##62049 |or
step
use the Bountiful Cookbook##46809
collect Recipe: Candied Sweet Potato##44859 |or
'|learn Candied Sweet Potato##62051 |or
step
use the Bountiful Cookbook##46809
collect Recipe: Slow-Roasted Turkey##44861 |or
'|learn Slow-Roasted Turkey##62045 |or
step
use the Recipe: Spice Bread Stuffing##44860
learn Spice Bread Stuffing##62050
step
talk Wilmina Holbeck##34682
buy 1 Simple Flour##30817 |goto Elwynn Forest/0 34.14,51.53
buy 1 Mild Spices##2678 |goto Elwynn Forest/0 34.14,51.53
buy 1 Autumnal Herbs##44835 |goto Elwynn Forest/0 34.14,51.53
|only if not achieved(3576)
step
create 1 Spice Bread##37836,Cooking,1 total |goto Elwynn Forest/0 33.82,50.84 |achieve 3576/5
|tip Click the line to open your cooking panel and create it.
|only if not achieved(3576)
step
create 1 Spice Bread Stuffing##62050,Cooking,1 total |goto Elwynn Forest/0 33.82,50.84 |achieve 3576/5
|tip Click the line to open your cooking panel and create it.
step
use the Recipe: Pumpkin Pie##44862
learn Pumpkin Pie##62044
step
talk Wilmina Holbeck##34682
buy 1 Ripe Tirisfal Pumpkin##46796 |goto Elwynn Forest/0 34.14,51.53
buy 1 Honey##44853 |goto Elwynn Forest/0 34.14,51.53
|only if not achieved(3576)
step
create 1 Pumpkin Pie##62044,Cooking,1 total |goto Elwynn Forest/0 33.82,50.84 |achieve 3576/3
|tip Click the line to open your cooking panel and create it.
step
use the Recipe: Cranberry Chutney##44858
learn Cranberry Chutney##62049
step
talk Elizabeth Barker Winslow##34645
buy 1 Tangy Southfury Cranberries##44854 |goto Dun Morogh/0 59.77,34.34
buy 1 Honey##44853 |goto Dun Morogh/0 59.77,34.34
|only if not achieved(3576)
step
create 1 Cranberry Chutney##66035,Cooking,1 total |goto Dun Morogh/0 60.01,34.39 |achieve 3576/2
|tip Click the line to open your cooking panel and create iy.
step
use the Recipe: Candied Sweet Potato##44859
learn Candied Sweet Potato##62051
step
talk Ikaneba Summerset##34681
buy 1 Mulgore Sweet Potato##46797 |goto Darnassus/0 61.64,49.10
buy 1 Honey##44853 |goto Darnassus/0 61.64,49.10
buy 1 Autumnal Herbs##44835 |goto Darnassus/0 61.64,49.10
|only if not achieved(3576)
step
create 1 Candied Sweet Potato##66034,Cooking,1 total |goto Darnassus/0 62.09,46.14 |achieve 3576/1
|tip Click the line to open your cooking panel and create it.
step
use the Recipe: Slow-Roasted Turkey##44861
learn Slow-Roasted Turkey##62045
step
kill Wild Turkey##32820+
|tip You can find these all over Elwynn Forest.
collect 1 Wild Turkey##44834 |goto Elwynn Forest/0 38.40,63.18
|only if not achieved(3576)
step
talk Wilmina Holbeck##34682
buy 2 Honey##44853 |goto Elwynn Forest/0 34.15,51.52
buy 1 Autumnal Herbs##44835 |goto Elwynn Forest/0 34.15,51.52
|only if not achieved(3576)
step
create 1 Slow-Roasted Turkey##66037,Cooking,1 total |goto Elwynn Forest/0 33.83,50.73 |achieve 3576/4
|tip Click the line to open your cooking panel and create it.
step
Cook a Pilgrim's Bounty Feast |achieve 3576
]])
QuestCore:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Achievements\\Pilgrim",{
expansion="mists",
mopready=true,
description="Complete the following Pilgrim's Bounty achievements:\n\n"..
"\"FOOD FIGHT!\"\nNow We're Cookin'\nPilgrim's Paunch\n"..
"Pilgrim's Peril\nPilgrim's Progress\nSharing is Caring\n"..
"Terokkar Turkey Time\nThe Turkinator\nTurkey Lurkey",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
achieveid={3478},
patch='40401',
},[[
leechsteps "Events Guides\\Pilgrim's Bounty\\Quests\\Pilgrim's Bounty Quests"
leechsteps "Events Guides\\Pilgrim's Bounty\\Quests\\Pilgrim's Bounty Daily Quests" 1-19
leechsteps "Events Guides\\Pilgrim's Bounty\\Achievements\\FOOD FIGHT!" 1-1
leechsteps "Events Guides\\Pilgrim's Bounty\\Achievements\\Pilgrim's Paunch" 1-43
leechsteps "Events Guides\\Pilgrim's Bounty\\Achievements\\Pilgrim's Peril" 1-9
leechsteps "Events Guides\\Pilgrim's Bounty\\Achievements\\Sharing is Caring" 1-10
leechsteps "Events Guides\\Pilgrim's Bounty\\Achievements\\Terokkar Turkey Time" 1-5
leechsteps "Events Guides\\Pilgrim's Bounty\\Achievements\\The Turkinator" 1-1
leechsteps "Events Guides\\Pilgrim's Bounty\\Achievements\\Turkey Lurkey" 1-11
step
Earn the "Pilgrim" Achievement |achieve 3478
]])
QuestCore:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Achievements\\Pilgrim's Paunch",{
expansion="mists",
mopready=true,
description="Acquire the Spirit of Sharing from a complete Bountiful Table feast at the following capital cities:\n\n"..
"Darnassus\nThe Exodar\n"..
"Ironforge\nStormwind",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
achieveid={3556},
patch='40401',
},[[
step
clicknpc The Pie Chair##34822
|tip Use the "Feast On Pie" ability on your action bar five times.
Eat Five Pie Helpings |complete hasbuff(61845,5) or achieved(3556,1) |goto Elwynn Forest/0 34.24,51.23 |or
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
clicknpc The Turkey Chair##34812
|tip Use the "Feast On Turky" ability on your action bar five times.
Eat Five Turkey Helpings |complete hasbuff(61842,5) or achieved(3556,1) |goto Elwynn Forest/0 34.29,51.07
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
clicknpc The Cranberry Chair##34823
|tip Use the "Feast On Cranberries" ability on your action bar five times.
Eat Five Cranberry Helpings |complete hasbuff(61841,5) or achieved(3556,1) |goto Elwynn Forest/0 34.40,51.06
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
clicknpc The Sweet Potato Chair##34824
|tip Use the "Feast On Sweet Potatoes" ability on your action bar five times.
Eat Five Sweet Potato Helpings |complete hasbuff(61844,5) or achieved(3556,1) |goto Elwynn Forest/0 34.43,51.23
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
clicknpc The Stuffing Chair##34819
|tip Use the "Feast On Stuffing" ability on your action bar five times.
Eat Five Stuffing Helpings |complete hasbuff(61843,5) or achieved(3556,1) |goto Elwynn Forest/0 34.33,51.33
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
clicknpc The Pie Chair##34822
|tip Use the "Feast On Pie" ability on your action bar five times.
Eat Five Pie Helpings |complete hasbuff(61845,5) or achieved(3556,4) |goto Darnassus/0 62.82,48.50
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
clicknpc The Turkey Chair##34812
|tip Use the "Feast On Turky" ability on your action bar five times.
Eat Five Turkey Helpings |complete hasbuff(61842,5) or achieved(3556,4) |goto Darnassus/0 62.62,48.25
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
clicknpc The Cranberry Chair##34823
|tip Use the "Feast On Cranberries" ability on your action bar five times.
Eat Five Cranberry Helpings |complete hasbuff(61841,5) or achieved(3556,4) |goto Darnassus/0 62.69,47.90
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
clicknpc The Sweet Potato Chair##34824
|tip Use the "Feast On Sweet Potatoes" ability on your action bar five times.
Eat Five Sweet Potato Helpings |complete hasbuff(61844,5) or achieved(3556,4) |goto Darnassus/0 62.95,47.92
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
clicknpc The Stuffing Chair##34819
|tip Use the "Feast On Stuffing" ability on your action bar five times.
Eat Five Stuffing Helpings |complete hasbuff(61843,5) or achieved(3556,4) |goto Darnassus/0 63.03,48.26
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
clicknpc The Pie Chair##34822
|tip Just outside The Exodar.
|tip Use the "Feast On Pie" ability on your action bar five times.
Eat Five Pie Helpings |complete hasbuff(61845,5) or achieved(3556,2) |goto The Exodar/0 75.75,52.73
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
clicknpc The Turkey Chair##34812
|tip Just outside The Exodar.
|tip Use the "Feast On Turky" ability on your action bar five times.
Eat Five Turkey Helpings |complete hasbuff(61842,5) or achieved(3556,2) |goto The Exodar/0 75.44,52.37
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
clicknpc The Cranberry Chair##34823
|tip Just outside The Exodar.
|tip Use the "Feast On Cranberries" ability on your action bar five times.
Eat Five Cranberry Helpings |complete hasbuff(61841,5) or achieved(3556,2) |goto The Exodar/0 75.55,51.90
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
clicknpc The Sweet Potato Chair##34824
|tip Just outside The Exodar.
|tip Use the "Feast On Sweet Potatoes" ability on your action bar five times.
Eat Five Sweet Potato Helpings |complete hasbuff(61844,5) or achieved(3556,2) |goto The Exodar/0 75.92,51.87
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
clicknpc The Stuffing Chair##34819
|tip Just outside The Exodar.
|tip Use the "Feast On Stuffing" ability on your action bar five times.
Eat Five Stuffing Helpings |complete hasbuff(61843,5) or achieved(3556,2) |goto The Exodar/0 76.04,52.40
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
clicknpc The Cranberry Chair##34823
|tip Use the "Feast On Cranberries" ability on your action bar five times.
Eat Five Cranberry Helpings |complete hasbuff(61841,5) or achieved(3556,3) |goto Dun Morogh/0 59.88,34.54
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
clicknpc The Sweet Potato Chair##34824
|tip Use the "Feast On Sweet Potatoes" ability on your action bar five times.
Eat Five Sweet Potato Helpings |complete hasbuff(61844,5) or achieved(3556,3) |goto Dun Morogh/0 59.96,34.56
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
clicknpc The Stuffing Chair##34819
|tip Use the "Feast On Stuffing" ability on your action bar five times.
Eat Five Stuffing Helpings |complete hasbuff(61843,5) or achieved(3556,3) |goto Dun Morogh/0 59.97,34.68
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
clicknpc The Pie Chair##34822
|tip Use the "Feast On Pie" ability on your action bar five times.
Eat Five Pie Helpings |complete hasbuff(61845,5) or achieved(3556,3) |goto Dun Morogh/0 59.90,34.73
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
clicknpc The Turkey Chair##34812
|tip Use the "Feast On Turky" ability on your action bar five times.
Eat Five Turkey Helpings |complete hasbuff(61842,5) or achieved(3556,3) |goto Dun Morogh/0 59.84,34.63
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
]])
QuestCore:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Achievements\\Pilgrim's Peril",{
expansion="mists",
mopready=true,
description="While wearing either a Pilgrim's Dress, Robe, or Attire, take a seat at the following enemy capital cities:\n\n"..
"Orgrimmar\nSilvermoon City\n"..
"Thunder Bluff\nUndercity",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
achieveid={3580},
patch='40401',
},[[
step
Collect a Pilgrim's Dress, Robe, or Attire |complete itemcount (46800) >= 1 or itemcount (44785) >= 1 or itemcount (46824) >= 1
|tip You can choose any of these as a reward for completing a Pilgrim's Bounty daily quest.
|tip Use the "Pilgrim's Bounty Daily Quests" event guide to accomplish this.
|only if not achieved(3580)
step
Equip Pilgrim's Attire |equipped Pilgrim's Attire##46800 |only if itemcount (46800) >= 1
Equip Pilgrim's Dress |equipped Pilgrim's Dress##44785 |only if itemcount (44785) >= 1
Equip Pilgrim's Robe |equipped Pilgrim's Robe##46824 |only if itemcount (46824) >= 1
|only if not achieved(3580)
step
clicknpc The Stuffing Chair##34819
Pilgrim's Peril of Undercity |achieve 3580/4 |goto Tirisfal Glades/0 62.30,66.68
step
clicknpc The Turkey Chair##34812
Pilgrim's Peril of Silvermoon City |achieve 3580/2 |goto Eversong Woods/0 55.23,53.68
step
clicknpc The Turkey Chair##34812
Pilgrim's Peril of Thunder Bluff |achieve 3580/3 |goto Thunder Bluff/0 30.04,67.00
step
clicknpc The Pie Chair##34822
Pilgrim's Peril of Orgrimmar |achieve 3580/1 |goto Durotar/0 46.71,15.09
step
Earn the "Pilgrim's Peril" Achievement |achieve 3580
]])
QuestCore:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Achievements\\Pilgrim's Progress",{
expansion="mists",
mopready=true,
description="Complete the following Pilgrim's Bounty dailies:\n\n"..
"Can't Get Enough Turkey\nDon't Forget The Stuffing!\nEasy As Pie\n"..
"She Says Potato\nWe're Out of Cranberry Chutney Again?",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
achieveid={3596},
patch='40401',
},[[
leechsteps "Events Guides\\Pilgrim's Bounty\\Quests\\Pilgrim's Bounty Daily Quests" 1-19
step
Earn the "Pilgrim's Progress" Achievement |achieve 3596
]])
QuestCore:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Achievements\\Sharing is Caring",{
expansion="mists",
mopready=true,
description="Pass each of the following dishes at a Bountiful Table:\n\n"..
"Candied Sweet Potatoes\nCranberry Chutney\nPumpkin Pie\n"..
"Slow-Roasted Turkey\nSpice Bread Stuffing",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
achieveid={3558},
patch='40401',
},[[
step
clicknpc The Pie Chair##34822
|tip Use the "Pass the Pie" ability on your action bar five times.
Pass the Pie |achieve 3558/3 |goto Elwynn Forest/0 34.24,51.23 |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|complete achieved(3558) |next "Earn_Sharing_Is_Caring" |or
step
clicknpc The Turkey Chair##34812
|tip Use the "Pass the Turky" ability on your action bar five times.
Pass the Turkey |achieve 3558/4 |goto Elwynn Forest/0 34.29,51.07 |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|complete achieved(3558) |next "Earn_Sharing_Is_Caring" |or
step
clicknpc The Cranberry Chair##34823
|tip Use the "Pass the Cranberries" ability on your action bar five times.
Pass the Cranberries |achieve 3558/2 |goto Elwynn Forest/0 34.40,51.06 |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|complete achieved(3558) |next "Earn_Sharing_Is_Caring" |or
step
clicknpc The Sweet Potato Chair##34824
|tip Use the "Pass the Sweet Potatoes" ability on your action bar five times.
Pass the Sweet Potatoes |achieve 3558/1 |goto Elwynn Forest/0 34.43,51.23 |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|complete achieved(3558) |next "Earn_Sharing_Is_Caring" |or
step
clicknpc The Stuffing Chair##34819
|tip Use the "Pass the Stuffing" ability on your action bar five times.
Pass the Stuffing |achieve 3558/5 |goto Elwynn Forest/0 34.33,51.33 |or
step
label "Earn_Sharing_Is_Caring"
Earn the "Sharing is Caring" Achievement |achieve 3558
]])
QuestCore:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Achievements\\Terokkar Turkey Time",{
expansion="mists",
mopready=true,
description="Defeat Talon King Ikiss while wearing a Pilgrim's Hat and either a Pilgrim's Dress, Robe, or Attire.",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
achieveid={3582},
patch='40401',
},[[
step
Collect a Pilgrim's Dress, Robe, or Attire |complete itemcount (46800) >= 1 or itemcount (44785) >= 1 or itemcount (46824) >= 1
|tip You can choose any of these as a reward for completing a Pilgrim's Bounty daily quest.
|tip Use the "Pilgrim's Bounty Daily Quests" event guide to accomplish this.
|only if not achieved(3582)
step
collect 1 Pilgrim's Hat##46723
|tip You can choose this as a reward for completing a Pilgrim's Bounty daily quest.
|tip Use the "Pilgrim's Bounty Daily Quests" event guide to accomplish this.
|only if not achieved(3582)
step
Equip a Pilgrim's Attire |equipped Pilgrim's Attire##46800 |only if itemcount (46800) >= 1 |or
Equip a Pilgrim's Dress |equipped Pilgrim's Dress##44785 |only if itemcount (44785) >= 1 |or
Equip a Pilgrim's Robe |equipped Pilgrim's Robe##46824 |only if itemcount (46824) >= 1 |or
|only if not achieved(3582)
step
use Pilgrim's Hat##46723 |only if itemcount (46723) >= 1
Equip a Pilgrim's Hat |equipped Pilgrim's Attire##46723 |only if itemcount (46723) >= 1
|only if not achieved(3582)
step
kill Talon King Ikiss##18473
Earn the "Terokkar Turkey Time" Achievement |achieve 3582 |goto Sethekk Halls/1 32.50,39.50
|tip Use the "Auchindoun: Sethekk Halls" dungeon guide to accomplish this.
]])
QuestCore:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Achievements\\Turkey Lurkey",{
expansion="mists",
mopready=true,
description="Blast the following dirty, sneaking Rogues with your Turkey Shooter:\n\n"..
"Blood Elf Rogue\nDwarf Rogue\nGnome Rogue\nGoblin Rogue\n"..
"Human Rogue\nNight Elf Rogue\nOrc Rogue\nTroll Rogue\n"..
"Undead Rogue\nWorgen Rogue",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
achieveid={3559},
patch='40401',
},[[
step
use the Turkey Shooter##44812
|tip You get one for each Pilgrim's Bounty cache that you collect.
|tip Use the "Pilgrim's Bounty Daily Quests" guide and select the Piglrim's Bounty reward.
|tip You can complete this with ten shooters, but you may need more.
|tip Make sure you don't shoot any rogues with the "Turkey Feathers" buff.
|tip The easiest way to complete this is to have a friend create the rogue races you need.
|tip You can also search other capital cities.
|tip Type "/who c-rogue r-race", where race is the race of the rogue you're looking for.
|tip You can only search for races allied with your faction.
Shoot a Dwarf Rogue |achieve 3559/2 |goto Elwynn Forest/0 34.63,51.22
step
use the Turkey Shooter##44812
|tip You get one for each Pilgrim's Bounty cache that you collect.
|tip Use the "Pilgrim's Bounty Daily Quests" guide and select the Piglrim's Bounty reward.
|tip You can complete this with ten shooters, but you may need more.
|tip Make sure you don't shoot any rogues with the "Turkey Feathers" buff.
|tip The easiest way to complete this is to have a friend create the rogue races you need.
|tip You can also search other capital cities.
|tip Type "/who c-rogue r-race", where race is the race of the rogue you're looking for.
|tip You can only search for races allied with your faction.
Shoot a Gnome Rogue |achieve 3559/1 |goto Elwynn Forest/0 34.63,51.22
step
use the Turkey Shooter##44812
|tip You get one for each Pilgrim's Bounty cache that you collect.
|tip Use the "Pilgrim's Bounty Daily Quests" guide and select the Piglrim's Bounty reward.
|tip You can complete this with ten shooters, but you may need more.
|tip Make sure you don't shoot any rogues with the "Turkey Feathers" buff.
|tip The easiest way to complete this is to have a friend create the rogue races you need.
|tip You can also search other capital cities.
|tip Type "/who c-rogue r-race", where race is the race of the rogue you're looking for.
|tip You can only search for races allied with your faction.
Shoot a Human Rogue |achieve 3559/8 |goto Elwynn Forest/0 34.63,51.22
step
use the Turkey Shooter##44812
|tip You get one for each Pilgrim's Bounty cache that you collect.
|tip Use the "Pilgrim's Bounty Daily Quests" guide and select the Piglrim's Bounty reward.
|tip You can complete this with ten shooters, but you may need more.
|tip Make sure you don't shoot any rogues with the "Turkey Feathers" buff.
|tip The easiest way to complete this is to have a friend create the rogue races you need.
|tip You can also search other capital cities.
|tip Type "/who c-rogue r-race", where race is the race of the rogue you're looking for.
|tip You can only search for races allied with your faction.
Shoot a Night Elf Rogue |achieve 3559/7 |goto Elwynn Forest/0 34.63,51.22
step
use the Turkey Shooter##44812
|tip You get one for each Pilgrim's Bounty cache that you collect.
|tip Use the "Pilgrim's Bounty Daily Quests" guide and select the Piglrim's Bounty reward.
|tip You can complete this with ten shooters, but you may need more.
|tip Make sure you don't shoot any rogues with the "Turkey Feathers" buff.
|tip The easiest way to complete this is to have a friend create the rogue races you need.
|tip You can also search other capital cities.
|tip Type "/who c-rogue r-race", where race is the race of the rogue you're looking for.
|tip You can only search for races allied with your faction.
Shoot a Blood Elf Rogue |achieve 3559/3 |goto Durotar/0 46.08,14.05
step
use the Turkey Shooter##44812
|tip You get one for each Pilgrim's Bounty cache that you collect.
|tip Use the "Pilgrim's Bounty Daily Quests" guide and select the Piglrim's Bounty reward.
|tip You can complete this with ten shooters, but you may need more.
|tip Make sure you don't shoot any rogues with the "Turkey Feathers" buff.
|tip The easiest way to complete this is to have a friend create the rogue races you need.
|tip You can also search other capital cities.
|tip Type "/who c-rogue r-race", where race is the race of the rogue you're looking for.
|tip You can only search for races allied with your faction.
Shoot a Orc Rogue |achieve 3559/6 |goto Durotar/0 46.08,14.05
step
use the Turkey Shooter##44812
|tip You get one for each Pilgrim's Bounty cache that you collect.
|tip Use the "Pilgrim's Bounty Daily Quests" guide and select the Piglrim's Bounty reward.
|tip You can complete this with ten shooters, but you may need more.
|tip Make sure you don't shoot any rogues with the "Turkey Feathers" buff.
|tip The easiest way to complete this is to have a friend create the rogue races you need.
|tip You can also search other capital cities.
|tip Type "/who c-rogue r-race", where race is the race of the rogue you're looking for.
|tip You can only search for races allied with your faction.
Shoot a Troll Rogue |achieve 3559/5 |goto Durotar/0 46.08,14.05
step
use the Turkey Shooter##44812
|tip You get one for each Pilgrim's Bounty cache that you collect.
|tip Use the "Pilgrim's Bounty Daily Quests" guide and select the Piglrim's Bounty reward.
|tip You can complete this with ten shooters, but you may need more.
|tip Make sure you don't shoot any rogues with the "Turkey Feathers" buff.
|tip The easiest way to complete this is to have a friend create the rogue races you need.
|tip You can also search other capital cities.
|tip Type "/who c-rogue r-race", where race is the race of the rogue you're looking for.
|tip You can only search for races allied with your faction.
Shoot a Undead Rogue |achieve 3559/4 |goto Durotar/0 46.08,14.05
step
Earn the "Turkey Lurkey" Achievement |achieve 3559
]])
QuestCore:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Achievements\\The Turkinator",{
expansion="mists",
mopready=true,
description="Hunt enough Wild Turkeys quickly enough to gain Turkey Triumph.",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
achieveid={3578},
patch='40401',
},[[
step
kill Wild Turkey##32820+
|tip Kill 40 turkeys without letting your Turkey Tracker Buff expire.
|tip You will need to fly around Elwynn Forest.
|tip You will be given 30 seconds for each kill to find a new turkey.
|tip Use your "Track Beast" ability and look for yellow dots on the minimap. |only Hunter
Earn the "Turkinator" Achievement |achieve 3578 |goto Elwynn Forest/0 38.40,63.18
]])
QuestCore:RegisterGuide("Events Guides\\Noblegarden\\Noblegarden Quests",{
expansion="mists",
mopready=true,
description="This guide section will walk you through completing the quests for the Noblegarden event.",
condition_suggested=function() return isevent('Noblegarden') end,
condition_end=function() return completedq(13502) end,
patch='30401',
},[[
step
talk Dwarf Commoner##19148
accept Spring Collectors##13484 |goto Ironforge/0 30.81,62.89
step
talk Spring Collector##32799
turnin Spring Collectors##13484 |goto Dun Morogh/0 53.99,50.70
step
talk Noblegarden Vendor##32836
accept A Tisket, A Tasket, A Noblegarden Basket##13502 |goto Dun Morogh/0 54.12,50.81
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip They look like multicolored eggs around trees, buildings and objects around this area.
use the Brightly Colored Egg##45072+
collect 10 Noblegarden Chocolate##44791 |q 13502/1 |goto Dun Morogh/0 53.46,50.80
step
talk Noblegarden Vendor##32836
turnin A Tisket, a Tasket, a Noblegarden Basket##13502 |goto Dun Morogh/0 54.12,50.81
]])
QuestCore:RegisterGuide("Events Guides\\Noblegarden\\Noblegarden Dailies",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Noblegarden') end,
description="This guide section will walk you through completing the dailies for the Noblegarden event.",
patch='30401',
},[[
step
talk Dwarf Commoner##19148
accept Spring Collectors##13484 |goto Ironforge/0 30.81,62.87
step
talk Spring Collector##32799
turnin Spring Collectors##13484 |goto Dun Morogh/0 53.99,50.70
step
label "Begin_Daily_Quests"
talk Spring Collector##32799
accept The Great Egg Hunt##13480 |goto Dun Morogh/0 53.99,50.70
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip They look like multicolored eggs around trees and objects around this area.
use the Brightly Colored Egg##45072+
collect 20 Brightly Colored Shell Fragment##44806 |q 13480/1 |goto Dun Morogh/0 53.46,50.80
You can find more around [47.21,53.76]
step
talk Spring Collector##32799
turnin The Great Egg Hunt##13480 |goto Dun Morogh/0 53.99,50.70
step
You have completed all Noblegarden daily quests
|tip This guide will reset when more become available.
'|complete not completedq(13480) |next "Begin_Daily_Quests"
]])
QuestCore:RegisterGuide("Events Guides\\Noblegarden\\Achievements\\Blushing Bride",{
expansion="mists",
mopready=true,
description="Kiss someone wearing an Elegant Dress while wearing a White Tuxedo Shirt and Black Tuxedo Pants.",
condition_suggested=function() return isevent('Noblegarden') end,
achieveid={2576},
patch='30401',
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip They look like multicolored eggs around trees and objects around this area.
use the Brightly Colored Egg##45072+
collect 50 Noblegarden Chocolate##44791 |goto Dun Morogh/0 53.46,50.80 |or
You can find more around [47.21,53.76]
'|complete achieved(2576) |or
step
talk Noblegarden Vendor##32836
buy 1 Black Tuxedo Pants##6835 |goto Dun Morogh/0 54.12,50.81 |or
'|complete achieved(2576) |or
step
talk Noblegarden Vendor##32836
buy 1 White Tuxedo Shirt##6833 |goto Dun Morogh/0 54.12,50.81 |or
'|complete achieved(2576) |or
step
Equip the Black Tuxedo Pants |equipped Black Tuxedo Pants##6835 |or
'|complete achieved(2576) |or
step
Equip the White Tuxedo Shirt |equipped White Tuxedo Shirt##6833 |or
'|complete achieved(2576) |or
step
|script DoEmote("KISS")
Earn the "Blushing Bride" Achievement |achieve 2576
|tip Use the kiss emote on a player wearing an Elegant Dress.
|tip The Elegant Dress looks like a long pink dress when worn.
]])
QuestCore:RegisterGuide("Events Guides\\Noblegarden\\Achievements\\Chocoholic",{
expansion="mists",
mopready=true,
description="Eat 100 Noblegarden Chocolates during the Noblegarden celebration.",
condition_suggested=function() return isevent('Noblegarden') end,
achieveid={2418},
patch='30401',
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip They look like multicolored eggs around trees and objects around this area.
use the Brightly Colored Egg##45072+
collect 100 Noblegarden Chocolate##44791 |goto Dun Morogh/0 53.46,50.80 |or
You can find more around [47.21,53.76]
'|complete achieved(2418) |or
step
use the Noblegarden Chocolate##44791+
Eat #100# Noblegarden Chocolates |achieve 2418
]])
QuestCore:RegisterGuide("Events Guides\\Noblegarden\\Achievements\\Chocolate Lover",{
expansion="mists",
mopready=true,
description="Eat 25 Noblegarden Chocolates during the Noblegarden celebration.",
condition_suggested=function() return isevent('Noblegarden') end,
achieveid={2417},
patch='30401',
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip They look like multicolored eggs around trees and objects around this area.
use the Brightly Colored Egg##45072+
collect 25 Noblegarden Chocolate##44791 |goto Dun Morogh/0 53.46,50.80 |or
You can find more around [47.21,53.76]
'|complete achieved(2417) |or
step
use the Noblegarden Chocolate##44791+
Eat #25# Noblegarden Chocolates |achieve 2417
]])
QuestCore:RegisterGuide("Events Guides\\Noblegarden\\Achievements\\Desert Rose",{
expansion="mists",
mopready=true,
description="Use Spring Robes to plant a flower in each of the deserts listed below:\n\n"..
"The Badlands\nDesolace\nSilithus\nTanaris\nThousand Needles",
condition_suggested=function() return isevent('Noblegarden') end,
achieveid={2436},
patch='30401',
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip They look like multicolored eggs around trees and objects around this area.
use the Brightly Colored Egg##45072+
collect 50 Noblegarden Chocolate##44791 |goto Dun Morogh/0 53.46,50.80 |or
You can find more around [47.21,53.76]
'|complete achieved(2436) |or
step
talk Noblegarden Vendor##32836
buy 1 Spring Robes##44800 |goto Dun Morogh/0 54.12,50.81 |or
'|complete achieved(2436) |or
step
Equip the Spring Robes |equipped Spring Robes##44800 |or
'|complete achieved(2436) |or
step
use the Spring Robes##44800
Plant a Flower in the Badlands |achieve 2436/2 |goto Badlands/0 7.21,60.74
step
use the Spring Robes##44800
Plant a Flower in Silithus |achieve 2436/1 |goto Silithus/0 43.99,42.69
step
use the Spring Robes##44800
Plant a Flower in Tanaris |achieve 2436/3 |goto Tanaris/0 51.38,29.43
step
use the Spring Robes##44800
Plant a Flower in Thousand Needles |achieve 2436/5 |goto Thousand Needles/0 69.10,94.10
step
use the Spring Robes##44800
Plant a Flower in the Desolace |achieve 2436/4 |goto Desolace/0 64.67,10.44
step
Earn the "Desert Rose" Achievement |achieve 2436
]])
QuestCore:RegisterGuide("Events Guides\\Noblegarden\\Achievements\\Dressed for the Occasion",{
expansion="mists",
mopready=true,
description="Discover an Elegant Dress by opening Brightly Colored Eggs during the Noblegarden celebration.",
condition_suggested=function() return isevent('Noblegarden') end,
achieveid={249},
patch='30401',
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip They look like multicolored eggs around trees and objects around this area.
|tip You may need to loot hundreds, if not thousands of these eggs.
|tip You must loot this rather than buy it.
|tip Tip if you have the dress in your inventory it will not drop.
use the Brightly Colored Egg##45072
collect 1 Elegant Dress##19028 |achieve 249 |goto Dun Morogh/0 53.46,50.80 |or
You can find more around [47.21,53.76]
'|complete achieved(249) |or
step
Earn the "Dressed for the Occasion" Achievement |achieve 249
]])
QuestCore:RegisterGuide("Events Guides\\Noblegarden\\Achievements\\Hard Boiled",{
expansion="mists",
mopready=true,
description="Lay an egg in Un'Goro Crater's Golakka Hot Springs as a rabbit during the Noblegarden celebration.",
condition_suggested=function() return isevent('Noblegarden') end,
achieveid={2416},
patch='30401',
},[[
step
talk Isirami Fairwind##32413
|tip Setting your hearthstone here will greatly reduce your travel time.
|tip You cannot take flight paths or use your mount after getting the buff.
|tip If you cannot get to Dalaran, travel to Silithus and set your hearthstone there before skipping this step.
home Dalaran |goto Dalaran/1 44.65,63.33 |or
'|complete achieved(2416) |or
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip They look like multicolored eggs around trees and objects around this area.
use the Brightly Colored Egg##45072+
Gain the "Noblegarden Bunny" Buff |havebuff Noblegarden Bunny##61734 |goto Dun Morogh/0 53.46,50.80 |or
You can find more around [47.21,53.76]
'|complete achieved(2416) |or
step
click Dalaran Portal to Caverns of Time |goto Dalaran/1 25.45,51.57
|tip Inside the building.
Travel to Caverns of Time |goto Tanaris/0 65.94,49.78 < 500 |c |noway |or
|tip If you set your hearth in Silithus, hearth there instead and skip this step.
'|complete achieved(2416) |or
step
Earn the "Hard Boiled" Achievement |achieve 2416 |goto Un'Goro Crater/0 33.81,52.23
|tip Avoid enemies, as being hit will cause you to lose your disguise.
|tip Stand in this spot until you lay an egg.
]])
QuestCore:RegisterGuide("Events Guides\\Noblegarden\\Achievements\\I Found One!",{
expansion="mists",
mopready=true,
description="Find a Brightly Colored Egg.",
condition_suggested=function() return isevent('Noblegarden') end,
achieveid={2676},
patch='30401',
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip They look like multicolored eggs around trees and objects around this area.
collect 1 Brightly Colored Egg##45072 |achieve 2676 |goto Dun Morogh/0 53.46,50.80 |or
You can find more around [47.21,53.76]
'|complete achieved(2676) |or
step
Earn the "I Found One!" Achievement |achieve 2676
]])
QuestCore:RegisterGuide("Events Guides\\Noblegarden\\Achievements\\Noble Garden",{
expansion="mists",
mopready=true,
description="Hide a Brightly Colored Egg in Stormwind City.",
condition_suggested=function() return isevent('Noblegarden') end,
achieveid={2421},
patch='30401',
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip They look like multicolored eggs around trees and objects around this area.
use the Brightly Colored Egg##45072+
collect 5 Noblegarden Chocolate##44791 |goto Dun Morogh/0 53.46,50.80 |or
You can find more around [47.21,53.76]
'|complete achieved(2421) |or
step
talk Noblegarden Vendor##32836
buy 1 Noblegarden Egg##44818 |goto Dun Morogh/0 54.12,50.81 |or
'|complete achieved(2421) |or
step
use Noblegarden Egg##44818 |goto Stormwind City/0 69.12,22.91
|tip Head to Stormwind and use the egg inside the city.
Earn the "Noble Garden" Achievement |achieve 2421
]])
QuestCore:RegisterGuide("Events Guides\\Noblegarden\\Achievements\\Shake Your Bunny-Maker",{
expansion="mists",
mopready=true,
description="Use Spring Flowers to place rabbit ears upon players of at least 18th level of the following races:\n\n"..
"Blood Elf\nDraenei\nDwarf\nGnome\nGoblin\nHuman\nNight Elf\nOrc\nTauren\nTroll\nUndead\nWorgen",
condition_suggested=function() return isevent('Noblegarden') end,
achieveid={2422},
patch='30401',
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip They look like multicolored eggs around trees and objects around this area.
use the Brightly Colored Egg##45072+
collect 50 Noblegarden Chocolate##44791 |goto Dun Morogh/0 53.46,50.80 |or
You can find more around [47.21,53.76]
'|complete achieved(2422) |or
step
talk Noblegarden Vendor##32836
buy 1 Spring Flowers##45073 |goto Dun Morogh/0 54.12,50.81 |or
'|complete achieved(2422) |or
step
Equip the Spring Flowers |equipped Spring Flowers##45073 |or
'|complete achieved(2422) |or
step
use the Spring Flowers##45073
|tip Use it on level 18+ characters.
|tip Check around capital cities.
Place Bunny Ears on a Blood Elf |achieve 2422/8
Place Bunny Ears on a Tauren |achieve 2422/5
Place Bunny Ears on a Draenei |achieve 2422/9
Place Bunny Ears on a Human |achieve 2422/1
Place Bunny Ears on a Troll |achieve 2422/6
Place Bunny Ears on a Dwarf |achieve 2422/2
Place Bunny Ears on a Night Elf |achieve 2422/4
Place Bunny Ears on a Gnome |achieve 2422/3
Place Bunny Ears on an Orc |achieve 2422/10
Place Bunny Ears on an Undead |achieve 2422/7
step
Earn the "Shake Your Bunny-Maker" Achievement |achieve 2422
]])
QuestCore:RegisterGuide("Events Guides\\Noblegarden\\Achievements\\Spring Fling",{
expansion="mists",
mopready=true,
description="Find your pet Spring Rabbit another one to love in each of the towns listed below:\n\n"..
"Azure Watch\nDolanar\nGoldshire\nKharanos",
condition_suggested=function() return isevent('Noblegarden') end,
achieveid={2419},
patch='30401',
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip They look like multicolored eggs around trees and objects around this area.
use the Brightly Colored Egg##45072+
collect 100 Noblegarden Chocolate##44791 |goto Dun Morogh/0 53.46,50.80 |or
You can find more around [47.21,53.76]
'|complete achieved(2419) |or
step
talk Noblegarden Vendor##32836
buy 1 Spring Rabbit's Foot##44794 |goto Dun Morogh/0 54.12,50.81 |or
'|complete achieved(2419) |or
step
Find Your Spring Rabbit Another to Love in Kharanos |achieve 2419/4 |goto Dun Morogh/0 53.46,50.80
|tip Summon your Spring Rabbit and find another player who has one summoned.
|tip Spring Rabbits are white with brown spots.
|tip Walk near the other player's rabbit to get credit.
step
Find Your Spring Rabbit Another to Love in Goldshire |achieve 2419/3 |goto Elwynn Forest/0 42.35,65.70
|tip Summon your Spring Rabbit and find another player who has one summoned.
|tip Spring Rabbits are white with brown spots.
|tip Walk near the other player's rabbit to get credit.
step
Find Your Spring Rabbit Another to Love in Dolanaar |achieve 2419/2 |goto Teldrassil/0 55.40,52.20
|tip Summon your Spring Rabbit and find another player who has one summoned.
|tip Spring Rabbits are white with brown spots.
|tip Walk near the other player's rabbit to get credit.
step
Find Your Spring Rabbit Another to Love in Azure Watch |achieve 2419/1 |goto Azuremyst Isle/0 49.31,50.55
|tip Summon your Spring Rabbit and find another player who has one summoned.
|tip Spring Rabbits are white with brown spots.
|tip Walk near the other player's rabbit to get credit.
step
Earn the "Spring Fling" Achievement |achieve 2419
]])
QuestCore:RegisterGuide("Events Guides\\Noblegarden\\Achievements\\Sunday's Finest",{
expansion="mists",
mopready=true,
description="Discover the White Tuxedo Shirt and Black Tuxedo Pants by opening Brightly Colored Eggs during the Noblegarden celebration.",
condition_suggested=function() return isevent('Noblegarden') end,
achieveid={248},
patch='30401',
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip They look like multicolored eggs around trees and objects around this area.
|tip You may need to loot hundreds, if not thousands of these eggs.
|tip You must loot this rather than buy it.
|tip Tip if you have the shirt in your inventory it will not drop.
use the Brightly Colored Egg##45072+
collect 1 White Tuxedo Shirt##6833 |achieve 248/1 |goto Dun Morogh/0 53.46,50.80 |or
You can find more around [47.21,53.76]
'|complete achieved(248) |or
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip They look like multicolored eggs around trees and objects around this area.
|tip You may need to loot hundreds, if not thousands of these eggs.
|tip You must loot this rather than buy it.
|tip Tip if you have the pants in your inventory it will not drop.
use the Brightly Colored Egg##45072+
collect 1 Black Tuxedo Pants##6835 |achieve 248/2 |goto Dun Morogh/0 53.46,50.80 |or
You can find more around [47.21,53.76]
'|complete achieved(248) |or
step
Earn the "Sunday's Finest" Achievement |achieve 248
]])
