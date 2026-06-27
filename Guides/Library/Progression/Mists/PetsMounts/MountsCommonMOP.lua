-- QuestCore bundled guide (mists)
if not QuestCore then return end
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Cobalt Primordial Direhorn",{
expansion="mists",
keywords={"direhorn","primordial","son","saddle","elite","drop","valley","four","winds","mount"},
model={47716},
mounts={69829},
patch='55000',
mounttype='Ground',
description="This guide will teach you how to acquire the Cobalt Primordial Direhorn mount.",
mopready=true,
},[[
step
kill Oondasta##69161
|tip He is an elite world boss on the Isle of Giants.
collect Reins of the Cobalt Primordial Direhorn##94228 |goto Isle of Giants/0 49.87,54.00 |or
|tip This has an extremely low drop rate.
'|complete hasmount(69829) |or
step
use the Reins of the Cobalt Primordial Direhorn##94228
learnmount Cobalt Primordial Direhorn##69829
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dropped Mounts\\Son of Galleon",{
expansion="mists",
keywords={"galleon","salyis","son","saddle","elite","drop","valley","four","winds","mount"},
model={45264},
mounts={66645},
patch='55000',
mounttype='Ground',
description="This guide will teach you how to acquire the Son of Galleon mount.",
mopready=true,
},[[
step
kill Galleon##62346
|tip He is an elite world boss in the Valley of the Four Winds.
collect Son of Galleon's Saddle##89783 |goto Valley of the Four Winds/0 71.07,64.00 |or
|tip This has an extremely low drop rate.
'|complete hasmount(66645) |or
step
use the Son of Galleon's Saddle##89783
learnmount Son of Galleon##66645
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Bone-White Primal Raptor",{
expansion="mists",
keywords={"bone","white","primal","raptor","ground","mount"},
mounts={138640},
patch='52000',
mounttype='Ground',
model={47825},
description="This guide will teach you how to acquire the Bone-White Primal Raptor mount.",
mopready=true,
},[[
step
Kill Primal enemies around this area
|tip Any dinosaur on this island can drop them.
|tip You may need help with this.
collect 9999 Giant Dinosaur Bone##94288 |goto Isle of Giants/0 46.18,73.67 |complete hasmount(138640)
|tip You can also buy them from the Auction House.
step
Enter the cave |goto Isle of Giants/0 27.48,57.99 < 10 |walk
talk Ku'ma##70022
|tip He walks around inside the cave.
accept A Mountain of Giant Dinosaur Bones##32617 |goto Isle of Giants/0 32.80,54.03
collect Reins of the Bone-White Primal Raptor##94290 |goto Isle of Giants/0 32.80,54.03 |complete hasmount(138640)
step
use the Reins of the Bone-White Primal Raptor##94290
learnmount Bone-White Primal Raptor##138640
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Ashhide Mushan Beast",{
expansion="mists",
keywords={"ashhide","mushan","beast","ground","mount"},
mounts={148428},
patch='54000',
mounttype='Ground',
model={51484},
description="This guide will teach you how to acquire the Ashhide Mushan Beast mount.",
mopready=true,
},[[
step
Collect #1000# Timeless Coins |or
|tip Use the "Timeless Isle Dailies" guide to accomplish this.
Click Here to Load the "Timeless Isle Dailies" guide |confirm |loadguide "Daily Guides\\Mists of Pandaria Dailies\\Timeless Isle Dailies"
'|complete curcount(777) >= 1000 or hastoy(102467) |or
'|complete hasmount(148428) |or
step
talk Speaker Gulan##73307
buy Censer of Eternal Agony##102467 |goto Timeless Isle/0 74.92,44.92 |complete hastoy(102467) |or
'|complete hasmount(148428) |or
step
use Censer of Eternal Agony##102467
Learn the "Censer of Eternal Agony" Toy |complete hastoy(102467) |or
'|complete hasmount(148428) |or
step
use Censer of Eternal Agony##102467
|tip This will turn you into an Emissary of Ordos, causing you to become Hostile with both factions and reduce your health by 10%.
Become an Emissary of Ordos |havebuff Censer of Eternal Agony##148385 |or
'|complete hasmount(148428) |or
step
Collect #500# Bloody Coins |complete curcount(789) >= 500 or hasmount(148428)
|tip These are earned by killing players while you are an Emissary of Ordos.
step
talk Speaker Gulan##73307
buy Reins of the Ashhide Mushan Beast##103638 |goto Timeless Isle/0 74.92,44.92 |or
'|complete hasmount(148428) |or
step
use the Reins of the Ashhide Mushan Beast##103638
learnmount Ashhide Mushan Beast##148428
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Raid Mounts\\Kor'kron Juggernaut",{
expansion="mists",
keywords={"kor'kron","juggernaut","garrosh","hellscream","siege","of","orgrimmar","ground","mount"},
model={51485},
mounts={148417},
patch='54000',
mounttype='Ground',
description="This guide will teach you how to acquire the Kor'kron Juggernaut mount.",
mopready=true,
},[[
step
Press _I_ and queue for the Siege of Orgrimmar or enter the raid normally |goto Siege of Orgrimmar/11 53.80,11.98 < 100 |c |or
'|learnmount Kor'kron Juggernaut##148417 |or
step
kill Garrosh Hellscream##71865
|tip Use the "Siege of Orgrimmar" raid guide to accomplish this.
collect Kor'kron Juggernaut##104253 |or
'|complete hasmount(148417) |or
step
use the Kor'kron Juggernaut##104253
learnmount Kor'kron Juggernaut##148417
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Raid Mounts\\Spawn of Horridon",{
expansion="mists",
keywords={"spawn","horridon","direhorn","ground","mount"},
mounts={136471},
patch='52000',
mounttype='Ground',
model={47238},
description="This guide will teach you how to acquire the Spawn of Horridon mount.",
mopready=true,
},[[
step
Press _I_ and queue for the Throne of Thunder or enter the raid normally |goto Throne of Thunder/2 27.40,79.10 < 100 |c |or
'|complete hasmount(136471) |or
step
kill Horridon##68476
|tip Use the "Throne of Thunder" raid guide to accomplish this.
|tip You may have to kill the Horridon boss more than once to obtain the mount.
Click Here to Load the "Throne of Thunder" raid guide |confirm |loadguide "Dungeon Guides\\Pandaria Raids\\Throne of Thunder"
collect Spawn of Horridon##93666 |or
|complete hasmount(136471) |or
step
use the Spawn of Horridon##93666
learnmount Spawn of Horridon##136471
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Amber Scorpion",{
expansion="mists",
keywords={"amber","scorpion","the","klaxxi","exalted","ground","mount"},
model={43090},
mounts={123886},
patch='50400',
mounttype='Ground',
description="This guide will teach you how to acquire the Amber Scorpion mount.",
mopready=true,
},[[
step
Reach Exalted Reputation with The Klaxxi |complete rep('The Klaxxi') == Exalted |or
|tip Use "The Klaxxi" reputation guide to accomplish this.
Click Here to Load "The Klaxxi" reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\The Klaxxi"
'|complete hasmount(123886) |or
step
talk Ambersmith Zikk##64599
buy Reins of the Amber Scorpion##85262 |goto Dread Wastes/0 55.02,35.55 |or
'|complete hasmount(123886) |or
step
use the Reins of the Amber Scorpion##85262
learnmount Amber Scorpion##123886
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Azure Riding Crane",{
expansion="mists",
keywords={"azure","riding","crane","exalted","the","golden","lotus","ground","mount"},
model={43704},
mounts={127174},
patch='50400',
mounttype='Ground',
description="This guide will teach you how to acquire the Azure Riding Crane mount.",
mopready=true,
},[[
step
Reach Exalted Reputation with the Golden Lotus |complete rep('Golden Lotus') == Exalted |or
|tip Use "The Golden Lotus" reputation guide to accomplish this.
Click Here to Load "The Golden Lotus" reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\The Golden Lotus"
'|complete hasmount(127174) |or
step
talk Zidormi##163463
Select _"Can you show me what the Vale was like before the Black Empire assault?"_
Explore the Vale's Past |havebuff Time Travelling##317931 |goto Vale of Eternal Blossoms/0 80.48,31.96 |or
only if level >= 50
'|complete hasmount(127174) |or
step
talk Jaluu the Generous##59908
buy Reins of the Azure Riding Crane##87781 |goto Vale of Eternal Blossoms/0 84.24,62.79 |or
'|complete hasmount(127174) |or
step
use the Reins of the Azure Riding Crane##87781
learnmount Azure Riding Crane##127174
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Azure Water Strider",{
expansion="mists",
keywords={"azure","water","strider","waterwalking","exalted","the","anglers","ground","mount"},
model={41711},
mounts={118089},
patch='50400',
mounttype='Ground',
description="This guide will teach you how to acquire the Azure Water Strider mount.",
mopready=true,
},[[
step
Reach Exalted Reputation with The Anglers |complete rep('The Anglers') == Exalted |or
|tip Use "The Anglers" reputation guide to accomplish this.
Click Here to Load "The Anglers" reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\The Anglers"
'|complete hasmount(118089) |or
step
talk Nat Pagle##63721
buy Reins of the Azure Water Strider##81354 |goto Krasarang Wilds/0 68.46,43.47 |or
'|complete hasmount(118089) |or
step
use the Reins of the Azure Water Strider##81354
learnmount Azure Water Strider##118089
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Black Riding Goat",{
expansion="mists",
keywords={"black","riding","goat","exalted","the","tillers","ground","mount"},
model={44836},
mounts={130138},
patch='50400',
mounttype='Ground',
description="This guide will teach you how to acquire the Black Riding Goat mount.",
mopready=true,
},[[
step
Reach Exalted Reputation with The Tillers |complete rep('The Tillers') == Exalted |or
|tip Use "The Tillers" reputation guide to accomplish this.
Click Here to Load the "The Tillers" reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\The Tillers"
'|complete hasmount(130138) |or
step
talk Gina Mudclaw##58706
buy Reins of the Black Riding Goat##89391 |goto Valley of the Four Winds/0 53.16,51.80 |or
'|complete hasmount(130138) |or
step
use the Reins of the Black Riding Goat##89391
learnmount Black Riding Goat##130138
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Blue Shado-Pan Riding Tiger",{
expansion="mists",
keywords={"blue","shado-pan","shado","pan","riding","tiger","exalted","the","ground","mount"},
model={43900},
mounts={129934},
patch='50400',
mounttype='Ground',
description="This guide will teach you how to acquire the Blue Shado-Pan Riding Tiger mount.",
mopready=true,
},[[
step
Reach Exalted Reputation with the Shado-Pan |complete rep('Shado-Pan') == Exalted |or
|tip Use the "Shado-Pan Assault" reputation guide to accomplish this.
Click Here to Load the "Shado-Pan Assault" reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\Shado-Pan Assault"
'|complete hasmount(129934) |or
step
talk Rushi the Fox##64595
buy Reins of the Blue Shado-Pan Riding Tiger##89307 |goto Townlong Steppes/0 48.87,70.59 |or
'|complete hasmount(129934) |or
step
use the Reins of the Blue Shado-Pan Riding Tiger##89307
learnmount Blue Shado-Pan Riding Tiger##129934
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Brown Riding Goat",{
expansion="mists",
keywords={"brown","riding","goat","exalted","the","tillers","ground","mount"},
model={44807},
mounts={130086},
patch='50400',
mounttype='Ground',
description="This guide will teach you how to acquire the Brown Riding Goat mount.",
mopready=true,
},[[
step
Reach Exalted Reputation with The Tillers |complete rep('The Tillers') == Exalted
|tip Use "The Tillers" reputation guide to accomplish this.
Click Here to Load the "The Tillers" reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\The Tillers"
'|complete hasmount(130086) |or
step
talk Gina Mudclaw##58706
buy Reins of the Brown Riding Goat##89362 |goto Valley of the Four Winds/0 53.16,51.80 |or
'|complete hasmount(130086) |or
step
use the Reins of the Brown Riding Goat##89362
learnmount Brown Riding Goat##130086
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Golden Riding Crane",{
expansion="mists",
keywords={"golden","riding","crane","exalted","the","golden","lotus","ground","mount"},
model={43705},
mounts={127176},
patch='50400',
mounttype='Ground',
description="This guide will teach you how to acquire the Golden Riding Crane mount.",
mopready=true,
},[[
step
Reach Exalted Reputation with the Golden Lotus |complete rep('Golden Lotus') == Exalted |or
|tip Use "The Golden Lotus" reputation guide to accomplish this.
Click Here to Load "The Golden Lotus" reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\The Golden Lotus"
'|complete hasmount(127176) |or
step
talk Zidormi##163463
Select _"Can you show me what the Vale was like before the Black Empire assault?"_
Explore the Vale's Past |havebuff Time Travelling##317931 |goto Vale of Eternal Blossoms/0 80.48,31.96 |or
'|complete hasmount(127176) |or
only if level >= 50
step
talk Jaluu the Generous##59908
buy Reins of the Golden Riding Crane##87782 |goto Vale of Eternal Blossoms/0 84.24,62.79 |or
'|complete hasmount(127176) |or
step
use the Reins of the Golden Riding Crane##87782
learnmount Golden Riding Crane##127176
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Green Shado-Pan Riding Tiger",{
expansion="mists",
keywords={"green","shado","pan","riding","tiger","ground","mount","exalted","the","shado-pan"},
model={44759},
mounts={129932},
patch='50400',
mounttype='Ground',
description="This guide will teach you how to acquire the Green Shado-Pan Riding Tiger mount.",
mopready=true,
},[[
step
Reach Exalted Reputation with the Shado-Pan |complete rep('Shado-Pan') == Exalted |or
|tip Use the "Shado-Pan Assault" reputation guide to accomplish this.
Click Here to Load the "Shado-Pan Assault" reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\Shado-Pan Assault"
'|complete hasmount(129932) |or
step
talk Rushi the Fox##64595
buy Reins of the Green Shado-Pan Riding Tiger##89305 |goto Townlong Steppes/0 48.87,70.59 |or
'|complete hasmount(129932) |or
step
use the Reins of the Green Shado-Pan Riding Tiger##89305
learnmount Green Shado-Pan Riding Tiger##129932
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Red Shado-Pan Riding Tiger",{
expansion="mists",
keywords={"red","shado-pan","shado","pan","riding","tiger","exalted","the","ground","mount"},
model={44757},
mounts={129935},
patch='50400',
mounttype='Ground',
description="This guide will teach you how to acquire the Red Shado-Pan Riding Tiger mount.",
mopready=true,
},[[
step
Reach Exalted Reputation with the Shado-Pan |complete rep('Shado-Pan') == Exalted |or
|tip Use the "Shado-Pan Assault" reputation guide to accomplish this.
Click Here to Load the "Shado-Pan Assault" reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\Shado-Pan Assault"
'|complete hasmount(129935) |or
step
talk Rushi the Fox##64595
buy Reins of the Red Shado-Pan Riding Tiger##89306 |goto Townlong Steppes/0 48.87,70.59 |or
'|complete hasmount(129935) |or
step
use the Reins of the Red Shado-Pan Riding Tiger##89306
learnmount Red Shado-Pan Riding Tiger##129935
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Regal Riding Crane",{
expansion="mists",
keywords={"regal","riding","crane","exalted","the","golden","lotus","ground","mount"},
model={43706},
mounts={127177},
patch='50400',
mounttype='Ground',
description="This guide will teach you how to acquire the Regal Riding Crane mount.",
mopready=true,
},[[
step
Reach Exalted Reputation with the Golden Lotus |complete rep('Golden Lotus') == Exalted |or
|tip Use "The Golden Lotus" reputation guide to accomplish this.
Click Here to Load "The Golden Lotus" reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\The Golden Lotus"
'|complete hasmount(127177) |or
step
talk Zidormi##163463
Select _"Can you show me what the Vale was like before the Black Empire assault?"_
Explore the Vale's Past |havebuff Time Travelling##317931 |goto Vale of Eternal Blossoms/0 80.48,31.96 |or
'|complete hasmount(127177) |or
only if level >= 50
step
talk Jaluu the Generous##59908
buy Reins of the Regal Riding Crane##87783 |goto Vale of Eternal Blossoms/0 84.24,62.79 |or
'|complete hasmount(127177) |or
step
use the Reins of the Regal Riding Crane##87783
learnmount Regal Riding Crane##127177
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\White Riding Goat",{
expansion="mists",
keywords={"exalted","the","tillers","white","riding","goat","ground","mount"},
model={44837},
mounts={130137},
patch='50400',
mounttype='Ground',
description="This guide will teach you how to acquire the White Riding Goat mount.",
mopready=true,
},[[
step
Reach Exalted Reputation with The Tillers |complete rep('The Tillers') == Exalted |or
|tip Use "The Tillers" reputation guide to accomplish this.
Click Here to Load the "The Tillers" reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\The Tillers"
'|complete hasmount(130137) |or
step
talk Gina Mudclaw##58706
buy Reins of the White Riding Goat##89390 |goto Valley of the Four Winds/0 53.16,51.80 |or
'|complete hasmount(130137) |or
step
use the Reins of the White Riding Goat##89390
learnmount White Riding Goat##130137
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Unavailable Mounts\\Brawler's Burly Mushan Beast",{
expansion="mists",
keywords={"brawler's","burly","mushan","beast","ground","mount"},
mounts={142641},
patch='53000',
mounttype='Ground',
model={48858},
description="This mount has been removed from the game.",
mopready=true,
},[[
step
This mount used to be obtained through the old Brawler's Guild
|tip This mount is no longer obtainable.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Unavailable Mounts\\Kor'kron War Wolf",{
expansion="mists",
keywords={"kor'kron","kor","kron","war","wolf","siege","of","orgrimmar"},
model={51482},
mounts={148396},
patch='54000',
mounttype='Ground',
description="This mount has been removed from the game.",
mopready=true,
},[[
step
This mount used to be awarded for completing the achievement "Ahead of the Curve: Garrosh Hellscream (10/25 player)" in Siege of Orgrimmar
|tip This mount is no longer obtainable.
|tip It was retired from service in patch 6.0.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Unavailable Mounts\\Primal Flamesaber",{
expansion="mists",
keywords={"primal","flame","saber","heroes","of","storm"},
model={74298},
mounts={232405},
patch='72000',
mounttype='Ground',
description="This mount has been removed from the game.",
mopready=true,
},[[
step
This mount used to be awarded from a Promotional Event in Heroes of the Storm
|tip This mount is no longer obtainable.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Vendor Mounts\\Blonde Riding Yak",{
expansion="mists",
keywords={"blonde","riding","yak","ground","mount"},
model={43712},
mounts={127220},
patch='50400',
mounttype='Ground',
description="This guide will teach you how to acquire the Blonde Riding Yak mount.",
mopready=true,
},[[
step
talk Uncle Bigpocket##64518
buy Reins of the Blonde Riding Yak##87789 |goto Kun-Lai Summit/0 65.38,61.78 |or
'|complete hasmount(127220) |or
step
use the Reins of the Blonde Riding Yak##87789
learnmount Blonde Riding Yak##127220
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Vendor Mounts\\Grand Expedition Yak",{
expansion="mists",
keywords={"grand","expedition","yak","ground","mount"},
model={42703},
mounts={122708},
patch='50400',
mounttype='Ground',
description="This guide will teach you how to acquire the Grand Expedition Yak mount.",
mopready=true,
},[[
step
talk Uncle Bigpocket##64518
buy Reins of the Grand Expedition Yak##84101 |goto Kun-Lai Summit/0 65.38,61.78 |or
'|complete hasmount(122708) |or
step
use the Reins of the Grand Expedition Yak##84101
learnmount Grand Expedition Yak##122708
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Vendor Mounts\\Grey Riding Yak",{
expansion="mists",
keywords={"grey","riding","yak","ground","mount"},
model={43711},
mounts={127216},
patch='50400',
mounttype='Ground',
description="This guide will teach you how to acquire the Grey Riding Yak mount.",
mopready=true,
},[[
step
talk Uncle Bigpocket##64518
buy Reins of the Grey Riding Yak##87788 |goto Kun-Lai Summit/0 65.38,61.78 |or
'|complete hasmount(127216) |or
step
use the Reins of the Grey Riding Yak##87788
learnmount Grey Riding Yak##127216
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Armored Skyscreamer",{
expansion="mists",
keywords={"armored","skyscreamer","flying mount"},
model={47256},
mounts={136400},
patch='52000',
mounttype='Flying',
description="This guide will teach you how to acquire the Armored Skyscreamer mount.",
mopready=true,
},[[
step
achieve 8056 |or
'|complete hasmount(136400) |or
step
achieve 8057 |or
'|complete hasmount(136400) |or
step
achieve 8058 |or
'|complete hasmount(136400) |or
step
achieve 8059 |or
'|complete hasmount(136400) |or
step
achieve 8060 |or
'|complete hasmount(136400) |or
step
achieve 8061 |or
'|complete hasmount(136400) |or
step
achieve 8062 |or
'|complete hasmount(136400) |or
step
achieve 8063 |or
'|complete hasmount(136400) |or
step
achieve 8064 |or
'|complete hasmount(136400) |or
step
achieve 8065 |or
'|complete hasmount(136400) |or
step
achieve 8066 |or
'|complete hasmount(136400) |or
step
achieve 8094 |or
'|complete hasmount(136400) |or
step
achieve 8038 |or
'|complete hasmount(136400) |or
step
achieve 8073 |or
'|complete hasmount(136400) |or
step
achieve 8077 |or
'|complete hasmount(136400) |or
step
achieve 8082 |or
'|complete hasmount(136400) |or
step
achieve 8097 |or
'|complete hasmount(136400) |or
step
achieve 8098 |or
'|complete hasmount(136400) |or
step
achieve 8037 |or
'|complete hasmount(136400) |or
step
achieve 8081 |or
'|complete hasmount(136400) |or
step
achieve 8087 |or
'|complete hasmount(136400) |or
step
achieve 8086 |or
'|complete hasmount(136400) |or
step
achieve 8090 |or
'|complete hasmount(136400) |or
step
collect Armored Skyscreamer##93662 |or
|tip You can find it in your mailbox.
'|complete hasmount(136400) |or
step
use the Armored Skyscreamer##93662
learnmount Armored Skyscreamer##136400
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Ashen Pandaren Phoenix",{
expansion="mists",
keywords={"ashen","pandaren","phoenix","pheonix","challenge","mode","silver"},
mounts={132117},
patch='50400',
mounttype='Flying',
model={45521},
description="This guide will teach you how to acquire the Ashen Pandaren Phoenix mount.",
mopready=true,
},[[
step
achieve 6375 |n
|tip Complete every Challenge Mode dungeon with a rating of Silver or better.
collect Ancestral Phoenix Egg##90045 |or
|tip In your mailbox.
'|complete hasmount(132117) |or
step
talk Kai Featherfall##66973
buy Reins of the Ashen Pandaren Phoenix##90710 |or
'|complete hasmount(132117) |or
step
use Reins of the Ashen Pandaren Phoenix##90710
learnmount Ashen Pandaren Phoenix##132117
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Crimson Cloud Serpent",{
expansion="mists",
keywords={"crimson","cloud","serpent","flying","mount"},
model={41592},
mounts={127156},
patch='50400',
mounttype='Flying',
description="This guide will teach you how to acquire the Crimson Cloud Serpent mount.",
mopready=true,
},[[
step
achieve 6925 |or
|tip Use the "Pandaria Dungeon Hero" achievement guide to accomplish this.
Click Here to Load the "Pandaria Dungeon Hero" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Dungeons\\Pandaria Dungeon Hero"
'|complete hasmount(127156) |or
step
achieve 6460 |or
|tip Use the "Hydrophobia" achievement guide to accomplish this.
Click Here to Load the "Hydrophobia" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Dungeons\\Hydrophobia"
'|complete hasmount(127156) |or
step
achieve 6475 |or
|tip Use the "Cleaning Up" achievement guide to accomplish this.
Click Here to Load the "Cleaning Up" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Dungeons\\Cleaning Up"
'|complete hasmount(127156) |or
step
achieve 6671 |or
|tip Use the "Seeds of Doubt" achievement guide to accomplish this.
Click Here to Load the "Seeds of Doubt" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Dungeons\\Seeds of Doubt"
'|complete hasmount(127156) |or
step
achieve 6420 |or
|tip Use the "Hopocalypse Now!" achievement guide to accomplish this.
Click Here to Load the "Hopocalypse Now!" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Dungeons\\Hopocalypse Now!"
'|complete hasmount(127156) |or
step
achieve 6089 |or
|tip Use the "Keep Rollin' Rollin' Rollin'" achievement guide to accomplish this.
Click Here to Load the "Keep Rollin' Rollin' Rollin'" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Dungeons\\Keep Rollin' Rollin' Rollin'"
'|complete hasmount(127156) |or
step
achieve 6400 |or
|tip Use the "How Did He Get Up There?" achievement guide to accomplish this.
Click Here to Load the "How Did He Get Up There?" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Dungeons\\How Did He Get Up There?"
'|complete hasmount(127156) |or
step
achieve 6402 |or
|tip Use the "Ling-Ting's Herbal Journey" achievement guide to accomplish this.
Click Here to Load the "Ling-Ting's Herbal Journey" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Dungeons\\Ling-Ting's Herbal Journey"
'|complete hasmount(127156) |or
step
achieve 6478 |or
|tip Use the "Glintrok N' Roll" achievement guide to accomplish this.
Click Here to Load the "Glintrok N' Roll" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Dungeons\\Glintrok N' Roll"
'|complete hasmount(127156) |or
step
achieve 6736 |or
|tip Use the "What Does This Button Do?" achievement guide to accomplish this.
Click Here to Load the "What Does This Button Do?" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Dungeons\\What Does This Button Do?"
'|complete hasmount(127156) |or
step
achieve 6713 |or
|tip Use the "Quarrelsome Quilen Quintet" achievement guide to accomplish this.
Click Here to Load the "Quarrelsome Quilen Quintet" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Dungeons\\Quarrelsome Quilen Quintet"
'|complete hasmount(127156) |or
step
achieve 6477 |or
|tip Use the "Respect" achievement guide to accomplish this.
Click Here to Load the "Respect" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Dungeons\\Respect"
'|complete hasmount(127156) |or
step
achieve 6472 |or
|tip Use "The Obvious Solution" achievement guide to accomplish this.
Click Here to Load the "The Obvious Solution" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Dungeons\\The Obvious Solution"
'|complete hasmount(127156) |or
step
achieve 6471 |or
|tip Use the "Hate Leads to Suffering" achievement guide to accomplish this.
Click Here to Load the "Hate Leads to Suffering" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Dungeons\\Hate Leads to Suffering"
'|complete hasmount(127156) |or
step
achieve 6479 |or
|tip Use the "Bomberman" achievement guide to accomplish this.
Click Here to Load the "Bomberman" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Dungeons\\Bomberman"
'|complete hasmount(127156) |or
step
achieve 6476 |or
|tip Use the "Conscriptinator" achievement guide to accomplish this.
Click Here to Load the "Conscriptinator" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Dungeons\\Conscriptinator"
'|complete hasmount(127156) |or
step
achieve 6684 |or
|tip Use the "Humane Society" achievement guide to accomplish this.
Click Here to Load the "Humane Society" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Dungeons\\Humane Society"
'|complete hasmount(127156) |or
step
achieve 6427 |or
|tip Use the "Mosh Pit" achievement guide to accomplish this.
Click Here to Load the "Mosh Pit" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Dungeons\\Mosh Pit"
'|complete hasmount(127156) |or
step
achieve 6928 |or
|tip Use the "Burning Man" achievement guide to accomplish this.
Click Here to Load the "Burning Man" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Dungeons\\Burning Man"
'|complete hasmount(127156) |or
step
achieve 6929 |or
|tip Use the "And Stay Dead!" achievement guide to accomplish this.
Click Here to Load the "And Stay Dead!" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Dungeons\\And Stay Dead"
'|complete hasmount(127156) |or
step
achieve 6531 |or
|tip Use the "Attention to Detail" achievement guide to accomplish this.
Click Here to Load the "Attention to Detail" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Dungeons\\Attention to Detail"
'|complete hasmount(127156) |or
step
achieve 6394 |or
|tip Use the "Rattle No More" achievement guide to accomplish this.
Click Here to Load the "Rattle No More" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Dungeons\\Rattle No More"
'|complete hasmount(127156) |or
step
achieve 6396 |or
|tip Use the "Sanguinarian" achievement guide to accomplish this.
Click Here to Load the "Sanguinarian" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Dungeons\\Sanguinarian"
'|complete hasmount(127156) |or
step
achieve 6821 |or
|tip Use the "School's Out Forever" achievement guide to accomplish this.
Click Here to Load the "School's Out Forever" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Dungeons\\School's Out Forever"
'|complete hasmount(127156) |or
step
achieve 6688 |or
|tip Use the "Where's My Air Support?" achievement guide to accomplish this.
Click Here to Load the "Where's My Air Support?" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Dungeons\\Where's My Air Support?"
'|complete hasmount(127156) |or
step
achieve 6485 |or
|tip Use the "Return to Sender" achievement guide to accomplish this.
Click Here to Load the "Return to Sender" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Dungeons\\Return to Sender"
'|complete hasmount(127156) |or
step
achieve 6822 |or
|tip Use the "Run with the Wind" achievement guide to accomplish this.
Click Here to Load the "Run with the Wind" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Dungeons\\Run with the Wind"
'|complete hasmount(127156) |or
step
achieve 6715 |or
|tip Use the "Polyformic Acid Science" achievement guide to accomplish this.
Click Here to Load the "Polyformic Acid Science" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Dungeons\\Polyformic Acid Science"
'|complete hasmount(127156) |or
step
collect 1 Reins of the Crimson Cloud Serpent##87769 |or
|tip You can find it in your mailbox.
'|complete hasmount(127156) |or
step
use the Reins of the Crimson Cloud Serpent##87769
learnmount Crimson Cloud Serpent##127156
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Crimson Pandaren Phoenix",{
expansion="mists",
keywords={"crimson","pandaren","phoenix","pheonix","challenge","mode","silver"},
mounts={129552},
patch='50400',
mounttype='Flying',
model={44633},
description="This guide will teach you how to acquire the Crimson Pandaren Phoenix mount.",
mopready=true,
},[[
step
achieve 6375 |n
|tip Complete every Challenge Mode dungeon with a rating of Silver or better.
collect Ancestral Phoenix Egg##90045 |or
|tip In your mailbox.
'|complete hasmount(129552) |or
step
talk Kai Featherfall##66973
buy Reins of the Crimson Pandaren Phoenix##89154 |or
'|complete hasmount(129552) |or
step
use Reins of the Crimson Pandaren Phoenix##89154
learnmount Crimson Pandaren Phoenix##129552
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Emerald Pandaren Phoenix",{
expansion="mists",
keywords={"emerald","pandaren","phoenix","pheonix","challenge","mode","silver"},
mounts={132118},
patch='50400',
mounttype='Flying',
model={45520},
description="This guide will teach you how to acquire the Emerald Pandaren Phoenix mount.",
mopready=true,
},[[
step
achieve 6375 |n
|tip Complete every Challenge Mode dungeon with a rating of Silver or better.
collect Ancestral Phoenix Egg##90045 |or
|tip In your mailbox.
'|complete hasmount(132118) |or
step
talk Kai Featherfall##66973
buy Reins of the Emerald Pandaren Phoenix##90711 |or
'|complete hasmount(132118) |or
step
use Reins of the Emerald Pandaren Phoenix##90711
learnmount Emerald Pandaren Phoenix##132118
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Heavenly Crimson Cloud Serpent",{
expansion="mists",
keywords={"heavenly","crimson","cloud","serpent","flying","mount"},
model={43692},
mounts={127161},
patch='50400',
mounttype='Flying',
description="This guide will teach you how to acquire the Heavenly Crimson Cloud Serpent mount.",
mopready=true,
},[[
step
achieve 6823 |or
|tip Use the "Must Love Dogs" achievement guide to accomplish this.
Click Here to Load the "Must Love Dogs" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Raids\\Must Love Dogs"
'|complete hasmount(127161) |or
step
achieve 6674 |or
|tip Use the "Anything You Can Do, I Can Do Better..." achievement guide to accomplish this.
Click Here to Load the "Anything You Can Do, I Can Do Better..." achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Raids\\Anything You Can Do, I Can Do Better..."
'|complete hasmount(127161) |or
step
achieve 7056 |or
|tip Use the "Sorry, Were You Looking for This?" achievement guide to accomplish this.
Click Here to Load the "Sorry, Were You Looking for This?" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Raids\\Sorry, Were You Looking for This?"
'|complete hasmount(127161) |or
step
achieve 6686 |or
|tip Use the "Straight Six" achievement guide to accomplish this.
Click Here to Load the "Straight Six" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Raids\\Straight Six"
'|complete hasmount(127161) |or
step
achieve 6937 |or
|tip Use the "Overzealous" achievement guide to accomplish this.
Click Here to Load the "Overzealous" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Raids\\Overzealous"
'|complete hasmount(127161) |or
step
achieve 6936 |or
|tip Use the "Candle in the Wind" achievement guide to accomplish this.
Click Here to Load the "Candle in the Wind" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Raids\\Candle in the Wind"
'|complete hasmount(127161) |or
step
achieve 6553 |or
|tip Use the "Like an Arrow to the Face" achievement guide to accomplish this.
Click Here to Load the "Like an Arrow to the Face" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Raids\\Like an Arrow to the Face"
'|complete hasmount(127161) |or
step
achieve 6683 |or
|tip Use the "Less Than Three" achievement guide to accomplish this.
Click Here to Load the "Less Than Three" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Raids\\Less Than Three"
'|complete hasmount(127161) |or
step
achieve 6518 |or
|tip Use the "I Heard You Like Amber..." achievement guide to accomplish this.
Click Here to Load the "I Heard You Like Amber..." achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Raids\\I Heard You Like Amber..."
'|complete hasmount(127161) |or
step
achieve 6922 |or
|tip Use the "Timing is Everything" achievement guide to accomplish this.
Click Here to Load the "Timing is Everything" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Raids\\Timing is Everything"
'|complete hasmount(127161) |or
step
achieve 6717 |or
|tip Use the "Power Overwhelming" achievement guide to accomplish this.
Click Here to Load the "Power Overwhelming" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Raids\\Power Overwhelming"
'|complete hasmount(127161) |or
step
achieve 6824 |or
|tip Use the "Face Clutchers" achievement guide to accomplish this.
Click Here to Load the "Face Clutchers" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Raids\\Face Clutchers"
'|complete hasmount(127161) |or
step
achieve 6933 |or
|tip Use the "Who's Got Two Green Thumbs?" achievement guide to accomplish this.
Click Here to Load the "Who's Got Two Green Thumbs?" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Raids\\Who's Got Two Green Thumbs?"
'|complete hasmount(127161) |or
step
achieve 6825 |or
|tip Use "The Mind-Killer" achievement guide to accomplish this.
Click Here to Load the "The Mind-Killer" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Raids\\The Mind-Killer"
'|complete hasmount(127161) |or
step
achieve 6719 |or
|tip Use the "Heroic: Stone Guard" achievement guide to accomplish this.
Click Here to Load the "The Mind-Killer" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Raids\\Heroic: Stone Guard"
'|complete hasmount(127161) |or
step
achieve 6720 |or
|tip Use the "Heroic: Feng the Accursed" achievement guide to accomplish this.
Click Here to Load the "Heroic: Feng the Accursed" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Raids\\Heroic: Feng the Accursed"
'|complete hasmount(127161) |or
step
achieve 6721 |or
|tip Use the "Heroic: Gara'jal the Spiritbinder" achievement guide to accomplish this.
Click Here to Load the "Heroic: Gara'jal the Spiritbinder" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Raids\\Heroic: Gara'jal the Spiritbinder"
'|complete hasmount(127161) |or
step
achieve 6722 |or
|tip Use the "Heroic: Four Kings" achievement guide to accomplish this.
Click Here to Load the "Heroic: Four Kings" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Raids\\Heroic: Four Kings"
'|complete hasmount(127161) |or
step
achieve 6723 |or
|tip Use the "Heroic: Elegon" achievement guide to accomplish this.
Click Here to Load the "Heroic: Four Kings" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Raids\\Heroic: Elegon"
'|complete hasmount(127161) |or
step
achieve 6724 |or
|tip Use the "Heroic: Will of the Emperor" achievement guide to accomplish this.
Click Here to Load the "Heroic: Will of the Emperor" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Raids\\Heroic: Will of the Emperor"
'|complete hasmount(127161) |or
step
achieve 6725 |or
|tip Use the "Heroic: Imperial Vizier Zor'lok" achievement guide to accomplish this.
Click Here to Load the "Heroic: Imperial Vizier Zor'lok" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Raids\\Heroic: Imperial Vizier Zor'lok"
'|complete hasmount(127161) |or
step
achieve 6726 |or
|tip Use the "Heroic: Blade Lord Ta'yak" achievement guide to accomplish this.
Click Here to Load the "Heroic: Blade Lord Ta'yak" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Raids\\Heroic: Blade Lord Ta'yak"
'|complete hasmount(127161) |or
step
achieve 6727 |or
|tip Use the "Heroic: Garalon" achievement guide to accomplish this.
Click Here to Load the "Heroic: Garalon" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Raids\\Heroic: Garalon"
'|complete hasmount(127161) |or
step
achieve 6728 |or
|tip Use the "Heroic: Wind Lord Mel'jarak" achievement guide to accomplish this.
Click Here to Load the "Heroic: Wind Lord Mel'jarak" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Raids\\Heroic: Wind Lord Mel'jarak"
'|complete hasmount(127161) |or
step
achieve 6729 |or
'|complete hasmount(127161) |or
step
achieve 6730 |or
'|complete hasmount(127161) |or
step
achieve 6731 |or
|tip Use the "Heroic: Protectors of the Endless" achievement guide to accomplish this.
Click Here to Load the "Heroic: Protectors of the Endless" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Raids\\Heroic: Protectors of the Endless"
'|complete hasmount(127161) |or
step
achieve 6732 |or
|tip Use the "Heroic: Tsulong" achievement guide to accomplish this.
Click Here to Load the "Heroic: Tsulong" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Raids\\Heroic: Tsulong"
'|complete hasmount(127161) |or
step
achieve 6733 |or
|tip Use the "Heroic: Lei Shi" achievement guide to accomplish this.
Click Here to Load the "Heroic: Lei Shi" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Raids\\Heroic: Lei Shi"
'|complete hasmount(127161) |or
step
collect 1 Reins of the Heavenly Crimson Cloud Serpent##87773 |or
|tip You can find it in your mailbox.
'|complete hasmount(127161) |or
step
use the Reins of the Heavenly Crimson Cloud Serpent##87773
learnmount Heavenly Crimson Cloud Serpent##127161
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Jade Pandaren Kite",{
expansion="mists",
keywords={"jade","pandaren","kite","flying","mount"},
model={42147},
mounts={133023},
patch='51000',
mounttype='Flying',
description="This guide will teach you how to acquire the Jade Pandaren Kite mount.",
mopready=true,
},[[
step
achieve 7860 |or
|tip Obtain 150 mounts that are usable by a single character.
'|complete hasmount(133023)
step
collect 1 Jade Pandaren Kite String##91802 |or
|tip It may be in your mailbox.
'|complete hasmount(133023) |or
step
use the Jade Pandaren Kite String##91802
learnmount Jade Pandaren Kite##133023
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Thundering Jade Cloud Serpent",{
expansion="mists",
keywords={"thundering","jade","cloud","serpent","flying","mount"},
model={43686},
mounts={124408},
patch='50400',
mounttype='Flying',
description="This guide will teach you how to acquire the Thundering Jade Cloud Serpent mount.",
mopready=true,
},[[
step
achieve 6682 |or
|tip Use the "Glory of the Pandaria Raider" achievement guide to accomplish this.
|tip You must do this with your guild to earn the "Guild" version of the achievements.
Click Here to Load the "Glory of the Pandaria Raider" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Dungeons\\Glory of the Pandaria Raider"
'|complete hasmount(124408) |or
step
Reach Exalted Reputation with your Guild |complete rep('Guild') == Exalted |or
|tip Complete quests and dailies or run dungeons with a guild tabard equipped to accomplish this.
'|complete hasmount(124408) |or
step
talk Shay Pressler##46602
|tip Inside the building.
buy 1 Reins of the Thundering Jade Cloud Serpent##85666 |goto Orgrimmar/1 48.47,75.58 |or
'|complete hasmount(124408) |or
step
use the Reins of the Thundering Jade Cloud Serpent##85666
learnmount Thundering Jade Cloud Serpent##124408
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Spawn of Galakras",{
expansion="mists",
keywords={"spawn","of","galakras","siege","of","orgrimmar","flying","mount"},
model={51479},
mounts={148392},
patch='54000',
mounttype='Flying',
description="This guide will teach you how to acquire the Spawn of Galakras mount.",
mopready=true,
},[[
step
achieve 8536 |or
'|complete hasmount(148392) |or
step
achieve 8528 |or
'|complete hasmount(148392) |or
step
achieve 8532 |or
'|complete hasmount(148392) |or
step
achieve 8521 |or
|tip Use the "Swallow Your Pride" achievement guide to accomplish this.
Click Here to Load the "Swallow Your Pride" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Raids\\Swallow Your Pride"
'|complete hasmount(148392) |or
step
achieve 8530 |or
|tip Use "The Immortal Vanguard" achievement guide to accomplish this.
Click Here to Load the "The Immortal Vanguard" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Raids\\The Immortal Vanguard"
'|complete hasmount(148392) |or
step
achieve 8520 |or
'|complete hasmount(148392) |or
step
achieve 8453 |or
'|complete hasmount(148392)
step
achieve 8448 |or
|tip Use the "Gamon Will Save Us!" achievement guide to accomplish this.
Click Here to Load the "Gamon Will Save Us!" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Raids\\Gamon Will Save Us!"
'|complete hasmount(148392) |or
step
achieve 8538 |or
'|complete hasmount(148392) |or
step
achieve 8529 |or
'|complete hasmount(148392)
step
achieve 8527 |or
'|complete hasmount(148392)
step
achieve 8543 |or
|tip Use the "Lasers and Magnets and Drills! Oh My!" achievement guide to accomplish this.
Click Here to Load the "Lasers and Magnets and Drills! Oh My!" achievement guide |confirm |loadguide "Achievement Guides\\Dungeons & Raids\\Pandaria Raids\\Lasers and Magnets and Drills! Oh My!"
'|complete hasmount(148392) |or
step
achieve 8531 |or
'|complete hasmount(148392) |or
step
achieve 8537 |or|complete hasmount(148392)
'|complete hasmount(148392) |or
step
collect Reins of Galakras##104208 |or
|tip Find it in your mailbox, or unwrap it in your mount list interface.
'|complete hasmount(148392) |or
step
use the Reins of Galakras##104208
learnmount Spawn of Galakras##148392
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Pandaren Phoenix",{
expansion="mists",
keywords={"violet","pandaren","phoenix","pheonix","challenge","mode","silver"},
mounts={132119},
patch='50400',
mounttype='Flying',
model={45522},
description="This guide will teach you how to acquire the Violet Pandaren Phoenix mount.",
mopready=true,
},[[
step
achieve 6375 |n
|tip Complete every Challenge Mode dungeon with a rating of Silver or better.
collect Ancestral Phoenix Egg##90045 |or
|tip In your mailbox.
'|complete hasmount(132119) |or
step
talk Kai Featherfall##66973
buy Reins of the Violet Pandaren Phoenix##90712 |or
'|complete hasmount(132119) |or
step
use Reins of the Violet Pandaren Phoenix##90712
learnmount Violet Pandaren Phoenix##132119
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Enchanted Fey Dragon",{
expansion="mists",
keywords={"blizzard","store","enchanted","fey","dragon","flying","mount"},
model={59583},
mounts={142878},
patch='53000',
mounttype='Flying',
description="This guide will teach you how to acquire the Enchanted Fey Dragon mount.",
mopready=true,
},[[
step
This mount can be purchased for $25.00 from the official Blizzard Store
|tip Click the Shop button in the bottom-right corner of your screen, then click on Mounts.
collect Enchanted Fey Dragon##97989 |or
|tip You can find it in your mailbox.
'|complete hasmount(142878) |or
step
use the Enchanted Fey Dragon##97989
learnmount Enchanted Fey Dragon##142878
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Promotion Mounts\\Imperial Quilen",{
expansion="mists",
source='Promotion',
author="QuestCore",
description="This guide will teach you how to acquire the Imperial Quilen mount.",
keywords={"imperial","quilen"},
mounts={124659},
mounttype="Flying",
},[[
step
Obtain this mount from the Collector's Edition of Mists of Pandaria, or may be available for purchase in the Blizzard Store.
|tip You may also be awarded this mount for a 6-month or 12-month subscription to World of Warcraft during the promotion of Classic MoP, or from the Trading Post.
learnmount Imperial Quilen##124659
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Warforged Nightmare",{
expansion="mists",
keywords={"blizzard","store","warforged","nightmare","flying","mount"},
model={55896},
mounts={163024},
patch='60100',
mounttype='Flying',
description="This guide will teach you how to acquire the Warforged Nightmare mount.",
mopready=true,
},[[
step
This mount was available for purchase from the Blizzard Store
|tip It may become available again as a Trader's Post mount, or may become available again in the Blizzard online store.
collect Warforged Nightmare##112326 |or
|tip You can find it in your mailbox.
'|complete hasmount(163024) |or
step
use the Warforged Nightmare##112326
learnmount Warforged Nightmare##163024
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Thundering Cobalt Cloud Serpent",{
expansion="mists",
keywords={"heavenly","onyx","cloud","serpent","sha","of","anger","flying","mount"},
model={47981},
mounts={139442},
patch='52000',
mounttype='Flying',
description="This guide will teach you how to acquire the Thundering Cobalt Cloud Serpent mount.",
mopready=true,
},[[
step
kill Nalak##69099
|tip Up in the air.
|tip It has about a 10-20 minute respawn timer.
collect Reins of the Thundering Cobalt Cloud Serpent##95057 |goto Isle of Thunder/0 60.15,37.71 |or
|tip This has an extremely low drop rate.
'|complete hasmount(139442) |or
step
use the Reins of the Thundering Cobalt Cloud Serpent##95057
learnmount Thundering Cobalt Cloud Serpent##139442
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Thundering Onyx Cloud Serpent",{
expansion="mists",
keywords={"thundering","onyx","cloud","serpent","huolon","flying","mount"},
model={51488},
mounts={148476},
patch='54000',
mounttype='Flying',
description="This guide will teach you how to acquire the Thundering Onyx Cloud Serpent mount.",
mopready=true,
},[[
step
kill Huolon##73167
|tip It flies around The Blazing Way but will spawn within melee range at this location.
|tip It has about a 30-60 minute respawn timer.
collect Reins of the Thundering Onyx Cloud Serpent##104269 |goto Timeless Isle/0 65.64,56.97 |or
|tip This has about a 1% drop rate.
'|complete hasmount(148476) |or
step
use the Reins of the Thundering Onyx Cloud Serpent##104269
learnmount Thundering Onyx Cloud Serpent##148476
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Thundering Ruby Cloud Serpent",{
expansion="mists",
keywords={"thundering","ruby","cloud","serpent","alani","skyshard","flying","mount"},
model={45797},
mounts={132036},
patch='50400',
mounttype='Flying',
description="This guide will teach you how to acquire the Thundering Ruby Cloud Serpent mount.",
mopready=true,
},[[
step
Kill level 90 - 92 enemies throughout Pandaria
|tip These have a very low drop rate.
|tip Once you have 10 you will combine them to create a Sky Crystal.
|tip You can also buy this mount from the Auction House if available.
collect 10 Skyshard##86547 |goto Vale of Eternal Blossoms/0 64.20,44.54 |or
'|complete itemcount(86547) >= 10 or itemcount(86546) >= 1 or itemcount(90655) >= 1 or hasmount(132036) |or
'|complete hasmount(132036) |or
step
use Skyshard##86547
collect 1 Sky Crystal##86546 |complete itemcount(86546) >= 1 or itemcount(90655) >= 1 or hasmount(132036) |or
'|complete hasmount(132036) |or
step
clicknpc Alani##64403
|tip It flies around the center and western part of the zone or you can wait for it to fly by you at this location.
use Sky Crystal##86546
|tip Use it on Alani.
collect 1 Reins of the Thundering Ruby Cloud Serpent##90655 |goto Vale of Eternal Blossoms/0 55.79,22.78 |or
'|complete hasmount(132036) |or
step
use the Reins of the Thundering Ruby Cloud Serpent##90655
learnmount Thundering Ruby Cloud Serpent##132036
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Hearthsteed",{
expansion="mists",
keywords={"hearthstone","flying","mount"},
model={48931},
mounts={142073},
patch='53000',
mounttype='Flying',
description="This guide will teach you how to acquire the Hearthsteed mount.",
mopready=true,
},[[
step
achieve 8345 |or
|tip Win 3 games in "Play" or "Arena" mode in Hearthstone to achieve this.
'|complete hasmount(142073) |or
step
collect Hearthsteed##98618 |or
|tip You can find it in your mailbox.
'|complete hasmount(142073) |or
step
use the Hearthsteed##98618
learnmount Hearthsteed##142073
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Onyx Cloud Serpent",{
expansion="mists",
keywords={"exalted","shado-pan","shado","pan","flying","mount"},
model={41990},
mounts={127154},
patch='50400',
mounttype='Flying',
description="This guide will teach you how to acquire the Onyx Cloud Serpent mount.",
mopready=true,
},[[
step
Reach Exalted Reputation with the Shado-Pan |complete rep('Shado-Pan') == Exalted |or
|tip Use the "Shado-Pan Assault" reputation guide to accomplish this.
Click Here to Load the "Shado-Pan Assault" reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\Shado-Pan Assault"
'|complete hasmount(127154) |or
step
talk Master Snowdrift##63009
|tip He walks around this area.
accept Mogu Incursions##31266 |goto Townlong Steppes/0 49.51,70.56 |or
'|complete hasmount(127154) |or
step
kill Shan'ze Spymaster##63888 |q 31266/1 |goto Townlong Steppes/0 48.79,58.65 |or
'|complete hasmount(127154) |or
step
talk Master Snowdrift##63009
|tip He walks around this area.
turnin Mogu Incursions##31266 |goto Townlong Steppes/0 49.51,70.56
accept Surprise Attack!##31277 |goto Townlong Steppes/0 49.51,70.56 |or
'|complete hasmount(127154) |or
step
talk Ban Bearheart##62304
Select _"Alright. Let's go."_
Join the Battle at Niuzao Temple |q 31277/1 |goto Townlong Steppes/0 42.62,63.92 |or
'|complete hasmount(127154) |or
step
Watch the dialogue
Kill the enemies that attack in waves
kill Hei Feng##62309
Defeat the Mogu Invasion |q 31277/2 |goto Townlong Steppes/0 40.89,60.33 |or
'|complete hasmount(127154) |or
step
talk Ban Bearheart##62304
turnin Surprise Attack!##31277 |goto Townlong Steppes/0 49.17,71.05
collect Reins of the Onyx Cloud Serpent##87768 |goto Townlong Steppes/0 49.17,71.05 |or
'|complete hasmount(127154) |or
step
use the Reins of the Onyx Cloud Serpent##87768
learnmount Onyx Cloud Serpent##127154
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\PVP Mounts\\Grievous Gladiator's Cloud Serpent",{
expansion="mists",
keywords={"grievous","gladiators","gladiator's","cloud","serpent","arena"},
mounts={148619},
patch='54000',
mounttype='Flying',
model={51360},
description="This guide will teach you how to acquire the Grievous Gladiator's Cloud Serpent mount.",
mopready=true,
},[[
step
achieve 2091 |or
|tip Reward for the top ranking arena teams (ranked 0.5% or higher) at the conclusion of Arena Season 14.
'|complete hasmount(148619) |or
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\PVP Mounts\\Malevolent Gladiator's Cloud Serpent",{
expansion="mists",
keywords={"malevolent","gladiator's","cloud","serpent","arena"},
mounts={139407},
patch='52000',
mounttype='Flying',
model={47976},
description="This guide will teach you how to acquire the Malevolent Gladiator's Cloud Serpent mount.",
mopready=true,
},[[
step
achieve 2091 |or
|tip Reward for the top ranking arena teams (ranked 0.5% or higher) at the conclusion of Arena Season 12.
'|complete hasmount(139407) |or
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\PVP Mounts\\Prideful Gladiator's Cloud Serpent",{
expansion="mists",
keywords={"prideful","gladiator's","cloud","serpent","arena"},
mounts={148620},
patch='54000',
mounttype='Flying',
model={51359},
description="This guide will teach you how to acquire the Prideful Gladiator's Cloud Serpent mount.",
mopready=true,
},[[
step
achieve 2091 |or
|tip Reward for the top ranking arena teams (ranked 0.5% or higher) at the conclusion of Arena Season 15.
'|complete hasmount(148620) |or
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\PVP Mounts\\Tyrannical Gladiator's Cloud Serpent",{
expansion="mists",
keywords={"tyrannical","gladiator's","cloud","serpent","arena"},
mounts={148618},
patch='54000',
mounttype='Flying',
model={51361},
description="This guide will teach you how to acquire the Tyrannical Gladiator's Cloud Serpent mount.",
mopready=true,
},[[
step
achieve 2091 |or
|tip Reward for the top ranking arena teams (ranked 0.5% or higher) at the conclusion of Arena Season 13.
'|complete hasmount(148620) |or
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Profession Mounts\\Engineering\\Depleted-Kyparium Rocket",{
expansion="mists",
keywords={"engineering","flying","mount","depleted","kyparium"},
model={43637},
mounts={126507},
patch='50400',
mounttype='Flying',
description="This guide will teach you how to acquire the Depleted-Kyparium Rocket mount.",
mopready=true,
},[[
step
Reach 600 Pandaria Engineering |skill Engineering,600 |or
|tip Use the "Engineering 1-600" profession guide to accomplish this.
|tip If you don't want to gather the materials to craft it you can buy it from the Auction House.
Click Here to Open the "Engineering 1-600" |confirm |loadguide "Profession Guides\\Engineering\\Leveling Guides\\Engineering (1-600)"
'|complete hasmount(126507) |or
step
talk Didi the Wrench##93520
|tip Inside the building.
learn Depleted-Kyparium Rocket##127138 |goto Dalaran/1 38.80,24.76 |or
'|complete hasmount(126507) |or
step
collect 12 Living Steel##72104 |or
|tip These are crafted with Trillium Bars and Spirits of Harmony, if you have Alchemy.
|tip Use the "Trillium" and "Spirit of Harmony" profession guides to gather these, if you have Mining.
|tip You can also buy them from the Auction House.
'|complete hasmount(126507) |or
step
collect 200 Kyparite##72093 |or
|tip Use the "Kyparite" farming guide to gather these, if you have Jewelcrafting.
|tip You can also buy them from the Auction House.
'|complete hasmount(126507) |or
step
collect 12 High Explosive Gunpowder##77468 |or
|tip These are created with Ghost Iron Bars.
|tip Use the "Ghost Iron Ore" farming guide to gather these, if you have Mining.
|tip You can also buy them from the Auction House.
'|complete hasmount(126507) |or
step
collect 20 Ghost Iron Bolts##77467 |or
|tip These are created with Ghost Iron Bars.
|tip Use the "Ghost Iron Ore" farming guide to gather these, if you have Mining.
|tip You can also buy them from the Auction House.
'|complete hasmount(126507) |or
step
collect 12 Spirit of Harmony##76061 |or
|tip Use the "Spirit of Harmony" profession guide to gather these.
|tip You can also buy them from the Auction House.
'|complete hasmount(126507) |or
step
talk Big Keech##61650
|tip He walks around this area.
buy 3 Orb of Mystery##83092 |goto Vale of Eternal Blossoms/0 71.52,44.20 |or
He may also be found around [62.26,41.96]
'|complete hasmount(126507) |or
step
Open Your Engineering Crafting Panel:
_<Create 1 Depleted-Kyparium Rocket>_
collect 1 Depleted-Kyparium Rocket##87250 |or
'|complete hasmount(126507) |or
step
use the Depleted-Kyparium Rocket##87250
learnmount Depleted-Kyparium Rocket##126507
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Profession Mounts\\Engineering\\Geosynchronous World Spinner",{
expansion="mists",
keywords={"engineering","flying","mount"},
model={43638},
mounts={126508},
patch='50400',
mounttype='Flying',
description="This guide will teach you how to acquire the Geosynchronous World Spinner mount.",
mopready=true,
},[[
step
Reach 600 Pandaria Engineering |skill Engineering,600 |or
|tip Use the "Engineering 1-600" profession guide to accomplish this.
|tip If you don't want to gather the materials to craft it you can buy it from the Auction House.
Click Here to Open the "Engineering 1-600" |confirm |loadguide "Profession Guides\\Engineering\\Leveling Guides\\Engineering (1-600)"
'|complete hasmount(126507) |or
step
talk Sally Fizzlefury##55143
learn Geosynchronous World Spinner##127138 |goto Valley of the Four Winds/0 16.05,83.14 |or
'|complete hasmount(126507) |or
step
collect 12 Living Steel##72104 |or
|tip These are crafted with Trillium Bars and Spirits of Harmony, if you have Alchemy.
|tip Use the "Trillium" and "Spirit of Harmony" profession guides to gather these, if you have Mining.
|tip You can also buy them from the Auction House.
'|complete hasmount(126507) |or
step
collect 12 Trillium Bar##72095 |or
|tip These are crafted with Trillium Ore.
|tip Use the "Trillium" profession guide to gather these, if you have Mining.
|tip You can also buy them from the Auction House.
'|complete hasmount(126507) |or
step
collect 20 Ghost Iron Bolts##77467 |or
|tip These are created with Ghost Iron Bars.
|tip Use the "Ghost Iron Ore" farming guide to gather these, if you have Mining.
|tip You can also buy them from the Auction House.
'|complete hasmount(126507) |or
step
collect 12 Spirit of Harmony##76061 |or
|tip Use the "Spirit of Harmony" profession guide to gather these.
|tip You can also buy them from the Auction House.
step
talk Big Keech##61650
|tip He walks around this area.
buy 3 Orb of Mystery##83092 |goto Vale of Eternal Blossoms/0 71.52,44.20 |or
He may also be found around [62.26,41.96]
'|complete hasmount(126507) |or
step
Open Your Engineering Crafting Panel:
_<Create 1 Geosynchronous World Spinner>_
collect 1 Geosynchronous World Spinner##87251 |or
'|complete hasmount(126507) |or
step
use the Geosynchronous World Spinner##87251
learnmount Geosynchronous World Spinner##126508
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Profession Mounts\\Engineering\\Sky Golem",{
expansion="mists",
keywords={"engineering","flying","mount"},
model={46686},
mounts={134359},
patch='51000',
mounttype='Flying',
description="This guide will teach you how to acquire the Sky Golem mount.",
mopready=true,
},[[
step
Reach 600 Pandaria Engineering |skill Engineering,600 |or
|tip Use the "Engineering 1-600" profession guide to accomplish this.
|tip If you don't want to gather the materials to craft it you can buy it from the Auction House.
Click Here to Open the "Engineering 1-600" |confirm |loadguide "Profession Guides\\Engineering\\Leveling Guides\\Engineering (1-600)"
'|complete hasmount(134359) |or
step
Kill enemies in the Vale of Eternal Blossoms
collect 1 Schematic: Chief Engineer Jard's Journal##100910 |or
'|complete hasmount(134359) |or
step
use Schematic: Chief Engineer Jard's Journal##100910
accept Chief Engineer Jard's Journal##32630 |or
'|complete hasmount(134359) |or
step
collect 30 Living Steel##72104 |or
|tip These are crafted with Trillium Bars and Spirits of Harmony, if you have Alchemy.
|tip Use the "Trillium" and "Spirit of Harmony" profession guides to gather these, if you have Mining.
|tip You can also buy them from the Auction House.
'|complete hasmount(134359) |or
step
collect 30 Jard's Peculiar Energy Source##94113 |or
|tip These are created with Ghost Iron Bars.
|tip Use the "Ghost Iron Ore" farming guide to gather these, if you have Mining.
|tip These have a daily cooldown, so you will have to wait to do it once every day.
|tip You can also buy them from the Auction House.
'|complete hasmount(134359) |or
step
Open Your Engineering Crafting Panel:
_<Create 1 Sky Golem>_
collect 1 Sky Golem##95416 |or
'|complete hasmount(134359) |or
step
use the Sky Golem##95416
learnmount Sky Golem##134359
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Profession Mounts\\Jewelcrafting\\Jade Panther",{
expansion="mists",
keywords={"jewelcrafting","jade","panther","mount","flying"},
model={42502},
mounts={121837},
patch='50400',
mounttype='Flying',
description="This guide will teach you how to acquire the Jade Panther mount.",
mopready=true,
},[[
step
Reach 600 Jewelcrafting |skill Jewelcrafting,600 |or
|tip Use the "Jewelcrafting 1-600" profession guide to accomplish this.
|tip If you don't want to gather the materials to craft it you can buy it from the Auction House.
Click Here to Open the "Jewelcrafting 1-600" profession guide |confirm |loadguide "Profession Guides\\Jewelcrafting\\Leveling Guides\\Jewelcrafting (1-600)"
'|complete hasmount(121837) |or
step
Reach Honored Reputation with the Order of the Cloud Serpent |complete rep('Order of the Cloud Serpent') == Honored |or
|tip Use "The Order of the Cloud Serpent" reputation guide to accomplish this.
Click Here to Load "The Order of the Cloud Serpent" reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\The Order of the Cloud Serpent"
'|complete hasmount(121837) |or
step
talk San Redscale##58414
buy 1 Design: Jade Panther##83845 |goto The Jade Forest/0 56.70,44.38 |or
'|complete hasmount(121837) |or
step
use the Design: Jade Panther##83845
learn Jade Panther##121844 |or
'|complete hasmount(121837) |or
step
collect 4 Living Steel##72104 |or
|tip These are crafted with Trillium Bars and Spirits of Harmony, if you have Alchemy.
|tip Use the "Trillium" and "Spirit of Harmony" profession guides to gather these, if you have Mining.
|tip You can also buy them from the Auction House.
'|complete hasmount(121837) |or
step
collect 20 Wild Jade##76139 |or
|tip These are crafted with Alexandrite and Golden Lotus, if you have Alchemy.
|tip Use the "Alexandrite" farming guide to gather these, if you have Mining.
|tip Use the "Golden Lotus" profession guide to gather these, if you have Herbalism.
|tip You can also buy them from the Auction House.
'|complete hasmount(121837) |or
step
collect 20 Mote of Harmony##89112 |or
|tip These are dropped by any mob in Pandaria.
|tip You can also buy them from the Auction House.
'|complete hasmount(121837) |or
step
use Mote of Harmony##89112
collect 2 Spirit of Harmony##76061 |or
'|complete hasmount(121837) |or
step
talk Big Keech##61650
|tip He walks around this area.
buy 1 Orb of Mystery##83092 |goto Vale of Eternal Blossoms/0 71.52,44.20 |or
'|complete hasmount(121837) |or
He may also be found around [Vale of Eternal Blossoms/0 62.26,41.96]
step
talk Danky##66685
buy 2 Serpent's Eye##76734 |goto Vale of Eternal Blossoms/0 61.69,21.67 |or
'|complete hasmount(121837) |or
step
Open Your Jewelcrafting Crafting Panel:
_<Create 1 Jade Panther>_
collect 1 Jade Panther##83088 |or
'|complete hasmount(121837) |or
step
use the Jade Panther##83088
learnmount Jade Panther##121837
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Profession Mounts\\Jewelcrafting\\Jeweled Onyx Panther",{
expansion="mists",
keywords={"jewelcrafting","jeweled","onyx","panther","mount","flying"},
model={42185},
mounts={120043},
patch='50400',
mounttype='Flying',
description="This guide will teach you how to acquire the Jeweled Onyx Panther mount.",
mopready=true,
},[[
step
Reach 600 Jewelcrafting |skill Jewelcrafting,600 |or
|tip Use the "Jewelcrafting 1-600" profession guide to accomplish this.
|tip If you don't want to gather the materials to craft it you can buy it from the Auction House.
Click Here to Open the "Jewelcrafting 1-600" |confirm |loadguide "Profession Guides\\Jewelcrafting\\Leveling Guides\\Jewelcrafting (1-600)"
'|complete hasmount(120043) |or
step
Reach Exalted Reputation with the Order of the Cloud Serpent |complete rep('Order of the Cloud Serpent') == Exalted |or
|tip Use "The Order of the Cloud Serpent" reputation guide to accomplish this.
Click Here to Load "The Order of the Cloud Serpent" reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\The Order of the Cloud Serpent"
'|complete hasmount(120043) |or
step
talk San Redscale##58414
buy 1 Design: Jeweled Onyx Panther##83877 |goto The Jade Forest/0 56.70,44.38 |or
'|complete hasmount(120043) |or
step
use the Design: Jeweled Onyx Panther##83877
learn Jeweled Onyx Panther##120045 |or
'|complete hasmount(120043) |or
step
collect 1 Jade Panther##83088 |or
|tip Use the "Jade Panther" mount guide to accomplish this.
'|complete hasmount(120043) |or
step
collect 1 Sapphire Panther##83090 |or
|tip Use the "Sapphire Panther" mount guide to accomplish this.
'|complete hasmount(120043) |or
step
collect 1 Ruby Panther##83087 |or
|tip Use the "Ruby Panther" mount guide to accomplish this.
'|complete hasmount(120043) |or
step
collect 1 Sunstone Panther##83089 |or
|tip Use the "Sunstone Panther" mount guide to accomplish this.
'|complete hasmount(120043) |or
step
Open Your Jewelcrafting Crafting Panel:
_<Create 1 Jeweled Onyx Panther>_
collect 1 Jeweled Onyx Panther##82453 |or
'|complete hasmount(120043) |or
step
use the Jeweled Onyx Panther##82453
Llearnmount Jeweled Onyx Panther##120043
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Profession Mounts\\Jewelcrafting\\Ruby Panther",{
expansion="mists",
keywords={"jewelcrafting","ruby","panther","mount","flying"},
model={42499},
mounts={121838},
patch='50400',
mounttype='Flying',
description="This guide will teach you how to acquire the Ruby Panther mount.",
mopready=true,
},[[
step
Reach 600 Jewelcrafting |skill Jewelcrafting,600 |or
|tip Use the "Jewelcrafting 1-600" profession guide to accomplish this.
|tip If you don't want to gather the materials to craft it you can buy it from the Auction House.
Click Here to Open the "Jewelcrafting 1-600" |confirm |loadguide "Profession Guides\\Jewelcrafting\\Leveling Guides\\Jewelcrafting (1-600)"
'|complete hasmount(121838) |or
step
Reach Revered Reputation with the Order of the Cloud Serpent |complete rep('Order of the Cloud Serpent') == Revered |or
|tip Use "The Order of the Cloud Serpent" reputation guide to accomplish this.
Click Here to Load "The Order of the Cloud Serpent" reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\The Order of the Cloud Serpent"
'|complete hasmount(121838) |or
step
talk San Redscale##58414
buy 1 Design: Ruby Panther##83931 |goto The Jade Forest/0 56.70,44.38 |or
'|complete hasmount(121838) |or
step
use the Design: Ruby Panther##83931
learn Ruby Panther##121841 |or
'|complete hasmount(121838) |or
step
collect 4 Living Steel##72104 |complete hasmount(121838) |or
|tip These are crafted with Trillium Bars and Spirits of Harmony, if you have Alchemy.
|tip Use the "Trillium" and "Spirit of Harmony" profession guides to gather these, if you have Mining.
|tip You can also buy them from the Auction House.
'|complete hasmount(121838) |or
step
collect 20 Sun's Radiance##76142 |complete hasmount(121838) |or
|tip These are crafted with Sunstone and Golden Lotus, if you have Alchemy.
|tip Use the "Sunstone" farming guide to gather these, if you have Mining.
|tip Use the "Golden Lotus" profession guide to gather these, if you have Herbalism.
|tip You can also buy them from the Auction House.
'|complete hasmount(121838) |or
step
collect 20 Mote of Harmony##89112 |or
|tip These are dropped by any mob in Pandaria.
|tip You can also buy them from the Auction House.
'|complete hasmount(121838) |or
step
use Mote of Harmony##89112
collect 2 Spirit of Harmony##76061 |complete hasmount(121838) |or
'|complete hasmount(121838) |or
step
talk Big Keech##61650
|tip He walks around this area.
buy 1 Orb of Mystery##83092 |goto Vale of Eternal Blossoms/0 71.52,44.20 |or
'|complete hasmount(121838) |or
He may also be found around [Vale of Eternal Blossoms/0 62.26,41.96]
step
talk Danky##66685
buy 2 Serpent's Eye##76734 |goto Vale of Eternal Blossoms/0 61.69,21.67 |or
'|complete hasmount(121838) |or
step
Open Your Jewelcrafting Crafting Panel:
_<Create 1 Ruby Panther>_
collect 1 Ruby Panther##83087 |or
'|complete hasmount(121838) |or
step
use the Ruby Panther##83087
learnmount Ruby Panther##121838
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Profession Mounts\\Jewelcrafting\\Sapphire Panther",{
expansion="mists",
keywords={"jewelcrafting","sapphire","panther","mount","flying"},
model={42500},
mounts={121836},
patch='50400',
mounttype='Flying',
description="This guide will teach you how to acquire the Sapphire Panther mount.",
mopready=true,
},[[
step
Reach 600 Jewelcrafting |skill Jewelcrafting,600 |or
|tip Use the "Jewelcrafting 1-600" profession guide to accomplish this.
|tip If you don't want to gather the materials to craft it you can buy it from the Auction House.
Click Here to Open the "Jewelcrafting 1-600" |confirm |loadguide "Profession Guides\\Jewelcrafting\\Leveling Guides\\Jewelcrafting (1-600)"
'|complete hasmount(121836) |or
step
Reach Revered Reputation with the Order of the Cloud Serpent |complete rep('Order of the Cloud Serpent') == Revered |or
|tip Use "The Order of the Cloud Serpent" reputation guide to accomplish this.
Click Here to Load "The Order of the Cloud Serpent" reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\The Order of the Cloud Serpent"
'|complete hasmount(121836) |or
step
talk San Redscale##58414
buy 1 Design: Sapphire Panther##83932 |goto The Jade Forest/0 56.70,44.38 |or
'|complete hasmount(121836) |or
step
use the Design: Sapphire Panther##83932
learn Sapphire Panther##121842 |or
'|complete hasmount(121836) |or
step
collect 4 Living Steel##72104 |complete hasmount(121836) |or
|tip These are crafted with Trillium Bars and Spirits of Harmony, if you have Alchemy.
|tip Use the "Trillium" and "Spirit of Harmony" profession guides to gather these, if you have Mining.
|tip You can also buy them from the Auction House.
'|complete hasmount(121836) |or
step
collect 20 River's Heart##76138 |complete hasmount(121836) |or
|tip These are crafted with Lapis Lazuli and Golden Lotus, if you have Alchemy.
|tip Use the "Lapis Lazuli" farming guide to gather these, if you have Mining.
|tip Use the "Golden Lotus" profession guide to gather these, if you have Herbalism.
|tip You can also buy them from the Auction House.
'|complete hasmount(121836) |or
step
collect 20 Mote of Harmony##89112 |complete hasmount(121836) |or
|tip These are dropped by any mob in Pandaria.
|tip You can also buy them from the Auction House.
'|complete hasmount(121836) |or
step
use Mote of Harmony##89112
collect 2 Spirit of Harmony##76061 |or
'|complete hasmount(121836) |or
step
talk Big Keech##61650
|tip He walks around this area.
buy 1 Orb of Mystery##83092 |goto Vale of Eternal Blossoms/0 71.52,44.20 |or
'|complete hasmount(121836) |or
He may also be found around [Vale of Eternal Blossoms/0 62.26,41.96]
step
talk Danky##66685
buy 2 Serpent's Eye##76734 |goto Vale of Eternal Blossoms/0 61.69,21.67 |or
'|complete hasmount(121836) |or
step
Open Your Jewelcrafting Crafting Panel:
_<Create 1 Sapphire Panther>_
collect 1 Sapphire Panther##83090 |or
'|complete hasmount(121836) |or
step
use the Sapphire Panther##83090
learnmount Sapphire Panther##121836
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Profession Mounts\\Jewelcrafting\\Sunstone Panther",{
expansion="mists",
keywords={"jewelcrafting","sunstone","panther","mount","flying"},
model={42501},
mounts={121839},
patch='50400',
mounttype='Flying',
description="This guide will teach you how to acquire the Sunstone Panther mount.",
mopready=true,
},[[
step
Reach 600 Jewelcrafting |skill Jewelcrafting,600 |or
|tip Use the "Jewelcrafting 1-600" profession guide to accomplish this.
|tip If you don't want to gather the materials to craft it you can buy it from the Auction House.
Click Here to Open the "Jewelcrafting 1-600" |confirm |loadguide "Profession Guides\\Jewelcrafting\\Leveling Guides\\Jewelcrafting (1-600)"
'|complete hasmount(121839) |or
step
Reach Honored Reputation with the Order of the Cloud Serpent |complete rep('Order of the Cloud Serpent') == Honored |or
|tip Use "The Order of the Cloud Serpent" reputation guide to accomplish this.
Click Here to Load "The Order of the Cloud Serpent" reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\The Order of the Cloud Serpent"
'|complete hasmount(121839) |or
step
talk San Redscale##58414
buy 1 Design: Sunstone Panther##83830 |goto The Jade Forest/0 56.70,44.38 |or
'|complete hasmount(121839) |or
step
use the Design: Sunstone Panther##83830
learn Sunstone Panther##121843 |or
'|complete hasmount(121839) |or
step
collect 4 Living Steel##72104 |or
|tip These are crafted with Trillium Bars and Spirits of Harmony, if you have Alchemy.
|tip Use the "Trillium" and "Spirit of Harmony" profession guides to gather these, if you have Mining.
|tip You can also buy them from the Auction House.
'|complete hasmount(121839) |or
step
collect 20 Sun's Radiance##76142 |or
|tip These are crafted with Sunstone and Golden Lotus, if you have Alchemy.
|tip Use the "Sunstone" farming guide to gather these, if you have Mining.
|tip Use the "Golden Lotus" profession guide to gather these, if you have Herbalism.
|tip You can also buy them from the Auction House.
'|complete hasmount(121839) |or
step
collect 20 Mote of Harmony##89112 |or
|tip These are dropped by any mob in Pandaria.
|tip You can also buy them from the Auction House.
'|complete hasmount(121839) |or
step
use Mote of Harmony##89112
collect 2 Spirit of Harmony##76061 |or
'|complete hasmount(121839) |or
step
talk Big Keech##61650
|tip He walks around this area.
buy 1 Orb of Mystery##83092 |goto Vale of Eternal Blossoms/0 71.52,44.20 |or
'|complete hasmount(121839) |or
He may also be found around [Vale of Eternal Blossoms/0 62.26,41.96]
step
talk Danky##66685
buy 2 Serpent's Eye##76734 |goto Vale of Eternal Blossoms/0 61.69,21.67 |or
'|complete hasmount(121839) |or
step
Open Your Jewelcrafting Crafting Panel:
_<Create 1 Sunstone Panther>_
collect 1 Sunstone Panther##83089 |or
'|complete hasmount(121839) |or
step
use the Sunstone Panther##83089
learnmount Sunstone Panther##121839
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Raid Mounts\\Astral Cloud Serpent",{
expansion="mists",
keywords={"mount","astral","cloud","serpent","flying"},
model={46087},
mounts={127170},
patch='50400',
mounttype='Flying',
description="This guide will teach you how to acquire the Astral Cloud Serpent mount.",
mopready=true,
},[[
step
Press _I_ and queue for the Mogu'shan Vaults or enter the raid normally |goto Mogu'shan Vaults/1 75.32,73.82 < 100 |c |or
'|complete hasmount(127170) |or
step
kill Elegon##60410
|tip Use the "Mogu'shan Vaults" raid guide to accomplish this.
Click Here to Load the Mogu'shan Vaults raid guide |confirm |loadguide "Dungeon Guides\\Pandaria Raids\\Mogu'shan Vaults"
click Cache of Pure Energy##214383
collect 1 Reins of the Astral Cloud Serpent##87777 |or
|tip This has about a 3% drop rate.
'|complete hasmount(127170) |or
step
use the Reins of the Astral Cloud Serpent##87777
learnmount Astral Cloud Serpent##127170
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Raid Mounts\\Clutch of Ji-kun",{
expansion="mists",
keywords={"mount","Clutch","of","Ji-kun","flying"},
model={47983},
mounts={139448},
patch='52000',
mounttype='Flying',
description="This guide will teach you how to acquire the Clutch of Ji-kun mount.",
mopready=true,
},[[
step
Press _I_ and queue for Throne of Thunder or enter the raid normally |goto Throne of Thunder/1 29.99,25.61 < 100 |c |or
'|complete hasmount(139448) |or
step
kill Ji-Kun##69712
|tip Use the "Throne of Thunder" raid guide to accomplish this.
Click Here to Load the "Throne of Thunder" raid guide |confirm |loadguide "Dungeon Guides\\Pandaria Raids\\Throne of Thunder"
collect 1 Clutch of Ji-kun##95059 |or
'|complete hasmount(139448) |or
step
use the Clutch of Ji-kun##95059
learnmount Clutch of Ji-kun##139448
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Azure Cloud Serpent",{
expansion="mists",
keywords={"azure","cloud","serpent","mount","order","of","the","cloud","serpent","exalted","flying"},
model={41989},
mounts={123992},
patch='50400',
mounttype='Flying',
description="This guide will teach you how to acquire the Azure Cloud Serpent mount.",
mopready=true,
},[[
step
Reach Exalted Reputation with the Order of the Cloud Serpent |complete rep('Order of the Cloud Serpent') == Exalted |or
|tip Use "The Order of the Cloud Serpent" reputation guide to accomplish this.
Click Here to Load "The Order of the Cloud Serpent" reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\The Order of the Cloud Serpent"
'|complete hasmount(123992) |or
step
talk San Redscale##58414
buy Reins of the Azure Cloud Serpent##85430 |goto The Jade Forest/0 56.70,44.38 |or
'|complete hasmount(123992) |or
step
use the Reins of the Azure Cloud Serpent##85430
learnmount Azure Cloud Serpent##123992
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Golden Cloud Serpent",{
expansion="mists",
keywords={"golden","cloud","serpent","mount","order","of","the","golden","lotus","exalted","flying"},
model={41991},
mounts={123993},
patch='50400',
mounttype='Flying',
description="This guide will teach you how to acquire the Golden Cloud Serpent mount.",
mopready=true,
},[[
step
Reach Exalted Reputation with the Order of the Cloud Serpent |complete rep('Order of the Cloud Serpent') == Exalted |or
|tip Use "The Order of the Cloud Serpent" reputation guide to accomplish this.
Click Here to Load "The Order of the Cloud Serpent" reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\The Order of the Cloud Serpent"
'|complete hasmount(123993) |or
step
talk San Redscale##58414
buy Reins of the Golden Cloud Serpent##85429 |goto The Jade Forest/0 56.70,44.38 |or
'|complete hasmount(123993) |or
step
use the Reins of the Golden Cloud Serpent##85429
learnmount Golden Cloud Serpent##123993
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Heavenly Golden Cloud Serpent",{
expansion="mists",
keywords={"heavenly","golden","cloud","serpent","flying","mount"},
model={43693},
mounts={127164},
patch='50400',
mounttype='Flying',
description="This guide will teach you how to acquire the Heavenly Golden Cloud Serpent mount.",
mopready=true,
},[[
step
Reach Exalted Reputation with Emperor Shaohao |complete rep('Emperor Shaohao') == Exalted |or
|tip Use the "Emperor Shaohao" reputation guide to accomplish this.
Click Here to Load the "Emperor Shaohao" reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\Emperor Shaohao"
'|complete hasmount(127164) |or
step
Collect #100000# Timeless Coins |or
|tip Use the "Timeless Isle Dailies" guide to accomplish this.
'|complete curcount(777) >= 100000 or hasmount(127164) |or
step
talk Mistweaver Ku##73306
buy Reins of the Heavenly Golden Cloud Serpent##87774 |goto Timeless Isle/0 43.09,55.22 |or
'|complete hasmount(127164) |or
step
use Reins of the Heavenly Golden Cloud Serpent##87774
learnmount Heavenly Golden Cloud Serpent##127164
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Jade Cloud Serpent",{
expansion="mists",
keywords={"jade","cloud","serpent","the","golden","lotus","exalted","mount","flying"},
model={40590},
mounts={113199},
patch='50400',
mounttype='Flying',
description="This guide will teach you how to acquire the Jade Cloud Serpent mount.",
mopready=true,
},[[
step
Reach Exalted Reputation with the Order of the Cloud Serpent |complete rep('Order of the Cloud Serpent') == Exalted |or
|tip Use "The Order of the Cloud Serpent" reputation guide to accomplish this.
Click Here to Load "The Order of the Cloud Serpent" reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\The Order of the Cloud Serpent"
'|complete hasmount(113199) |or
step
talk San Redscale##58414
buy Reins of the Jade Cloud Serpent##79802 |goto The Jade Forest/0 56.70,44.38 |or
'|complete hasmount(113199) |or
step
use the Reins of the Jade Cloud Serpent##79802
learnmount Jade Cloud Serpent##113199
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Red Flying Cloud",{
expansion="mists",
keywords={"red","flying","cloud","exalted","the","lorewalkers","mount","flying"},
model={44808},
mounts={130092},
patch='50400',
mounttype='Flying',
description="This guide will teach you how to acquire the Red Flying Cloud mount.",
mopready=true,
},[[
step
Reach Exalted Reputation with The Lorewalkers |complete rep('The Lorewalkers') == Exalted |or
|tip Use the "Lorewalkers" reputation guide to accomplish this.
Click Here to Load the "Lorewalkers" reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\Lorewalkers"
'|complete hasmount(130092) |or
step
talk Tan Shin Tiao##64605
|tip Inside the building.
buy Disc of the Red Flying Cloud##89363 |goto Vale of Eternal Blossoms/0 82.22,29.27 |or
'|complete hasmount(130092) |or
step
use the Disc of the Red Flying Cloud##89363
learnmount Red Flying Cloud##130092
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Thundering August Cloud Serpent",{
expansion="mists",
keywords={"thundering","august","cloud","serpent","exalted","celestials","mount","flying"},
model={43686},
mounts={129918},
patch='50400',
mounttype='Flying',
description="This guide will teach you how to acquire the Thundering August Cloud Serpent mount.",
mopready=true,
},[[
step
Reach Exalted Reputation with The August Celestials |complete rep('The August Celestials') == Exalted |or
|tip Use "The August Celestials" reputation guide to accomplish this.
Click Here to Load "The August Celestials" reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\The August Celestials"
'|complete hasmount(129918) |or
step
talk Sage Whiteheart##64032
buy Reins of the Thundering August Cloud Serpent##89304 |goto Vale of Eternal Blossoms/0 84.62,63.79 |or
'|complete hasmount(129918) |or
step
use the Reins of the Thundering August Cloud Serpent##89304
learnmount Thundering August Cloud Serpent##129918
]])
