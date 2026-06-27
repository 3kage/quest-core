-- Bundled QuestCore guide
if not QuestCore then return end

if UnitFactionGroup("player")~="Horde" then return end
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\World Event Mounts\\Heartseeker Mana Ray",{
description="Not to be kept indoors if you live in a wooden house.",
mounts={427777},
mounttype='Flying',
startlevel=10,
keywords={"Flying","Mana Ray","Love is in the Air","Event"},
patch='100205',
},[[
step
Wait for the "Love is in the Air" Event |complete isevent("Love is in the Air") |or
'|complete hasmount(427777) |or
step
collect 270 Love Token##49927 |or
|tip Acquire these by completing Love is in the Air event quests and daily quests.
|tip Use the Love is in the Air Event Guides.
|loadguide "Events Guides\\Love is in the Air\\Love is in the Air Main Questline" |n
|tip
|loadguide "Events Guides\\Love is in the Air\\Love is in the Air Dailies" |n
'|complete hasmount(427777) |or
step
talk Lythianne Morningspear##214481
Select _"Let me browse your goods."_ |gossip 114355
buy Heartseeker Mana Ray##210973 |goto Durotar/0 41.90,17.29 |or
'|complete hasmount(427777) |or
step
use Heartseeker Mana Ray##210973
learnpet Heartseeker Mana Ray##427777
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Vendor Mounts\\Remembered Wind Rider",{
description="They love lions in Stormwind, and the gryphon is half lion. This is why these creatures are an air travel staple throughout the Alliance.",
mounts={441325},
mounttype='Flying',
startlevel=70,
keywords={"TWW","The War Within","Pre-Patch Event"},
patch='110002',
},[[
step
This Mount, Associated Currency, and Vendor may only be Available during The War Within Pre-Patch Event
Click Here to Continue |confirm |next
step
earn 20000 Residual Memories##3089 |or
|tip You can no longer acquire this currency.
'|complete hasmount(441325) |or
step
talk Remembrancer Amuul <Residual Memories Vendor>##223710
|tip Inside the Chamber of the Guardian, through the portal in the middle of Legion Dalaran, and all the way down the stairs.
buy Remembered Wind Rider##217987 |goto Dalaran L/12 33.33,84.51 |or
'|complete hasmount(441325) |or
step
use Remembered Wind Rider##217987
Learn the "Remembered Wind Rider" Mount |learnmount Remembered Wind Rider##441325
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\PVP Mounts\\Vicious Skyflayer",{
description="This guide will help you acquire the 'Vicious Skyflayer' mount.",
mounts={447405},
mounttype='Flying',
startlevel=80,
keywords={"TWW","The War Within","PVP","Achievement"},
patch='110002',
},[[
step
achieve 40396
|tip Win Rated PvP matches during The War Within Season 1 while at 1000 rating or higher.
collect Vicious Skyflayer##221813 |or
'|complete hasmount(447405) |or
step
use Vicious Skyflayer##221813
learnmount Vicious Skyflayer##447405
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\PVP Mounts\\Vicious Electro Eel",{
description="These aquatic beasts enjoy torturing the Alliance with their electric shocks.",
mounts={466145},
mounttype='Flying',
startlevel=80,
keywords={"TWW","The War Within","PVP","Achievement"},
patch='110002',
},[[
step
achieve 41129
|tip Win Rated PvP matches during The War Within Season 2 while at 1000 rating or higher (2400).
collect Vicious Electro Eel##229988 |or
'|complete hasmount(466145) |or
step
use Vicious Electro Eel##229988
learnmount Vicious Electro Eel##466145
]])
