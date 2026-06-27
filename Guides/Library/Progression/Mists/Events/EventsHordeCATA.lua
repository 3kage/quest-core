-- QuestCore bundled guide (mists)
if not QuestCore then return end
if UnitFactionGroup("player")~="Horde" then return end
QuestCore:RegisterGuide("Events Guides\\Brewfest\\Brewfest Quests",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return completedq(12492) end,
description="This guide section will walk you through completing the quests for the Brewfest event.",
},[[
step
talk Orc Commoner##19175
accept Brewfest!##11446 |goto Orgrimmar/1 51.55,75.17
step
talk Tapper Swindlekeg##24711
turnin Brewfest!##11446 |goto Durotar/0 41.58,18.45
accept Welcome to Brewfest!##11447 |goto Durotar/0 41.58,18.45
step
talk Ram Master Ray##24497
accept Now This is Ram Racing... Almost.##11409 |goto Durotar/0 42.62,17.84
step
As you run around on the ram:
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip You have to use the Ram Racing Reins to make it run at certain speeds for 8 seconds.
|tip To make the ram Trot for 8 seconds, use the Ram Racing Reins every 2 seconds or so.
Maintain a Trot for 8 seconds |q 11409/1
step
As you run around on the ram:
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip You have to use the Ram Racing Reins to make it run at certain speeds for 8 seconds.
|tip To make the ram Canter for 8 seconds, use the Ram Racing Reins a little more often than when you made the ram Trot.
Maintain a Canter for 8 seconds |q 11409/2
step
As you run around on the ram:
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip You have to use the Ram Racing Reins to make it run at certain speeds for 8 seconds.
|tip To make the ram Gallop, just spam the Ram Racing Reins.
Maintain a Gallop for 8 seconds |q 11409/3
step
Stop Riding the Ram |nobuff Rental Racing Ram##43883 |q 11409
|tip Right-click the "Rental Racing Ram" buff on your buff bar.
step
talk Ram Master Ray##24497
turnin Now This is Ram Racing... Almost.##11409 |goto Durotar/0 42.62,17.84
accept There and Back Again##11412 |goto Durotar/0 42.62,17.84
step
map Durotar/0
path follow strictbounce; loop off; ants curved; dist 20
path	42.98,17.74	44.16,17.87	44.85,16.90	47.44,16.31	49.09,13.59
path	50.79,13.90
Follow the waypoint path:
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100 between buckets.
|tip Ride over buckets of apples to refresh your Ram's fatigue level.
Bok Dropcertain will throw you a keg when you get close
Once you have a keg, run back and turn it in to Driz Tumblequick
|tip Just get near him and you will throw the keg to him.
Deliver #3# Kegs in Under 4 Minutes |q 11412/1 |or
|tip If you lose your ram, return to Ram Master Ray to acquire another.
step
Stop Riding the Ram |nobuff Ramstein's Swift Work Ram##43880 |q 11412
|tip Right-click the "Ramstein's Swift Work Ram" buff on your buff bar.
step
talk Ram Master Ray##24497
turnin There and Back Again##11412 |goto Durotar/0 42.62,17.84
step
talk Driz Tumblequick##24510
accept A New Supplier of Souvenirs##29396 |goto Durotar/0 42.69,17.72
step
talk Bizzle Quicklift##27216
accept Chug and Chuck!##12191 |goto Durotar/0 41.53,17.60
step
click Alcohol-Free Brewfest Sampler##186189
|tip They looks like mugs of beer on the small tables on either side of you.
use the Alcohol-Free Brewfest Sampler##33096
Hit the S.T.O.U.T. #5# Times |q 12191/1 |goto Durotar/0 41.54,17.52
step
talk Bizzle Quicklift##27216
turnin Chug and Chuck!##12191 |goto Durotar/0 41.53,17.60
step
talk Blix Fixwidget##24495
turnin Say, There Wouldn't Happen to be a Souvenir This Year, Would There?##12194 |goto Durotar/0 44.07,17.98
|only if haveq(12194) or completedq(12194)
step
talk Glodrak Huntsniper##11431
accept Catch the Wild Wolpertinger!##11431 |goto Durotar/0 41.23,18.53
|only if GetCurrentRegion() ~= 3
step
talk Glodrak Huntsniper##11431
Select _"What if I don't like drinking... is there another way I can help out?"_
Select _"I'd like a pair of Synthebrew Goggles."_
collect Synthebrew Goggles##46735 |goto Durotar/0 41.23,18.53 |q 11431
|only if haveq(11431) or completedq(11431)
step
Equip the Synthebrew Goggles |equipped Synthebrew Goggles##46735 |q 11431
|only if haveq(11431) or completedq(11431)
step
clicknpc Wild Wolpertinger##23487
use the Wolpertinger Net##32907
|tip They look like rabbits with antlers and wings running around on the ground around this area.
collect 5 Stunned Wolpertinger##32906 |q 11431/1 |goto Durotar/0 42.25,16.84
You can find more around here [goto Durotar/0 45.30,18.58]
|only if haveq(11431) or completedq(11431)
step
Equip your Helm |complete not goaltype("equipped",{targetid=46735}) |q 11431
|tip Remove the Synthebrew Goggles and re-equip your helm.
|only if haveq(11431) or completedq(11431)
step
talk Glodrak Huntsniper##11431
turnin Catch the Wild Wolpertinger!##11431 |goto Durotar/0 41.23,18.53 |only if haveq(11431) or completedq(11431)
accept Pink Elekks On Parade##11120 |goto Durotar/0 41.23,18.53 |only if completedq(11431)
|only if haveq(11431) or completedq(11431)
step
talk Blix Fixwidget##24495
turnin A New Supplier of Souvenirs##29396 |goto Durotar/0 40.32,17.89
step
Go to Tirisfal Glades |goto Undercity/0 66.12,13.46 < 50 |c |q 11120
|tip Upstairs in the ruins of Lordaeron.
|tip Go to this spot before you equip the goggles.
|only if haveq(11120) or completedq(11120)
step
Equip the Synthebrew Goggles |equipped Synthebrew Goggles##46735 |q 11120
|only if haveq(11120) or completedq(11120)
step
use the Elekk Dispersion Ray##32960
|tip Make sure you have the Synthebrew Goggles equipped.
|tip They are found above Undercity, in Tirisfal Glades.
kill 3 Tirisfal Pink Elekk##23530 |q 11120/3 |goto Undercity/0 66.12,13.46
|only if haveq(11120) or completedq(11120)
step
Equip your Helm |complete not goaltype("equipped",{targetid=46735}) |q 11120
|tip Remove the Synthebrew Goggles and re-equip your helm.
|only if haveq(11120) or completedq(11120)
step
Go to Eversong Woods |goto Eversong Woods/0 56.97,53.14 < 100 |c |q 11120
|tip Go to this spot before you equip the goggles.
|only if haveq(11120) or completedq(11120)
step
Equip the Synthebrew Goggles |equipped Synthebrew Goggles##46735 |q 11120
|only if haveq(11120) or completedq(11120)
step
use Elekk Dispersion Ray##32960
|tip Make sure you have the Synthebrew Goggles equipped.
kill 3 Eversong Pink Elekk##23531 |q 11120/1 |goto Eversong Woods/0 56.97,53.14
|only if haveq(11120) or completedq(11120)
step
Equip your Helm |complete not goaltype("equipped",{targetid=46735}) |q 11120
|tip Remove the Synthebrew Goggles and re-equip your helm.
|only if haveq(11120) or completedq(11120)
step
Go to Thunder Bluff |goto Thunder Bluff/0 32.33,70.85 < 100 |c |q 11120
|tip Go to this spot before you equip the goggles.
|only if haveq(11120) or completedq(11120)
step
Equip the Synthebrew Goggles |equipped Synthebrew Goggles##46735 |q 11120
|only if haveq(11120) or completedq(11120)
step
use Elekk Dispersion Ray##32960
|tip Make sure you have the Synthebrew Goggles equipped.
kill 3 Mulgore Pink Elekk##23529 |q 11120/2 |goto Thunder Bluff/0 32.33,70.85
|only if haveq(11120) or completedq(11120)
step
Equip your Helm |complete not goaltype("equipped",{targetid=46735}) |q 11120
|tip Remove the Synthebrew Goggles and re-equip your helm.
|only if haveq(11120) or completedq(11120)
step
talk Glodrak Huntsniper##11431
turnin Pink Elekks On Parade##11120 |goto Durotar/0 41.23,18.53
|only if haveq(11120) or completedq(11120)
step
Reach Level 80 |ding 80
|tip Coren Direbrew is level 87 elite.
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
|tip Someone with the daily quest "Insult Coren Direbrew" can talk to him to make him hostile.
|tip This quest is available in the Grim Guzzler in Blackrock Depths.
|confirm
]])
QuestCore:RegisterGuide("Events Guides\\Brewfest\\Brewfest Dailies",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent("Brewfest") end,
description="This guide section will walk you through completing the daily quests for the Brewfest event.",
},[[
step
Complete the "Brewfest Quests" Guide |complete completedq(12191)
step
label "Begin_Dailies"
talk Ram Master Ray##24497
Select _"Do you still need some help moving kegs from the crash site near Razor Hill?"_
Begin the Keg Run |havebuff Ramstein's Swift Work Ram##43880 |goto Durotar/0 42.62,17.84
step
map Durotar/0
path follow strictbounce; loop off; ants curved; dist 20
path	42.98,17.74	44.16,17.87	44.85,16.90	47.44,16.31	49.09,13.59
path	50.79,13.90
Follow the waypoint path:
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100 between buckets.
|tip Ride over buckets of apples to refresh your Ram's fatigue level.
Bok Dropcertain will throw you a keg when you get close
Once you have a keg, run back and turn it in to Driz Tumblequick
|tip Just get near him and you will throw the keg to him.
Deliver as Many Kegs as you Can 4 Minutes |nobuff Ramstein's Swift Work Ram##43880
step
talk Cort Gorestein##24498
accept Bark for Drohn's Distillery!##11407 |goto Durotar/0 40.56,18.18 |or
talk Ja'ron##24499
accept Bark for T'chali's Voodoo Brewery!##11408 |goto Durotar/0 40.20,17.08 |or
|tip You will only be able to accept one of these quests per day.
step
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100.
Ride your ram into Orgrimmar |goto Orgrimmar/1 52.24,84.44 |c |q 11407
|only if haveq(11407)
step
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100.
Ride your ram into Orgrimmar |goto Orgrimmar/1 52.24,84.44 |c |q 11408
|only if haveq(11408)
step
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100.
Bark Outside the Auction House |q 11407/1 |goto Orgrimmar/1 52.32,75.81
|only if haveq(11407)
step
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100.
Bark in the Valley of Honor |q 11407/2 |goto Orgrimmar/1 67.78,47.81
|only if haveq(11407)
step
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100.
Bark in the Valley of Wisdom |q 11407/3 |goto Orgrimmar/1 43.79,48.55
|only if haveq(11407)
step
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100.
Bark in the Valley of Spirits |q 11407/4 |goto Orgrimmar/1 34.31,65.32
|only if haveq(11407)
step
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100.
Bark Outside the Auction House |q 11408/1 |goto Orgrimmar/1 52.32,75.81
|only if haveq(11408)
step
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100.
Bark in the Valley of Honor |q 11408/2 |goto Orgrimmar/1 67.78,47.81
|only if haveq(11408)
step
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100.
Bark in the Valley of Wisdom |q 11408/3 |goto Orgrimmar/1 43.79,48.55
|only if haveq(11408)
step
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100.
Bark in the Valley of Spirits |q 11408/4 |goto Orgrimmar/1 34.31,65.32
|only if haveq(11408)
step
talk Cort Gorestein##24498
turnin Bark for Drohn's Distillery!##11407 |goto Durotar/0 40.56,18.18
|only if haveq(11407)
step
talk Ja'ron##24499
turnin Bark for T'chali's Voodoo Brewery!##11408 |goto Durotar/0 40.20,17.08
|only if haveq(11408)
step
Wait for the Dark Iron Defense event to start
|tip This even occurs every 30 minutes.
|tip You have to defend the three kegs at these locations in order to complete it.
click Complimentary Brewfest Sampler##186189+
use the Alcohol-Free Brewfest Sampler##33096
|tip Use it to throw it at the Dark Iron Dwarves and the Mole Machines around this area.
click Dark Iron Mole Machine Wreckage##189989
|tip It looks like a big metal gear laying on ground in the middle of the festival.
|tip It appears after the Dark Iron dwarves attack the Brewfest festival, so you may have to wait for it to appear.
accept This One Time, When I Was Drunk...##12020 |goto Durotar/0 40.91,17.65 |or
'|complete not completedq(11408,11407,12020) |next "Begin_Dailies" |or
step
talk Bizzle Quicklift##27216
turnin This One Time, When I Was Drunk...##12020 |goto Durotar/0 41.53,17.60
step
Reach Level 75 |ding 75 |or
|tip Coren Direbrew is level 82 elite.
'|complete not completedq(11408,11407,12020) |next "Begin_Dailies" |or
step
talk Brewfest Spy##26719
|tip Queue for Coren Direbrew.
accept Insult Coren Direbrew##12062 |or
|tip This quest is elite and will require a group.
'|complete not completedq(11408,11407,12020) |next "Begin_Dailies" |or
step
talk Coren Direbrew##23872
|tip Inside the Grim Guzzler in the Blackrock Depths dungeon.
turnin Insult Coren Direbrew##12062 |or
|tip This quest is elite and will require a group.
'|complete not completedq(11408,11407,12020) |next "Begin_Dailies" |or
step
kill Coren Direbrew##23872
|tip Form a group and travel to the Blackrock Depths dungeon.
|tip Someone with the daily quest "Insult Coren Direbrew" can talk to him to make him hostile.
|tip This quest is available in the Grim Guzzler in Blackrock Depths.
Click Here to Continue |confirm |or
'|complete not completedq(11408,11407,12020) |next "Begin_Dailies" |or
step
talk Tapper Swindlekeg##24711
turnin Direbrew's Dire Brew##12492 |goto Durotar/0 41.58,18.45
|only if haveq(12492)
step
You have completed the available daily quests
|tip This guide will reset when more become available.
'|complete not completedq(11408,11407,12020) |next "Begin_Dailies"
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
talk Blix Fixwidget##24495
buy "Brew of the Month" Club Membership Form##37737 |goto Durotar/0 44.07,17.98 |or
'|complete achieved(2796) |or
step
use the "Brew of the Month" Club Membership Form##37737
accept Brew of the Month Club##12306
step
talk Ray'ma##27489
turnin Brew of the Month Club##12306 |goto Orgrimmar/1 50.35,73.48
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
talk Blix Fixwidget##24495
buy "Brew of the Month" Club Membership Form##37737 |goto Durotar/0 44.07,17.98 |or
'|complete achieved(2796) |or
step
use the "Brew of the Month" Club Membership Form##37737
accept Brew of the Month Club##12306
step
talk Ray'ma##27489
turnin Brew of the Month Club##12306 |goto Orgrimmar/1 50.35,73.48
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
talk Brewfest Spy##26719
|tip Inside the dungeon to the right of the entrance, a Mole Machine console will take you to the bar.
|tip The Brewfewst Spy is located in the bar.
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
talk Blix Fixwidget##24495
collect Blue Brewfest Hat##33968 |goto Durotar/0 40.32,17.89 |or
collect Purple Brewfest Hat##33969 |goto Durotar/0 40.32,17.89 |or
collect Green Brewfest Hat##33967 |goto Durotar/0 40.32,17.89 |or
collect Brown Brewfest Hat##33864 |goto Durotar/0 40.32,17.89 |or
|tip Purchase one of these from the vendor.
|tip It will require 50 Brewfest Coins.
'|complete achieved(293) |or
step
talk Blix Fixwidget##24495
collect Brewfest Dress##33863 |goto Durotar/0 40.32,17.89 |or
collect Brewfest Regalia##33862 |goto Durotar/0 40.32,17.89 |or
|tip Purchase one of these from the vendor.
|tip It will require 200 Brewfest Coins.
'|complete achieved(293) |or
step
talk Blix Fixwidget##24495
collect Brewfest Boots##33868 |goto Durotar/0 40.32,17.89 |or
collect Brewfest Slippers##33966 |goto Durotar/0 40.32,17.89 |or
|tip Purchase one of these from the vendor.
|tip It will require 100 Brewfest Coins.
'|complete achieved(293) |or
step
talk Arille Azuregaze##29049
|tip Inside the building.
buy 5 Caraway Burnwine##40042 |goto Durotar/0 48.54,37.44 |or
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
talk Blix Fixwidget##24495
buy Wolpertinger's Tankard##32233 |goto Durotar/0 44.07,17.98 |or
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
|tip You have to defend the three kegs at these locations in order to complete it.
Click the Complimentary Brewfest Sampler
use the Complimentary Brewfest Sampler##33096
|tip Use it to throw it at the Dark Iron Dwarves and the Mole Machines around this area.
click Dark Iron Mole Machine Wreckage##189989
|tip It looks like a big metal gear laying on ground in the middle of the festival.
|tip It appears after the Dark Iron dwarves attack the Brewfest festival, so you may have to wait for it to appear.
accept This One Time, When I Was Drunk...##12192 |goto Durotar/0 40.91,17.65 |or
'|complete achieved(1186) |or
step
talk Bizzle Quicklift##27216
turnin This One Time, When I Was Drunk...##12192 |goto Durotar/0 41.53,17.60 |or
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
talk Blix Fixwidget##24495
buy Fresh Brewfest Hops##37750 |goto Durotar/0 40.32,17.89 |or
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
condition_end=function() return achieved(1203) end,
description="Drink the following Brewfest beers:\n\nStout Shrunken Head\nBrewdoo Magic\nJungle River Water\n"..
"Path of Brew\nLong Stride Brew\nSmall Step Brew\nOgre Mead\nMudder's Milk\nGordok Grog",
},[[
step
talk T'chali's Voodoo Brewery Apprentice##23533
buy Stout Shrunken Head##34022 |goto Durotar/0 40.26,17.00 |achieve 1203
buy Brewdoo Magic##34021 |goto Durotar/0 40.26,17.00 |achieve 1203
buy Jungle River Water##34020 |goto Durotar/0 40.26,17.00 |achieve 1203
step
talk Drohn's Distillery Apprentice##24501
buy Path of Brew##34019 |goto Durotar/0 40.49,18.15 |achieve 1203
buy Long Stride Brew##34018 |goto Durotar/0 40.49,18.15 |achieve 1203
buy Small Step Brew##34017 |goto Durotar/0 40.49,18.15 |achieve 1203
step
talk Gordok Brew Apprentice##23511
buy Ogre Mead##33035 |goto Durotar/0 40.93,16.89 |achieve 1203
buy Mudder's Milk##33036 |goto Durotar/0 40.93,16.89 |achieve 1203
buy Gordok Grog##33034 |goto Durotar/0 40.93,16.89 |achieve 1203
step
use the Stout Shrunken Head##34022
Drink Some Stout Shrunken Head |achieve 1203/4
step
use the Brewdoo Magic##34021
Drink Some Brewdoo Magic |achieve 1203/3
step
use the Jungle River Water##34020
Drink Some Jungle River Water |achieve 1203/9
step
use the Path of Brew##34019
Drink Some Path of Brew |achieve 1203/6
step
use the Long Stride Brew##34018
Drink Some Long Stride Brew |achieve 1203/8
step
use the Small Step Brew##34017
Drink Some Small Step Brew |achieve 1203/5
step
use the Ogre Mead##33035
Drink Some Ogre Mead |achieve 1203/7
step
use the Mudder's Milk##33036
Drink Some Mudder's Milk |achieve 1203/1
step
use the Gordok Grog##33034
Drink Some Gordok Grog |achieve 1203/2
step
Earn the "Strange Brew" Achievement |achieve 1203
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
Reach Level 65 |ding 65
|tip You must be level 644
step
talk Bron##23605
buy Succulent Sausage##34064 |goto Durotar/0 41.24,17.32 |achieve 1185
buy Dried Sausage##34063 |goto Durotar/0 41.24,17.32 |achieve 1185
buy Pickled Sausage##33024 |goto Durotar/0 41.24,17.32 |achieve 1185
buy Savory Sausage##33023 |goto Durotar/0 41.24,17.32 |achieve 1185
buy Spicy Smoked Sausage##33025 |goto Durotar/0 41.24,17.32 |achieve 1185
buy The Golden Link##33026 |goto Durotar/0 41.24,17.32 |achieve 1185
step
talk Uta Roughdough##23603
buy The Essential Brewfest Pretzel##33043 |goto Durotar/0 41.05,18.35 |achieve 1185
step
talk Agnes Farwithers##23604
buy Spiced Onion Cheese##34065 |goto Durotar/0 40.23,17.66 |achieve 1185
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
QuestCore:RegisterGuide("Events Guides\\Children's Week\\Children's Week Orgrimmar Quests",{
expansion="mists",
mopready=true,
description="This guide section will walk you through completing the Orgrimmar questline for the Children's Week event.",
condition_suggested=function() return isevent("Children's Week") end,
condition_end=function() return completedq(5502) end,
startlevel=10,
},[[
step
talk Orphan Matron Battlewail##51989
accept Children's Week##172 |goto Orgrimmar/1 57.95,57.62
step
use the Orcish Orphan Whistle##18597
talk Orcish Orphan##14444
turnin Children's Week##172
accept Ridin' the Rocketway##29146
accept The Fallen Chieftain##29176
accept The Banshee Queen##29167
step
Follow the path |goto Undercity/0 52.07,64.45 < 10 |only if walking
use Orcish Orphan Whistle##18597
|tip Use it to summon your Orcish Orphan, if needed.
Watch the dialogue
Take Your Orphan to Meet Lady Sylvanas Windrunner |q 29167/1 |goto Undercity/0 58.05,91.80
step
use Orcish Orphan Whistle##18597
|tip Use it to summon your Orcish Orphan, if needed.
talk Orcish Orphan##14444
turnin The Banshee Queen##29167
step
Ride the elevator up |goto Azshara/0 50.78,74.53 < 5 |only if walking
use Orcish Orphan Whistle##18597
|tip Use it to summon your Orcish Orphan, if needed.
|tip This quest is currently bugged and may not complete.
clicknpc Redhound Two-Seater##52583
Take Your Orphan to Ride the Rocketway |q 29146/1 |goto Azshara/0 50.72,73.94
step
use Orcish Orphan Whistle##18597
|tip Use it to summon your Orcish Orphan, if needed.
talk Orcish Orphan##14444
turnin Ridin' the Rocketway##29146
step
use Orcish Orphan Whistle##18597
|tip Use it to summon your Orcish Orphan, if needed.
|tip You may need to walk around the area for a bit.
Watch the dialogue
Take Your Orphan to Visit Red Rocks |q 29176/1 |goto Mulgore/0 60.79,22.83
step
use Orcish Orphan Whistle##18597
|tip Use it to summon your Orcish Orphan, if needed.
talk Orcish Orphan##14444
turnin The Fallen Chieftain##29176
step
use Orcish Orphan Whistle##18597
|tip Use it to summon your Orcish Orphan, if needed.
talk Orcish Orphan##14444
accept Let's Go Fly a Kite##29190
accept You Scream, I Scream...##29191
step
talk Blax Bottlerocket##52809
|tip He walks around this area.
buy 1 Dragon Kite 2-Pack##69231 |q 29190 |goto Orgrimmar/1 58.50,55.46
step
use Orcish Orphan Whistle##18597
|tip Use it to summon your Orcish Orphan, if needed.
use Dragon Kite 2-Pack##69231
Fly Dragon Kites with Your Orphan |q 29190/1
step
use Orcish Orphan Whistle##18597
|tip Use it to summon your Orcish Orphan, if needed.
talk Orcish Orphan##14444
turnin Let's Go Fly a Kite##29190
step
Follow the path |goto Orgrimmar/1 57.36,64.04 < 10 |only if walking
Continue following the path |goto Orgrimmar/1 54.93,64.86 < 10 |only if walking
Continue following the path |goto Orgrimmar/1 51.13,65.37 < 10 |only if walking
Continue following the path |goto Orgrimmar/1 43.96,69.89 < 10 |only if walking
Run up the ramp |goto Orgrimmar/1 43.90,72.98 < 10 |only if walking
Continue up the ramp |goto Orgrimmar/1 43.90,75.87 < 10 |only if walking
Continue following the path |goto Orgrimmar/1 40.64,77.41 < 10 |only if walking
Continue following the path |goto Orgrimmar/1 37.68,85.42 < 10 |only if walking
talk Snixx Quickfreeze##52818
buy 1 Cone of Cold##69233 |q 29191 |goto Orgrimmar/1 36.29,86.98
step
use Orcish Orphan Whistle##18597
|tip Use it to summon your Orcish Orphan, if needed.
use Cone of Cold##69233
Take Your Orphan Out for Ice Cream |q 29191/1
step
use Orcish Orphan Whistle##18597
|tip Use it to summon your Orcish Orphan, if needed.
talk Orcish Orphan##14444
turnin You Scream, I Scream...##29191
accept A Warden of the Horde##5502
step
Follow the path |goto Orgrimmar/1 39.11,84.35 < 10 |only if walking
Continue following the path |goto Orgrimmar/1 40.67,77.42 < 10 |only if walking
Jump down here |goto Orgrimmar/1 43.36,73.21 < 7 |only if walking
Run down the ramp |goto Orgrimmar/1 43.95,70.31 < 10 |only if walking
Follow the path |goto Orgrimmar/1 46.83,66.93 < 10 |only if walking
Continue following the path |goto Orgrimmar/1 53.60,64.24 < 10 |only if walking
Continue following the path |goto Orgrimmar/1 56.52,65.14 < 10 |only if walking
Continue following the path |goto Orgrimmar/1 59.00,61.17 < 10 |only if walking
talk Blax Bottlerocket##52809
|tip He walks around this area.
buy 1 Foam Sword Rack##69057 |q 5502/1 |goto Orgrimmar/1 58.55,55.86
step
talk Orphan Matron Battlewail##51989
turnin A Warden of the Horde##5502 |goto Orgrimmar/1 57.95,57.62
]])
QuestCore:RegisterGuide("Events Guides\\Children's Week\\Children's Week Shattrath Quests",{
expansion="mists",
mopready=true,
description="This guide section will walk you through completing the Shattrath questline for the Children's Week event.",
condition_suggested=function() return isevent("Children's Week") end,
condition_end=function() return completedq(10967) end,
startlevel=10,
},[[
step
talk Orphan Matron Mercy##22819
accept Children's Week##10942 |goto Shattrath City/0 75.08,47.89
step
use Blood Elf Orphan Whistle##31880
|tip Use it to summon your Blood Elf Orphan.
talk Blood Elf Orphan##22817
turnin Children's Week##10942
accept Hch'uu and the Mushroom People##10945
accept A Trip to the Dark Portal##10951
accept Visit the Throne of the Elements##10953
step
use Blood Elf Orphan Whistle##31880
|tip Use it to summon your Blood Elf Orphan, if needed.
Take Salandria to the Throne of the Elements |q 10953/1 |goto Nagrand/0 60.65,22.42
step
talk Elementalist Sharvak##18072
turnin Visit the Throne of the Elements##10953 |goto Nagrand/0 60.66,22.10
step
use Blood Elf Orphan Whistle##31880
|tip Use it to summon your Blood Elf Orphan, if needed.
Take Salandria to Sporeggar |q 10945/1 |goto Zangarmarsh/0 19.42,51.39
step
talk Hch'uu##22823
turnin Hch'uu and the Mushroom People##10945 |goto Zangarmarsh/0 19.28,51.34
step
use Blood Elf Orphan Whistle##31880
|tip Use it to summon your Blood Elf Orphan, if needed.
Take Salandria to the Dark Portal |q 10951/1 |goto Hellfire Peninsula/0 89.59,50.21
step
use Blood Elf Orphan Whistle##31880
|tip Use it to summon your Blood Elf Orphan, if needed.
talk Blood Elf Orphan##22817
turnin A Trip to the Dark Portal##10951
accept Now, When I Grow Up...##11975
accept Time to Visit the Caverns##10963
step
Enter the cave |goto Tanaris/0 65.09,49.93 < 15 |walk
use Blood Elf Orphan Whistle##31880
|tip Use it to summon your Blood Elf Orphan, if needed.
Take Salandria to the Caverns of Time |q 10963/2 |goto Tanaris/0 59.92,57.11
|tip Down inside caverns of time in front of Zaladormu.
step
talk Alurmi##21643
buy 1 Toy Dragon##31951 |q 10963/1 |goto Tanaris/0 63.00,57.31
step
use Blood Elf Orphan Whistle##31880
|tip Use it to summon your Blood Elf Orphan, if needed.
talk Blood Elf Orphan##22817
turnin Time to Visit the Caverns##10963
step
use Blood Elf Orphan Whistle##31880
|tip Use it to summon your Blood Elf Orphan, if needed.
Watch the dialogue
Take Salandria to see the Elite Tauren Chieftain |q 11975/1 |goto Silvermoon City/0 76.61,81.05
step
use Blood Elf Orphan Whistle##31880
|tip Use it to summon your Blood Elf Orphan, if needed.
talk Blood Elf Orphan##22817
turnin Now, When I Grow Up...##11975
accept Back to the Orphanage##10967
step
talk Orphan Matron Mercy##22819
turnin Back to the Orphanage##10967 |goto Shattrath City/0 75.08,47.89
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
leechsteps "Events Guides\\Children's Week\\Children's Week Shattrath Quests" 1-14
step
_Congratulations!_
You Earned the "Aw, Isn't It Cute?" Achievement
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
talk Orphan Matron Battlewail##14451
Select _"Children's Week is not yet over...may I have another Orphan Whistle?"_
collect 1 Orcish Orphan Whistle##18597 |achieve 1793 |goto Orgrimmar/1 57.95,57.62
step
talk Alowicious Czervik##14480
buy 1 Tigule's Strawberry Ice Cream##7228 |achieve 1788 |goto Orgrimmar/1 53.31,79.26
step
talk Auctioneer Drezmit##44866
|tip Purchase the follow items from the Auction House, or use your Cooking ability to create them.
collect 1 Tasty Cupcake##43490 |achieve 1788 |goto Orgrimmar/1 54.08,73.36
collect 1 Delicious Chocolate Cake##33924 |achieve 1788 |goto Orgrimmar/1 54.08,73.36
step
talk Aimee##29548
buy 1 Red Velvet Cupcake##42429 |achieve 1788 |goto Dalaran/1 51.19,29.05
buy 1 Lovely Cake##42438 |achieve 1788 |goto Dalaran/1 51.19,29.05
buy 1 Dalaran Doughnut##42430 |achieve 1788 |goto Dalaran/1 51.19,29.05
buy 1 Dalaran Brownie##42431 |achieve 1788 |goto Dalaran/1 51.19,29.05
step
use the Lovely Cake##42438
|tip Use it to place a cake on the ground.
click Lovely Cake
collect 1 Lovely Cake Slice##42434 |achieve 1788
step
use the Orcish Orphan Whistle##18597
|tip Use it to summon your Orcish Orphan, if needed.
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
You Earned the "Bad Example" Achievement
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
talk Orphan Matron Battlewail##14451
Select _"Children's Week is not yet over...may I have another Orphan Whistle?"_
collect 1 Orcish Orphan Whistle##18597 |achieve 1793 |goto Orgrimmar/1 57.95,57.62
step
use the Orcish Orphan Whistle##18597
|tip Use it to summon your Orcish Orphan, if needed.
Complete any 5 daily quests of your choice:
|tip World Quests do not count for this achievement.
|tip Use the various daily quest guides to complete this.
|tip Make sure your orphan is standing next to you when turning in the daily quests, or you won't get credit for this achievement.
|achieve 1789
step
_Congratulations!_
You Earned the "Daily Chores" Achievement
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
talk Orphan Matron Battlewail##14451
Select _"Children's Week is not yet over...may I have another Orphan Whistle?"_
collect 1 Orcish Orphan Whistle##18597 |achieve 1793 |goto Orgrimmar/1 57.95,57.62
step
use the Orcish Orphan Whistle##18597
|tip Use it to summon your Orcish Orphan, if needed.
use Hearthstone##6948
|tip Use it while your Orphan is standing next to you.
|achieve 1791
step
_Congratulations!_
You Earned the "Home Alone" Achievement
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
talk Orphan Matron Battlewail##14451
Select _"Children's Week is not yet over...may I have another Orphan Whistle?"_
collect 1 Orcish Orphan Whistle##18597 |achieve 1793 |goto Orgrimmar/1 57.95,57.62
step
use the Orcish Orphan Whistle##18597
|tip Use it to summon your Orcish Orphan, if needed.
|tip Enter the Eye of the Storm battleground and capture the flag.
Capture the flag in Eye of the Storm |achieve 1786/1
step
use the Orcish Orphan Whistle##18597
|tip Use it to summon your Orcish Orphan, if needed.
|tip Enter the Alterac Valley battleground and assault a tower.
Assault a Tower in Alterac Valley |achieve 1786/2
step
use the Orcish Orphan Whistle##18597
|tip Use it to summon your Orcish Orphan, if needed.
|tip Enter the Arathi Basin battleground and assault a flag.
Assault a Flag in Arathi Basin |achieve 1786/3
step
use the Orcish Orphan Whistle##18597
|tip Use it to summon your Orcish Orphan, if needed.
|tip Enter the Warsong Gulch battleground and return a fallen flag.
Return a Fallen flag in Warsong Gulch |achieve 1786/4
step
_Congratulations!_
You Earned the "School of Hard Knocks" Achievement
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
leechsteps "Events Guides\\Children's Week\\Children's Week Shattrath Quests" 1-14
step
_Congratulations!_
You Earned the "Veteran Nanny" Achievement
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
talk Darkmoon Faire Mystic Mage##55382
accept The Darkmoon Faire##7926 |goto Orgrimmar/1 48.23,62.17
|tip She is on the top of Orgrimmar near the flight master.
|tip She is not in the Cleft of Shadow. |only if subzone("Cleft of Shadow")
step
talk Innkeeper Pala##6746
|tip Inside the building.
buy 5 Moonberry Juice##1645 |goto Thunder Bluff/0 45.83,64.73 |q 29506 |future
|only if skill("Alchemy") >= 1
step
talk Shadi Mistrunner##8363
buy 5 Light Parchment##39354 |goto Thunder Bluff/0 40.31,63.37 |q 29515 |future
|only if skill("Inscription") >= 1
step
talk Shadi Mistrunner##8363
buy 1 Coarse Thread##2320 |goto Thunder Bluff/0 40.31,63.37 |q 29520 |future
buy 1 Blue Dye##6260 |goto Thunder Bluff/0 40.31,63.37 |q 29520 |future
buy 1 Red Dye##2604 |goto Thunder Bluff/0 40.31,63.37 |q 29520 |future
|only if skill("Tailoring") >= 1
step
talk Shadi Mistrunner##8363
buy 5 Coarse Thread##2320 |goto Thunder Bluff/0 40.31,63.37 |q 29517 |future
buy 5 Blue Dye##6260 |goto Thunder Bluff/0 40.31,63.37 |q 29517 |future
buy 10 Shiny Bauble##6529 |goto Thunder Bluff/0 40.31,63.37 |q 29517 |future
|only if skill("Leatherworking") >= 1
step
talk Shadi Mistrunner##8363
buy 5 Simple Flour##30817 |goto Thunder Bluff/0 40.31,63.37 |q 29509 |future
|only if skill("Cooking") >= 1
step
clicknpc Darkmoon Strider##68491
Mount the Darkmoon Strider |havebuff Darkmoon Strider##134931 |goto Darkmoon Island/0 51.64,24.67
|only if level < 10
step
talk Zina Sharpworth##55266
buy 1 Sack o' Tokens##78910 |goto Darkmoon Island/0 54.34,53.15 |q 29433 |future |or
use the Sack o' Tokens##78910
collect 20 Darkmoon Faire Game Token##71083 |goto Darkmoon Island/0 54.34,53.15 |q 7905 |or
|tip This will let you play all the games at the faire. You can skip this step if you know you need less tokens.
step
talk Gelvas Grimegate##14828
turnin The Darkmoon Faire##7926 |goto Darkmoon Island/0 47.90,64.74
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
Kill enemies or players
|tip Only enemies and players that yield experience or honor will award Grisly Trophies.
|tip You will need to keep the Darkmoon Adventurer's Guide in your inventory.
|tip You can kill these anywhere you choose.
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
achieveid={6031},
patch='40300',
},[[
step
talk Boomie Sparks##55278
buy 6 Darkmoon Firework##74142 |future |achieve 6031 |goto Darkmoon Island/0 48.40,71.90
|only if not hastoy(122119)
step
use the Darkmoon Firework##74142 |only if default
use the Everlasting Darkmoon Firework##122119 |only if hastoy(122119)
Use Your Darkmoon Firework |achieve 6031/5 |goto Thunder Bluff/0 36.63,62.15
step
use the Darkmoon Firework##74142 |only if default
use the Everlasting Darkmoon Firework##122119 |only if hastoy(122119)
Use Your Darkmoon Firework |achieve 6031/2 |goto Orgrimmar/2 49.24,59.35
step
use the Darkmoon Firework##74142 |only if default
use the Everlasting Darkmoon Firework##122119 |only if hastoy(122119)
Use Your Darkmoon Firework |achieve 6031/6 |goto Undercity/0 66.05,25.80
step
use the Darkmoon Firework##74142 |only if default
use the Everlasting Darkmoon Firework##122119 |only if hastoy(122119)
Use Your Darkmoon Firework |achieve 6031/4 |goto Silvermoon City/0 50.62,16.45
step
use the Darkmoon Firework##74142 |only if default
use the Everlasting Darkmoon Firework##122119 |only if hastoy(122119)
Use Your Darkmoon Firework |achieve 6031/1 |goto Dalaran/1 55.92,46.79
step
use the Darkmoon Firework##74142 |only if default
use the Everlasting Darkmoon Firework##122119 |only if hastoy(122119)
Use Your Darkmoon Firework |achieve 6031/3 |goto Shattrath City/0 53.01,49.21
step
achieve 6031
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
talk Darkmoon Faire Mystic Mage##55382
accept The Darkmoon Faire##7926 |goto Orgrimmar/2 48.23,62.17
step
clicknpc Darkmoon Strider##68491
Mount the Darkmoon Strider |havebuff Darkmoon Strider##134931 |goto Darkmoon Island/0 51.64,24.67 |q 7926
|only if level < 10
step
talk Gelvas Grimegate##14828
turnin The Darkmoon Faire##7926 |goto Darkmoon Island/0 47.90,64.74
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
talk Darkmoon Faire Mystic Mage##55382
accept The Darkmoon Faire##7926 |goto Orgrimmar/2 48.23,62.17
step
clicknpc Darkmoon Strider##68491
Mount the Darkmoon Strider |havebuff Darkmoon Strider##134931 |goto Darkmoon Island/0 51.64,24.67 |q 7926
|only if level < 10
step
talk Gelvas Grimegate##14828
turnin The Darkmoon Faire##7926 |goto Darkmoon Island/0 47.90,64.74
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
condition_end=function() return completedq(8409) end,
description="Complete the Hallow's End event quests.",
patch='40405',
},[[
step
Reach Level 25 |ding 25
|tip You must be at least level 25 to be able to accept this quest.
|tip Use the Leveling guides to accomplish this.
step
talk Spoops##15309
accept Hallow's End Treats for Spoops!##8312 |goto Tirisfal Glades/0 62.13,66.44
step
talk Candace Fenlow##53763
accept Stink Bombs Away!##29374 |goto Tirisfal Glades/0 62.42,66.72
accept Clean Up in Undercity##29375 |goto Tirisfal Glades/0 62.42,66.72
accept A Friend in Need##29431 |goto Tirisfal Glades/0 62.42,66.72
step
talk Darkcaller Yanka##15197
accept A Time to Build Up##29376 |goto Tirisfal Glades/0 62.12,67.83
accept A Time to Break Down##29377 |goto Tirisfal Glades/0 62.12,67.83
step
click Bonfire
Use the Bonfire |q 29376/1 |goto Tirisfal Glades/0 62.21,67.96
step
click Wickerman Ashes
Use the Wickerman Ashes |q 29376/2 |goto Tirisfal Glades/0 62.15,68.22
step
talk Darkcaller Yanka##15197
turnin A Time to Build Up##29376 |goto Tirisfal Glades/0 62.12,67.83
step
talk Crina Fenlow##53764
Select _"I'm ready to attack Stormwind!"_ |gossip 113766
Ride a Broom to Stormwind |invehicle |q 29374 |goto Tirisfal Glades/0 62.13,67.03
step
Drop #25# Stink Bombs in Stormwind |q 29374/1 |goto Stormwind City/0 66.88,78.41
|tip You'll fly around automatically.
|tip Target NPCs or Players for credit.
step
Click the Return Button on Your Action Bar |outvehicle |q 29374
step
use Arcane Cleanser##70727
|tip Use them on the orange clouds within the Undercity.
|tip You will need to search around to find them.
Remove #10# Stink Bombs |q 29375/1 |goto Undercity/0 70.07,50.42
step
talk Candace Fenlow##53763
turnin Stink Bombs Away!##29374 |goto Tirisfal Glades/0 62.42,66.72
turnin Clean Up in Undercity##29375 |goto Tirisfal Glades/0 62.42,66.72
step
talk Orc Commoner##19175
accept A Season for Celebration##29400 |goto Orgrimmar/1 51.55,75.16
accept Masked Orphan Matron##11357 |goto Orgrimmar/1 51.44,69.54
step
talk Innkeeper Gryshka##6929
|tip Inside the building.
accept Flexing for Nougat##8359 |goto Orgrimmar/1 53.65,78.77
step
clicknpc Innkeeper Gryshka##6929
|tip Inside the building.
|tip Target Innkeeper Gryshka and type "/flex" into your chat to perform the Flex emote.
'|script DoEmote("FLEX")
Flex for Inkeeper Gryshka |q 8359/1 |goto Orgrimmar/1 53.65,78.77
step
talk Innkeeper Gryshka##6929
|tip Inside the building.
turnin Flexing for Nougat##8359 |goto Orgrimmar/1 53.65,78.77
step
collect Orgrimmar Nougat##20493 |q 8312/1
|tip Save this, you will need it later.
step
click Candy Bucket
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12366 |goto Orgrimmar/1 53.94,78.95
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
talk Edgar Goodwin##54141
|tip Inside the building.
turnin A Friend in Need##29431 |goto Orgrimmar/1 54.40,77.58
accept Missing Heirlooms##29415 |goto Orgrimmar/1 54.40,77.58
step
talk Kali Remik##11814
|tip She patrols around inside this building.
accept Incoming Gumdrop##8358 |goto Orgrimmar/1 32.82,65.15
step
clicknpc Kali Remik##11814
|tip Target Kali Remik and type "/train" into your chat to perform the Train emote.
'|script DoEmote("TRAIN")
Do the "Train" for Kali Remik |q 8358/1 |goto Orgrimmar/1 32.82,65.15
step
talk Kali Remik##11814
turnin Incoming Gumdrop##8358 |goto Orgrimmar/1 32.82,65.15
step
Search the Courier's Cabin |q 29415/1 |goto Durotar/0 57.50,8.99
step
talk Hired Courier##54142
turnin Missing Heirlooms##29415 |goto Durotar/0 57.33,9.01
accept Fencing the Goods##29416 |goto Durotar/0 57.33,9.01
step
talk Auctioneer Drezmit##44866
Select _"Have you seen anyone suspicious trying to sell a crate of objects recently?"_ |gossip 113776
Watch the Dialogue
Follow Thief's Trail |q 29416/1 |goto Orgrimmar/1 54.08,73.35
step
talk Auctioneer Drezmit##44866
turnin Fencing the Goods##29416 |goto Orgrimmar/1 54.08,73.35
accept Shopping Around##29425 |goto Orgrimmar/1 54.08,73.35
step
talk Delian Sunshade##54146
Watch the Dialogue
Investigate Droffers and Son |q 29425/1 |goto Orgrimmar/1 58.05,48.39
step
talk Delian Sunshade##54146
|tip Inside the building.
turnin Shopping Around##29425 |goto Orgrimmar/1 58.05,48.39
accept Taking Precautions##29426 |goto Orgrimmar/1 58.05,48.39
step
talk Kor'geld##3348
|tip Inside the building.
collect 5 Crystal Vial##3371 |q 29426/1 |goto Orgrimmar/1 55.23,45.82
step
click Blood Nettle##209059+
|tip They are only found in the Valley of Wisdom.
collect 5 Blood Nettle##71035 |q 29426/3 |goto Orgrimmar/1 45.88,49.16
step
talk Hagrus##3335
|tip Inside the building.
buy 5 Arcane Powder##17020 |q 29426/2 |goto Orgrimmar/2 44.17,35.66
step
talk Delian Sunshade##54146
|tip Inside the building.
turnin Taking Precautions##29426 |goto Orgrimmar/1 58.05,48.39
accept The Collector's Agent##29427 |goto Orgrimmar/1 58.05,48.39
step
Watch the Dialogue
Disrupt the Meeting |q 29427/1 |goto Tirisfal Glades/0 65.77,74.79
step
click Stolen Crate##209094
turnin The Collector's Agent##29427 |goto Tirisfal Glades/0 65.77,74.81
accept What Now?##29428 |goto Tirisfal Glades/0 65.77,74.81
step
talk Edgar Goodwin##54141
|tip Inside the building.
turnin What Now?##29428 |goto Orgrimmar/1 54.40,77.58
step
click Edgar's Crate##209095
accept The Creepy Crate##29429 |goto Orgrimmar/1 54.47,77.55
step
talk Masked Orphan Matron##23973
turnin Masked Orphan Matron##11357 |goto Durotar/0 52.57,41.20
step
talk Masked Orphan Matron##23973
accept Let the Fires Come!##12139 |goto Durotar/0 52.57,41.20
accept Fire Training##11361 |goto Durotar/0 52.57,41.20
step
click Water Barrel |goto Durotar/0 52.54,41.30
|tip Click the Water Barrel to pick up a bucket of water.
collect Water Bucket##32971 |n
use the Water Bucket##32971
|tip Throw the buckets at the fires on top of buildings around this area.
Put Out #5# Fires |q 11361/1 |goto Durotar/0 52.39,42.48 |only if haveq(11361)
Put Out #5# Fires |q 12139/1 |goto Durotar/0 52.39,42.48 |only if haveq(12139)
step
talk Large Jack-O'-Lantern
accept Smash the Pumpkin##12155 |goto Durotar/0 52.64,42.41
|tip This will only be available after the Headless Horseman is defeated.
|tip You can skip this step if it does not drop.
step
talk Masked Orphan Matron##23973
turnin Let the Fires Come!##12139 |goto Durotar/0 52.57,41.20
turnin Fire Training##11361 |goto Durotar/0 52.57,41.20
turnin Smash the Pumpkin##12155 |goto Durotar/0 52.57,41.20 |only if haveq(12155) or completedq(12155)
step
click Candy Bucket
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12361 |goto Durotar/0 51.54,41.58
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
collect Darkspear Gumdrop##20495 |q 8312/2
|tip Save this, you will need it later.
step
talk Innkeeper Pala##6746
|tip Inside the building.
accept Dancing for Marzipan##8360 |goto Thunder Bluff/0 45.81,64.71
step
clicknpc Innkeeper Pala##6746
|tip Inside the building.
|tip Target Innkeeper Pala and type "/dance" into your chat to perform the Dance emote.
'|script DoEmote("DANCE")
Dance for Inkeeper Pala |q 8360/1 |goto Thunder Bluff/0 45.81,64.71
step
talk Innkeeper Pala##6746
|tip Inside the building.
turnin Dancing for Marzipan##8360 |goto Thunder Bluff/0 45.81,64.71
step
collect Thunder Bluff Marzipan##20497 |q 8312/4
|tip Save this, you will need it later.
step
click Candy Bucket
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12367 |goto Thunder Bluff/0 45.60,64.94
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
talk Innkeeper Norman##6741
accept Chicken Clucking for a Mint##8354 |goto Undercity/0 67.73,37.88
step
clicknpc Innkeeper Norman##6741
|tip Target Innkeeper Norman and type "/chicken" into your chat to perform the Chicken emote.
'|script DoEmote("CHICKEN")
Cluck Like a Chicken for Innkeeper Norman |q 8354/1 |goto Undercity/0 67.73,37.88
step
talk Innkeeper Norman##6741
turnin Chicken Clucking for a Mint##8354 |goto Undercity/0 67.73,37.88
step
collect Undercity Mint##20491 |q 8312/3
|tip Save this, you will need it later.
step
click Candy Bucket
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12368 |goto Undercity/0 67.75,37.41
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
talk Spoops##15309
turnin Hallow's End Treats for Spoops!##8312 |goto Tirisfal Glades/0 62.13,66.44
step
use Dousing Agent##68647
Douse the Alliance's Wickerman |q 29377/1 |goto Elwynn Forest/0 33.38,47.85
|tip You will be flagged for PVP.
step
talk Darkcaller Yanka##15197
turnin A Time to Break Down##29377 |goto Tirisfal Glades/0 62.12,67.83
turnin A Season for Celebration##29400 |goto Tirisfal Glades/0 62.12,67.83
]])
QuestCore:RegisterGuide("Events Guides\\Hallow's End\\Hallow's End Daily Quests",{
expansion="mists",
mopready=true,
description="Put out fires in Razor Hill and kill the Headless Horseman.",
patch='40405',
},[[
step
label "Begin_Dailies"
talk Orc Commoner##19175
accept Masked Orphan Matron##11357 |goto Orgrimmar/1 51.44,69.54
step
Follow the road south |goto Durotar/0 46.34,18.51 < 30 |only if walking
talk Masked Orphan Matron##23973
turnin Masked Orphan Matron##11357 |goto Durotar/0 52.57,41.20
step
talk Masked Orphan Matron##23973
accept Stop the Fires!##11219 |goto Durotar/0 52.57,41.20 |or
accept "Let the Fires Come!"##12139 |goto Durotar/0 52.57,41.20 |or
|tip You will only be able to accept one of these quests.
|tip The quest offered depends on whether Razor Hill is under attack or not.
step
click Water Barrel |goto Durotar/0 52.55,41.30
|tip Click the Water Barrel to pick up a bucket of water.
collect Water Bucket##32971 |n
use the Water Bucket##32971
|tip Throw the buckets at the fires on top of buildings around this area.
Put Out the Fires |q 11219/1 |goto Durotar/0 52.41,42.42
|only if haveq(11219) or completedq(11219)
step
click Water Barrel |goto Durotar/0 52.55,41.30
|tip Click the Water Barrel to pick up a bucket of water.
collect Water Bucket##32971 |n
use the Water Bucket##32971
|tip Throw the buckets at the fires on top of buildings around this area.
Put Out the Fires |q 12139/1 |goto Durotar/0 52.41,42.42
|only if haveq(12139) or completedq(12139)
step
talk Large Jack-O'-Lantern
accept Smash the Pumpkin##12155 |goto Durotar/0 52.64,42.41
|tip This will only be available after the Headless Horseman is defeated.
|tip You can skip this step if it does not drop.
step
talk Masked Orphan Matron##23973
turnin Stop the Fires!##11219 |goto Durotar/0 52.57,41.20 |only if haveq(11219) or completedq(11219) |or
turnin "Let the Fires Come!"##12139 |goto Durotar/0 52.57,41.20 |only if haveq(12139) or completedq(12139) |or
turnin Smash the Pumpkin##12155 |goto Durotar/0 52.57,41.20 |only if haveq(12155) or completedq(12155)
step
Reach Level 75 |ding 75 |or
|tip You must be at least level 75 to be able to kill the Headless Horseman.
|tip Use the Leveling guides to accomplish this.
'|complete not completedq(11219,12139,11405) |next "Begin_Dailies" |or
step
click Pumpkin Shrine
|tip It's in the courtyard of the Scarlet Monastery Graveyard dungeon.
|tip You will need a full group for this.
accept Call the Headless Horseman##11405 |or
'|complete not completedq(11219,12139,11405) |next "Begin_Dailies" |or
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
'|complete not completedq(11219,12139,11405) |next "Begin_Dailies" |or
step
click Pumpkin Shrine
turnin Call the Headless Horseman##11405 |or
'|complete not completedq(11219,12139,11405) |next "Begin_Dailies" |or
step
You have completed the availble daily quests for Hallow's End
|tip This guide will reset when more become available.
'|complete not completedq(11219,12139,11405) |next "Begin_Dailies" |or
]])
QuestCore:RegisterGuide("Events Guides\\Hallow's End\\Hallow's End Candy Buckets",{
expansion="mists",
mopready=true,
description="Visit innkeeper candy buckets in Eastern Kingdoms, Kalimdor, and Outland "..
"for tasty treats.",
achieveid={971,965,968,967,5835,5838,7602},
patch='40405',
},[[
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12361 |goto Durotar/0 51.54,41.58
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12366 |goto Orgrimmar/2 53.92,78.93
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28992 |goto Azshara/0 57.10,50.16
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12400 |goto Winterspring/0 59.83,51.21
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28999 |goto Mount Hyjal/0 63.05,24.14
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29001 |goto Mount Hyjal/0 42.68,45.71
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29000 |goto Mount Hyjal/0 18.63,37.32
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28994 |goto Felwood/0 44.58,28.98
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28989 |goto Ashenvale/0 13.00,34.10
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28958 |goto Ashenvale/0 38.65,42.34
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28953 |goto Ashenvale/0 50.25,67.27
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12377 |goto Ashenvale/0 73.96,60.60
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29003 |goto The Barrens/0 62.51,16.60
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29002 |goto The Barrens/0 56.21,40.03
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12374 |goto The Barrens/0 49.51,57.91
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29004 |goto Southern Barrens/0 39.29,20.10
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12362 |goto Mulgore/0 46.78,60.41
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12367 |goto Thunder Bluff/0 45.62,64.91
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29009 |goto Stonetalon Mountains/0 66.50,64.19
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12378 |goto Stonetalon Mountains/0 50.39,63.79
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28993 |goto Desolace/0 56.72,50.12
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12381 |goto Desolace/0 24.08,68.29
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28996 |goto Feralas/0 41.45,15.68
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28998 |goto Feralas/0 51.97,47.64
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12386 |goto Feralas/0 74.83,45.14
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12401 |goto Silithus/0 55.47,36.79
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29016 |goto Uldum/0 26.59,7.23
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29017 |goto Uldum/0 54.68,33.01
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29018 |goto Un'Goro Crater/0 55.26,62.11
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29014 |goto Tanaris/0 55.70,60.96
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12399 |goto Tanaris/0 52.56,27.10
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12398 |goto Dustwallow Marsh/0 41.86,74.09
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12383 |goto Dustwallow Marsh/0 36.78,32.43
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29005 |goto Southern Barrens/0 40.70,69.31
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12396 |goto The Barrens/0 67.33,74.66
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12397 |goto The Cape of Stranglethorn/0 40.91,73.73
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28969 |goto The Cape of Stranglethorn/0 35.04,27.22
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12382 |goto Northern Stranglethorn/0 37.38,51.78
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28959 |goto Blasted Lands/0 40.47,11.29
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12384 |goto Swamp of Sorrows/0 46.87,56.92
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28967 |goto Swamp of Sorrows/0 71.65,14.09
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
accept Candy Bucket##28957 |goto Badlands/0 18.36,42.73
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28955 |goto Badlands/0 65.86,35.65
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28974 |goto Twilight Highlands/0 45.11,76.81
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28973 |goto Twilight Highlands/0 53.40,42.85
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28976 |goto Twilight Highlands/0 75.40,16.54
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12380 |goto Arathi Highlands/0 69.02,33.27
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12387 |goto The Hinterlands/0 78.19,81.47
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28971 |goto The Hinterlands/0 31.81,57.87
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28987 |goto Western Plaguelands/0 48.28,63.65
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12402 |goto Eastern Plaguelands/0 75.57,52.32
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12373 |goto Ghostlands/0 48.67,31.91
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12365 |goto Eversong Woods/0 43.70,71.03
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12364 |goto Eversong Woods/0 48.19,47.88
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12370 |goto Silvermoon City/0 67.58,72.91
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12369 |goto Silvermoon City/0 79.43,57.66
step
click Candy Bucket##208144
|tip Inside Undercity.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12368 |goto Undercity/0 67.75,37.41
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28966 |goto Silverpine Forest/0 44.30,20.29
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12371 |goto Silverpine Forest/0 46.45,42.90
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12363 |goto Tirisfal Glades/0 60.99,51.41
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28972 |goto Tirisfal Glades/0 83.04,72.06
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12376 |goto Hillsbrad Foothills/0 57.85,47.27
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28962 |goto Hillsbrad Foothills/0 60.26,63.74
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12388 |goto Hellfire Peninsula/0 56.81,37.45
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12389 |goto Hellfire Peninsula/0 26.89,59.47
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12404 |goto Shattrath City/0 56.31,81.95
|only if rep("The Scryers") >= Neutral
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12404 |goto Shattrath City/0 28.23,49.07
|only if rep("The Aldor") >= Neutral
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12391 |goto Terokkar Forest/0 48.74,45.17
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12395 |goto Shadowmoon Valley/0 30.27,27.70
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12409 |goto Shadowmoon Valley/0 56.37,59.82
|only if rep("The Scryers") >= Neutral
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12409 |goto Shadowmoon Valley/0 61.00,28.17
|only if rep("The Aldor") >= Neutral
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12392 |goto Nagrand/0 56.68,34.48
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12390 |goto Zangarmarsh/0 30.62,50.87
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12403 |goto Zangarmarsh/0 78.45,62.88
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12394 |goto Blade's Edge Mountains/0 76.22,60.39
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12393 |goto Blade's Edge Mountains/0 53.43,55.55
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
accept Candy Bucket##13468 |goto Borean Tundra/0 41.71,54.40
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
accept Candy Bucket##13467 |goto Borean Tundra/0 76.67,37.47
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13501 |goto Borean Tundra/0 49.74,9.98
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12950 |goto Sholazar Basin/0 26.61,59.20
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13469 |goto Dragonblight/0 37.83,46.47
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13459 |goto Dragonblight/0 48.12,74.66
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13470 |goto Dragonblight/0 76.82,63.28
step
click Candy Bucket##208144
|tip On the top floor inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13456 |goto Dragonblight/0 60.15,53.45
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13463 |goto Dalaran/1 48.14,41.31
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13474 |goto Dalaran/1 66.84,29.61
step
Enter The Underbelly here |goto Dalaran/1 35.32,45.23
click Candy Bucket##208144
|tip It's in the side room on the left.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13472 |goto Dalaran/1 38.20,59.61
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13461 |goto The Storm Peaks/0 41.07,85.85
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13548 |goto The Storm Peaks/0 37.09,49.51
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13462 |goto The Storm Peaks/0 30.92,37.16
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13471 |goto The Storm Peaks/0 67.65,50.68
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
accept Candy Bucket##12941 |goto Zul'Drak/0 40.87,66.04
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12946 |goto Grizzly Hills/0 20.89,64.77
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12947 |goto Grizzly Hills/0 65.36,47.00
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13464 |goto Howling Fjord/0 49.44,10.75
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13466 |goto Howling Fjord/0 79.26,30.62
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13465 |goto Howling Fjord/0 52.10,66.15
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13452 |goto Howling Fjord/0 25.44,59.82
step
For the last buckets, you will need to level through Cataclysm
|tip Complete the Vashj'ir leveling guide to unlock all of the various areas of that zone.
|tip Complete the beginning of the Deepholm leveling guide to gain access to Deepholm.
|confirm
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28986 |goto Abyssal Depths/0 51.35,60.55
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28984 |goto Shimmering Expanse/0 51.48,62.39
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28982 |goto Shimmering Expanse/0 49.18,41.87
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28981 |goto Kelp'thar Forest/0 63.50,60.16
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29019 |goto Deepholm/0 51.19,49.90
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32050 |goto The Jade Forest/0 28.45,13.27
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
accept Candy Bucket##32029 |goto The Jade Forest/0 48.09,34.62
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
accept Candy Bucket##32031 |goto The Jade Forest/0 55.72,24.41
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
accept Candy Bucket##32028 |goto The Jade Forest/0 28.01,47.39
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32039 |goto Kun-Lai Summit/0 72.73,92.28
step
click Candy Bucket##208144
|tip You {o}must complete{} the {o}Challenge Accepted{} quest to access this candy bucket.	|only if not completedq(30515)
|tip Complete the {o}few quests{} at {o}Binan Village{} nearby.					|only if not completedq(30515)
|tip The {o}quests will lead you{} to Eastwind Rest.						|only if not completedq(30515)
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32040 |goto Kun-Lai Summit/0 62.77,80.50
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
accept Candy Bucket##32026 |goto The Veiled Stair/0 55.10,72.23
step
click Candy Bucket##208144
|tip Upstairs inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32022 |goto Shrine of Two Moons/2 58.84,78.38
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32044 |goto Vale of Eternal Blossoms/0 35.13,77.77
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32046 |goto Valley of the Four Winds/0 19.87,55.79
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
accept Candy Bucket##32036 |goto Krasarang Wilds/0 75.92,6.87
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32047 |goto Krasarang Wilds/0 61.03,25.14
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32034 |goto Krasarang Wilds/0 51.40,77.29
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32020 |goto Krasarang Wilds/0 28.25,50.74
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32023 |goto Dread Wastes/0 55.22,71.19
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32024 |goto Dread Wastes 55.93,32.27
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32043 |goto Townlong Steppes/0 71.11,57.78
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
leechsteps "Events Guides\\Hallow's End\\Achievements\\The Savior of Hallow's End" 1-12
leechsteps "Events Guides\\Hallow's End\\Achievements\\Rotten Hallow" 1-6
leechsteps "Events Guides\\Hallow's End\\Achievements\\G.N.E.R.D. Rage" 1-1
leechsteps "Events Guides\\Hallow's End\\Achievements\\Check Your Head" 1-1
leechsteps "Events Guides\\Hallow's End\\Achievements\\The Masquerade" 1-1
leechsteps "Events Guides\\Hallow's End\\Achievements\\Sinister Calling" 1-3
leechsteps "Events Guides\\Hallow's End\\Achievements\\That Sparkling Smile" 1-2
leechsteps "Events Guides\\Hallow's End\\Hallow's End Candy Buckets" 1-81
step
Earn the "Hallowed Be Thy Name" Achievement |achieve 1656
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
Transform into a Wisp |achieve 283/7
Transform into a Ghost |achieve 283/2
Transform into a Leper Gnome |achieve 283/3
Transform into a Pirate |achieve 283/5
Transform into a Ninja |achieve 283/4
Transform into a Skeleton |achieve 283/6
Transform into a Bat |achieve 283/1
|tip Have other players use Hallowed Wands on you while in a party to transform.
|tip Find someone to team up with or ask around in Dalaran.
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
QuestCore:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\Rotten Hallow",{
expansion="mists",
mopready=true,
startlevel=25,
achieveid={1041},
patch='40405',
condition_suggested=function() return isevent("Hallow's End") end,
description="Ruin Hallow's End for the Alliance and foil their attempts to wreck the Horde celebration by completing the following quests:\n\n"..
"Stinking Up Southshore\nRotten Eggs\nRuined Kegs",
},[[
step
talk Candace Fenlow##53763
accept Stink Bombs Away!##29374 |goto Tirisfal Glades/0 62.42,66.72
accept Clean Up in Undercity##29375 |goto Tirisfal Glades/0 62.42,66.72
step
talk Darkcaller Yanka##15197
accept A Time to Build Up##29376 |goto Tirisfal Glades/0 62.12,67.83
accept A Time to Break Down##29377 |goto Tirisfal Glades/0 62.12,67.83
step
click Bonfire
Use the Bonfire |q 29376/1 |goto Tirisfal Glades/0 62.21,67.96
step
click Wickerman Ashes
Use the Wickerman Ashes |q 29376/2 |goto Tirisfal Glades/0 62.15,68.22
step
talk Darkcaller Yanka##15197
turnin A Time to Build Up##29376 |goto Tirisfal Glades/0 62.12,67.83
step
talk Crina Fenlow##53764
Select _"I'm ready to attack Stormwind!"_ |gossip 113766
Ride a Broom to Stormwind |invehicle |q 29374 |goto Tirisfal Glades/0 62.13,67.03
step
Drop #25# Stink Bombs in Stormwind |q 29374/1 |goto Stormwind City/0 66.88,78.41
|tip You'll fly around automatically.
|tip Target NPCs or Players for credit.
step
Click the Return Button on Your Action Bar |outvehicle |q 29374
step
use the Arcane Cleanser##70727
|tip Use them on the orange clouds within the Undercity.
|tip You will need to search around to find them.
Remove #10# Stink Bombs |q 29375/1 |goto Undercity/0 70.07,50.42
step
talk Candace Fenlow##53763
turnin Stink Bombs Away!##29374 |goto Tirisfal Glades/0 62.42,66.72
turnin Clean Up in Undercity##29375 |goto Tirisfal Glades/0 62.42,66.72
step
use Dousing Agent##68647
Douse the Alliance's Wickerman |q 29377/1 |goto Elwynn Forest/0 33.38,47.85
|tip You will be flagged for PVP.
step
talk Darkcaller Yanka##15197
turnin A Time to Break Down##29377 |goto Tirisfal Glades/0 62.12,67.83
turnin A Season for Celebration##29400 |goto Tirisfal Glades/0 62.12,67.83
step
Earn the "Rotten Hallow" Achievement |achieve 1041
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
talk Orc Commoner##19175
accept Masked Orphan Matron##11357 |goto Orgrimmar/1 51.44,69.54
step
talk Masked Orphan Matron##23973
turnin Masked Orphan Matron##11357 |goto Durotar/0 52.57,41.20
step
talk Masked Orphan Matron##23973
accept Fire Training##11361 |goto Durotar/0 52.57,41.20
|tip You may need to wait for the Horseman's assault to stop.
step
click Water Barrel |goto Durotar/0 52.54,41.30
|tip Click the Water Barrel to pick up a bucket of water.
collect Water Bucket##32971 |n
use the Water Bucket##32971
|tip Throw the buckets at the fires on top of buildings around this area.
Put Out #5# Fires |q 11361/1 |goto Durotar/0 52.39,42.48
step
talk Large Jack-O'-Lantern
accept Smash the Pumpkin##12155 |goto Durotar/0 52.64,42.41
|tip This will only be available after the Headless Horseman is defeated.
|tip You can skip this step if it does not drop.
step
talk Masked Orphan Matron##23973
turnin Fire Training##11361 |goto Durotar/0 52.57,41.20
turnin Smash the Pumpkin##12155 |goto Durotar/0 52.57,41.20 |only if haveq(12155) or completedq(12155)
step
talk Masked Orphan Matron##23973
accept Stop the Fires!##11219 |goto Durotar/0 52.57,41.20 |or
accept "Let the Fires Come!"##12139 |goto Durotar/0 52.57,41.20 |or
|tip You will only be able to accept one of these quests.
|tip The quest offered depends on whether Razor Hill is under attack or not.
step
click Water Barrel |goto Durotar/0 52.55,41.30
|tip Click the Water Barrel to pick up a bucket of water.
collect Water Bucket##32971 |n
use the Water Bucket##32971
|tip Throw the buckets at the fires on top of buildings around this area.
Put Out the Fires |q 11219/1 |goto Durotar/0 52.41,42.42
|only if haveq(11219) or completedq(11219)
step
click Water Barrel |goto Durotar/0 52.55,41.30
|tip Click the Water Barrel to pick up a bucket of water.
collect Water Bucket##32971 |n
use the Water Bucket##32971
|tip Throw the buckets at the fires on top of buildings around this area.
Put Out the Fires |q 12139/1 |goto Durotar/0 52.41,42.42
|only if haveq(12139) or completedq(12139)
step
talk Large Jack-O'-Lantern
accept Smash the Pumpkin##12155 |goto Durotar/0 52.64,42.41
|tip This will only be available after the Headless Horseman is defeated.
|tip You can skip this step if it does not drop.
step
talk Masked Orphan Matron##23973
turnin Stop the Fires!##11219 |goto Durotar/0 52.57,41.20 |only if haveq(11219) or completedq(11219) |or
turnin "Let the Fires Come!"##12139 |goto Durotar/0 52.57,41.20 |only if haveq(12139) or completedq(12139) |or
turnin Smash the Pumpkin##12155 |goto Durotar/0 52.57,41.20 |only if haveq(12155) or completedq(12155)
|only if haveq(11219,12139,12155) or completedq(11219,12139,12155)
step
Earn "The Savior of Hallow's End" Achievement |achieve 289
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
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12366 |goto Orgrimmar/1 54.45,68.63
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
Earn the "Trick or Treat!" Achievement |achieve 972
]])
QuestCore:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\Tricks and Treats of Azeroth",{
expansion="mists",
mopready=true,
startlevel=1,
achieveid={970,963,966,969},
patch='40405',
condition_suggested=function() return isevent("Hallow's End") end,
description="To earn this achievement, you will visit the various candy buckets around Eastern "..
"Kingdoms, Kalimdor, and Outland.",
},[[
leechsteps "Events Guides\\Hallow's End\\Hallow's End Candy Buckets"
step
Earn the "Tricks and Treats of Azeroth" Achievement |achieve 970
]])
QuestCore:RegisterGuide("Events Guides\\Harvest Festival\\Harvest Festival Quest",{
expansion="mists",
mopready=true,
condition_end=function() return completedq(8150) end,
description="Complete the quest \"Honoring a Hero\" for the Harvest Festival event.",
},[[
step
Reach Level 30 |ding 30
|tip You must be at least level 30 to be able to accept the quest.
|tip Use the Leveling guides to accomplish this.
step
talk Javnir Nashak##15012
accept Honoring a Hero##8150 |goto Durotar/0 46.25,15.10
step
use Grom's Tribute##19851
Place a Tribute at Grom's Monument |q 8150/1 |goto Ashenvale/0 82.85,79.04
step
talk Javnir Nashak##15012
turnin Honoring a Hero##8150 |goto Durotar/0 46.25,15.10
]])
QuestCore:RegisterGuide("Events Guides\\Feast of Winter Veil\\Feast of Winter Veil Quests",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Feast of Winter Veil') and not completedq(6984) end,
description="This guide section will walk you through completing the quests for the Feast of Winter Veil event.",
},[[
step
Reach Level 40 |ding 40
|tip You can skip this step and proceed, but several quests require level 30 to level 40.
|tip All quests in this guide require a minimum of level 10 to accept.
step
talk Innkeeper Gryshka##6929
|tip Inside the building.
buy 1 Ice Cold Milk##1179 |goto Orgrimmar/1 53.65,78.77 |q 6962 |future
step
talk Kaymard Copperpinch##13418
accept Great-father Winter is Here!##6961 |goto Orgrimmar/1 52.54,77.04
step
talk Great-father Winter##13445
turnin Great-father Winter is Here!##6961 |goto Orgrimmar/1 49.63,78.00
accept Treats for Great-father Winter##6962 |goto Orgrimmar/1 49.63,78.00
step
talk Furmund##9550
accept The Reason for the Season##6964 |goto Orgrimmar/1 51.03,71.00
step
talk Arugi##46709
|tip She walks around inside the building.
Train Cooking |skillmax Cooking,1 |goto Orgrimmar/1 56.17,61.67
step
talk Sagorne Creststrider##13417
turnin The Reason for the Season##6964 |goto Orgrimmar/1 39.54,47.32
accept The Feast of Winter Veil##7061 |goto Orgrimmar/1 39.54,47.32
step
talk Penney Copperpinch##13420
buy 1 Recipe: Gingerbread Cookie##17200 |goto Orgrimmar/1 52.69,77.28 |q 6962 |only if not knowsrecipe(21143)
buy 5 Holiday Spices##17194 |goto Orgrimmar/1 52.69,77.28 |q 6962
step
use the Recipe: Gingerbread Cookie##17200
learn Gingerbread Cookie##21143
step
talk Auctioneer Drezmit##44866
|tip Inside the building.
buy 5 Small Egg##6889 |goto Orgrimmar/1 54.08,73.34 |next "Cook_Gingerbread_Cookies" |q 6962 |or
_Or_
Click Here to Farm Them |confirm |next "Farm_Small_Eggs" |or
step
label "Farm_Small_Eggs"
Kill Dragonhawk enemies around this area
collect 5 Small Egg##6889 |goto Eversong Woods/0 43.41,56.60 |q 6962
step
label "Cook_Gingerbread_Cookies"
cast Basic Campfire##818
|tip Stand next to your fire or a Bonfire in Orgrimmar.
create 5 Gingerbread Cookie##21143,Cooking,5 total |q 6962/1 |goto Orgrimmar/1 49.88,77.99
step
talk Great-father Winter##13445
turnin Treats for Great-father Winter##6962 |goto Orgrimmar/1 49.63,78.00
step
talk Baine Bloodhoof##36648
|tip Inside the building.
turnin The Feast of Winter Veil##7061 |goto Thunder Bluff/0 60.25,51.67
step
ding 80
|tip You will also need 300 cooking skill for one quest.
|tip It will not be shown if you do not meet the skill requirement.
step
talk Strange Snowman##13636
accept You're a Mean One...##6983 |goto Hillsbrad Foothills/0 42.35,41.14
step
kill The Abominable Greench##54499
|tip This is a boss and will require a group.
collect Stolen Treats##17662 |q 6983/2 |goto Hillsbrad Foothills/0 43.56,39.13
step
Free Metzen the Reindeer |q 6983/1 |goto Hillsbrad Foothills/0 44.12,38.56
|tip Metzen will run free shortly after killing the Greench.
step
talk Kaymard Copperpinch##13418
turnin You're a Mean One...##6983 |goto Orgrimmar/1 52.54,77.04
step
talk Kaymard Copperpinch##13418
|tip These should be available after completing You're a Mean One...
accept A Smokywood Pastures' Thank You!##6984 |goto Orgrimmar/1 52.54,77.04
accept The Hero of the Day##8799 |goto Orgrimmar/1 52.54,77.04 |only if skill("Cooking") >= 300
step
talk Great-father Winter##13445
turnin A Smokywood Pastures' Thank You!##6984 |goto Orgrimmar/1 49.63,78.00
stickystart "Collect_5_Gold"
step
kill Lesser Rock Elemental##2735+
collect 1 Deeprock Salt##8150 |q 8799/1 |goto Badlands/0 17.08,31.80
|tip You can also purchase this item from the auction house.
You can find more around [Badlands/0 41.00,69.12]
|only if haveq(8799) or completedq(8799)
step
label "Collect_5_Gold"
Collect 5 Gold |complete _G.GetMoney() >= 50000 |q 8799 |future
|only if haveq(8799) or completedq(8799)
step
click Holly Preserver##180715
turnin The Hero of the Day##8799 |goto Orgrimmar/1 53.02,76.92
|only if haveq(8799) or completedq(8799)
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
Complete the "Feast of Winter Veil Quests" guide |complete completedq(6984) |only if level >= 15
Complete the "Feast of Winter Veil Quests" guide |complete completedq(7061) |only if default
step
talk Auctioneer Drezmit##44866
|tip Inside the building.
buy 1 Red Winter Clothes##44958 |goto Orgrimmar/1 54.08,73.34 |next "Collect_Winter_Boots" |or
buy 1 Green Winter Clothes##34087 |goto Orgrimmar/1 54.08,73.34 |next "Collect_Winter_Boots" |or
|tip You only need one of these.
_Or_ |only if skill("Tailoring") >= 250
Click Here to Craft Clothes with Tailoring |confirm |next "Craft_Winter_Clothes" |only if skill("Tailoring") >= 250 |or
'|complete achieved(277) |or
step
label "Craft_Winter_Clothes"
talk Penney Copperpinch##13420
buy 1 Pattern: Green Winter Clothes##34261 |goto Orgrimmar/1 52.68,77.29 |or
'|complete achieved(277) |or
step
use the Pattern: Green Winter Clothes##34261
learn Green Winter Clothes##44950 |or
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
talk Shimra##5817
|tip Inside the building.
buy 1 Rune Thread##14341 |goto Orgrimmar/1 47.90,80.36
buy 2 Green Dye##2605 |goto Orgrimmar/1 47.90,80.36
'|complete achieved(277) |or
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
talk Auctioneer Drezmit##44866
|tip Inside the building.
buy 1 Winter Boots##34086 |goto Orgrimmar/1 54.08,73.34 |next "Collect_Winter_Hat" |or |achieve 277 |future
_Or_ |only if skill("Leatherworking") >= 285
Click Here to Craft Boots with Leatherworking |confirm |next "Create_Winter_Boots" |only if skill("Leatherworking") >= 285
step
label "Create_Winter_Boots"
talk Penney Copperpinch##13420
buy Pattern: Winter Boots##34262 |goto Orgrimmar/1 52.68,77.29 |or
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
Collect a Winter Hat |complete itemcount(21525) >=1 or itemcount(21524) >= 1 |goto The Nexus/1 |or
'|complete achieved(277) |or
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
use the Red Winter Clothes##44958
Equip the Red Winter Clothes |equipped Red Winter Clothes##44958
|only if itemcount(44958) >= 1
step
use the Green Winter Clothes##34087
Equip the Green Winter Clothes |equipped Green Winter Clothes##34087
|only if itemcount(34087) >= 1
step
use the Winter Boots##34086
Equip the Winter Boots |equipped Winter Boots##34086
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
achieveid={1691},
patch='30003',
description="During the Feast of Winter Veil, use your Winter Veil Disguise kit to become a "..
"snowman and then dance with another snowman in Dalaran.",
},[[
step
Reach Level 80 |ding 80
step
Complete the "Feast of Winter Veil Quests" Guide |complete completedq(6984)
step
collect 1 Winter Veil Disguise Kit##17712 |or
|tip This should appear in your mailbox within 24 hours of completing the quest guide.
'|complete achieved(1690) |or
step
talk Penney Copperpinch##13420
buy 1 Snowball##17202 |goto Orgrimmar/1 52.68,77.29 |or
'|complete achieved(1690) |or
step
use the Winter Veil Disguise Kit##17712
|tip Use it near another snowman because it will root you.
|tip You may have to search around Dalaran.
Become a Snowman |complete hasbuff(21848) or achieved(1690) |goto Dalaran/1 49.59,29.04
step
|script DoEmote("DANCE")
Dance with Another Snowman |achieve 1690
|tip Target another snowman player.
]])
QuestCore:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\BB King",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(4437) end,
achieveid={4437},
patch='30300',
description="Pelt the following enemy leaders:\n\nAnduin Wrynn\nKing Magni Bronzebeard\n"..
"Prophet Velen\nTyrande Whisperwind\nHigh Tinker Mekkatorque",
},[[
step
click A Winter Veil Gift
|tip You can only open a present from December 25 to January 2.
accept A Winter Veil Gift##13966 |goto Orgrimmar/1 52.12,69.09
step
use Winter Veil Gift##46740
collect 1 Red Rider Air Rifle##46725 |or
|tip You can only open a present from December 25 to January 2.
'|complete achieved(4437) |or
step
Enter the building |goto Stormwind City/0 80.66,37.92 < 10 |walk
clicknpc King Varian Wrynn##29611
use the Red Rider Air Rifle##46725
|tip Use it on Varian Wrynn inside the building.
Use your Red Rider Air Rifle on Varian Wrynn |achieve 4437/4 |goto Stormwind City/0 85.77,31.72
step
Enter the building |goto Ironforge/0 44.38,49.72 < 10 |walk
clicknpc Muradin Bronzebeard##42928
use the Red Rider Air Rifle##46725
|tip Use it on Muradin Bronzebeard inside the building.
Use your Red Rider Air Rifle on Muradin Bronzebeard |achieve 4437/3 |goto Ironforge/0 39.18,56.07
step
Enter the building |goto Darnassus/0 43.02,74.76 < 10 |walk
clicknpc Tyrande Whisperwind##7999
use the Red Rider Air Rifle##46725
|tip Use it on Tyrande Whisperwind upstairs inside the building.
Use your Red Rider Air Rifle on Tyrande Whisperwind |achieve 4437/2 |goto Darnassus/0 43.01,78.08
step
clicknpc Prophet Velen##17468
use the Red Rider Air Rifle##46725
|tip Use it on Prophet Velen in The Vault of the Lights in The Exodar.
Use your Red Rider Air Rifle on Prophet Velen |achieve 4437/1 |goto The Exodar/0 32.84,54.48
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
buy 1 Blue Crashin' Thrashin' Racer Controller##54343 |goto Dalaran/1 48.93,30.04 |or
'|complete achieved(1295) |or
step
use the Blue Crashin' Thrashin' Racer Controller##54343
|tip Use the "Racer Rocket Slam" ability on other players' race controllers.
|tip You will likely need to search for them.
|tip Having a friend to do this with helps.
Gain #25# Crashes with your Racer |achieve 1295 |goto Orgrimmar/1 51.34,78.74
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
Collect a Fresh Holly or Preserved Holly |complete itemcount(21212) >= 1 or itemcount(21212) >= 1 |achieve 1282 |future
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
|achieve 1689 |goto Orgrimmar/1 52.12,69.09
]])
QuestCore:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\Holiday Bromance",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(1685) end,
achieveid={1685},
patch='30002',
description="Use Mistletoe on the three Horde \"Brothers\" during the Feast of Winter Veil.",
},[[
step
Kiss a Winter Reveler |script DoEmote("KISS")
|tip Emote kiss Winter Revelers for a chance at Mistletoe.
|tip They can be found in capital cities around inns.
|tip You can only get a reward from them once per hour.
|tip You may need to do this multiple times before proceeding.
collect 8 Mistletoe##21519 |achieve 1685 |future
step
use the Mistletoe##21519
|tip Use it on Brother Malach.
|tip He is located in the War Quarter of Undercity.
Use Mistletoe on Brother Malach |achieve 1685/1 |goto Undercity/0 50.87,21.70 |achieve 1685 |future
step
use the Mistletoe##21519
|tip Use it on Durkot Wolfbrother.
|tip Downstairs in the stables of Warsong Hold.
Use Mistletoe on Durkot Wolfbrother |achieve 1685/2 |goto Borean Tundra/0 40.25,55.05 |achieve 1685 |future
step
_Find Orgrim's Hammer flying around in the sky_
|tip On your world map, it looks like a ship icon with 2 long reddish ballons on either side of it.
use the Mistletoe##21519
|tip Use it on Brother Keltan.
|tip He is a Blood Elf with gray hair walking around Orgrim's Hammer.
Use Mistletoe on Brother Keltan |achieve 1685/3 |goto Icecrown/0 61.98,45.38 |achieve 1685 |future
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
collect 10 Handful of Snowflakes##34191 |goto Orgrimmar/1 54.55,77.89 |or
'|complete achieved(1687) |or
step
Use a Handful of Snowflakes on the following race/class combinations:
use the Handful of Snowflakes##34191
|tip Use one on each of the races below.
Blood Elf Warlock |achieve 1687/10 |goto Orgrimmar/1 51.12,78.52
Draenei Priest |achieve 1687/1 |goto Orgrimmar/1 51.12,78.52
Dwarf Paladin |achieve 1687/6 |goto Orgrimmar/1 51.12,78.52
Gnome Mage |achieve 1687/7 |goto Orgrimmar/1 51.12,78.52
Human Warrior |achieve 1687/3 |goto Orgrimmar/1 51.12,78.52
Night Elf Druid |achieve 1687/8 |goto Orgrimmar/1 51.12,78.52
Orc Death Knight |achieve 1687/4 |goto Orgrimmar/1 51.12,78.52
Tauren Shaman |achieve 1687/9 |goto Orgrimmar/1 51.12,78.52
Troll Hunter |achieve 1687/2 |goto Orgrimmar/1 51.12,78.52
Undead Rogue |achieve 1687/5 |goto Orgrimmar/1 51.12,78.52
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
talk Kaymard Copperpinch##13418
accept Metzen the Reindeer##8746 |goto Orgrimmar/1 52.54,77.04
step
use the Smokywood Satchel##21315
Open the Smokywood Satchel |complete itemcount(21315) == 0
|only if haveq(8746) or completedq(8746)
step
clicknpc Metzen the Reindeer##15664
Choose _"Sprinkle some of the reindeer dust onto Metzen."_
Free Metzen the Reindeer |q 8746/1 |goto Searing Gorge/0 68.76,34.23
|only if haveq(8746) or completedq(8746)
step
talk Kaymard Copperpinch##13418
turnin Metzen the Reindeer##8746 |goto Orgrimmar/1 52.54,77.04
]])
QuestCore:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\Scrooge",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(259) end,
achieveid={259},
patch='30001',
description="Throw a snowball at Baine Bloodhoof during the Feast of Winter Veil.",
},[[
step
talk Penney Copperpinch##13420
buy 1 Snowball##17202 |goto Orgrimmar/1 52.68,77.29 |or
'|complete achieved(259) |or
step
clicknpc Baine Bloodhoof##36648
use the Snowball##17202
|tip Use it on Baine Bloodhoof.
Throw a Snowball at Baine Bloodhoof |achieve 259 |goto Thunder Bluff/0 60.25,51.67
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
accept You're a Mean One...##6983 |goto Hillsbrad Foothills/0 42.35,41.14
step
kill The Abominable Greench##54499
|tip This is a boss and will require a group.
collect Stolen Treats##17662 |q 6983/2 |goto Hillsbrad Foothills/0 43.56,39.13
step
Free Metzen the Reindeer |q 6983/1 |goto Hillsbrad Foothills/0 44.12,38.56
|tip Metzen will run free shortly after killing the Greench.
step
talk Kaymard Copperpinch##13418
turnin You're a Mean One...##6983 |goto Orgrimmar/1 52.54,77.04
step
talk Kaymard Copperpinch##13418
accept A Smokywood Pastures' Thank You!##6984 |goto Orgrimmar/1 52.54,77.04
|tip This should be available after completing You're a Mean One...
step
talk Great-father Winter##13445
turnin A Smokywood Pastures' Thank You!##6984 |goto Orgrimmar/1 49.63,78.00
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
talk Innkeeper Gryshka##6929
|tip Inside the building.
buy 1 Ice Cold Milk##1179 |goto Orgrimmar/1 53.65,78.77 |or
'|complete achieved(1688) |or
step
talk Kaymard Copperpinch##13418
buy 1 Sparkling Apple Cider##34412 |goto Orgrimmar/1 52.54,77.04 |achieve 1688
step
talk Penney Copperpinch##13420
buy 1 Recipe: Winter Veil Egg Nog##17201 |goto Orgrimmar/1 52.68,77.29
buy 1 Recipe: Hot Apple Cider##34413 |goto Orgrimmar/1 52.68,77.29
buy 1 Recipe: Gingerbread Cookie##17200 |goto Orgrimmar/1 52.68,77.29
buy 3 Holiday Spices##17194 |goto Orgrimmar/1 52.68,77.29
buy 2 Holiday Spirits##17196 |goto Orgrimmar/1 52.68,77.29
'|complete achieved(1688) |or
step
talk Auctioneer Drezmit##44866
|tip Inside the building.
buy 2 Small Egg##6889 |goto Orgrimmar/1 54.08,73.34 |next "Learn_Hot_Apple_Cider" |or
_Or_
Click Here to Farm Them |confirm |next "Farm_Small_Eggs" |or
'|complete achieved(1688) |or
step
label "Farm_Small_Eggs"
Kill Dragonhawk enemies around this area
collect 2 Small Egg##6889 |goto Eversong Woods/0 43.41,56.60 |or
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
|tip Stand next to your fire or a brazier in Orgrimmar.
create 1 Gingerbread Cookie##21143,Cooking,1 total |achieve 1688/1 |goto Orgrimmar/1 51.36,78.30
step
cast Basic Campfire##818
|tip Stand next to your fire or a brazier in Orgrimmar.
create 1 Egg Nog##21144,Cooking,1 total |achieve 1688/2 |goto Orgrimmar/1 51.36,78.30
step
cast Basic Campfire##818
|tip Stand next to your fire or a brazier in Orgrimmar.
create 1 Hot Apple Cider##45022,Cooking,1 total |achieve 1688/3 |goto Orgrimmar/1 51.36,78.30
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
Become a Little Helper |havebuff texture:135849 |goto Orgrimmar/1 50.25,62.15 |or
|tip Step on the blue pad.
'|complete achieved(252) |or
step
Kill enemies in PvP combat
|tip Queue up for PvP Battlegrounds and kill enemy players.
Earn #50# PvP Kills as a Little Helper |achieve 252 |or
'|nobuff texture:135849 |next "Become_A_Little_Helper" |or |only if not achieved(252)
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
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(5854) end,
achieveid={5854},
patch='40001',
description="Use your Gaudy Winter Veil Sweater to carol in enemy capital cities during the Feast of Winter Veil.",
},[[
step
collect Gaudy Winter Veil Sweater##70923
|tip Gifts under the tree on or after December 25th award this item.
|tip You will need it to carol in capital cities.
step
use the Gaudy Winter Veil Sweater##70923
Carol in Darnassus |achieve 5854/4 |goto Darnassus/0 32.72,49.24
|tip This is an enemy capital city and has hostile NPCs and players.
step
use the Gaudy Winter Veil Sweater##70923
Carol in The Exodar |achieve 5854/2 |goto The Exodar/0 73.34,36.51
|tip This is an enemy capital city and has hostile NPCs and players.
step
use the Gaudy Winter Veil Sweater##70923
Carol in Ironforge |achieve 5854/1 |goto Ironforge/0 29.83,82.21
|tip This is an enemy capital city and has hostile NPCs and players.
step
use the Gaudy Winter Veil Sweater##70923
Carol in Stormwind City |achieve 5854/3 |goto Stormwind City/0 67.77,80.07
|tip This is an enemy capital city and has hostile NPCs and players.
]])
QuestCore:RegisterGuide("Events Guides\\Love is in the Air\\Love is in the Air Main Questline",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Love is in the Air') and not completedq(24576) end,
description="This guide will walk you through completing the main questline for the Love is in the Air event.",
},[[
step
talk Detective Snap Snagglebolt##37172
accept Something Stinks##24536 |goto Orgrimmar/1 50.82,75.25
step
clicknpc Orgrimmar Grunt##3296+
|tip Look for Orgrimmar Grunts that have the Heavily Perfumed buff.
|tip They look like Orgrimmar Grunts with a glowing purple aura around them all over Orgrimmar.
use Snagglebolt's Air Analyzer##50131
|tip Use it on Orgrimmar Grunts around this area.
Analyze #6# Perfumed Guards |q 24536/1 |goto Orgrimmar/1 51.52,74.03
step
talk Detective Snap Snagglebolt##37172
turnin Something Stinks##24536 |goto Orgrimmar/1 50.82,75.25
accept Pilfering Perfume##24541 |goto Orgrimmar/1 50.82,75.25
step
label "Gain_Crown_Parcel_Service_Uniform_Buff"
talk Detective Snap Snagglebolt##37172
Tell him  _"I need another disguise."_
Gain the "Crown Parcel Service Uniform" Buff |havebuff Crown Parcel Service Uniform##71450 |goto Orgrimmar/1 50.82,75.25 |or
'|complete completedq(24541) |or
step
Return the Crown Chemical Co. Package |complete readyq(24541) or completedq(24541) |goto Durotar/0 47.70,11.81 |or |or
|tip Quickly run by the boxes to get the package.
|tip A crate will appear on your back.
|tip You have to move quickly before your disguise wears off or you drop the package.
|tip Simply walk next to Detective Snap Snagglebolt to return the package to him.
Return it to Snagglebolt at [Orgrimmar/1 50.82,75.25]
'|complete not hasbuff(71450) and not readyq(24541) and not completedq(24541) |next "Gain_Crown_Parcel_Service_Uniform_Buff" |or
step
talk Detective Snap Snagglebolt##37172
turnin Pilfering Perfume##24541 |goto Orgrimmar/1 50.82,75.25
accept Snivel's Sweetheart##24850 |goto Orgrimmar/1 50.82,75.25
step
talk Roka##38328
|tip Inside the building.
turnin Snivel's Sweetheart##24850 |goto Orgrimmar/1 57.60,60.85
accept Hot On The Trail##24851 |goto Orgrimmar/1 57.60,60.85
step
Watch the dialogue
|tip Inside the building.
Search the Orgrimmar Auction House |q 24851/2 |goto Orgrimmar/1 52.92,74.81
step
Watch the dialogue
|tip Inside the building.
Search the Orgrimmar Bank |q 24851/1 |goto Orgrimmar/1 49.23,82.14
step
Watch the dialogue
|tip Inside the building down in the Cleft of Shadow.
Search the Orgrimmar Barber Shop |q 24851/3 |goto Orgrimmar/1 40.34,60.60
step
talk Roka##38328
|tip Inside the building.
turnin Hot On The Trail##24851 |goto Orgrimmar/1 57.60,60.85
accept A Friendly Chat...##24576 |goto Orgrimmar/1 57.60,60.85
step
Ride the elevator up |goto Orgrimmar/1 51.59,62.64 < 20 |only if walking
talk Snivel Rustrocket##37715
|tip Near the zeppelin tower.
Select _"I have a rocket here with your mark on it, Snivel."_
collect 1 Snivel's Ledger##49915 |q 24576/1 |goto Orgrimmar/1 51.64,56.78
step
talk Detective Snap Snagglebolt##37172
turnin A Friendly Chat...##24576 |goto Orgrimmar/1 50.82,75.25
]])
QuestCore:RegisterGuide("Events Guides\\Love is in the Air\\Love is in the Air Dailies",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Love is in the Air') and completedq(24576) and not completedq(44546,24629,24635,24636,24612,44559,24614,24613,24615) end,
description="This guide will walk you through completing the Love is in the Air event daily quests.",
},[[
step
label "Complete_Leveling_Guide"
Complete the "Love is in the Air Main Questline" guide before using this guide |complete completedq(24576)
step
talk Detective Snap Snagglebolt##37172
accept Crushing the Crown##24638 |goto Orgrimmar/1 50.82,75.25 |only if level >= 5 and level <= 13
accept Crushing the Crown##24645 |goto Orgrimmar/1 50.82,75.25 |only if level >= 14 and level <= 22
accept Crushing the Crown##24647 |goto Orgrimmar/1 50.82,75.25 |only if level >= 23 and level <= 31
accept Crushing the Crown##24648 |goto Orgrimmar/1 50.82,75.25 |only if level >= 32 and level <= 40
accept Crushing the Crown##24649 |goto Orgrimmar/1 50.82,75.25 |only if level >= 41 and level <= 50
accept Crushing the Crown##24650 |goto Orgrimmar/1 50.82,75.25 |only if level >= 51 and level <= 60
accept Crushing the Crown##24651 |goto Orgrimmar/1 50.82,75.25 |only if level >= 61 and level <= 70
accept Crushing the Crown##24652 |goto Orgrimmar/1 50.82,75.25 |only if level >= 71 and level <= 80
accept Crushing the Crown##28935 |goto Orgrimmar/1 50.82,75.25 |only if level <= 81
accept Man on the Inside##24793 |goto Orgrimmar/1 50.82,75.25 |only if Level == 80
step
talk Public Relations Agent##37675
accept A Perfect Puff of Perfume##24629 |goto Orgrimmar/1 52.96,77.13 |or
accept A Cloudlet of Classy Cologne##24635 |goto Orgrimmar/1 52.96,77.13 |or
accept Bonbon Blitz##24636 |goto Orgrimmar/1 52.96,77.13 |or
|tip You will only be able to accept one of these quests.
step
talk Kwee Q. Peddlefeet##38042
accept A Gift for the Warchief's Advisor##24612 |goto Orgrimmar/1 52.95,76.86
step
use the Crown Cologne Sprayer##49669
|tip Use it on NPCs and other players without a red heart over their head.
|tip You can do this anywhere in Orgrimmar.
Give #10# Cologne Samples |q 24635/1 |goto Orgrimmar/1 51.04,72.11
|only if haveq(24635)
step
talk Kwee Q. Peddlefeet##38042
Select _"I'd like a Lovely Charm Collector's Kit."_
collect 1 Lovely Charm Collector's Kit##49661 |goto Orgrimmar/1 53.68,66.89
step
use the Crown Perfume Sprayer##49668
|tip Use it on NPCs and other players without a red heart over their head.
|tip You can do this anywhere in Orgrimmar.
Give #10# Perfume Samples |q 24629/1 |goto Orgrimmar/1 51.04,72.11
|only if haveq(24629)
step
use the Crown Chocolate Sampler##49670
|tip Use it on NPCs and other players without a red heart over their head.
|tip You can do this anywhere in Orgrimmar.
Give #10# Chocolate Samples |q 24636/1 |goto Orgrimmar/1 51.04,72.11
|only if haveq(24636)
stickystart "Kill_Crown_Lackeys"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24638/1 |goto Durotar/0 40.25,15.32
|only if haveq(24638) or completedq(24638)
step
label "Kill_Crown_Lackeys"
kill 5 Crown Lackey##37214 |q 24638/2 |goto Durotar/0 40.25,15.32
|only if haveq(24638) or completedq(24638)
stickystart "Kill_Crown_Thugs"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24645/1 |goto Silverpine Forest/0 54.64,61.19
|only if haveq(24645) or completedq(24645)
step
label "Kill_Crown_Thugs"
kill 5 Crown Thug##37917 |q 24645/2 |goto Silverpine Forest/0 54.64,61.19
|only if haveq(24645) or completedq(24645)
stickystart "Kill_Crown_Dusters"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24647/1 |goto Duskwood/0 75.82,55.52
|only if haveq(24647) or completedq(24647)
step
label "Kill_Crown_Dusters"
kill 5 Crown Duster##37984 |q 24647/2 |goto Duskwood/0 75.82,55.52
|only if haveq(24647) or completedq(24647)
stickystart "Kill_Crown_Hoodlums"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24648/1 |goto Dustwallow Marsh/0 60.56,38.14
|only if haveq(24648) or completedq(24648)
step
label "Kill_Crown_Hoodlums"
kill 5 Crown Hoodlum##38006 |q 24648/2 |goto Dustwallow Marsh/0 60.71,38.20
|only if haveq(24648) or completedq(24648)
stickystart "Kill_Crown_Agents"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24649/1 |goto The Hinterlands/0 23.30,53.66
|only if haveq(24649) or completedq(24649)
step
label "Kill_Crown_Agents"
kill 5 Crown Agent##38016 |q 24649/2 |goto The Hinterlands/0 23.30,53.66
|only if haveq(24649) or completedq(24649)
stickystart "Kill_Crown_Sprinklers"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24650/1 |goto Winterspring/0 63.34,49.83
|only if haveq(24650) or completedq(24650)
step
label "Kill_Crown_Sprinklers"
kill 5 Crown Sprinkler##38023 |q 24650/2 |goto Winterspring/0 63.34,49.83
|only if haveq(24650) or completedq(24650)
stickystart "Kill_Crown_Underlings"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24651/1 |goto Terokkar Forest/0 41.45,22.49
|only if haveq(24651) or completedq(24651)
step
label "Kill_Crown_Underlings"
kill 5 Crown Underling##38030 |q 24651/2 |goto Terokkar Forest/0 41.45,22.49
|only if haveq(24651) or completedq(24651)
stickystart "Kill_Crown_Sprayers"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24652/1 |goto Crystalsong Forest/0 50.55,50.06
|only if haveq(24652) or completedq(24652)
step
label "Kill_Crown_Sprayers"
kill 5 Crown Sprayer##38032 |q 24652/2 |goto Crystalsong Forest/0 50.55,50.06
|only if haveq(24652) or completedq(24652)
stickystart "Kill_Crown_Technician"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 28935/1 |goto Uldum/0 66.88,19.33
|only if haveq(28935) or completedq(28935)
step
label "Kill_Crown_Technician"
kill 5 Crown Technician##51613 |q 28935/2 |goto Uldum/0 66.88,19.33
|only if haveq(28935) or completedq(28935)
step
Kill enemies that yield experience
|tip Any enemy that is green, yellow, or red difficulty will drop charms.
|tip You can kill enemies in dungeons or the open-world zone of your choice.
collect 40 Lovely Charm##49655 |q 24615 |future
|tip You will need 4 bracelets total.
step
use the Lovely Charm##49655
collect 4 Lovely Charm Bracelet##49916 |q 24615 |future
|tip Keep the extras for later.
step
talk Detective Snap Snagglebolt##37172
turnin Crushing the Crown##24638 |goto Orgrimmar/1 50.82,75.25 |only if haveq(24638) or completedq(24638)
turnin Crushing the Crown##24645 |goto Orgrimmar/1 50.82,75.25 |only if haveq(24645) or completedq(24645)
turnin Crushing the Crown##24647 |goto Orgrimmar/1 50.82,75.25 |only if haveq(24647) or completedq(24647)
turnin Crushing the Crown##24648 |goto Orgrimmar/1 50.82,75.25 |only if haveq(24648) or completedq(24648)
turnin Crushing the Crown##24649 |goto Orgrimmar/1 50.82,75.25 |only if haveq(24649) or completedq(24649)
turnin Crushing the Crown##24650 |goto Orgrimmar/1 50.82,75.25 |only if haveq(24650) or completedq(24650)
turnin Crushing the Crown##24651 |goto Orgrimmar/1 50.82,75.25 |only if haveq(24651) or completedq(24651)
turnin Crushing the Crown##24652 |goto Orgrimmar/1 50.82,75.25 |only if haveq(24652) or completedq(24652)
turnin Crushing the Crown##28935 |goto Orgrimmar/1 50.82,75.25 |only if haveq(28935) or completedq(28935)
|only if haveq(24638,24645,24647,24648,24649,24650,24651,24652,28935) or completedq(24638,24645,24647,24648,24649,24650,24651,24652,28935)
step
talk Public Relations Agent##37675
turnin A Perfect Puff of Perfume##24629 |goto Orgrimmar/1 52.96,77.13 |only if haveq(24629) or completedq(24629)
turnin A Cloudlet of Classy Cologne##24635 |goto Orgrimmar/1 52.96,77.13 |only if haveq(24635) or completedq(24635)
turnin Bonbon Blitz##24636 |goto Orgrimmar/1 52.96,77.13 |only if haveq(24636) or completedq(24636)
|only if haveq(24629,24635,24636) or completedq(24629,24635,24636)
step
Enter the building |goto Orgrimmar/1 49.92,75.57 < 10 |walk
talk Garrosh Hellscream##39605
|tip Inside the building.
turnin A Gift for the Warchief's Advisor##24612 |goto Orgrimmar/1 48.11,70.52
step
talk Kwee Q. Peddlefeet##38042
accept A Gift for the High Chieftain##24614 |goto Thunder Bluff/0 44.02,52.61
step
collect Lovely Charm Bracelet##49916 |q 24614/1
|tip You created this in a previous step.
step
talk Cairne Bloodhoof##3057
|tip If Cairne is not available, relogging will usually make him appear.
turnin A Gift for the High Chieftain##24614 |goto Thunder Bluff/0 60.25,51.68
step
talk Kwee Q. Peddlefeet##38042
|tip He is in the Ruins of Lordaeron.
|tip If you cannot see him, speak to Zidormi outside Undercity.
accept A Gift for the Banshee Queen##24613 |goto Undercity/0 66.55,38.60
step
collect Lovely Charm Bracelet##49916 |q 24613/1
|tip You created this in a previous step.
step
Enter the tunnel |goto Undercity/0 52.03,64.52 < 10 |walk
talk Lady Sylvanas Windrunner##10181
|tip If you cannot see her, speak to Zidormi outside Undercity.
turnin A Gift for the Banshee Queen##24613 |goto Undercity/0 58.05,91.77
step
talk Kwee Q. Peddlefeet##38042
accept A Gift for the Regent Lord of Quel'Thalas##24615 |goto Silvermoon City/0 64.45,66.52
step
collect Lovely Charm Bracelet##49916 |q 24615/1
|tip You created this in a previous step.
step
talk Lor'themar Theron##16802
turnin A Gift for the Regent Lord of Quel'Thalas##24615 |goto Silvermoon City/0 53.81,20.27
step
Inside the Shadowfang Keep Dungeon:
talk Investigator Fezzen Brasstacks##38208
turnin Man on the Inside##24793
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
'|complete not completedq(24629,24635,24636,24612,24614,24613,24615,14488) |next "Complete_Leveling_Guide"
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
buy Bag of Heart Candies##21813 |n |goto Orgrimmar/1 52.99,77.04
use the Bag of Heart Candies##21813
|tip Collect the 8 different types of Heart Candy from the Bag of Heart Candies.
Collect "Be Mine" |collect 1 Heart Candy##21816 |only if not achieved(1701,1)
Collect "I LOVE YOU" |collect 1 Heart Candy##21817 |only if not achieved(1701,2)
Collect "I'll Follow You All Around Azeroth" |collect 1 Heart Candy##21818 |only if not achieved(1701,3)
Collect "I'm All Yours" |collect 1 Heart Candy##21821 |only if not achieved(1701,4)
Collect "You're the Best" |collect 1 Heart Candy##21820 |only if not achieved(1701,5)
Collect "Hot Lips" |collect 1 Heart Candy##21823 |only if not achieved(1701,6)
Collect "All Yours" |collect 1 Heart Candy##21819 |only if not achieved(1701,7)
Collect "You're Mine" |collect 1 Heart Candy##21822 |only if not achieved(1701,8)
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
talk Kwee Q. Peddlefeet##38042
collect 1 Lovely Charm Collector's Kit##49661 |goto Orgrimmar/1 52.95,76.86 |or
'|complete achieved(260) |or
'|accept A Gift for the Warchief's Advisor##24612 |n
step
collect 120 Lovely Charm##49655
|tip They come from killing enemies that are at least green difficulty to you.
|tip They will not drop if they are grey difficulty.
|tip You can run dungeons or pick a zone of your choice and kill anything.
'|complete achieved(260)|or
step
use the Lovely Charm##49655
Create #12# Lovely Charm Bracelets |achieve 260 |or
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
Reach Level 7 |ding 7 |or
'|complete achieved(1695) |or
step
talk Detective Snap Snagglebolt##37172
accept Crushing the Crown##24638 |goto Orgrimmar/1 50.82,75.25 |or |only if level >= 5 and level <= 13
accept Crushing the Crown##24645 |goto Orgrimmar/1 50.82,75.25 |or |only if level >= 14 and level <= 22
accept Crushing the Crown##24647 |goto Orgrimmar/1 50.82,75.25 |or |only if level >= 23 and level <= 31
accept Crushing the Crown##24648 |goto Orgrimmar/1 50.82,75.25 |or |only if level >= 32 and level <= 40
accept Crushing the Crown##24649 |goto Orgrimmar/1 50.82,75.25 |or |only if level >= 41 and level <= 50
accept Crushing the Crown##24650 |goto Orgrimmar/1 50.82,75.25 |or |only if level >= 51 and level <= 60
accept Crushing the Crown##24651 |goto Orgrimmar/1 50.82,75.25 |or |only if level >= 61 and level <= 70
accept Crushing the Crown##24652 |goto Orgrimmar/1 50.82,75.25 |or |only if level >= 71 and level <= 80
'|complete achieved(1695) |or
stickystart "Kill_Crown_Lackeys"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24638/1 |goto Durotar/0 40.25,15.32
|only if haveq(24638) or completedq(24638)
step
label "Kill_Crown_Lackeys"
kill 5 Crown Lackey##37214 |q 24638/2 |goto Durotar/0 40.25,15.32
|only if haveq(24638) or completedq(24638)
stickystart "Kill_Crown_Thugs"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24645/1 |goto Silverpine Forest/0 54.64,61.19
|only if haveq(24645) or completedq(24645)
step
label "Kill_Crown_Thugs"
kill 5 Crown Thug##37917 |q 24645/2 |goto Silverpine Forest/0 54.64,61.19
|only if haveq(24645) or completedq(24645)
stickystart "Kill_Crown_Dusters"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24647/1 |goto Hillsbrad Foothills/0 28.16,38.08
|only if haveq(24647) or completedq(24647)
step
label "Kill_Crown_Dusters"
kill 5 Crown Duster##37984 |q 24647/2 |goto Hillsbrad Foothills/0 28.16,38.08
|only if haveq(24647) or completedq(24647)
stickystart "Kill_Crown_Hoodlums"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24648/1 |goto Dustwallow Marsh/0 60.71,38.20
|only if haveq(24648) or completedq(24648)
step
label "Kill_Crown_Hoodlums"
kill 5 Crown Hoodlum##38006 |q 24648/2 |goto Dustwallow Marsh/0 60.71,38.20
|only if haveq(24648) or completedq(24648)
stickystart "Kill_Crown_Agents"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24649/1 |goto The Hinterlands/0 23.30,53.66
|only if haveq(24649) or completedq(24649)
step
label "Kill_Crown_Agents"
kill 5 Crown Agent##38016 |q 24649/2 |goto The Hinterlands/0 23.30,53.66
|only if haveq(24649) or completedq(24649)
stickystart "Kill_Crown_Sprinklers"
step
Follow the path up |goto Winterspring/0 63.36,36.11 < 15 |only if walking
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24650/1 |goto Winterspring/0 64.52,37.39
|only if haveq(24650) or completedq(24650)
step
label "Kill_Crown_Sprinklers"
kill 5 Crown Sprinkler##38023 |q 24650/2 |goto Winterspring/0 64.52,37.39
|only if haveq(24650) or completedq(24650)
stickystart "Kill_Crown_Underlings"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24651/1 |goto Terokkar Forest/0 41.45,22.49
|only if haveq(24651) or completedq(24651)
step
label "Kill_Crown_Underlings"
kill 5 Crown Underling##38030 |q 24651/2 |goto Terokkar Forest/0 41.45,22.49
|only if haveq(24651) or completedq(24651)
stickystart "Kill_Crown_Sprayers"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24652/1 |goto Crystalsong Forest/0 50.55,50.06
|only if haveq(24652) or completedq(24652)
step
label "Kill_Crown_Sprayers"
kill 5 Crown Sprayer##38032 |q 24652/2 |goto Crystalsong Forest/0 50.55,50.06
|only if haveq(24652) or completedq(24652)
step
talk Detective Snap Snagglebolt##37172
turnin Crushing the Crown##24638 |goto Orgrimmar/1 50.82,75.25 |only if haveq(24638) or completedq(24638)
turnin Crushing the Crown##24645 |goto Orgrimmar/1 50.82,75.25 |only if haveq(24645) or completedq(24645)
turnin Crushing the Crown##24647 |goto Orgrimmar/1 50.82,75.25 |only if haveq(24647) or completedq(24647)
turnin Crushing the Crown##24648 |goto Orgrimmar/1 50.82,75.25 |only if haveq(24648) or completedq(24648)
turnin Crushing the Crown##24649 |goto Orgrimmar/1 50.82,75.25 |only if haveq(24649) or completedq(24649)
turnin Crushing the Crown##24650 |goto Orgrimmar/1 50.82,75.25 |only if haveq(24650) or completedq(24650)
turnin Crushing the Crown##24651 |goto Orgrimmar/1 50.82,75.25 |only if haveq(24651) or completedq(24651)
turnin Crushing the Crown##24652 |goto Orgrimmar/1 50.82,75.25 |only if haveq(24652) or completedq(24652)
|only if haveq(24638,24645,24647,24648,24649,24650,24651,24652) or completedq(24638,24645,24647,24648,24649,24650,24651,24652)
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
buy 15 Handful of Rose Petals##22218 |goto Orgrimmar/1 52.99,77.04 |or
'|complete achieved(1699) |or
stickystart "Use_Petals_on_Gnome_Warlock"
stickystart "Use_Petals_on_Orc_Death_Knight"
stickystart "Use_Petals_on_Human_Death_Knight"
stickystart "Use_Petals_on_Night_Elf_Priest"
stickystart "Use_Petals_on_Orc_Shaman"
stickystart "Use_Petals_on_Tauren_Druid"
stickystart "Use_Petals_on_Undead_Warrior"
stickystart "Use_Petals_on_Troll_Rogue"
stickystart "Use_Petals_on_Blood_Elf_Mage"
stickystart "Use_Petals_on_Draenei_Paladin"
stickystart "Use_Petals_on_Dwarf_Hunter"
step
use the Handful of Rose Petals##22218
|tip Battlegrounds and capital cities are good locations.
Use them once on each of the following classes:
'|complete achieved(1699)
step
label "Use_Petals_on_Gnome_Warlock"
Use Rose Petals on a "Gnome Warlock" |achieve 1699/3
step
label "Use_Petals_on_Orc_Death_Knight"
Use Rose Petals on a "Orc Death Knight" |achieve 1699/11
step
label "Use_Petals_on_Human_Death_Knight"
Use Rose Petals on a "Human Death Knight" |achieve 1699/2
step
label "Use_Petals_on_Night_Elf_Priest"
Use Rose Petals on a "Night Elf Priest" |achieve 1699/10
step
label "Use_Petals_on_Orc_Shaman"
Use Rose Petals on a "Orc Shaman" |achieve 1699/9
step
label "Use_Petals_on_Tauren_Druid"
Use Rose Petals on a "Tauren Druid" |achieve 1699/8
step
label "Use_Petals_on_Undead_Warrior"
Use Rose Petals on a "Undead Warrior" |achieve 1699/1
step
label "Use_Petals_on_Troll_Rogue"
Use Rose Petals on a "Troll Rogue" |achieve 1699/5
step
label "Use_Petals_on_Blood_Elf_Mage"
Use Rose Petals on a "Blood Elf Mage" |achieve 1699/7
step
label "Use_Petals_on_Draenei_Paladin"
Use Rose Petals on a "Draenei Paladin" |achieve 1699/4
step
label "Use_Petals_on_Dwarf_Hunter"
Use Rose Petals on a "Dwarf Hunter" |achieve 1699/6
]])
QuestCore:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Flirt With Disaster",{
expansion="mists",
mopready=true,
description="Get completely smashed, put on your best perfume, throw a handful of rose petals "..
"on Jeremiah Payson and then kiss him. You'll regret it in the morning.",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1280) end,
achieveid={1280},
patch='30001',
},[[
step
collect 3 Love Token##49927 |or
|tip Earn these by completing daily quests.
|tip You can also kill mobs to assemble Lovely Charm Bracelets and trade them to the Lovely Merchant.
'|complete achieved(1280) |or
step
talk Lovely Merchant##37674
buy 1 "VICTORY" Perfume##49856 |goto Orgrimmar/1 52.99,77.04 |or 2
buy 1 Handful of Rose Petals##22218 |goto Orgrimmar/1 52.99,77.04 |or 2
'|complete achieved(1280) |or 2 |override
step
talk Barkeep Morag##5611
|tip Inside the building.
buy 3 Flagon of Dwarven Honeymoad##2594 |goto Orgrimmar/1 54.64,67.67 |or
'|complete achieved(1280) |or
step
use the "VICTORY" Perfume##49856
|tip Use it near Jeremiah Payson inside Undercity beneath the bank.
Gain the "'VICTORY' Perfume" Buff |havebuff "VICTORY" Perfume##70233 |goto Undercity/0 67.59,44.13 |or
'|complete achieved(1280) |or
step
clicknpc Jeremiah Payson##8403
|tip He's under the stairs surrounded by cockroaches.
|tip If you cannot see him, speak to Zidormi outside Undercity.
use Flagon of Dwarven Honeymoad##2594
|tip Use all 3 of your Flagons of Dwarven Honeymoad to get Completely Smashed.
use the Handful of Rose Petals##22218
|tip Use them on Jeremiah Payson.
Use a Handful of Rose Petals on Jeremiah Payson |achieve 1280/1 |goto Undercity/0 67.59,44.13 |or
'|complete achieved(1279) |or
step
clicknpc Jeremiah Payson##8403
|tip If you cannot see him, speak to Zidormi outside Undercity.
"Kiss" Jeremiah Payson |script DoEmote("KISS")
Kiss Jeremiah Payson While Completely Smashed |achieve 1280/2 |goto Undercity/0 67.59,44.13
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
buy 5 Love Fool##22261 |goto Orgrimmar/1 52.99,77.04 |or
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
|tip Use your Love Fool near the Blacksmith node inside of the Arathi Basin battleground.
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
buy 1 Romantic Picnic Basket##34480 |goto Orgrimmar/1 52.99,77.04 |or
'|complete achieved(1291) |or
step
talk Lovely Merchant##37674
buy 1 Box of Chocolates##49909 |goto Orgrimmar/1 52.99,77.04 |n
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
Enjoy a Buttermilk Delight with Someone in Dalaran at a Romantic Picnic |achieve 1291 |goto Dalaran/1 50.42,26.50
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
collect 1 Lovely Black Dress##22279 |goto Orgrimmar/1 52.99,77.04
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
description="Complete the Lovely Charm Bracelet daily quest for each Horde capital.",
condition_suggested=function() return isevent('Love is in the Air') and completedq(24576) and not achieved(1698) end,
achieveid={1698},
patch='30100',
},[[
leechsteps "Events Guides\\Love is in the Air\\Love is in the Air Main Questline"
step
talk Kwee Q. Peddlefeet##38042
accept A Gift for the Warchief's Advisor##24612 |goto Orgrimmar/1 52.95,76.86 |or
'|complete achieved(1698,1) |or
step
Kill enemies that yield experience
|tip Any enemy that is green, yellow, or red difficulty will drop charms.
|tip You can kill enemies in dungeons or the open-world zone of your choice.
collect 40 Lovely Charm##49655 |or
'|complete achieved(1698) |or
step
use the Lovely Charm##49655
collect 4 Lovely Charm Bracelet##49916 |or
'|complete achieved(1698) |or
step
Enter the building |goto Orgrimmar/1 49.92,75.57 < 10 |walk
talk Garrosh Hellscream##39605
|tip Inside the building.
turnin A Gift for the Warchief's Advisor##24612 |goto Orgrimmar/1 48.11,70.52 |or
'|complete achieved(1698,1) |or
step
talk Kwee Q. Peddlefeet##38042
accept A Gift for the High Chieftain##24614 |goto Thunder Bluff/0 44.02,52.61 |or
'|complete achieved(1698,2) |or
step
collect Lovely Charm Bracelet##49916 |q 24614/1 |or
|tip You created this in a previous step.
'|complete achieved(1698,2) |or
step
talk Cairne Bloodhoof##3057
|tip If he isn't there, log out then back in.
turnin A Gift for the High Chieftain##24614 |goto Thunder Bluff/0 60.25,51.68 |or
'|complete achieved(1698,2) |or
step
talk Kwee Q. Peddlefeet##38042
|tip He is in the Ruins of Lordaeron.
|tip If you cannot see him, speak to Zidormi outside Undercity.
accept A Gift for the Banshee Queen##24613 |goto Undercity/0 66.55,38.60 |or
'|complete achieved(1698,4) |or
step
collect Lovely Charm Bracelet##49916 |q 24613/1 |or
|tip You created this in a previous step.
'|complete achieved(1698,4) |or
step
Enter the tunnel |goto Undercity/0 52.36,64.21 < 10 |walk
talk Lady Sylvanas Windrunner##10181
|tip If you cannot see her, speak to Zidormi outside Undercity.
turnin A Gift for the Banshee Queen##24613 |goto Undercity/0 58.05,91.77 |or
'|complete achieved(1698,4) |or
step
talk Kwee Q. Peddlefeet##38042
accept A Gift for the Regent Lord of Quel'Thalas##24615 |goto Silvermoon City/0 64.45,66.52 |or
'|complete achieved(1698,3) |or
step
collect Lovely Charm Bracelet##49916 |q 24615/1 |or
|tip You created this in a previous step.
'|complete achieved(1698,3) |or
step
talk Lor'themar Theron##16802
turnin A Gift for the Regent Lord of Quel'Thalas##24615 |goto Silvermoon City/0 53.81,20.27 |or
'|complete achieved(1698,3) |or
step
Earn the "Nation of Adoration" Achievement |achieve 1698
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
buy 1 Truesilver Shafted Arrow##22235 |goto Orgrimmar/1 52.99,77.04
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
buy 10 Silver Shafted Arrow##22200 |goto Orgrimmar/1 52.99,77.04 |or
'|complete achieved(1188) |or
step
use the Silver Shafted Arrow##22200
|tip Use your Silver Shafted Arrows on 10 players inside Orgrimmar.
Shoot #10# Players with the Silver Shafted Arrow |achieve 1188 |goto Orgrimmar/1 53.05,77.03
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
buy 1 Box of Chocolates##49909 |goto Orgrimmar/1 52.99,77.04 |n
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
Sample the "Buttermilk Delight" Candy |achieve 1702/1
|tip Save the remaining Buttermilk Delights for a later achievement.
step
use the Dark Desire##22237
Sample the "Dark Desire" Candy |achieve 1702/2
step
use the Sweet Surprise##22239
Sample the "Sweet Surprise" Candy |achieve 1702/3
step
use the Very Berry Cream##22238
Sample the "Very Berry Cream" Candy |achieve 1702/4
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
buy 10 Love Rocket##34258 |goto Orgrimmar/1 52.99,77.04 |or
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
accept Lunar Fireworks##8867 |goto Orgrimmar/1 52.38,58.51
step
talk Lunar Festival Vendor##47897
buy 8 Small Blue Rocket##21558 |goto Orgrimmar/1 52.58,59.21 |q 8867
buy 2 Blue Rocket Cluster##21571 |goto Orgrimmar/1 52.58,59.21 |q 8867
stickystart "Fire_Lunar_Fireworks_Clusters"
step
use the Small Blue Rocket##21558
Fire #8# Lunar Fireworks |q 8867/1 |goto Orgrimmar/1 51.63,58.46
step
label "Fire_Lunar_Fireworks_Clusters"
use the Blue Rocket Cluster##21571
Fire #2# Lunar Fireworks Clusters |q 8867/2 |goto Orgrimmar/1 51.63,58.46
step
talk Lunar Festival Harbinger##15895
turnin Lunar Fireworks##8867 |goto Orgrimmar/1 52.38,58.51
accept Valadar Starsong##8883 |goto Orgrimmar/1 52.38,58.51
step
talk Lunar Festival Vendor##47897
buy 30 Red Rocket Cluster##21576 |goto Orgrimmar/1 52.58,59.21 |q 8868 |future
|tip You need 30 red, green, or blue rocket clusters to summon Omen.
|tip If you do not buy these, you will have to wait for someone else to summon it.
step
use the Lunar Festival Invitation##21711 |goto Orgrimmar/1 52.41,57.36
Go to Moonglade |goto Moonglade |c |q 8883
step
talk Valadar Starsong##15864
turnin Valadar Starsong##8883 |goto Moonglade 53.65,35.26
step
talk Valadar Starsong##15864
accept Elune's Blessing##8868 |goto Moonglade 53.65,35.26
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
turnin Elune's Blessing##8868 |goto Moonglade 53.65,35.26
]])
QuestCore:RegisterGuide("Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path",{
expansion="mists",
mopready=true,
description="This guide will walk you through an optimized path, honoring the elders for the \"Lunar Festival\" event.",
},[[
step
talk Elder Darkcore##15564
|tip Inside the entrance to Undercity.
|tip If you cannot see this elder, talk to Zidormi just outside the gates of Undercity. |only if completedq(13242)
accept Darkcore the Elder##8648 |goto Undercity/0 66.62,38.19
step
talk Elder Graveborn##15568
|tip If you cannot see this elder, talk to Zidormi just outside the gates of Undercity. |only if completedq(13242)
accept Graveborn the Elder##8652 |goto Tirisfal Glades/0 61.87,53.85
step
talk Elder Obsidian##15561
accept Obsidian the Elder##8645 |goto Silverpine Forest/0 44.98,41.15
step
talk Elder Snowcrown##15566
accept Snowcrown the Elder##8650 |goto Eastern Plaguelands/0 75.73,54.56
step
talk Elder Windrun##15592
|tip Inside the tower.
accept Windrun the Elder##8688 |goto Eastern Plaguelands/0 35.57,68.85
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
talk Elder Moonstrike##15594
|tip Upstairs on the outer wall of the building.
accept Moonstrike the Elder##8714 |goto Western Plaguelands/0 69.18,73.45
step
talk Elder Highpeak##15559
accept Highpeak the Elder##8643 |goto The Hinterlands/0 49.99,48.04
step
talk Elder Darkfeather##55218
accept Darkfeather the Elder##29736 |goto Twilight Highlands/0 51.88,33.06
step
talk Elder Firebeard##55219
accept Firebeard the Elder##29737 |goto Twilight Highlands/0 50.91,70.45
step
talk Elder Silvervein##15558
accept Silvervein the Elder##8642 |goto Loch Modan/0 33.32,46.55
step
talk Elder Bronzebeard##15871
accept Bronzebeard the Elder##8866 |goto Ironforge/0 29.19,17.03
step
talk Elder Goldwell##15569
accept Goldwell the Elder##8653 |goto Dun Morogh/0 53.92,49.92
step
talk Elder Ironband##15567
accept Ironband the Elder##8651 |goto Searing Gorge/0 21.29,79.12
step
talk Elder Dawnstrider##15585
accept Dawnstrider the Elder##8683 |goto Burning Steppes/0 52.38,23.94
step
talk Elder Rumblerock##15557
accept Rumblerock the Elder##8636 |goto Burning Steppes/0 70.11,45.39
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
talk Elder Stormbrow##15565
accept Stormbrow the Elder##8649 |goto Elwynn Forest/0 39.79,63.67
step
talk Elder Hammershout##15562
accept Hammershout the Elder##8646 |goto Elwynn Forest/0 34.56,50.26
step
talk Elder Skychaser##15577
|tip On top of the tower.
accept Skychaser the Elder##8675 |goto Westfall/0 56.64,47.09
step
talk Elder Starglade##15596
accept Starglade the Elder##8716 |goto Northern Stranglethorn/0 71.04,34.31
step
talk Elder Winterhoof##15576
|tip On top of the bank.
accept Winterhoof the Elder##8674 |goto The Cape of Stranglethorn/0 39.96,72.51
step
talk Elder Evershade##55227
accept Evershade the Elder##29740 |goto Mount Hyjal/0 62.54,22.82
step
talk Elder Windsong##55224
accept Windsong the Elder##29739 |goto Mount Hyjal/0 26.69,62.05
step
talk Elder Windtotem##15582
accept Windtotem the Elder##8680 |goto The Barrens/0 68.36,69.96
step
talk Elder Moonwarden##15597
turnin Moonwarden the Elder##8717 |goto The Barrens/0 48.53,59.27
step
talk Elder High Mountain##15588
accept High Mountain the Elder##8686 |goto Southern Barrens/0 41.60,47.45
step
talk Elder Bloodhoof##15575
accept Bloodhoof the Elder##8673 |goto Mulgore/0 48.40,53.44
step
talk Elder Ezra Wheathoof##15580
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
talk Elder Grimtotem##15581
accept Grimtotem the Elder##8679 |goto Feralas/0 76.71,37.89
step
talk Elder Mistwalker##15587
|tip Down in the pit.
accept Mistwalker the Elder##8685 |goto Feralas/0 62.56,31.08
step
talk Elder Starsong##15593
|tip Take the path on the left after entering the Sunken Temple dungeon.
|tip Go up the spiral staircase and go left again to the large round room.
|tip The elder is in the rear of the alcove on the left.
|tip You may need to run this dungeon with a group.
accept Starsong the Elder##8713 |or
|tip
Click Here to Skip This Elder |confirm |or
step
talk Elder Bladesing##15599
accept Bladesing the Elder##8719 |goto Silithus/0 53.02,35.48
step
talk Elder Primestone##15570
accept Primestone the Elder##8654 |goto Silithus/0 30.80,13.32
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
talk Elder Wildmane##15578
|tip She is located inside the Zul'Farak dungeon near the pool that spawns Gaz'Rilla.
|tip You may need to run this dungeon with a group.
accept Wildmane the Elder##8676 |or
|tip
Click Here to Skip This Elder |confirm |or
step
talk Elder Ragetotem##15573
accept Ragetotem the Elder##8671 |goto Tanaris/0 37.24,79.06
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
talk Elder Darkhorn##15579
accept Darkhorn the Elder##8677 |goto Orgrimmar/1 41.14,33.85
step
talk Elder Runetotem##15572
accept Runetotem the Elder##8670 |goto Durotar/0 53.23,43.65
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
talk Elder Nightwind##15603
accept Nightwind the Elder##8723 |goto Felwood/0 38.36,52.85
step
talk Elder Riversong##15605
accept Riversong the Elder##8725 |goto Ashenvale/0 35.54,48.91
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
talk Elder Bellowrage##15563
accept Bellowrage the Elder##8647 |goto Blasted Lands/0 54.28,49.49
step
talk Elder Pamuya##30371
accept Pamuya the Elder##13029 |goto Borean Tundra/0 42.94,49.57
step
talk Elder Sardis##30348
accept Sardis the Elder##13012 |goto Borean Tundra/0 59.09,65.63
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
talk Commander Thorak##41621
|tip Inside the building.
turnin Warchief's Command: Vashj'ir!##27718 |goto Durotar/0 55.90,12.32 |only if haveq(27718) or completedq(27718)
accept Call of Duty##25924 |goto Durotar/0 55.90,12.32
step
Locate the Mercenary Ship |goto Durotar/0 58.12,10.37 < 30 |c |q 25924
step
Watch the dialogue
|tip It may take a minute or two for the ship to show up.
|tip The ship will begin sailing to Vashj'ir
Begin Riding the Mercenary Ship to Vashj'ir |condition subzone("The Great Sea") |q 25924
step
Watch the dialogue
Ride the Mercenary Ship to Vashj'ir |q 25924/1 |goto Kelp'thar Forest/0 43.16,32.87 |notravel
step
Watch the dialogue
Wait to Be Rescued |condition subzone("The Immortal Coil") |q 25924
step
talk Erunak Stonespeaker##41618
|tip Inside the ship.
turnin Call of Duty##25924 |goto Kelp'thar Forest/0 38.74,31.71
accept Sea Legs##25929 |goto Kelp'thar Forest/0 38.74,31.71
step
talk Erunak Stonespeaker##41618
|tip Inside the ship.
home The Immortal Coil |goto Kelp'thar Forest/0 38.74,31.71 |q 25929
stickystart "Collect_Saltwater_Starfish"
step
click Conch Shell##202560
|tip It looks like a large shell.
collect Conch Shell##52504 |q 25929/2 |goto Kelp'thar Forest/0 42.18,31.40
step
label "Collect_Saltwater_Starfish"
click Saltwater Star##205989+
|tip They look like yellow starfish.
collect 3 Saltwater Starfish##54828 |q 25929/1 |goto Kelp'thar Forest/0 41.63,30.88
step
talk Erunak Stonespeaker##41618
|tip Inside the ship.
turnin Sea Legs##25929 |goto Kelp'thar Forest/0 38.74,31.71
step
talk Elder Moonlance##55228
accept Moonlance the Elder##29738 |goto Shimmering Expanse/0 57.26,86.15
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
leechsteps "Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path" 1-2
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
leechsteps "Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path" 1-6
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
leechsteps "Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path" 1-11
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
leechsteps "Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path" 1-63
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
talk Elder Darkcore##15564
|tip Inside the entrance to Undercity.
|tip If you cannot see this elder, talk to Zidormi just outside the gates of Undercity. |only if completedq(13242)
accept Darkcore the Elder##8648 |goto Undercity/0 66.62,38.19
step
talk Elder Graveborn##15568
|tip If you cannot see this elder, talk to Zidormi just outside the gates of Undercity. |only if completedq(13242)
accept Graveborn the Elder##8652 |goto Tirisfal Glades/0 61.87,53.85
step
talk Elder Obsidian##15561
accept Obsidian the Elder##8645 |goto Silverpine Forest/0 44.98,41.15
step
talk Elder Snowcrown##15566
accept Snowcrown the Elder##8650 |goto Eastern Plaguelands/0 75.73,54.56
step
talk Elder Windrun##15592
|tip Inside the tower.
accept Windrun the Elder##8688 |goto Eastern Plaguelands/0 35.57,68.85
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
talk Elder Moonstrike##15594
|tip Upstairs on the outer wall of the building.
accept Moonstrike the Elder##8714 |goto Western Plaguelands/0 69.18,73.45
step
talk Elder Highpeak##15559
accept Highpeak the Elder##8643 |goto The Hinterlands/0 49.99,48.04
step
talk Elder Darkfeather##55218
accept Darkfeather the Elder##29736 |goto Twilight Highlands/0 51.88,33.06
step
talk Elder Firebeard##55219
accept Firebeard the Elder##29737 |goto Twilight Highlands/0 50.91,70.45
step
talk Elder Silvervein##15558
accept Silvervein the Elder##8642 |goto Loch Modan/0 33.32,46.55
step
talk Elder Bronzebeard##15871
accept Bronzebeard the Elder##8866 |goto Ironforge/0 29.19,17.03
step
talk Elder Goldwell##15569
accept Goldwell the Elder##8653 |goto Dun Morogh/0 53.92,49.92
step
talk Elder Ironband##15567
accept Ironband the Elder##8651 |goto Searing Gorge/0 21.29,79.12
step
talk Elder Dawnstrider##15585
accept Dawnstrider the Elder##8683 |goto Burning Steppes/0 52.38,23.94
step
talk Elder Rumblerock##15557
accept Rumblerock the Elder##8636 |goto Burning Steppes/0 70.11,45.39
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
talk Elder Stormbrow##15565
accept Stormbrow the Elder##8649 |goto Elwynn Forest/0 39.79,63.67
step
talk Elder Hammershout##15562
accept Hammershout the Elder##8646 |goto Elwynn Forest/0 34.56,50.26
step
talk Elder Skychaser##15577
|tip On top of the tower.
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
talk Elder Evershade##55227
accept Evershade the Elder##29740 |goto Mount Hyjal/0 62.54,22.82
step
talk Elder Windsong##55224
accept Windsong the Elder##29739 |goto Mount Hyjal/0 26.69,62.05
step
talk Elder Windtotem##15582
accept Windtotem the Elder##8680 |goto The Barrens/0 68.36,69.96
step
talk Elder Moonwarden##15597
turnin Moonwarden the Elder##8717 |goto The Barrens/0 48.53,59.27
step
talk Elder High Mountain##15588
accept High Mountain the Elder##8686 |goto Southern Barrens/0 41.60,47.45
step
talk Elder Bloodhoof##15575
accept Bloodhoof the Elder##8673 |goto Mulgore/0 48.40,53.44
step
talk Elder Ezra Wheathoof##15580
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
talk Elder Grimtotem##15581
accept Grimtotem the Elder##8679 |goto Feralas/0 76.71,37.89
step
talk Elder Mistwalker##15587
|tip Down in the pit.
accept Mistwalker the Elder##8685 |goto Feralas/0 62.56,31.08
step
talk Elder Starsong##15593
|tip Take the path on the left after entering the Sunken Temple dungeon.
|tip Go up the spiral staircase and go left again to the large round room.
|tip The elder is in the rear of the alcove on the left.
|tip You may need to run this dungeon with a group.
accept Starsong the Elder##8713 |or
|tip
Click Here to Skip This Elder |confirm |or
step
talk Elder Bladesing##15599
accept Bladesing the Elder##8719 |goto Silithus/0 53.02,35.48
step
talk Elder Primestone##15570
accept Primestone the Elder##8654 |goto Silithus/0 30.80,13.32
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
talk Elder Wildmane##15578
|tip She is located inside the Zul'Farak dungeon near the pool that spawns Gaz'Rilla.
|tip You may need to run this dungeon with a group.
accept Wildmane the Elder##8676 |or
|tip
Click Here to Skip This Elder |confirm |or
step
talk Elder Ragetotem##15573
accept Ragetotem the Elder##8671 |goto Tanaris/0 37.24,79.06
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
talk Elder Darkhorn##15579
accept Darkhorn the Elder##8677 |goto Orgrimmar/1 41.14,33.85
step
talk Elder Runetotem##15572
accept Runetotem the Elder##8670 |goto Durotar/0 53.23,43.65
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
talk Elder Nightwind##15603
accept Nightwind the Elder##8723 |goto Felwood/0 38.36,52.85
step
talk Elder Riversong##15605
accept Riversong the Elder##8725 |goto Ashenvale/0 35.54,48.91
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
talk Elder Bellowrage##15563
accept Bellowrage the Elder##8647 |goto Blasted Lands/0 54.28,49.49
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
talk Elder Pamuya##30371
accept Pamuya the Elder##13029 |goto Borean Tundra/0 42.94,49.57
step
talk Elder Sardis##30348
accept Sardis the Elder##13012 |goto Borean Tundra/0 59.09,65.63
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
|tip He is located in the Stratholme dungeon on the Service Entrance (Scarlet) side.
|tip Go left after entering the instance and through the plague rat gate and he will be on the right side.
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
accept Hammershout the Elder##8646 |goto Stormwind City/0 36.27,66.14
step
talk Elder Bronzebeard##15871
|tip Inside Ironforge.
accept Bronzebeard the Elder##8866 |goto Ironforge/0 29.19,17.06
step
talk Elder Bladeswift##15598
accept Bladeswift the Elder##8718 |goto Darnassus/0 33.48,14.29
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
|tip Inside the entrance to Undercity.
|tip If you cannot see this elder, talk to Zidormi just outside the gates of Undercity. |only if completedq(13242)
accept Darkcore the Elder##8648 |goto Undercity/0 66.62,38.19
step
talk Elder Darkhorn##15579
accept Darkhorn the Elder##8677 |goto Orgrimmar/1 41.14,33.85
step
talk Elder Ezra Wheathoof##15580
accept Wheathoof the Elder##8678 |goto Thunder Bluff/0 72.98,23.38
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
talk Lunar Festival Vendor##47897
buy 30 Red Rocket Cluster##21576 |goto Orgrimmar/1 52.58,59.21 |q 8868 |future
|tip You need 30 red, green, or blue rocket clusters to summon Omen.
|tip If you do not buy these, you will have to wait for someone else to summon it.
step
talk Valadar Starsong##15864
accept Elune's Blessing##8868 |goto Moonglade/0 53.65,35.26
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
turnin Elune's Blessing##8868 |goto Moonglade/0 53.65,35.26
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
talk Lunar Festival Vendor##47897
buy 10 Festival Firecracker##21747 |goto Orgrimmar/1 41.29,32.37 |achieve 1552 |future
step
use the Festival Firecracker##21747
|tip Spam it quickly until you use all 10.
|tip You will need to target the ground after using it.
|achieve 1552 |goto Orgrimmar/1 41.53,32.96
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
talk Lunar Festival Vendor##47897
buy 10 Red Rocket Cluster##21576 |goto Orgrimmar/1 41.29,32.37 |achieve 1281 |future
step
use the Red Rocket Cluster##21576
|tip Spam it quickly until you use all 10.
|achieve 1281 |goto Orgrimmar/1 41.53,32.96
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
talk Flame Eater##25994
accept Playing with Fire##11915 |goto Durotar/0 52.41,47.32
step
talk Durotar Flame Keeper##25929
accept Honor the Flame##11846 |goto Durotar/0 52.24,47.40
step
talk Master Flame Eater##26113
turnin Playing with Fire##11915 |goto Orgrimmar/1 46.59,37.24
accept Torch Tossing##11922 |goto Orgrimmar/1 46.59,37.24
step
use the Practice Torches##34862
|tip Throw them at the Torch Target Braziers nearby.
|tip You must throw the torches at the correct braziers.
|tip Throw the torches at the Torch Target Braziers when they have a floating red arrow point down above them.
|tip You will have 40 seconds to complete this before the quest fails.
|tip If you fail the quest, accept it again from the Master Flame Eater.
Hit 8 Braziers |q 11922/1 |goto Orgrimmar/1 46.22,35.46
step
talk Master Flame Eater##26113
turnin Torch Tossing##11922 |goto Orgrimmar/1 46.59,37.24
accept Torch Catching##11923 |goto Orgrimmar/1 46.59,37.24
step
use the Unlit Torches##34833
|tip As soon as you light the torch, it will fly in the air.
|tip There will be a small round shadow on the ground indicating where the torch is flying.
|tip Follow that shadow and catch the torch.
|tip When you catch the torch, it will be thrown in the air again.
|tip Follow the shadow again and catch the torch.
|tip Do this until you've caught the torch 4 times in a row without it hitting the ground.
Catch 4 Torches in a Row |q 11923/1 |goto Orgrimmar/1 45.45,37.84
step
talk Master Flame Eater##26113
turnin Torch Catching##11923 |goto Orgrimmar/1 46.59,37.24
step
talk Festival Talespinner##16818
|tip Beneath the tent.
accept Incense for the Festival Scorchlings##11966 |goto Orgrimmar/1 47.72,38.19
step
talk Earthen Ring Elder##26221
|tip Beneath the tent.
accept Unusual Activity##11886 |goto Orgrimmar/1 47.25,37.89
step
kill Twilight Firesworn##25863, Twilight Flameguard##25866
collect Twilight Correspondence##35277 |q 11886/1 |goto Ashenvale/0 15.58,19.99
step
use the Totemic Beacon##35828
Watch the dialogue
_Next to you:_
talk Earthen Ring Guide##25324
turnin Unusual Activity##11886 |goto Ashenvale/0 15.14,20.80
accept An Innocent Disguise##11891 |goto Ashenvale/0 15.14,20.80
step
use the Orb of the Crawler##35237
Gain the Crab Disguise Buff |havebuff Crab Disguise##46337 |q 11891 |goto Ashenvale/0 9.40,12.77
step
Watch the dialogue
Listen to the Plan of the Twilight Cultists |q 11891/1 |goto Ashenvale/0 9.40,12.77
step
use the Totemic Beacon##35828
Watch the dialogue
_Next to you:_
talk Earthen Ring Guide##25324
turnin An Innocent Disguise##11891 |goto Ashenvale/0 9.49,12.89
accept Inform the Elder##12012 |goto Ashenvale/0 9.49,12.89
step
talk Earthen Ring Elder##26221
turnin Inform the Elder##12012 |goto Orgrimmar/1 47.25,37.88
step
Reach Level 75 |ding 75
|tip To finish these quests, you need to be level 75.
step
talk Earthen Ring Elder##26221
accept Striking Back##11917 |goto Orgrimmar/1 47.25,37.88 |or
accept Striking Back##11947 |goto Orgrimmar/1 47.25,37.88 |or
accept Striking Back##11948 |goto Orgrimmar/1 47.25,37.88 |or
accept Striking Back##11952 |goto Orgrimmar/1 47.25,37.88 |or
accept Striking Back##11953 |goto Orgrimmar/1 47.25,37.88 |or
accept Striking Back##11954 |goto Orgrimmar/1 47.25,37.88 |or
step
click Ice Stone##188149
|tip Inside the cave. |only if haveq(11952)
Select _"Lay your hand on the stone"_
kill Frostwave Lieutenant##26116 |q 11917/1 |goto Ashenvale/0 9.62,12.20
|only if haveq(11917)
step
click Ice Stone##188149
Select _"Lay your hand on the stone"_
kill Hailstone Lieutenant##26178 |q 11947/1 |goto Desolace/0 40.35,30.27
|only if haveq(11947)
step
talk Zidormi##128607
|tip She is at the top of the ramp leading from Un'Goro Crater to Silithus.
Select _"Can you show me what Silithus was like before the Wound in the World?"_
Travel to the Past |complete QC.InPhase('Old Silithus') |goto Silithus/0 78.93,21.97 |q 11953
|only if haveq(11953)
step
click Ice Stone##188149
Select _"Lay your hand on the stone"_
kill Glacial Lieutenant##26215 |q 11953/1 |goto Silithus/0 68.88,20.44 |only if haveq(11953)
|only if haveq(11953)
step
click Ice Stone##188149
Select _"Lay your hand on the stone"_
kill Chillwind Lieutenant##26204 |q 11948/1 |goto Northern Stranglethorn/0 21.31,40.95
|only if haveq(11948)
step
Enter the cave |goto Searing Gorge/0 21.83,36.18 < 20 |walk
click Ice Stone##188149
Select _"Lay your hand on the stone"_
kill Frigid Lieutenant##26214 |q 11952/1 |goto Searing Gorge/0 16.02,36.86
|only if haveq(11952)
step
click Ice Stone##188149
Select  _"Lay your hand on the stone."_ |gossip 92575
kill Glacial Templar##26216 |q 11954/1 |goto Hellfire Peninsula/0 85.60,47.14 |only if haveq(11954)
step
talk Earthen Ring Elder##26221
turnin Striking Back##11917 |goto Orgrimmar/1 47.26,37.88
turnin Striking Back##11947 |goto Orgrimmar/1 47.26,37.88
turnin Striking Back##11948 |goto Orgrimmar/1 47.26,37.88
turnin Striking Back##11952 |goto Orgrimmar/1 47.26,37.88
turnin Striking Back##11953 |goto Orgrimmar/1 47.26,37.88
turnin Striking Back##11954 |goto Orgrimmar/1 47.26,37.88
]])
QuestCore:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Dailies",{
expansion="mists",
mopready=true,
description="This guide section will walk you through completing the dailies for the Midsummer Fire Festival event.",
},[[
step
Complete the "Midsummer Fire Festival Quests" Event Guide |complete completedq(12012)
step
label "Begin_Daily_Quests"
talk Master Flame Eater##26113
|tip Accepting this quest will start a timer.
accept More Torch Tossing##11926 |goto Orgrimmar/1 46.59,37.24
step
use the Practice Torches##34862
|tip Throw them at the Torch Target Braziers nearby.
|tip You must throw the torches at the correct braziers.
|tip Throw the torches at the Torch Target Braziers when they have a floating red arrow point down above them.
|tip You will have a limited time to complete the quest.
|tip If you fail, return to the Master Flame Eater to start again.
Hit 20 Braziers |q 11926/1 |goto Orgrimmar/1 46.21,36.96
step
talk Master Flame Eater##26113
turnin More Torch Tossing##11926 |goto Orgrimmar/1 46.59,37.24
step
talk Master Flame Eater##26113
|tip Accepting this quest will start a timer.
accept More Torch Catching##11925 |goto Orgrimmar/1 46.59,37.24
step
use the Unlit Torches##34833
|tip As soon as you light the torch, it will fly in the air.
|tip There will be a small round shadow on the ground indicating where the torch is flying.
|tip Follow that shadow and catch the torch.
|tip When you catch the torch, it will be thrown in the air again.
|tip Follow the shadow again and catch the torch.
|tip Do this until you've caught the torch 10 times in a row without it hitting the ground.
Catch 10 Torches in a Row |q 11925/1 |goto Orgrimmar/1 46.16,36.90
step
talk Master Flame Eater##26113
turnin More Torch Catching##11925 |goto Orgrimmar/1 46.59,37.24
step
talk Earthen Ring Elder##26221
accept Striking Back##11917 |goto Orgrimmar/1 49.32,72.27 |only if level >= 22 and level < 32
accept Striking Back##11947 |goto Orgrimmar/1 49.32,72.27 |only if level >= 32 and level < 43
accept Striking Back##11948 |goto Orgrimmar/1 49.32,72.27 |only if level >= 43 and level < 51
accept Striking Back##11952 |goto Orgrimmar/1 49.32,72.27 |only if level >= 51 and level < 60
accept Striking Back##11953 |goto Orgrimmar/1 49.32,72.27 |only if level >= 60 and level < 67
accept Striking Back##11954 |goto Orgrimmar/1 49.32,72.27 |only if level >= 67
|only if level >= 22
step
click Ice Stone##188149
|tip Inside the cave.
Choose _"Lay your hand on the stone"_
kill Frostwave Lieutenant##26116 |q 11917/1 |goto Ashenvale/0 9.62,12.20
|only if haveq(11917)
step
click Ice Stone##188149
Choose _"Lay your hand on the stone"_
kill Hailstone Lieutenant##26178 |q 11947/1 |goto Desolace/0 40.35,30.27
|only if haveq(11947)
step
click Ice Stone##188149
Choose _"Lay your hand on the stone"_
kill Glacial Lieutenant##26215 |q 11953/1 |goto Silithus/0 68.88,20.44
|only if haveq(11953)
step
click Ice Stone##188149
Choose _"Lay your hand on the stone"_
kill Chillwind Lieutenant##26204 |q 11948/1 |goto Stranglethorn Vale/0 21.30,23.37
|only if haveq(11948)
step
Enter the cave |goto Searing Gorge/0 21.83,36.18 < 20 |walk
click Ice Stone##188149
Choose _"Lay your hand on the stone"_
kill Frigid Lieutenant##26214 |q 11952/1 |goto Searing Gorge/0 16.02,36.86
|only if haveq(11952)
step
click Ice Stone##188149
Choose _"Lay your hand on the stone"_
kill Glacial Templar##26216 |q 11954/1 |goto Hellfire Peninsula/0 85.64,47.09
|only if haveq(11954)
step
talk Earthen Ring Elder##26221
turnin Striking Back##11917 |goto Orgrimmar/1 46.44,38.70 |only if haveq(11917) or completedq(11917)
turnin Striking Back##11947 |goto Orgrimmar/1 46.44,38.70 |only if haveq(11947) or completedq(11947)
turnin Striking Back##11948 |goto Orgrimmar/1 46.44,38.70 |only if haveq(11948) or completedq(11948)
turnin Striking Back##11952 |goto Orgrimmar/1 46.44,38.70 |only if haveq(11952) or completedq(11952)
turnin Striking Back##11953 |goto Orgrimmar/1 46.44,38.70 |only if haveq(11953) or completedq(11953)
turnin Striking Back##11954 |goto Orgrimmar/1 46.44,38.70 |only if haveq(11954) or completedq(11954)
|only if haveq(11917,11947,11948,11952,11953,11954) or completedq(11917,11947,11948,11952,11953,11954)
step
You have completed all available dailies
|tip This guide will reset when more become available.
'|complete not completedq(11926,11925,11917,11947,11948,11952,11953,11954) |next "Begin_Daily_Quests"
]])
QuestCore:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Bonfires",{
expansion="mists",
mopready=true,
description="This guide section will walk you through finding all of the bonfires for the Midsummer Fire Festival event.",
achieveid={1036,1025,1026,1027,1037,1031,1032,1033,1145},
},[[
step
talk Stranglethorn Vale Flame Keeper##25920
accept Honor the Flame##11837 |goto The Cape of Stranglethorn/0 50.40,70.38
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11761 |goto The Cape of Stranglethorn/0 51.82,67.44
step
talk Northern Stranglethorn Vale Flame Keeper##51582
accept Honor the Flame##28924 |goto Northern Stranglethorn/0 40.58,50.94
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##28910 |goto Northern Stranglethorn/0 51.62,63.23
step
talk Blasted Lands Flame Keeper##51603
accept Honor the Flame##28930 |goto Blasted Lands/0 46.22,13.79
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11737 |goto Blasted Lands/0 55.22,15.18
step
talk Swamp of Sorrows Flame Keeper##25941
accept Honor the Flame##11857 |goto Swamp of Sorrows/0 76.33,13.77
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##28916 |goto Swamp of Sorrows/0 70.18,14.32
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11743 |goto Duskwood/0 73.28,55.12
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11581 |goto Westfall/0 45.12,62.56
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11745 |goto Elwynn Forest/0 43.09,62.97
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11751 |goto Redridge Mountains/0 24.41,53.78
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11739 |goto Burning Steppes/0 68.59,60.02
step
talk Burning Steppes Flame Keeper##25927
accept Honor the Flame##11844 |goto Burning Steppes/0 51.11,29.20
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##28912 |goto Badlands/0 18.63,56.03
step
talk Badlands Flame Keeper##25925
accept Honor the Flame##11842 |goto Badlands/0 23.09,37.43
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11749 |goto Loch Modan/0 32.33,40.11
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11742 |goto Dun Morogh/0 53.70,44.71
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11757 |goto Wetlands/0 13.23,47.28
step
talk Twilight Highlands Flame Keeper##51651
accept Honor the Flame##28946 |goto Twilight Highlands/0 53.12,46.18
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##28943 |goto Twilight Highlands/0 47.09,28.20
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11732 |goto Arathi Highlands/0 44.67,46.15
step
talk Arathi Flame Keeper##25923
accept Honor the Flame##11840 |goto Arathi Highlands/0 69.36,42.57
step
talk Hillsbrad Flame Keeper##25935
accept Honor the Flame##11853 |goto Hillsbrad Foothills/0 54.66,50.08
step
talk Silverpine Forest Flame Keeper##25939
accept Honor the Flame##11584 |goto Silverpine Forest/0 49.63,38.21
step
talk Eversong Woods Flame Keeper##25931
accept Honor the Flame##11848 |goto Eversong Woods/0 46.40,50.60
step
talk Ghostlands Flame Keeper##25933
accept Honor the Flame##11850 |goto Ghostlands/0 46.90,26.34
step
talk The Hinterlands Flame Keeper##25944
accept Honor the Flame##11860 |goto The Hinterlands/0 76.63,74.97
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11755 |goto The Hinterlands/0 14.56,49.73
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11756 |goto Western Plaguelands/0 43.58,82.66
step
talk Western Plaguelands Flame Keeper##51604
accept Honor the Flame##28931 |goto Western Plaguelands/0 29.16,57.34
step
talk Tirisfal Glades Flame Keeper##25946
accept Honor the Flame##11862 |goto Tirisfal Glades/0 57.04,51.84
step
talk Mulgore Flame Keeper##25936
accept Honor the Flame##11852  |goto Mulgore/0 51.82,59.25
step
talk Southern Barrens Flame Keeper##51587
accept Honor the Flame##28927 |goto Southern Barrens/0 40.85,67.79
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##28913 |goto Southern Barrens/0 48.21,72.48
step
talk Dustwallow Marsh Flame Keeper##25930
accept Honor the Flame##11847 |goto Dustwallow Marsh/0 33.43,30.92
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11744 |goto Dustwallow Marsh/0 62.10,40.41
step
talk Tanaris Flame Keeper##25921
accept Honor the Flame##11838 |goto Tanaris/0 49.82,27.87
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11762 |goto Tanaris/0 52.68,29.99
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##28921 |goto Un'Goro Crater/0 59.94,62.87
step
talk Un'Goro Flame Keeper##51607
accept Honor the Flame##28933 |goto Un'Goro Crater/0 56.32,66.36
step
talk Uldum Flame Keeper##51652
accept Honor the Flame##28949 |goto Uldum/0 53.15,34.54
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##28947 |goto Uldum/0 53.36,31.91
step
talk Silithus Flame Keeper##25919
accept Honor the Flame##11836 |goto Silithus/0 50.85,41.30
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11760 |goto Silithus/0 60.63,33.15
step
talk Feralas Flame Keeper##25932
accept Honor the Flame##11849 |goto Feralas/0 72.38,47.80
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11746 |goto Feralas/0 46.59,43.71
step
talk Desolace Flame Keeper##25928
accept Honor the Flame##11845 |goto Desolace/0 26.14,76.91
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11741 |goto Desolace/0 65.79,16.94
step
talk Stonetalon Flame Keeper##25940
accept Honor the Flame##11856 |goto Stonetalon Mountains/0 52.91,62.45
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##28915 |goto Stonetalon Mountains/0 49.59,51.13
step
talk The Northern Barrens Flame Keeper##25943
accept Honor the Flame##11859 |goto The Barrens/0 49.96,54.62
step
talk Durotar Flame Keeper##25929
accept Honor the Flame##11846 |goto Durotar/0 52.24,47.40
step
talk Azshara Flame Keeper##51575
accept Honor the Flame##28923 |goto Azshara/0 60.80,53.47
step
talk Hyjal Flame Guardian##51682
accept Honor the Flame##29030 |goto Mount Hyjal/0 62.83,22.71
|only if completedq(55521)
step
talk Winterspring Flame Keeper##25922
accept Honor the Flame##11839 |goto Winterspring/0 58.14,47.51
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11763 |goto Winterspring/0 61.41,47.04
step
talk Ashenvale Flame Keeper##25884
accept Honor the Flame##11841 |goto Ashenvale/0 51.35,66.15
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11734 |goto Ashenvale/0 86.79,41.39
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11740 |goto Darkshore/0 48.94,22.48
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11753 |goto Teldrassil/0 54.69,52.73
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11735 |goto Azuremyst Isle/0 44.70,52.78
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11738 |goto Bloodmyst Isle/0 55.93,68.54
step
talk Vashj'ir Flame Guardian##51697
|tip Inside the underwater cave.
accept Honor the Flame##29031 |goto Shimmering Expanse/0 49.35,41.99
step
click Earthen Ring Bonfire##208188
|tip Inside the underwater cave.
Honor the Flame |q 29031/1 |goto Shimmering Expanse/0 49.32,41.96
step
talk Deepholm Flame Guardian##51698
accept Honor the Flame##29036 |goto Deepholm/0 49.39,51.33
step
click Earthen Ring Bonfire##208188
Honor the Flame |q 29036/1 |goto Deepholm/0 49.37,51.39
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11747 |goto Hellfire Peninsula/0 61.90,58.39
step
talk Hellfire Peninsula Flame Keeper##25934
accept Honor the Flame##11851 |goto Hellfire Peninsula/0 57.12,42.04
step
talk Netherstorm Flame Keeper##25918
accept Honor the Flame##11835 |goto Netherstorm/0 32.11,68.32
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11759 |goto Netherstorm/0 31.09,62.76
step
talk Blade's Edge Flame Keeper##25926
accept Honor the Flame##11843 |goto Blade's Edge Mountains/0 49.92,58.66
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11736 |goto Blade's Edge Mountains/0 41.76,65.96
step
talk Zangarmarsh Flame Keeper##25947
accept Honor the Flame##11863 |goto Zangarmarsh/0 35.44,51.62
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11758 |goto Zangarmarsh/0 68.61,52.24
step
talk Nagrand Flame Keeper##25937
accept Honor the Flame##11854 |goto Nagrand/0 50.91,34.15
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11750 |goto Nagrand 49.70,69.70
step
talk Terokkar Forest Flame Keeper##25942
accept Honor the Flame##11858 |goto Terokkar Forest/0 52.00,42.90
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11754 |goto Terokkar Forest/0 54.20,55.50
step
talk Shadowmoon Valley Flame Keeper##25938
accept Honor the Flame##11855 |goto Shadowmoon Valley/0 33.40,30.50
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11752 |goto Shadowmoon Valley/0 39.60,54.37
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##13440 |goto Borean Tundra/0 55.20,20.20
step
talk Borean Tundra Flame Keeper##32809
accept Honor the Flame##13493 |goto Borean Tundra/0 51.13,11.53
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##13442 |goto Sholazar Basin/0 47.90,66.20
step
talk Sholazar Basin Flame Keeper##32810
accept Honor the Flame##13494 |goto Sholazar Basin/0 47.20,61.80
step
talk Dragonblight Flame Keeper##32811
accept Honor the Flame##13495 |goto Dragonblight/0 38.26,48.47
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##13443 |goto Dragonblight/0 75.10,43.80
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##13447 |goto Crystalsong Forest/0 77.60,75.20
step
talk Crystalsong Forest Flame Keeper##32815
accept Honor the Flame##13499 |goto Crystalsong Forest/0 80.00,53.20
step
talk Storm Peaks Flame Keeper##32814
accept Honor the Flame##13498 |goto The Storm Peaks/0 40.27,85.35
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##13446 |goto The Storm Peaks/0 41.40,87.00
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##13449 |goto Zul'Drak/0 40.50,61.00
step
talk Zul'Drak Flame Keeper##32816
accept Honor the Flame##13500 |goto Zul'Drak/0 43.38,71.74
step
talk Grizzly Hills Flame Keeper##32813
accept Honor the Flame##13497 |goto Grizzly Hills/0 19.32,61.16
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##13445 |goto Grizzly Hills/0 34.20,60.60
step
talk Howling Fjord Flame Keeper##32812
accept Honor the Flame##13496 |goto Howling Fjord/0 48.62,13.15
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##13444 |goto Howling Fjord/0 57.80,15.80
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
talk Midsummer Merchant##26124
buy Vestment of Summer##34685 |goto Orgrimmar/1 47.36,39.23 |or 3
buy Sandals of Summer##34683 |goto Orgrimmar/1 47.36,39.23 |or 3
buy Mantle of the Fire Festival##23324 |goto Orgrimmar/1 47.36,39.23 |or 3
'|achieve 271 |or 3 |override
step
Equip the Vestment of Summer |equipped Vestment of Summer##34685 |goto Durotar/0 52.46,47.12 |or
'|achieve 271 |or
step
Equip the Sandals of Summer |equipped Sandals of Summer##34683 |goto Durotar/0 52.46,47.12 |or
'|achieve 271 |or
step
Equip the Mantle of the Fire Festival |equipped Mantle of the Fire Festival##23324 |goto Durotar/0 52.46,47.12 |or
'|achieve 271 |or
step
click Ribbon Pole
|tip Dance at the pole for at least 60 seconds.
Earn the "Burning Hot Pole Dance" Achievement |achieve 271 |goto Durotar/0 52.46,47.12
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
buy 40 Juggling Torch##34599 |goto Orgrimmar/1 47.36,39.23 |or
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
condition_end=function() return completedq(14047) end,
patch='40401',
},[[
step
talk Orc Commoner##19175
accept Pilgrim's Bounty##14036 |goto Orgrimmar/1 51.54,75.17
|tip If this quest is not available, skip this step.
step
talk Bountiful Feast Hostess##34654
accept Sharing a Bountiful Feast##14065 |goto Tirisfal Glades/0 61.72,66.78
step
talk Miles Standish##34677
turnin Pilgrim's Bounty##14036 |goto Tirisfal Glades/0 61.38,67.49
|only if haveq(14036) or completedq(14036)
step
clicknpc The Turkey Chair##34812
|tip Use the "Feast on Turkey" ability on your vehicle bar.
|tip If the seat is occupied you can wait or try another table.
Eat the Turkey |complete hasbuff(61842,5) or hasbuff(61849) or completedq(14065) |goto Tirisfal Glades/0 61.43,66.81
step
Leave the Chair |outvehicle |script VehicleExit()
step
clicknpc The Cranberry Chair##34823
|tip Use the "Feast on Cranberries" ability on your vehicle bar.
|tip If the seat is occupied you can wait or try another table.
Eat the Cranberries |complete hasbuff(61841,5) or hasbuff(61849) or completedq(14065) |goto Tirisfal Glades/0 61.40,66.70
step
Leave the Chair |outvehicle |script VehicleExit()
step
clicknpc The Sweet Potato Chair##34824
|tip Use the "Feast on Sweet Potatoes" ability on your vehicle bar.
|tip If the seat is occupied you can wait or try another table.
Eat the Sweet Potatoes |complete hasbuff(61844,5) or hasbuff(61849) or completedq(14065) |goto Tirisfal Glades/0 61.46,66.61
step
Leave the Chair |outvehicle |script VehicleExit()
step
clicknpc The Stuffing Chair##34819
|tip Use the "Feast on Stuffing" ability on your vehicle bar.
|tip If the seat is occupied you can wait or try another table.
Eat the Stuffing |complete hasbuff(61843,5) or hasbuff(61849) or completedq(14065) |goto Tirisfal Glades/0 61.54,66.67
step
Leave the Chair |outvehicle |script VehicleExit()
step
clicknpc The Pie Chair##34822
|tip Use the "Feast on Pie" ability on your vehicle bar.
|tip If the seat is occupied you can wait or try another table.
Eat the Pie |complete hasbuff(61845,5) or hasbuff(61849) or completedq(14065) |goto Tirisfal Glades/0 61.53,66.80
step
Leave the Chair |outvehicle |script VehicleExit()
step
talk Bountiful Feast Hostess##34654
turnin Sharing a Bountiful Feast##14065 |goto Tirisfal Glades/0 61.72,66.78
step
talk Roberta Carter##34712
Train Cooking |skillmax Cooking,1 |goto Tirisfal Glades/0 61.22,66.94
step
talk Roberta Carter##34712
learn Spice Bread##37836 |goto Tirisfal Glades/0 61.22,66.94
step
talk Rose Standish##34683
buy 1 Bountiful Cookbook##46810 |goto Tirisfal Glades/0 61.37,67.41 |q 14037 |future |or
'|learn Slow-Roasted Turkey##66037 |or
step
use the Bountiful Cookbook##46810
collect Recipe: Spice Bread Stuffing##46803 |q 14037 |future |or
'|learn Spice Bread Stuffing##66038 |or
step
use the Bountiful Cookbook##46810
collect Recipe: Pumpkin Pie##46804 |q 14040 |future |or
'|learn Pumpkin Pie##66036 |or
step
use the Bountiful Cookbook##46810
collect Recipe: Cranberry Chutney##46805 |q 14041 |future |or
'|learn Cranberry Chutney##66035 |or
step
use the Bountiful Cookbook##46810
collect Recipe: Candied Sweet Potato##46806 |q 14043 |future |or
'|learn Candied Sweet Potato##66034 |or
step
use the Bountiful Cookbook##46810
collect Recipe: Slow-Roasted Turkey##46807 |q 14047 |future |or
'|learn Slow-Roasted Turkey##66037 |or
step
use the Recipe: Spice Bread Stuffing##46803
learn Spice Bread Stuffing##66038
step
talk Miles Standish##34677
accept Spice Bread Stuffing##14037 |goto Tirisfal Glades/0 61.38,67.49
step
talk Rose Standish##34683
buy 10 Simple Flour##30817 |goto Tirisfal Glades/0 61.37,67.41 |q 14037
buy 10 Mild Spices##2678 |goto Tirisfal Glades/0 61.37,67.41 |q 14037
buy 10 Autumnal Herbs##44835 |goto Tirisfal Glades/0 61.37,67.41 |q 14037
step
create 10 Spice Bread##37836,Cooking,10 total |goto Tirisfal Glades/0 61.26,66.84 |q 14037
|tip Click the line to open your cooking panel and create them.
step
create 10 Spice Bread Stuffing##66038,Cooking,10 total |goto Tirisfal Glades/0 61.26,66.84 |q 14037
|tip Click the line to open your cooking panel and create them.
|tip Save five for later.
step
create Spice Bread Stuffing##66038,Cooking,50 |goto Tirisfal Glades/0 61.26,66.84
|tip Continue making Spice Bread Stuffing to reach 50 Cooking.
|tip Each one requires 1 Spice Bread and 1 Autumnal Herbs.
|tip Each Spice Bread requires 1 Simple Flour and 1 Mild Spices.
step
talk Roberta Carter##34712
Train Journeyman Cooking |skillmax Cooking,150 |goto Tirisfal Glades/0 61.22,66.94
step
create Spice Bread Stuffing##66038,Cooking,100 |goto Tirisfal Glades/0 61.26,66.84
|tip Continue making Spice Bread Stuffing to reach 100 Cooking.
|tip Each one requires 1 Spice Bread and 1 Autumnal Herbs.
|tip Each Spice Bread requires 1 Simple Flour and 1 Mild Spices.
step
talk William Mullins##34768
turnin Spice Bread Stuffing##14037 |goto Tirisfal Glades/0 61.65,68.07
accept Pumpkin Pie##14040 |goto Tirisfal Glades/0 61.65,68.07
step
use the Recipe: Pumpkin Pie##46804
learn Pumpkin Pie##66036
|tip Save five for later.
step
talk Rose Standish##34683
buy 10 Ripe Tirisfal Pumpkin##46796 |goto Tirisfal Glades/0 61.37,67.41 |q 14040
buy 10 Honey##44853 |goto Tirisfal Glades/0 61.37,67.41 |q 14040
step
create 10 Pumpkin Pie##66036,Cooking,10 total |goto Tirisfal Glades/0 61.26,66.84 |q 14040
|tip Click the line to open your cooking panel and create them.
|tip Save five for later.
step
create Pumpkin Pie##66036,Cooking,125 |goto Tirisfal Glades/0 61.26,66.84
|tip Continue making Pumpkin Pie to reach 125 Cooking.
|tip Each one requires 1 Ripe Tirisfal Pumpkin and 1 Honey.
step
talk Roberta Carter##34712
Train Expert Cooking |skillmax Cooking,225 |goto Tirisfal Glades/0 61.22,66.94
step
create Pumpkin Pie##66036,Cooking,160 |goto Tirisfal Glades/0 61.26,66.84
|tip Continue making Pumpkin Pie to reach 160 Cooking.
|tip Each one requires 1 Ripe Tirisfal Pumpkin and 1 Honey.
step
talk Francis Eaton##34679
turnin Pumpkin Pie##14040 |goto Durotar/0 46.59,13.79
accept Cranberry Chutney##14041 |goto Durotar/0 46.59,13.79
step
use the Recipe: Cranberry Chutney##46805
learn Cranberry Chutney##66035
step
talk Dalni Tallgrass##34685
buy 10 Tangy Southfury Cranberries##46793 |goto Durotar/0 46.62,13.79 |q 14041
buy 10 Honey##44853 |goto Durotar/0 46.62,13.79 |q 14041
step
create 10 Cranberry Chutney##66035,Cooking,10 total |goto Durotar/0 46.43,13.86 |q 14041
|tip Click the line to open your cooking panel and create them.
|tip Save these for later.
step
create Cranberry Chutney##66035,Cooking,220 |goto Durotar/0 46.43,13.86
|tip Continue making Cranberry Chutneys to reach 220 Cooking.
|tip Each one requires 1 Tangy Southfury Cranberries and 1 Honey.
step
talk Ondani Greatmill##34713
Train Artisan Cooking |skillmax Cooking,300 |goto Durotar/0 46.37,13.86
step
talk Dokin Farplain##34678
turnin Cranberry Chutney##14041 |goto Thunder Bluff/0 30.85,63.71
accept Candied Sweet Potatoes##14043 |goto Thunder Bluff/0 30.85,63.71
step
use the Recipe: Candied Sweet Potato##46806
learn Candied Sweet Potato##66034
step
talk Laha Farplain##34684
buy 5 Mulgore Sweet Potato##46797 |goto Thunder Bluff/0 31.03,63.32 |q 14043
buy 5 Honey##44853 |goto Thunder Bluff/0 31.03,63.32 |q 14043
buy 5 Autumnal Herbs##44835 |goto Thunder Bluff/0 31.03,63.32 |q 14043
step
create 5 Candied Sweet Potato##66034,Cooking,5 total |goto Thunder Bluff/0 30.57,69.91 |q 14043
|tip Click the line to open your cooking panel and create them.
step
create Candied Sweet Potato##66034,Cooking,280 |goto Thunder Bluff/0 30.57,69.91
|tip Continue making Candied Sweet Potatoes to reach 280 Cooking.
|tip Each one requires 1 Mulgore Sweet Potato, 1 Autumnal Herbs, and 1 Honey.
step
talk Francis Eaton##34679
turnin Candied Sweet Potatoes##14043 |goto Durotar/0 46.58,13.80
accept Undersupplied in the Undercity##14044 |goto Durotar/0 46.58,13.80
step
collect 5 Spice Bread Stuffing##44837 |q 14044/1
|tip You should have these from a previous step.
step
collect 5 Cranberry Chutney##44840 |q 14044/2
|tip You should have these from a previous step.
step
talk Miles Standish##34677
turnin Undersupplied in the Undercity##14044 |goto Tirisfal Glades/0 61.38,67.49
accept Slow-Roasted Turkey##14047 |goto Tirisfal Glades/0 61.38,67.49
step
use the Recipe: Slow-Roasted Turkey##46807
learn Slow-Roasted Turkey##66037
step
kill Wild Turkey##32820+
|tip You can find these all over Tirisfal Glades.
collect 5 Wild Turkey##44834 |goto Tirisfal Glades/0 62.20,56.40 |q 14047
step
talk Rose Standish##34683
buy 10 Honey##44853 |goto Tirisfal Glades/0 61.37,67.41 |q 14047
buy 5 Autumnal Herbs##44835 |goto Tirisfal Glades/0 61.37,67.41 |q 14047
step
create 5 Slow-Roasted Turkey##66037,Cooking,5 total |goto Tirisfal Glades/0 61.26,66.84 |q 14047
|tip Click the line to open your cooking panel and create them.
step
talk Francis Eaton##34679
turnin Slow-roasted Turkey##14047 |goto Durotar/0 46.58,13.80
]])
QuestCore:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Quests\\Pilgrim's Bounty Daily Quests",{
expansion="mists",
mopready=true,
description="This guide section will walk you through completing the daily quests for the Pilgrim's Bounty event.",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
patch='40401',
},[[
step
label "Guide_Start"
Complete the "Pilgrim's Bounty Quests" Event Guide |complete completedq(14047)
step
talk William Mullins##34768
accept She Says Potato##14058 |goto Tirisfal Glades/0 61.65,68.07
step
talk Roberta Carter##34712
accept We're Out of Cranberry Chutney Again?##14059 |goto Tirisfal Glades/0 61.22,66.94
step
talk Rose Standish##34683
buy 20 Ripe Tirisfal Pumpkin##46796 |goto Tirisfal Glades/0 61.37,67.41 |q 14060 |future
buy 20 Simple Flour##30817 |goto Tirisfal Glades/0 61.37,67.41 |q 14062 |future
buy 20 Mild Spices##2678 |goto Tirisfal Glades/0 61.37,67.41 |q 14062 |future
buy 60 Autumnal Herbs##44835 |goto Tirisfal Glades/0 61.37,67.41 |q 14062 |future
buy 100 Honey##44853 |goto Tirisfal Glades/0 61.37,67.41 |q 14060 |future
step
kill Wild Turkey##32820+
|tip You can find these all over Tirisfal Glades.
collect 20 Wild Turkey##44834 |goto Tirisfal Glades/0 62.25,56.43 |q 14061 |future
step
talk Ondani Greatmill##34713
accept Don't Forget The Stuffing!##14062 |goto Durotar/0 46.36,13.85
accept Can't Get Enough Turkey##14061 |goto Durotar/0 46.36,13.85
step
talk Dalni Tallgrass##34685
buy 20 Tangy Southfury Cranberries##46793 |goto Durotar/0 46.61,13.78 |q 14059
step
talk Laha Farplain##34684
buy 20 Mulgore Sweet Potato##46797 |q 14058 |goto Thunder Bluff/0 31.02,63.31
step
talk Mahara Goldwheat##34714
accept Easy As Pie##14060 |goto Thunder Bluff/0 30.97,69.84
step
create 20 Pumpkin Pie##66036,Cooking,20 total |goto Thunder Bluff/0 30.42,69.97 |q 14060
|tip Click the line to open your cooking panel and create them.
step
create 20 Spice Bread##37836,Cooking,20 total |goto Thunder Bluff/0 30.42,69.97 |q 14062
|tip Click the line to open your cooking panel and create them.
step
create 20 Spice Bread Stuffing##66038,Cooking,20 total |goto Thunder Bluff/0 30.42,69.97 |q 14062
|tip Click the line to open your cooking panel and create them.
step
create 20 Slow-Roasted Turkey##66037,Cooking,20 total |goto Thunder Bluff/0 30.42,69.97 |q 14061
|tip Click the line to open your cooking panel and create them.
step
create 20 Candied Sweet Potato##66034,Cooking,20 total |goto Thunder Bluff/0 30.42,69.97 |q 14058
|tip Click the line to open your cooking panel and create them.
step
create 20 Cranberry Chutney##66035,Cooking,20 total |goto Thunder Bluff/0 30.42,69.97 |q 14059
|tip Click the line to open your cooking panel and create them.
step
talk Mahara Goldwheat##34714
turnin Easy As Pie##14060 |goto Thunder Bluff/0 30.97,69.84
step
talk Ondani Greatmill##34713
turnin Can't Get Enough Turkey##14061 |goto Durotar/0 46.36,13.87
turnin Don't Forget The Stuffing!##14062 |goto Durotar/0 46.36,13.87
step
talk Roberta Carter##34712
turnin We're Out of Cranberry Chutney Again?##14059 |goto Tirisfal Glades/0 61.22,66.94
step
talk William Mullins##34768
turnin She Says Potato##14058 |goto Tirisfal Glades/0 61.65,68.07
step
Wait for New Daily Quests |complete not completedq(14060,14061,14062,14059,14058) |next "Guide_Start"
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
Start a Food Fight! |achieve 3579 |goto Tirisfal Glades/0 61.43,66.81
]])
QuestCore:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Achievements\\Now We're Cookin'",{
expansion="mists",
mopready=true,
description="Cook up each of the following Pilgrim's Bounty dishes:\n\n"..
"Candied Sweet Potato\nCranberry Chutney\nPumpkin Pie\n"..
"Slow-Roasted Turkey\nSpice Bread Stuffing",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
achieveid={3577},
patch='40401',
},[[
step
talk Rose Standish##34683
buy 1 Bountiful Cookbook##46810 |goto Tirisfal Glades/0 61.37,67.41
|only if not achieved(3577)
step
talk Roberta Carter##34712
Train Cooking |skillmax Cooking,300 |goto Tirisfal Glades/0 61.22,66.94
step
talk Roberta Carter##34712
learn Spice Bread##37836 |goto Tirisfal Glades/0 61.22,66.94
step
use the Bountiful Cookbook##46810
collect Recipe: Spice Bread Stuffing##46803 |or
'|learn Spice Bread Stuffing##66038 |or
step
use the Bountiful Cookbook##46810
collect Recipe: Pumpkin Pie##46804 |or
'|learn Pumpkin Pie##66036 |or
step
use the Bountiful Cookbook##46810
collect Recipe: Cranberry Chutney##46805 |or
'|learn Cranberry Chutney##66035 |or
step
use the Bountiful Cookbook##46810
collect Recipe: Candied Sweet Potato##46806 |or
'|learn Candied Sweet Potato##66034 |or
step
use the Bountiful Cookbook##46810
collect Recipe: Slow-Roasted Turkey##46807 |or
'|learn Slow-Roasted Turkey##66037 |or
step
use the Recipe: Spice Bread Stuffing##46803
learn Spice Bread Stuffing##66038
step
talk Rose Standish##34683
buy 1 Simple Flour##30817 |goto Tirisfal Glades/0 61.37,67.41
buy 1 Mild Spices##2678 |goto Tirisfal Glades/0 61.37,67.41
buy 1 Autumnal Herbs##44835 |goto Tirisfal Glades/0 61.37,67.41
|only if not achieved(3577)
step
create 1 Spice Bread##37836,Cooking,1 total |goto Tirisfal Glades/0 61.26,66.84 |achieve 3577/5
|tip Click the line to open your cooking panel and create them.
|only if not achieved(3577)
step
create 1 Spice Bread Stuffing##62050,Cooking,1 total |goto Tirisfal Glades/0 61.26,66.84 |achieve 3577/5
|tip Click the line to open your cooking panel and create them.
step
use the Recipe: Pumpkin Pie##46804
learn Pumpkin Pie##66036
step
talk Rose Standish##34683
buy 1 Ripe Tirisfal Pumpkin##46796 |goto Tirisfal Glades/0 61.37,67.41
buy 1 Honey##44853 |goto Tirisfal Glades/0 61.37,67.41
|only if not achieved(3577)
step
create 1 Pumpkin Pie##66036,Cooking,1 total |goto Tirisfal Glades/0 61.26,66.84 |achieve 3577/3
|tip Click the line to open your cooking panel and create it.
step
use the Recipe: Cranberry Chutney##46805
learn Cranberry Chutney##66035
step
talk Dalni Tallgrass##34685
buy 1 Tangy Southfury Cranberries##46793 |goto Durotar/0 46.62,13.79
buy 1 Honey##44853 |goto Durotar/0 46.62,13.79
|only if not achieved(3577)
step
create 1 Cranberry Chutney##66035,Cooking,1 total |goto Durotar/0 46.43,13.86 |achieve 3577/2
|tip Click the line to open your cooking panel and create it.
step
use the Recipe: Candied Sweet Potato##46806
learn Candied Sweet Potato##66034
step
talk Laha Farplain##34684
buy 1 Mulgore Sweet Potato##46797 |goto Thunder Bluff/0 31.03,63.32
buy 1 Honey##44853 |goto Thunder Bluff/0 31.03,63.32
buy 1 Autumnal Herbs##44835 |goto Thunder Bluff/0 31.03,63.32
|only if not achieved(3577)
step
create 1 Candied Sweet Potato##66034,Cooking,1 total |goto Thunder Bluff/0 30.57,69.91 |achieve 3577/1
|tip Click the line to open your cooking panel and create it.
step
use the Recipe: Slow-Roasted Turkey##46807
learn Slow-Roasted Turkey##66037
step
kill Wild Turkey##32820+
|tip You can find these all over Tirisfal Glades.
collect 1 Wild Turkey##44834 |goto Tirisfal Glades/0 62.25,56.43
|only if not achieved(3577)
step
talk Rose Standish##34683
buy 2 Honey##44853 |goto Tirisfal Glades/0 61.37,67.41
buy 1 Autumnal Herbs##44835 |goto Tirisfal Glades/0 61.37,67.41
|only if not achieved(3577)
step
create 1 Slow-Roasted Turkey##66037,Cooking,1 total |goto Tirisfal Glades/0 61.26,66.84 |achieve 3577/4
|tip Click the line to open your cooking panel and create it.
step
Cook a Pilgrim's Bounty Feast |achieve 3577
]])
QuestCore:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Achievements\\Pilgrim",{
expansion="mists",
mopready=true,
description="Complete the following Pilgrim's Bounty achievements:\n\n"..
"\"FOOD FIGHT!\"\nNow We're Cookin'\nPilgrim's Paunch\n"..
"Pilgrim's Peril\nPilgrim's Progress\nSharing is Caring\n"..
"Terokkar Turkey Time\nThe Turkinator\nTurkey Lurkey",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
achieveid={3656},
patch='40401',
},[[
leechsteps "Events Guides\\Pilgrim's Bounty\\Quests\\Pilgrim's Bounty Quests"
leechsteps "Events Guides\\Pilgrim's Bounty\\Quests\\Pilgrim's Bounty Daily Quests" 1-19
leechsteps "Events Guides\\Pilgrim's Bounty\\Achievements\\FOOD FIGHT!" 1-3
leechsteps "Events Guides\\Pilgrim's Bounty\\Achievements\\Pilgrim's Paunch" 1-43
leechsteps "Events Guides\\Pilgrim's Bounty\\Achievements\\Pilgrim's Peril" 1-11
leechsteps "Events Guides\\Pilgrim's Bounty\\Achievements\\Sharing is Caring" 1-12
leechsteps "Events Guides\\Pilgrim's Bounty\\Achievements\\Terokkar Turkey Time" 1-5
leechsteps "Events Guides\\Pilgrim's Bounty\\Achievements\\The Turkinator" 1-3
leechsteps "Events Guides\\Pilgrim's Bounty\\Achievements\\Turkey Lurkey" 1-11
step
Earn the "Pilgrim" Achievement |achieve 3656
]])
QuestCore:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Achievements\\Pilgrim's Paunch",{
expansion="mists",
mopready=true,
description="Acquire the Spirit of Sharing from a complete Bountiful Table feast at the following capital cities:\n\n"..
"Orgrimmar\nSilvermoon City\n"..
"Thunder Bluff\nUndercity",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
achieveid={3557},
patch='40401',
},[[
step
clicknpc The Pie Chair##34822
|tip Use the "Feast On Pie" ability on your action bar five times.
Eat Five Pie Helpings |complete hasbuff(61845,5) or achieved(3556,1) |goto Tirisfal Glades/0 61.53,66.80
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
clicknpc The Turkey Chair##34812
|tip Use the "Feast On Turky" ability on your action bar five times.
Eat Five Turkey Helpings |complete hasbuff(61842,5) or achieved(3556,1) |goto Tirisfal Glades/0 61.43,66.81
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
clicknpc The Cranberry Chair##34823
|tip Use the "Feast On Cranberries" ability on your action bar five times.
Eat Five Cranberry Helpings |complete hasbuff(61841,5) or achieved(3556,1) |goto Tirisfal Glades/0 61.40,66.70
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
clicknpc The Sweet Potato Chair##34824
|tip Use the "Feast On Sweet Potatoes" ability on your action bar five times.
Eat Five Sweet Potato Helpings |complete hasbuff(61844,5) or achieved(3556,1) |goto Tirisfal Glades/0 61.46,66.61
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
clicknpc The Pie Chair##34822
|tip Use the "Feast On Pie" ability on your action bar five times.
Eat Five Pie Helpings |complete hasbuff(61845,5) or achieved(3556,3) |goto Eversong Woods/0 55.62,53.05
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
clicknpc The Turkey Chair##34812
|tip Use the "Feast On Turky" ability on your action bar five times.
Eat Five Turkey Helpings |complete hasbuff(61842,5) or achieved(3556,3) |goto Eversong Woods/0 55.70,53.11
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
clicknpc The Cranberry Chair##34823
|tip Use the "Feast On Cranberries" ability on your action bar five times.
Eat Five Cranberry Helpings |complete hasbuff(61841,5) or achieved(3556,3) |goto Eversong Woods/0 55.70,53.21
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
clicknpc The Sweet Potato Chair##34824
|tip Use the "Feast On Sweet Potatoes" ability on your action bar five times.
Eat Five Sweet Potato Helpings |complete hasbuff(61844,5) or achieved(3556,3) |goto Eversong Woods/0 55.62,53.25
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
clicknpc The Stuffing Chair##34819
|tip Use the "Feast On Stuffing" ability on your action bar five times.
Eat Five Stuffing Helpings |complete hasbuff(61843,5) or achieved(3556,3) |goto Eversong Woods/0 55.57,53.15
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
clicknpc The Stuffing Chair##34819
|tip Use the "Feast On Stuffing" ability on your action bar five times.
Eat Five Stuffing Helpings |complete hasbuff(61843,5) or achieved(3556,1) |goto Tirisfal Glades/0 61.54,66.67
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
clicknpc The Pie Chair##34822
|tip Use the "Feast On Pie" ability on your action bar five times.
Eat Five Pie Helpings |complete hasbuff(61845,5) or achieved(3556,4) |goto Durotar/0 46.58,14.61
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
clicknpc The Turkey Chair##34812
|tip Use the "Feast On Turky" ability on your action bar five times.
Eat Five Turkey Helpings |complete hasbuff(61842,5) or achieved(3556,4) |goto Durotar/0 46.61,14.50
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
clicknpc The Cranberry Chair##34823
|tip Use the "Feast On Cranberries" ability on your action bar five times.
Eat Five Cranberry Helpings |complete hasbuff(61841,5) or achieved(3556,4) |goto Durotar/0 46.68,14.50
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
clicknpc The Sweet Potato Chair##34824
|tip Use the "Feast On Sweet Potatoes" ability on your action bar five times.
Eat Five Sweet Potato Helpings |complete hasbuff(61844,5) or achieved(3556,4) |goto Durotar/0 46.70,14.61
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
clicknpc The Stuffing Chair##34819
|tip Use the "Feast On Stuffing" ability on your action bar five times.
Eat Five Stuffing Helpings |complete hasbuff(61843,5) or achieved(3556,4) |goto Durotar/0 46.64,14.68
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
clicknpc The Pie Chair##34822
|tip Use the "Feast On Pie" ability on your action bar five times.
Eat Five Pie Helpings |complete hasbuff(61845,5) or achieved(3556,4) |goto Thunder Bluff/0 28.96,62.75
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
clicknpc The Turkey Chair##34812
|tip Use the "Feast On Turky" ability on your action bar five times.
Eat Five Turkey Helpings |complete hasbuff(61842,5) or achieved(3556,4) |goto Thunder Bluff/0 28.56,62.79
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
clicknpc The Cranberry Chair##34823
|tip Use the "Feast On Cranberries" ability on your action bar five times.
Eat Five Cranberry Helpings |complete hasbuff(61841,5) or achieved(3556,4) |goto Thunder Bluff/0 28.43,62.31
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
clicknpc The Sweet Potato Chair##34824
|tip Use the "Feast On Sweet Potatoes" ability on your action bar five times.
Eat Five Sweet Potato Helpings |complete hasbuff(61844,5) or achieved(3556,4) |goto Thunder Bluff/0 28.70,61.91
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
clicknpc The Stuffing Chair##34819
|tip Use the "Feast On Stuffing" ability on your action bar five times.
Eat Five Stuffing Helpings |complete hasbuff(61843,5) or achieved(3556,4) |goto Thunder Bluff/0 29.04,62.19
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
label "Earn_Pilgrim's_Paunch"
Acquire the Spirit of Sharing |achieve 3557
]])
QuestCore:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Achievements\\Pilgrim's Peril",{
expansion="mists",
mopready=true,
description="While wearing either a Pilgrim's Dress, Robe, or Attire, take a seat at the following enemy capital cities:\n\n"..
"Darnassus\nThe Exodar\n"..
"Ironforge\nStormwind",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
achieveid={3581},
patch='40401',
},[[
step
Collect a Pilgrim's Dress, Robe, or Attire |complete itemcount (46800) >= 1 or itemcount (44785) >= 1 or itemcount (46824) >= 1 |achieve 3581 |future
|tip You can choose any of these as a reward for completing a Pilgrim's Bounty daily quest.
|tip Use the "Pilgrim's Bounty Daily Quests" event guide to accomplish this.
step
click Portal to Exodar |goto Teldrassil/0 52.28,89.48
Teleport to the Exodar |goto The Exodar/0 29.35,28.25 |c |noway
|only if not achieved(3581)
step
Equip Pilgrim's Attire |equipped Pilgrim's Attire##46800 |only if itemcount (46800) >= 1 |or
Equip Pilgrim's Dress |equipped Pilgrim's Dress##44785 |only if itemcount (44785) >= 1 |or
Equip Pilgrim's Robe |equipped Pilgrim's Robe##46824 |only if itemcount (46824) >= 1 |or
|only if not achieved(3581)
step
clicknpc The Cranberry Chair##34823
|tip Just outside The Exodar.
Take a Seat at the Exodar's Bountiful Table |achieve 3581/2 |goto The Exodar/0 77.14,50.88
step
click Portal to Darnassus |goto The Exodar/0 29.34,28.25
Teleport to Darnassus |goto Teldrassil/0 52.38,89.47 |c |noway
|only if not achieved(3581)
step
clicknpc The Sweet Potato Chair##34824
Take a Seat at Darnassus' Bountiful Table |achieve 3581/1 |goto Darnassus/0 63.91,46.51
step
clicknpc The Stuffing Chair##34819
Take a Seat at Ironforge's Bountiful Table |achieve 3581/3 |goto Dun Morogh/0 59.90,35.37
step
clicknpc The Stuffing Chair##34819
Take a Seat at Stormwind's Bountiful Table |achieve 3581/4 |goto Elwynn Forest/0 34.91,50.38
step
Earn the "Pilgrim's Peril" Achievement |achieve 3581
]])
QuestCore:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Achievements\\Pilgrim's Progress",{
expansion="mists",
mopready=true,
description="Complete the following Pilgrim's Bounty dailies:\n\n"..
"Can't Get Enough Turkey\nDon't Forget The Stuffing!\nEasy As Pie\n"..
"She Says Potato\nWe're Out of Cranberry Chutney Again?",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
achieveid={3597},
patch='40401',
},[[
leechsteps "Events Guides\\Pilgrim's Bounty\\Quests\\Pilgrim's Bounty Daily Quests" 1-19
step
Earn the "Pilgrim's Progress" Achievement |achieve 3597
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
Pass the Pie |achieve 3558/3 |goto Tirisfal Glades/0 61.53,66.80
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
clicknpc The Turkey Chair##34812
|tip Use the "Pass the Turky" ability on your action bar five times.
Pass the Turkey |achieve 3558/4 |goto Tirisfal Glades/0 61.43,66.81
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
clicknpc The Cranberry Chair##34823
|tip Use the "Pass the Cranberries" ability on your action bar five times.
Pass the Cranberries |achieve 3558/2 |goto Tirisfal Glades/0 61.40,66.70
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
clicknpc The Sweet Potato Chair##34824
|tip Use the "Pass the Sweet Potatoes" ability on your action bar five times.
Pass the Sweet Potatoes |achieve 3558/1 |goto Tirisfal Glades/0 61.46,66.61
step
'|script VehicleExit()
Leave the Table |outvehicle
|tip Click the "Exit" button on your action bar.
step
clicknpc The Stuffing Chair##34819
|tip Use the "Pass the Stuffing" ability on your action bar five times.
Pass the Stuffing |achieve 3558/5 |goto Tirisfal Glades/0 61.54,66.67
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
Collect a Pilgrim's Dress, Robe, or Attire |complete itemcount (46800) >= 1 or itemcount (44785) >= 1 or itemcount (46824) >= 1 or achieved(3582)
|tip You can choose any of these as a reward for completing a Pilgrim's Bounty daily quest.
|tip Use the "Pilgrim's Bounty Daily Quests" event guide to accomplish this.
step
collect 1 Pilgrim's Hat##46723 |or
|tip You can choose this as a reward for completing a Pilgrim's Bounty daily quest.
|tip Use the "Pilgrim's Bounty Daily Quests" event guide to accomplish this.
'|complete achieved(3582) |or
step
Equip a Pilgrim's Attire |equipped Pilgrim's Attire##46800 |only if itemcount (46800) >= 1 |or
Equip a Pilgrim's Dress |equipped Pilgrim's Dress##44785 |only if itemcount (44785) >= 1 |or
Equip a Pilgrim's Robe |equipped Pilgrim's Robe##46824 |only if itemcount (46824) >= 1 |or
step
Equip a Pilgrim's Hat |equipped Pilgrim's Attire##46723
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
|tip You will need to fly around Tirisfal Glades.
|tip You will be given 30 seconds for each kill to find a new turkey.
|tip Use your "Track Beast" ability and look for yellow dots on the minimap. |only Hunter
Earn the "Turkinator" Achievement |achieve 3578 |goto Tirisfal Glades/0 62.53,57.85
]])
QuestCore:RegisterGuide("Events Guides\\Noblegarden\\Noblegarden Quests",{
expansion="mists",
mopready=true,
description="This guide section will walk you through completing the quests for the Noblegarden event.",
condition_suggested=function() return isevent('Noblegarden') end,
condition_end=function() return completedq(13503) end,
patch='30401',
},[[
step
talk Orc Commoner##19175
accept Spring Gatherers##13483 |goto Orgrimmar/1 51.60,75.25
step
talk Spring Gatherer##32798
turnin Spring Gatherers##13483 |goto Durotar/0 51.82,42.07
step
talk Noblegarden Merchant##32837
accept A Tisket, a Tasket, a Noblegarden Basket##13503 |goto Durotar/0 51.90,41.87
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip They look like multicolored eggs around trees and objects around this area.
use the Brightly Colored Egg##45072+
collect 10 Noblegarden Chocolate##44791 |q 13503/1 |goto Durotar/0 52.63,42.49
step
talk Noblegarden Merchant##32837
turnin A Tisket, a Tasket, a Noblegarden Basket##13503 |goto Durotar/0 51.90,41.87
]])
QuestCore:RegisterGuide("Events Guides\\Noblegarden\\Noblegarden Dailies",{
expansion="mists",
mopready=true,
condition_suggested=function() return isevent('Noblegarden') end,
description="This guide section will walk you through completing the dailies for the Noblegarden event.",
patch='30401',
},[[
step
talk Orc Commoner##19175
accept Spring Gatherers##13483 |goto Orgrimmar/1 51.44,69.52
step
talk Spring Gatherer##32798
turnin Spring Gatherers##13483 |goto Durotar/0 51.82,42.07
step
label "Begin_Daily_Quests"
talk Spring Gatherer##32798
accept The Great Egg Hunt##13479 |goto Durotar/0 51.82,42.07
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip They look like multicolored eggs around trees and objects around this area.
use the Brightly Colored Egg##45072+
collect 20 Brightly Colored Shell Fragment##44806 |q 13479/1 |goto Durotar/0 52.63,42.49
step
talk Spring Gatherer##32798
turnin The Great Egg Hunt##13479 |goto Durotar/0 51.82,42.07
step
You have completed all Noblegarden daily quests
|tip This guide will reset when more become available.
'|complete not completedq(13479) |next "Begin_Daily_Quests"
]])
QuestCore:RegisterGuide("Events Guides\\Noblegarden\\Achievements\\Blushing Bride",{
expansion="mists",
mopready=true,
description="Kiss someone wearing an Elegant Dress while wearing a White Tuxedo Shirt and Black Tuxedo Pants.",
condition_suggested=function() return isevent('Noblegarden') end,
achieveid={2576},
patch='30401',
keywords={"Noblegarden, Achievement, Noble, Garden"},
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip They look like multicolored eggs around trees and objects around this area.
use the Brightly Colored Egg##45072+
collect 50 Noblegarden Chocolate##44791 |goto Durotar/0 52.63,42.49 |or
'|complete achieved(2576) |or
step
talk Noblegarden Merchant##32837
buy 1 Black Tuxedo Pants##6835 |goto Durotar/0 51.90,41.87 |or
'|complete achieved(2576) |or
step
talk Noblegarden Merchant##32837
buy 1 White Tuxedo Shirt##6833 |goto Durotar/0 51.90,41.87 |or
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
keywords={"Noblegarden, Achievement, Noble, Garden"},
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip They look like multicolored eggs around trees and objects around this area.
use the Brightly Colored Egg##45072+
collect 100 Noblegarden Chocolate##44791 |goto Durotar/0 52.63,42.49 |or
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
keywords={"Noblegarden, Achievement, Noble, Garden"},
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip They look like multicolored eggs around trees and objects around this area.
use the Brightly Colored Egg##45072+
collect 25 Noblegarden Chocolate##44791 |goto Durotar/0 52.63,42.49 |or
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
keywords={"Noblegarden, Achievement, Noble, Garden"},
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip They look like multicolored eggs around trees and objects around this area.
use the Brightly Colored Egg##45072+
collect 50 Noblegarden Chocolate##44791 |goto Durotar/0 52.63,42.49 |or
'|complete achieved(2436) |or
step
talk Noblegarden Merchant##32837
buy 1 Spring Robes##44800 |goto Durotar/0 51.90,41.87 |or
'|complete achieved(2436) |or
step
Equip the Spring Robes |equipped Spring Robes##44800 |or
'|complete achieved(2436) |or
step
use the Spring Robes##44800
Plant a Flower in Desolace |achieve 2436/4 |goto Desolace/0 24.50,70.56
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
Plant a Flower in the Badlands |achieve 2436/2 |goto Badlands/0 4.76,45.33
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
keywords={"Noblegarden, Achievement, Noble, Garden"},
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip They look like multicolored eggs around trees and objects around this area.
|tip You may need to loot hundreds, if not thousands of these eggs.
|tip You must loot this rather than buy it.
|tip Tip if you have the dress in your inventory it will not drop.
use the Brightly Colored Egg##45072+
collect 1 Elegant Dress##19028 |achieve 249 |goto Durotar/0 52.63,42.49 |or
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
keywords={"Noblegarden, Achievement, Noble, Garden"},
},[[
step
talk Uda the Beast##31557
|tip Setting your hearthstone here will greatly reduce your travel time.
|tip You cannot take flight paths or use your mount after getting the buff.
|tip If you cannot get to Dalaran, travel to Silithus and set your hearthstone there before skipping this step.
home Dalaran |goto Dalaran/1 65.64,32.16 |or
'|complete achieved(2416) |or
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip They look like multicolored eggs around trees and objects around this area.
use the Brightly Colored Egg##45072+
Gain the "Noblegarden Bunny" Buff |havebuff Noblegarden Bunny##61734 |goto Durotar/0 52.63,42.49 |or
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
keywords={"Noblegarden, Achievement, Noble, Garden"},
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip They look like multicolored eggs around trees and objects around this area.
collect 1 Brightly Colored Egg##45072 |achieve 2676 |goto Durotar/0 52.63,42.49 |or
'|complete achieved(2676) |or
step
Earn the "I Found One!" Achievement |achieve 2676
]])
QuestCore:RegisterGuide("Events Guides\\Noblegarden\\Achievements\\Noble Garden",{
expansion="mists",
mopready=true,
description="Hide a Brightly Colored Egg in Silvermoon City.",
condition_suggested=function() return isevent('Noblegarden') end,
achieveid={2420},
patch='30401',
keywords={"Noblegarden, Achievement, Noble, Garden"},
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip They look like multicolored eggs around trees and objects around this area.
|tip If you cannot see them, speak to Zidormi outside Undercity.
use the Brightly Colored Egg##45072+
collect 5 Noblegarden Chocolate##44791 |goto Tirisfal Glades/0 60.47,52.27 |or
'|complete achieved(2420) |or
step
talk Noblegarden Merchant##32837
buy 1 Noblegarden Egg##44818 |goto Tirisfal Glades/0 61.35,52.98 |or
'|complete achieved(2420) |or
step
use Noblegarden Egg##44818
Earn the "Noble Garden" Achievement |achieve 2420 |goto Silvermoon City/0 50.62,16.45
]])
QuestCore:RegisterGuide("Events Guides\\Noblegarden\\Achievements\\Shake Your Bunny-Maker",{
expansion="mists",
mopready=true,
description="Use Spring Flowers to place rabbit ears upon players of at least 18th level of the following races:\n\n"..
"Blood Elf\nDraenei\nDwarf\nGnome\nGoblin\nHuman\nNight Elf\nOrc\nTauren\nTroll\nUndead\nWorgen",
condition_suggested=function() return isevent('Noblegarden') end,
achieveid={2422},
patch='30401',
keywords={"Noblegarden, Achievement, Noble, Garden"},
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip They look like multicolored eggs around trees and objects around this area.
use the Brightly Colored Egg##45072+
collect 50 Noblegarden Chocolate##44791 |goto Durotar/0 52.63,42.49 |or
'|complete achieved(2422) |or
step
talk Noblegarden Merchant##32837
buy 1 Spring Flowers##45073 |goto Durotar/0 51.90,41.87 |or
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
"Bloodhoof Village\nBrill\nFalconwing Square\nRazor Hill",
condition_suggested=function() return isevent('Noblegarden') end,
achieveid={2497},
patch='30401',
keywords={"Noblegarden, Achievement, Noble, Garden"},
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip They look like multicolored eggs around trees and objects around this area.
use the Brightly Colored Egg##45072+
collect 100 Noblegarden Chocolate##44791 |goto Durotar/0 52.63,42.49 |or
'|complete achieved(2497) |or
step
talk Noblegarden Merchant##32837
buy 1 Spring Rabbit's Foot##44794 |goto Durotar/0 51.90,41.87 |or
'|complete achieved(2497) |or
step
Find Your Spring Rabbit Another to Love in Bloodhoof Village |achieve 2497/1 |goto Mulgore/0 47.44,59.15
|tip Summon your Spring Rabbit and find another player who has one summoned.
|tip Spring Rabbits are white with brown spots.
|tip Walk near the other player's rabbit to get credit.
step
Find Your Spring Rabbit Another to Love in Razor Hill |achieve 2497/4 |goto Durotar/0 52.63,42.49
|tip Summon your Spring Rabbit and find another player who has one summoned.
|tip Spring Rabbits are white with brown spots.
|tip Walk near the other player's rabbit to get credit.
step
Find Your Spring Rabbit Another to Love in Brill |achieve 2497/2 |goto Tirisfal Glades/0 60.47,52.27
|tip Summon your Spring Rabbit and find another player who has one summoned.
|tip Spring Rabbits are white with brown spots.
|tip Walk near the other player's rabbit to get credit.
step
Find Your Spring Rabbit Another to Love in Falconwing Square |achieve 2497/3 |goto Eversong Woods/0 46.82,46.25
|tip Summon your Spring Rabbit and find another player who has one summoned.
|tip Spring Rabbits are white with brown spots.
|tip Walk near the other player's rabbit to get credit.
step
Earn the "Spring Fling" Achievement |achieve 2497
]])
QuestCore:RegisterGuide("Events Guides\\Noblegarden\\Achievements\\Sunday's Finest",{
expansion="mists",
mopready=true,
description="Discover the White Tuxedo Shirt and Black Tuxedo Pants by opening Brightly Colored Eggs during the Noblegarden celebration.",
condition_suggested=function() return isevent('Noblegarden') end,
achieveid={248},
patch='30401',
keywords={"Noblegarden, Achievement, Noble, Garden"},
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip They look like multicolored eggs around trees and objects around this area.
|tip You may need to loot hundreds, if not thousands of these eggs.
|tip You must loot this rather than buy it.
|tip Tip if you have the shirt in your inventory it will not drop.
use the Brightly Colored Egg##45072+
collect 1 White Tuxedo Shirt##6833 |achieve 248/1 |goto Durotar/0 52.63,42.49 |or
'|complete achieved(248) |or
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip They look like multicolored eggs around trees and objects around this area.
|tip You may need to loot hundreds, if not thousands of these eggs.
|tip You must loot this rather than buy it.
|tip Tip if you have the pants in your inventory it will not drop.
use the Brightly Colored Egg##45072+
collect 1 Black Tuxedo Pants##6835 |achieve 248/2 |goto Durotar/0 52.63,42.49 |or
'|complete achieved(248) |or
step
Earn the "Sunday's Finest" Achievement |achieve 248
]])
