-- QuestCore bundled guide (mists)
if not QuestCore then return end
if UnitFactionGroup("player")~="Horde" then return end
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Crimson Primal Direhorn",{
expansion="mists",
keywords={"crimson","prime","direhorn","exalted","sunreaver","onslaught","ground","mount"},
model={48101},
mounts={140250},
patch='52000',
mounttype='Ground',
description="This guide will teach you how to acquire the Crimson Primal Direhorn mount.",
mopready=true,
},[[
step
Reach Exalted Reputation with the Sunreaver Onslaught |complete rep('Sunreaver Onslaught') == Exalted |or
|tip Use the "Sunreaver Onslaught" reputation guide to accomplish this.
Click Here to Load the "Sunreaver Onslaught" reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\Sunreaver Onslaught"
'|complete hasmount(140250) |or
step
talk Vasarin Redmorn##67672
buy Reins of the Crimson Primal Direhorn##95565 |goto Isle of Thunder/0 33.34,32.38 |or
'|complete hasmount(140250) |or
step
use the Reins of the Crimson Primal Direhorn##95565
learnmount Crimson Primal Direhorn##140250
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Black Dragon Turtle",{
expansion="mists",
keywords={"Huojin","black","dragon","turtle","ground","mount"},
model={43717},
mounts={127286},
patch='50500',
mounttype='Ground',
description="This guide will teach you how to acquire the Black Dragon Turtle mount.",
mopready=true,
},[[
step
Reach Exalted Reputation with the Huojin Pandaren |complete rep('Huojin Pandaren') == Exalted |or
|tip Use the "Huojin Pandaren" Reputation guide to accomplish this.
Click Here to Load the "Huojin Pandaren" Reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\Huojin Pandaren"
'|complete hasmount(127286) |or
only if not Pandaren
step
talk Turtlemaster Odai##66022
buy Reins of the Black Dragon Turtle##87795 |goto Orgrimmar/1 69.84,41.15 |or
'|complete hasmount(127286) |or
step
use the Reins of the Black Dragon Turtle##87795
learnmount Black Dragon Turtle##127286
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Blue Dragon Turtle",{
expansion="mists",
keywords={"Huojin","blue","dragon","turtle","ground","mount"},
model={43718},
mounts={127287},
patch='50500',
mounttype='Ground',
description="This guide will teach you how to acquire the Blue Dragon Turtle mount.",
mopready=true,
},[[
step
Reach Exalted Reputation with the Huojin Pandaren |complete rep('Huojin Pandaren') == Exalted |or
|tip Use the "Huojin Pandaren" Reputation guide to accomplish this.
Click Here to Load the "Huojin Pandaren" Reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\Huojin Pandaren"
'|complete hasmount(127287) |or
only if not Pandaren
step
talk Turtlemaster Odai##66022
buy Reins of the Blue Dragon Turtle##87796 |goto Orgrimmar/1 69.84,41.15 |or
'|complete hasmount(127287) |or
step
use the Reins of the Blue Dragon Turtle##87796
learnmount Blue Dragon Turtle##127287
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Brown Dragon Turtle",{
expansion="mists",
keywords={"Huojin","brown","dragon","turtle","ground","mount"},
model={43719},
mounts={127288},
patch='50500',
mounttype='Ground',
description="This guide will teach you how to acquire the Brown Dragon Turtle mount.",
mopready=true,
},[[
step
Reach Exalted Reputation with the Huojin Pandaren |complete rep('Huojin Pandaren') == Exalted |or
|tip Use the "Huojin Pandaren" Reputation guide to accomplish this.
Click Here to Load the "Huojin Pandaren" Reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\Huojin Pandaren"
'|complete hasmount(127288) |or
only if not Pandaren
step
talk Turtlemaster Odai##66022
buy Reins of the Brown Dragon Turtle##91005 |goto Orgrimmar/1 69.84,41.15 |or
'|complete hasmount(127288) |or
step
use the Reins of the Brown Dragon Turtle##91005
learnmount Brown Dragon Turtle##127288
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Great Black Dragon Turtle",{
expansion="mists",
keywords={"Huojin","great","black","dragon","turtle","ground","mount"},
model={43723},
mounts={127295},
patch='50500',
mounttype='Ground',
description="This guide will teach you how to acquire the Great Black Dragon Turtle mount.",
mopready=true,
},[[
step
Reach Exalted Reputation with the Huojin Pandaren |complete rep('Huojin Pandaren') == Exalted |or
|tip Use the "Huojin Pandaren" Reputation guide to accomplish this.
Click Here to Load the "Huojin Pandaren" Reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\Huojin Pandaren"
'|complete hasmount(127295) |or
only if not Pandaren
step
talk Turtlemaster Odai##66022
buy Great Reins of the Black Dragon Turtle##87802 |goto Orgrimmar/1 69.84,41.15 |or
'|complete hasmount(127295) |or
step
use the Reins of the Great Black Dragon Turtle##87802
learnmount Great Black Dragon Turtle##127295
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Great Blue Dragon Turtle",{
expansion="mists",
keywords={"Huojin","great","blue","dragon","turtle","ground","mount"},
model={43724},
mounts={127302},
patch='50400',
mounttype='Ground',
description="This guide will teach you how to acquire the Great Blue Dragon Turtle mount.",
mopready=true,
},[[
step
Reach Exalted Reputation with the Huojin Pandaren |complete rep('Huojin Pandaren') == Exalted |or
|tip Use the "Huojin Pandaren" Reputation guide to accomplish this.
Click Here to Load the "Huojin Pandaren" Reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\Huojin Pandaren"
'|complete hasmount(127302) |or
only if not Pandaren
step
talk Turtlemaster Odai##66022
buy Reins of the Blue Dragon Turtle##91013 |goto Orgrimmar/1 69.84,41.15 |or
'|complete hasmount(127302) |or
step
use the Reins of the Great Blue Dragon Turtle##91013
learnmount Great Blue Dragon Turtle##127302
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Great Brown Dragon Turtle",{
expansion="mists",
keywords={"Huojin","great","brown","dragon","ninja","turtle","ground","mount"},
model={43725},
mounts={127308},
patch='50400',
mounttype='Ground',
description="This guide will teach you how to acquire the Great Brown Dragon Turtle mount.",
mopready=true,
},[[
step
Reach Exalted Reputation with the Huojin Pandaren |complete rep('Huojin Pandaren') == Exalted |or
|tip Use the "Huojin Pandaren" Reputation guide to accomplish this.
Click Here to Load the "Huojin Pandaren" Reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\Huojin Pandaren"
'|complete hasmount(127308) |or
only if not Pandaren
step
talk Turtlemaster Odai##66022
buy Reins of the Great Brown Dragon Turtle##91014 |goto Orgrimmar/1 69.84,41.15 |or
'|complete hasmount(127308) |or
step
use the Reins of the Great Brown Dragon Turtle##91014
learnmount Great Brown Dragon Turtle##127308
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Great Green Dragon Turtle",{
expansion="mists",
keywords={"Huojin","green","dragon","turtle","ground","mount"},
model={43719},
mounts={127288},
patch='50500',
mounttype='Ground',
description="This guide will teach you how to acquire the Great Green Dragon Turtle mount.",
mopready=true,
},[[
step
Reach Exalted Reputation with the Huojin Pandaren |complete rep('Huojin Pandaren') == Exalted |or
|tip Use the "Huojin Pandaren" Reputation guide to accomplish this.
Click Here to Load the "Huojin Pandaren" Reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\Huojin Pandaren"
'|complete hasmount(127288) |or
only if not Pandaren
step
talk Turtlemaster Odai##66022
buy Reins of the Great Green Dragon Turtle##91005 |goto Orgrimmar/1 69.84,41.15 |or
'|complete hasmount(127288) |or
step
use the Reins of the Great Green Dragon Turtle##91005
learnmount Green Dragon Turtle##127288
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Great Purple Dragon Turtle",{
expansion="mists",
keywords={"Huojin","purple","dragon","turtle","ground","mount"},
model={43726},
mounts={127310},
patch='50400',
mounttype='Ground',
description="This guide will teach you how to acquire the Great Purple Dragon Turtle mount.",
mopready=true,
},[[
step
Reach Exalted Reputation with the Huojin Pandaren |complete rep('Huojin Pandaren') == Exalted |or
|tip Use the "Huojin Pandaren" Reputation guide to accomplish this.
Click Here to Load the "Huojin Pandaren" Reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\Huojin Pandaren"
'|complete hasmount(127310) |or
only if not Pandaren
step
talk Turtlemaster Odai##66022
buy Reins of the Great Purple Dragon Turtle##87805 |goto Orgrimmar/1 69.84,41.15 |or
'|complete hasmount(127310) |or
step
use the Reins of the Great Purple Dragon Turtle##87805
learnmount Great Purple Dragon Turtle##127310
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Great Red Dragon Turtle",{
expansion="mists",
keywords={"great","red","dragon","turtle","ground","mount"},
model={42352},
mounts={120822},
patch='50400',
mounttype='Ground',
description="This guide will teach you how to acquire the Great Red Dragon Turtle mount.",
mopready=true,
},[[
step
Reach Exalted Reputation with the Huojin Pandaren |complete rep('Huojin Pandaren') == Exalted |or
|tip Use the "Huojin Pandaren" Reputation guide to accomplish this.
Click Here to Load the "Huojin Pandaren" Reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\Huojin Pandaren"
'|complete hasmount(120822) |or
only if not Pandaren
step
talk Turtlemaster Odai##66022
buy Reins of the Great Red Dragon Turtle##91010 |goto Orgrimmar/1 69.84,41.15 |or
'|complete hasmount(120822) |or
step
use the Reins of the Great Red Dragon Turtle##91010
learnmount Great Red Dragon Turtle##120822
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Green Dragon Turtle",{
expansion="mists",
keywords={"Huojin","green","dragon","turtle","ground","mount"},
model={43719},
mounts={120395},
patch='50500',
mounttype='Ground',
description="This guide will teach you how to acquire the Green Dragon Turtle mount.",
mopready=true,
},[[
step
Reach Exalted Reputation with the Huojin Pandaren |complete rep('Huojin Pandaren') == Exalted |or
|tip Use the "Huojin Pandaren" Reputation guide to accomplish this.
Click Here to Load the "Huojin Pandaren" Reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\Huojin Pandaren"
'|complete hasmount(120395) |or
only if not Pandaren
step
talk Turtlemaster Odai##66022
buy Reins of the Green Dragon Turtle##82765 |goto Orgrimmar/1 69.84,41.15 |or
'|complete hasmount(120395) |or
step
use the Reins of the Green Dragon Turtle##82765
learnmount Green Dragon Turtle##120395
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Purple Dragon Turtle",{
expansion="mists",
keywords={"tushui","purple","dragon","turtle","ground","mount"},
model={43910},
mounts={127289},
patch='50400',
mounttype='Ground',
description="This guide will teach you how to acquire the Purple Dragon Turtle mount.",
mopready=true,
},[[
step
Reach Exalted Reputation with the Huojin Pandaren |complete rep('Huojin Pandaren') == Exalted |or
|tip Use the "Huojin Pandaren" Reputation guide to accomplish this.
Click Here to Load the "Huojin Pandaren" Reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\Huojin Pandaren"
'|complete hasmount(127289) |or
only if not Pandaren
step
talk Turtlemaster Odai##66022
buy Reins of the Purple Dragon Turtle##91006 |goto Orgrimmar/1 69.84,41.15 |or
'|complete hasmount(127289) |or
step
use the Reins of the Purple Dragon Turtle##91006
learnmount Purple Dragon Turtle##127289
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Red Dragon Turtle",{
expansion="mists",
keywords={"tushui","red","dragon","turtle","ground","mount"},
model={43910},
mounts={127290},
patch='50400',
mounttype='Ground',
description="This guide will teach you how to acquire the Red Dragon Turtle mount.",
mopready=true,
},[[
step
Reach Exalted Reputation with the Huojin Pandaren |complete rep('Huojin Pandaren') == Exalted |or
|tip Use the "Huojin Pandaren" Reputation guide to accomplish this.
Click Here to Load the "Huojin Pandaren" Reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\Huojin Pandaren"
'|complete hasmount(127290) |or
only if not Pandaren
step
talk Turtlemaster Odai##66022
buy Reins of the Red Dragon Turtle##87800 |goto Orgrimmar/1 69.84,41.15 |or
'|complete hasmount(127290) |or
step
use the Reins of the Red Dragon Turtle##87800
learnmount Red Dragon Turtle##127290
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Armored Red Dragonhawk",{
expansion="mists",
keywords={"armored","Red","dragon","hawk","flying","mount"},
model={48816},
mounts={142266},
patch='53000',
mounttype='Flying',
description="This guide will teach you how to acquire the Armored Red Dragonhawk mount.",
mopready=true,
},[[
step
achieve 8304 |or
|tip Use the "Mount Parade" achievement guide to accomplish this.
Click Here to Load the "Mount Parade" achievement guide |confirm |loadguide "Achievement Guides\\Collections\\Mounts\\Mount Parade"
'|complete hasmount(142266) |or
step
collect 1 Armored Red Dragonhawk##98104 |or
|tip You can find it in your mailbox.
'|complete hasmount(142266) |or
step
use the Armored Red Dragonhawk##98104
learnmount Armored Red Dragonhawk##142266
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Grand Wyvern",{
expansion="mists",
keywords={"grand","wyvern","operation:","shieldwall","flying","mount"},
model={47165},
mounts={136164},
patch='51000',
mounttype='Flying',
description="This guide will teach you how to acquire the Grand Wyvern mount.",
mopready=true,
},[[
step
achieve 7929 |or
|tip Use the "Dominance Offensive" dailies guide to accomplish this.
Click Here to Load the "Dominance Offensive" dailies guide |confirm |loadguide "Daily Guides\\Mists of Pandaria Dailies\\Dominance Offensive Dailies"
'|complete hasmount(136164) |or
step
collect Grand Wyvern##93386 |or
|tip You can find it in your mailbox.
'|complete hasmount(136164) |or
step
use the Grand Wyvern##93386
learnmount Grand Wyvern##136164
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Grand Armored Wyvern",{
expansion="mists",
keywords={"grand","armored","wyvern","dominance","offensive","exalted","flying","mount"},
model={46930},
mounts={135418},
patch='51000',
mounttype='Flying',
description="This guide will teach you how to acquire the Grand Armored Wyvern mount.",
mopready=true,
},[[
step
talk Sunwalker Dezco##64566
accept Meet the Scout##32249 |goto Vale of Eternal Blossoms/0 62.92,28.18 |or
'|complete hasmount(135418) |or
step
talk Scout Rokla##67812
turnin Meet the Scout##32249 |goto Krasarang Wilds/0 8.78,64.34 |or
'|complete hasmount(135418) |or
step
Watch the dialogue
talk Garrosh Hellscream##62092
accept The Might of the Warchief##32250 |goto Krasarang Wilds/0 8.71,64.44 |or
'|complete hasmount(135418) |or
step
Kill Alliance enemies around this area
Slay #25# Alliance |q 32250/1 |goto Krasarang Wilds/0 11.83,62.02 |or
'|complete hasmount(135418) |or
step
talk Blood Guard Gro'tash##67927
Find Blood Guard Gro'tash |q 32250/2 |goto Krasarang Wilds/0 10.74,53.12 |or
'|complete hasmount(135418) |or
step
talk Grizzle Gearslip##67926
Find Grizzle Gearslip |q 32250/3 |goto Krasarang Wilds/0 15.77,57.72 |or
'|complete hasmount(135418) |or
step
_Next to you:_
talk Garrosh Hellscream##62092
turnin The Might of the Warchief##32250
accept Domination Point##32108 |or
'|complete hasmount(135418) |or
step
click Signal Fire##216274
turnin Domination Point##32108 |goto Krasarang Wilds/0 8.58,63.85 |or
'|complete hasmount(135418) |or
step
Reach Exalted Reputation with Dominance Offensive |complete rep('Dominance Offensive') == Exalted |or
|tip Use the "Dominance Offensive" reputation guide to accomplish this.
Click Here to Load the "Dominance Offensive" reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\Dominance Offensive\\Dominance Offensive"
'|complete hasmount(135418) |or
step
talk Tuskripper Grukna##69060
buy Grand Armored Wyvern##93169 |goto Krasarang Wilds/0 10.87,53.33 |or
'|complete hasmount(135418) |or
step
use the Grand Armored Wyvern##93169
learnmount Grand Armored Wyvern##135418
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Pandaren Kite",{
expansion="mists",
keywords={"pandaren","kite","flying","mount"},
model={41903},
mounts={118737},
patch='50400',
mounttype='Flying',
description="This guide will teach you how to acquire the Pandaren Kite mount.",
mopready=true,
},[[
step
achieve 6827 |or
|tip Reach {y}Exalted{} Reputation with Golden Lotus, Shado-Pan, The Lorewalkers, The Tillers, Huojin Pandaren, The August Celestials, The Klaxxi, The Anglers, and Order of the Cloud Serpent.
|tip Use these guides to accomplish this.
Click Here to Load the Golden Lotus Reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\The Golden Lotus" |only if rep("Golden Lotus") < Exalted
Click Here to Load the Shado-Pan Dailies guide |confirm |loadguide "Daily Guides\\Mists of Pandaria Dailies\\The Shado-Pan Dailies" |only if rep("Shado-Pan") < Exalted
Click Here to Load The Lorewalkers Reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\Lorewalkers" |only if rep("The Lorewalkers") < Exalted
Click Here to Load The Tillers Reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\The Tillers" |only if rep("The Tillers") < Exalted
Click Here to Load the Huojin Pandaren Reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\Huojin Pandaren" |only if rep("Huojin Pandaren") < Exalted
Click Here to Load The August Celestials Reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\The August Celestials" |only if rep("The August Celestials") < Exalted
Click Here to Load The Klaxxi Reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\The Klaxxi" |only if rep("The Klaxxi") < Exalted
Click Here to Load The Anglers Reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\The Anglers" |only if rep("The Anglers") < Exalted
Click Here to Load Order of the Cloud Serpent Reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\The Order of the Cloud Serpent" |only if rep("Order of the Cloud Serpent") < Exalted
'|complete hasmount(118737) |or
step
collect 1 Pandaren Kite String##81559 |or
|tip You can find it in your mailbox.
'|complete hasmount(118737) |or
step
use the Pandaren Kite String##81559
learnmount Pandaren Kite##118737
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Heavenly Onyx Cloud Serpent",{
expansion="mists",
keywords={"heavenly","onyx","cloud","serpent","sha","of","anger","flying","mount"},
model={43689},
mounts={127158},
patch='50400',
mounttype='Flying',
description="This guide will teach you how to acquire the Heavenly Onyx Cloud Serpent mount.",
mopready=true,
},[[
step
label "H_SHA_OF_ANGER_KILL"
kill Sha of Anger##60491
|tip It has about a 10-20 minute respawn timer.
|tip You may have to kill him more than once to obtain the mount item drop.
collect Reins of the Heavenly Onyx Cloud Serpent##87771 |goto Kun-Lai Summit/0 54.47,63.22 |next "H_HEAVENLY_ONYX_END" |or
Click Here to Complete a Celestial Challenge daily to earn currency for a chance to acquire this mount |confirm |next "H_SATCHEL_HEAVENLY_ONYX_CLOUD_SERPENT" |only if level == 90 and _G.GetAverageItemLevel()>=435
|tip Spam-killing Sha of Anger may be the surest method to obtain this mount, but you can also obtain this mount, and other mounts and pets, by completing Celestial Challenge daily quests. |only if level == 90 and _G.GetAverageItemLevel()>=435
|tip This has an extremely low drop rate.
'|complete hasmount(127158) |next "H_HEAVENLY_ONYX_END" |or
step
label "H_SATCHEL_HEAVENLY_ONYX_CLOUD_SERPENT"
ding 90 |or
'|complete hasmount(127158) |next "H_HEAVENLY_ONYX_END" |or
step
Reach item level 435 |complete _G.GetAverageItemLevel()>=435 |or
'|complete hasmount(127158) |next "H_HEAVENLY_ONYX_END" |or
step
talk Challenger Wuli##63994
|tip He is underneath the main outdoor platform at the shrine.
Accept a Celestial Challenge Daily Quest |complete haveq(91702,91706,91704,91710,91718,91714,91708,91712,91716) or completedq(91702,91706,91704,91710,91718,91714,91708,91712,91716) |goto Vale of Eternal Blossoms/0 61.08,20.80
'|complete hasmount(127158) |next "H_HEAVENLY_ONYX_END" |or
step
Press _I_ and Queue for a {y}Random Mists of Pandaria Celestial{} Dungeon
|tip Run random Celestial Dungeons until your quest is completed.
|tip You will have to complete 3 or 4 Celestial Challenge daily quests to acquire enough August Stone Fragments to purchase a Satchel of Celestial Chance.
Complete the Celestial Challenge Daily Quest |n
earn 10 August Stone Fragment##3350
Click Here to Return to the Beginning of the {b}Satchels of Celestial Chance{} Guide |confirm |next "H_SATCHEL_OF_CELESTIAL_CHANCE"
|tip
Click Here to Return to the Beginning of the Guide |confirm |next "H_SHA_OF_ANGER_KILL"
'|complete hasmount(127158) |next "H_HEAVENLY_ONYX_END" |or
step
talk Avatar of the August Celestials##248108
|tip This vendor is upstairs, inside the building, on the lefthand balcony in the Shrine of Two Moons.
|tip He looks like a ghostly cloud serpent.
buy Satchel of Celestial Chance##248666 |goto Shrine of Two Moons/2 42.60,45.59
'|complete hasmount(127158) |next "H_HEAVENLY_ONYX_END" |or
step
use Satchel of Celestial Chance##248666
|tip You may need to purchase more than one satchel to acquire the mount.
collect Reins of the Heavenly Onyx Cloud Serpent##87771 |next "H_HEAVENLY_ONYX_END"
Click Here to Return to the Beginning of the Guide |confirm |next "H_SHA_OF_ANGER_KILL"
'|complete hasmount(127158) |next "H_HEAVENLY_ONYX_END" |or
step
label "H_HEAVENLY_ONYX_END"
use the Reins of the Heavenly Onyx Cloud Serpent##87771
learnmount Heavenly Onyx Cloud Serpent##127158
]])
