-- Bundled QuestCore guide
if not QuestCore then return end

if UnitFactionGroup("player")~="Horde" then return end
QuestCore:RegisterGuide("Leveling Guides\\Legion (10-70)\\Balance of Power Questline",{
description="This guide will walk you through completing the \"Balance of Power\" questline.",
condition_end=function() return completedq(43533) end,
legionremix=true,
},[[
step
Complete the quest "Runas Knows the Way" in Azsuna |q 37857 |future
|tip This quest is essential to being able to interact with Archmage Kalec.
|tip Use our Azsuna leveling guide to complete this.
|loadguide "Leveling Guides\\Legion (10-70)\\Azsuna"
step
Complete the "Nightfall" and "Moonguard Stronghold" Chapters in Suramar |complete completedq(42229) and completedq(40972)
|tip You need to complete the "Last Stand of the Moon Guard" and "Shal'aran" quests.
|tip If you do not complete these quests, the "Repaid Debt" quest in this guide will not be offered and a placeholder quest will be offered requiring you to complete these chapters.
|tip Use our Suramar leveling guide to complete this.
|loadguide "Leveling Guides\\Legion (10-70)\\Suramar"
step
talk Image of Kalec##110768
accept The Power Within##43496 |goto Mardum, the Shattered Abyss/2 60.27,28.84 |only DemonHunter
accept The Power Within##43503 |goto Hall of the Guardian/2 56.35,38.32 |only Mage
accept The Power Within##43501 |goto Broken Shore/1 44.18,45.54	|only DeathKnight
accept The Power Within##43496 |goto The Dreamgrove/0 40.54,58.74 |only Druid
accept The Power Within##43496 |goto Dalaran L/4 31.34,63.67 |only Rogue
accept The Power Within##43496 |goto Skyhold/1 45.46,44.98 |only Warrior
accept The Power Within##43496 |goto Eastern Plaguelands/20 37.66,54.78	|only Paladin
accept The Power Within##43496 |goto Netherlight Temple/1 49.77,17.03 |only Priest
accept The Power Within##43496 |goto The Maelstrom L/0 26.80,40.40 |only Shaman
accept The Power Within##43496 |goto Dreadscar Rift/0 56.47,30.99 |only Warlock
accept The Power Within##43496 |goto The Wandering Isle L/0 51.71,48.59 |only Monk
accept The Power Within##43496 |goto Trueshot Lodge/0 48.63,49.89 |only Hunter
step
talk Archmage Kalec##110773
turnin The Power Within##43501 |goto Azsuna/0 48.12,25.58 |only if haveq(43501)
turnin The Power Within##43496 |goto Azsuna/0 48.12,25.58 |only if haveq(43496)
turnin The Power Within##43505 |goto Azsuna/0 48.12,25.58 |only if haveq(43505)
turnin The Power Within##43503 |goto Azsuna/0 48.12,25.58 |only if haveq(43503)
|tip Kalec will appear when you get close.
step
talk Senegos##100482
accept The Heart of Zin-Azshari##40668 |goto Azsuna/0 48.04,25.83
step
Enter the Eye of Azshara dungeon |scenariostart |goto Azsuna/0 61.15,41.15
|tip This dungeon must be completed on Mythic +0 difficulty or higher.
|tip Use the Premade Groups tool to form a group.
|only if not completedq(40668)
step
collect 1 Heart of Zin-Azshari##132738 |q 40668/1
|tip It's located on the rock next to the northern Channeler Varisz.
step
kill Wrath of Azshara##96028 |q 40668/2
|tip Wrath of Azshara is the final boss of the instance.
step
talk Senegos##100482
turnin The Heart of Zin-Azshari##40668 |goto Azsuna/0 48.04,25.83
accept Fallen Power##43517 |goto Azsuna/0 48.04,25.83
accept A Vainglorious Past##43514 |goto Azsuna/0 48.04,25.83
step
talk Archmage Kalec##110773
accept Tempering Darkness##43518 |goto Azsuna/0 48.12,25.58
stickystart "BoS"
step
Enter the Darkheart Thicket dungeon |scenariostart |goto Val'sharah/0 59.05,31.19
|tip This dungeon must be completed on Mythic +0 difficulty or higher.
|tip Use the Premade Groups tool to form a group.
|only if not completedq(43517)
step
kill Oakheart##103344
collect 1 Corrupted Essence##139633 |q 43517/1
|tip Oakheart is the second boss in the dungeon.
step
kill Shade of Xavius##99192 |q 43517/2
|tip Shade of Xavius is the last boss in the dungeon.
step
talk Veridis Fallon##107376
buy 1 Vainglorious Draught##139631 |n
collect 1 Vainglorious Draught##139631 |q 43514/1 |goto Azsuna/0 46.90,41.43
|tip To purchase this item, you must be honored with the Court of Farondis.
|tip This item costs 150 gold, modified by reputation.
step
label "BoS"
collect 30 Blood of Sargeras##124124 |q 43518/1
|tip Blood of Sargeras comes from gathering professions, world quests, and dungeon bosses.
step
talk Senegos##100482
turnin Fallen Power##43517 |goto Azsuna/0 48.04,25.83
turnin A Vainglorious Past##43514 |goto Azsuna/0 48.04,25.83
step
talk Archmage Kalec##110773
turnin Tempering Darkness##43518 |goto Azsuna/0 48.12,25.58
accept Lucid Strength##43519 |goto Azsuna/0 48.12,25.58
step
click Heart of Zin-Azshari##254000
|tip Stand still while you channel the spell.
Absorb the power from the Corrupted Essence |q 43519/1 |goto Azsuna/0 48.13,25.72
step
talk Archmage Kalec##110773
turnin Lucid Strength##43519 |goto Azsuna/0 48.12,25.58
accept In Nightmares##43520 |goto Azsuna/0 48.12,25.58
step
talk Senegos##100482
accept Essence of Power##43521 |goto Azsuna/0 48.04,25.83
step
Enter the Emerald Nightmare Raid |goto The Emerald Nightmare/1 0.00,0.00 |c
|tip This raid must be completed on Normal difficulty or higher.
|tip Use the Premade Groups tool to form a group.
|only if not completedq(43520) and not completedq(43521)
stickystart "Essence"
step
kill Il'gynoth##105393
|tip Il'gynoth is the second boss of the Emerald Nightmare raid instance.
collect 1 Deathglare Iris##139671 |q 43520/1
step
kill Xavius##103769
|tip Xavius is the final boss of the Emerald Nightmare raid instance.
collect 1 Horn of the Nightmare Lord##139672 |q 43520/2
step
label "Essence"
use the Seething Essence##139771
|tip These will sometimes drop and contain Corrupted Essence.
collect 30 Corrupted Essence##139706 |q 43521/1
|tip These have a chance to drop from each boss in Emerald Nightmare on normal difficulty or higher.
|tip You can loot these from only one difficulty every week.
step
talk Archmage Kalec##110773
turnin In Nightmares##43520 |goto Azsuna/0 48.12,25.58
step
talk Senegos##100482
turnin Essence of Power##43521 |goto Azsuna/0 48.04,25.83
accept Essential Consumption##43522 |goto Azsuna/0 48.04,25.83
step
click Heart of Zin-Azshari##254000
|tip Stand still while you channel the spell.
Absorb the combined power of the Corrupted Essences |q 43522/1 |goto Azsuna/0 48.13,25.72
step
talk Senegos##100482
turnin Essential Consumption##43522 |goto Azsuna/0 48.04,25.83
step
talk Archmage Kalec##110773
accept Repaid Debt##43523 |goto Azsuna/0 48.12,25.58
|tip If you skipped the step to complete portions of Suramar at the beginning of this guide, this quest will not be offered.
|tip You will need to complete the quest(s) in its place until you can accept it.
step
talk Archmage Kalec##111826
turnin Repaid Debt##43523 |goto Suramar/0 37.84,47.40 |region suramar_shalaran
step
talk Thalrenus Rivertree##101083
accept Lost Knowledge##40673 |goto Suramar/0 37.83,47.25 |region suramar_shalaran
step
Reach Revered Reputation with the Nightfallen |complete rep("Nightfallen") >= Revered
|tip Use the "Nightfallen" Reputation Guide to accomplish this.
Click Here to Open the "Nightfallen" Reputation Guide |loadguide "Reputation Guides\\Legion Reputations\\The Nightfallen"
|only if rep("Nightfallen") < Revered
step
talk First Arcanist Thalyssra##115736
|tip Thalyssra may be in another location nearby, depending on your progress in the Suramar story.
buy 1 Scroll of Elun'dris##139780 |n
|tip This scroll costs 150 gold.
Obtain the Scroll of Elun'dris from First Arcanist Thalyssra |q 40673/1 |goto Suramar/0 36.49,45.83 |region suramar_shalaran
step
talk Thalrenus Rivertree##101083
turnin Lost Knowledge##40673 |goto Suramar/0 37.83,47.25
accept Vault of the Wardens: Borrowing Without Asking##43525 |goto Suramar/0 37.83,47.25 |region suramar_shalaran
step
talk Syrana Starweaver##101080
accept The Arcway: Rite of the Captain##40675 |goto Suramar/0 37.89,47.28 |region suramar_shalaran
step
talk Lothrius Mooncaller##101082
accept Court of Stars: Literary Perfection##43524 |goto Suramar/0 37.94,47.37 |region suramar_shalaran
step
Enter the Vault of the Wardens dungeon |scenariostart |goto Azsuna/0 48.30,80.16
|tip This dungeon must be completed on Mythic +0 difficulty or higher.
|tip Use the Premade Groups tool to form a group.
|only if not completedq(43525)
step
click Containment Crystal##252443
collect 1 Containment Crystal##139788 |q 43525/1
|tip The crystal is located at the top of the elevator room after the first boss.
|tip After you kill the imp mother and open the door, look for it near the elevator platform.
step
kill Cordana Felsong##95888 |q 43525/2
|tip Cordana Felsong is the last boss in the dungeon.
step
Enter The Arcway dungeon |scenariostart |goto Suramar/0 41.04,61.83
|tip This dungeon must be completed on Mythic +0 difficulty or higher.
|tip Use the Premade Groups tool to form a group.
|only if not completedq(40675)
step
kill Advisor Vandros##98208 |q 40675/2
collect 1 Eon Winder##139787 |q 40675/1
|tip Advisor Vandros is the last boss in the dungeon.
step
Enter the Court of Stars dungeon |scenariostart |goto Suramar/0 50.94,65.58
|tip This dungeon must be completed on Mythic +0 difficulty or higher.
|tip Use the Premade Groups tool to form a group.
|only if not completedq(43524)
step
click Scrolls Sigils and the Nightborne Way##252410
collect 1 Wards Sigils and the Nightborne Way##139782 |q 43524/1
|tip After killing the Patrol Captain Gerdo, you must go up the stairs and kill the Guardian Construct blocking the path to the next boss.
|tip Immediately after killing the construct, go right. The book is at the end of the path.
step
kill Advisor Melandrus##101831 |q 43524/2
|tip Advisor Melandrus is the last boss in the dungeon.
step
talk Thalrenus Rivertree##101083
turnin Vault of the Wardens: Borrowing Without Asking##43525 |goto Suramar/0 37.83,47.25 |region suramar_shalaran
step
talk Lothrius Mooncaller##101082
turnin Court of Stars: Literary Perfection##43524 |goto Suramar/0 37.94,47.37 |region suramar_shalaran
step
talk Syrana Starweaver##101080
turnin The Arcway: Rite of the Captain##40675 |goto Suramar/0 37.89,47.28 |region suramar_shalaran
accept Twisted Power##40678 |goto Suramar/0 37.89,47.28 |region suramar_shalaran
step
Kill Demons in The Broken Isles
collect 5 Legion Portal Fragment##132749 |n
use the Legion Portal Fragment##132749
|tip Any Demon on the continent can drop them.
|tip Illidari Stand and Grizzleweald are good spots to farm these.
Combine the fragments into a Greater Legion Portal Stone |complete itemcount(132750) >= 1 |goto Azsuna/0 42.52,44.26 |only if not completedq(40678)
step
Use the Greater Legion Portal Stone to summon Vizuul the Twisted |use Greater Legion Portal Stone##132750
kill Vizuul the Twisted##101130
collect 1 Twisted Runebindings##132751 |q 40678/1 |goto Azsuna/0 27.65,50.58
|tip You will need a group to defeat Vizuul.
|tip A five-person group is recommended.
step
talk Syrana Starweaver##101080
turnin Twisted Power##40678 |goto Suramar/0 37.89,47.28 |region suramar_shalaran
accept A True Test##43526 |goto Suramar/0 37.89,47.28 |region suramar_shalaran
step
click Heart of Zin-Azshari##254000
Absorb the power from the Twisted Runebindings |q 43526/1 |goto Suramar/0 37.74,47.24 |region suramar_shalaran
step
talk Syrana Starweaver##101080
turnin A True Test##43526 |goto Suramar/0 37.89,47.28 |region suramar_shalaran
step
talk Archmage Kalec##111826
accept Seeking the Valkyra##40603 |goto Suramar/0 37.84,47.40 |region suramar_shalaran
step
talk Ashildir##100738
turnin Seeking the Valkyra##40603 |goto Stormheim/0 62.76,68.10
accept The Mark##40608 |goto Stormheim/0 62.76,68.10
step
Reach Revered with the Valarjar
|tip Use the Valarjar Reputation Guide to accomplish this.
Click Here to Open the "Valarjar" Reputation Guide |loadguide "Reputation Guides\\Legion Reputations\\Valarjar"
Revered with the Valarjar |q 40608/1 |goto Stormheim/0 62.75,68.10
step
Enter the building |goto Stormheim/0 63.00,68.10 < 7 |walk
clicknpc Eyir##117459
|tip Stand on the dais inside the building.
|tip When Eyir says "Kneel before me, mortal" type "/kneel" with her targeted.
Mark of the Valkyra received |q 40608/2 |goto Stormheim/28 60.62,50.98
step
talk Ashildir##100738
turnin The Mark##40608 |goto Stormheim/0 62.76,68.10
accept Retrieving the Svalnguard##40613 |goto Stormheim/0 62.76,68.10
step
Enter the Maw of Souls dungeon |scenariostart |goto Stormheim/0 52.52,45.16
|tip This dungeon must be completed on Mythic +0 difficulty or higher.
|tip Use the Premade Groups tool to form a group.
|only if not completedq(40613)
step
click The Svalnguard##245849
collect 1 The Svalnguard##132440 |q 40613/1
|tip The Svalnguard is located next to The Grimewalker, before the second boss.
|tip The Grimewalker is the big putrid giant below decks.
step
kill Helya##96759 |q 40613/2
|tip Helya is the last boss in the dungeon.
step
talk Ashildir##100738
turnin Retrieving the Svalnguard##40613 |goto Stormheim/0 62.76,68.10
accept A Feast Fit for Odyn##40614 |goto Stormheim/0 62.76,68.10
accept Presentation is Key##40672 |goto Stormheim/0 62.76,68.10
step
kill Thunderhorn##100838
|tip This mob is elite.
collect Thunderhorn Flank##132462 |q 40614/1 |goto Stormheim/0 47.88,39.44
step
kill Spinesever##100841
|tip This mob is elite.
collect Spinesever's Spine##132463 |q 40614/2 |goto Highmountain/0 39.15,13.43
step
kill Leytusk##100846
collect Leytusk Steak##132464 |q 40614/3 |goto Azsuna/0 62.14,11.77
step
Enter the Neltharion's Lair dungeon |scenariostart |goto Highmountain/0 49.56,68.71
|tip This dungeon must be completed on Mythic +0 difficulty or higher.
|tip Use the Premade Groups tool to form a group.
|only if not completedq(40672)
stickystart "Casing"
step
kill Dargrul##91007 |q 40672/2
|tip Dargrul is the last boss in the dungeon.
step
label "Casing"
click Adamantium Casing Scrap##245938
collect 4 Adamantium Casing Scrap##132744 |q 40672/1
|tip These can be found around the room near Dargrul.
step
talk Ashildir##100738
turnin A Feast Fit for Odyn##40614 |goto Stormheim/0 62.76,68.10
turnin Presentation is Key##40672 |goto Stormheim/0 62.76,68.10
accept Odyn's Blessing##40615 |goto Stormheim/0 62.76,68.10
step
Enter the Halls of Valor dungeon |scenariostart |goto Stormheim/0 72.69,70.46
|tip This dungeon must be completed on Mythic +0 difficulty or higher.
|tip Use the Premade Groups tool to form a group.
|only if not completedq(40615)
step
Present the feast to Odyn |q 40615/1 |use Grand Feast of Valhallas##132471
|tip Do this at the beginning of the instance.
step
kill Odyn##95676
|tip Odyn is the last boss in the dungeon.
click Heart of Zin-Azshari##254000
Earn Odyn's Favor |q 40615/2
|tip The heart will appear after you loot the chest.
|tip You will need to wait for the RP to finish to receive Odyn's Favor.
step
talk Ashildir##100738
turnin Odyn's Blessing##40615 |goto Stormheim/0 62.76,68.10
step
talk Archmage Kalec##111814
accept Preparing to Move##43898 |goto Stormheim/0 62.52,68.22
step
talk Archmage Kalec##111826
turnin Preparing to Move##43898 |goto Suramar/0 37.84,47.40 |region suramar_shalaran
accept The Nighthold: Into the Nighthold##43531 |goto Suramar/0 37.84,47.40 |region suramar_shalaran
accept The Nighthold: Darkness Calls##43532 |goto Suramar/0 37.84,47.40 |region suramar_shalaran
step
talk Thalrenus Rivertree##101083
accept The Nighthold: Delusions of Grandeur##43530 |goto Suramar/0 37.84,47.40 |region suramar_shalaran
step
Enter the Nighthold raid |goto Suramar/0 44.18,59.66 < 5 |c
|tip This raid must be completed on normal difficulty or higher.
|tip Use the Premade Groups tool to form a group.
|only if not completedq(43530) and not completedq(43531)
stickystart "Delusions"
step
kill Trilliax##104288
collect 1 Trilliax Core##140196 |q 43530/1
|tip This only drops on normal difficulty or higher.
step
kill Elisande##106643
collect 1 Millennia Tome##140197 |q 43530/2
|tip This only drops on normal difficulty or higher.
step
kill Gul'dan##105503
|tip Gul'dan is the final boss of the instance.
click Gift of the Nightborne##266483
collect Eye of Gul'dan##140198 |q 43532/1
step
label "Delusions"
collect 20 Nightshard##140199 |q 43531/1
|tip These drop from bosses in the Nighthold raid.
|tip They only drop on normal difficulty or higher.
|tip This will take at least two weeks to complete.
step
talk Archmage Kalec##111826
turnin The Nighthold: Into the Nighthold##43531 |goto Suramar/0 37.84,47.40 |region suramar_shalaran
turnin The Nighthold: Darkness Calls##43532 |goto Suramar/0 37.84,47.40 |region suramar_shalaran
step
talk Thalrenus Rivertree##101083
turnin The Nighthold: Delusions of Grandeur##43530 |goto Suramar/0 37.84,47.40 |region suramar_shalaran
step
talk Archmage Kalec##111826
accept Balance of Power##43533 |goto Suramar/0 37.84,47.40 |region suramar_shalaran
step
click Heart of Zin-Azshari##254000
Absorb the combined power of the Nightshards and the Eye of Gul'dan |q 43533/1 |goto Suramar/0 41.40,18.29
step
talk Archmage Kalec##111826
turnin Balance of Power##43533 |goto Suramar/0 41.13,18.41
step
Congratulations!
You have completed the _Balance of Power_ questline
]])
QuestCore:RegisterGuide("Leveling Guides\\Legion (10-70)\\Broken Shore\\Excavator Karla Quests",{
description="This guide will walk you through completing the treasure hunting quests offered by Excavator Karla on Broken Shore.",
condition_end=function() return completedq(46666) end,
},[[
step
Complete the "Legionfall Supplies" Quest |q 46286 |future
|tip Complete this quest in the "Broken Shore Campaign" to unlock the _Excavator Karla Quests_.
|tip Use the "Broken Shore Campaign" guide to accomplish this.
Click Here to Open the "Broken Shore Campaign" Guide |loadguide "Leveling Guides\\Legion (10-70)\\Broken Shore Campaign"
|only if not completedq(46286)
step
talk Excavator Karla##119886
accept Spiders, Huh?##46499 |goto Broken Shore/0 39.54,71.68
step
click Spider-Covered Treasure Chest##268472
collect Potentially Precious Gem##146955 |n
Find the Creeping Grotto treasure |q 46499/1 |goto Broken Shore/0 43.44,31.38
step
talk Excavator Karla##119886
turnin Spiders, Huh?##46499 |goto Broken Shore/0 39.54,71.68
step
talk Excavator Karla##119886
accept Grave Robbin'##46501 |goto Broken Shore/0 39.54,71.68
step
click Dusty Treasure Chest##268510
Retrieve the Soul Ruin treasure |q 46501/1 |goto Broken Shore/0 49.68,46.76
step
talk Excavator Karla##119886
turnin Grave Robbin'##46501 |goto Broken Shore/0 39.54,71.68
step
talk Excavator Karla##119886
accept Tomb Raidering##46509 |goto Broken Shore/0 39.54,71.68
step
click Grandiose Treasure Chest##268511
Locate the Tomb of Sargeras treasure |q 46509/1 |goto Broken Shore/0 67.60,16.17
step
talk Excavator Karla##119886
turnin Tomb Raidering##46509 |goto Broken Shore/0 39.54,71.68
step
talk Excavator Karla##119886
accept Ship Graveyard##46510 |goto Broken Shore/0 39.54,71.68
step
click Sunken Treasure Chest##268512
|tip Clicking a Damaged Diving Helmet will give you temporary increased swim speed and underwater breathing.
collect 1 Wonderfully-Adorned Cloth##146958 |q 46510/1 |goto Broken Shore/0 54.70,77.89
step
talk Excavator Karla##119886
turnin Ship Graveyard##46510 |goto Broken Shore/0 39.54,71.68
step
talk Excavator Karla##119886
accept We're Treasure Hunters##46511 |goto Broken Shore/0 39.54,71.68
step
click Sandy Treasure Chest##268513
Locate the Felrage Strand treasure |q 46511/1 |goto Broken Shore/0 75.76,21.73
step
talk Excavator Karla##119886
turnin We're Treasure Hunters##46511 |goto Broken Shore/0 39.54,71.68
step
talk Excavator Karla##119886
accept The Motherlode##46666 |goto Broken Shore/0 39.54,71.68
|tip Excavator Karla offers this quest after the next daily reset.
step
Follow the path |goto Broken Shore/0 42.15,72.39 < 20 |only if walking
Follow the path |goto Broken Shore/0 45.34,70.51 < 25 |only if walking
click Peculiar Rope
|tip It is under a clump of trees here.
Investigate Excavator Karla's Cave |q 46666/1 |goto Broken Shore/0 47.84,67.35
|tip Wait for the dialogue to complete.
step
talk Excavator Karla##119886
turnin The Motherlode##46666 |goto Broken Shore/0 45.04,52.30
|tip Don't forget to open one of the caches for a reward.
step
_Congratulations!_
You have completed the _Excavator Karla_ questline.
]])
QuestCore:RegisterGuide("Leveling Guides\\Legion (10-70)\\Dalaran Postmaster Quest Line",{
description="This guide will walk you through completing the Dalaran Postmaster quests to unlock The Postmaster's Office.",
},[[
step
click Lost Mail##247797
|tip Lost Mail is found near mailboxes in Dalaran.
|tip It spawns randomly and periodically.
|tip In your minimap tracking menu, enable Mailbox under the Townsfolk category.
|tip Go from mailbox to mailbox searching for a tiny letter at the base.
|tip You can also purchase it from the Auction House.
collect Lost Mail##135479 |goto Dalaran L/10 65.30,46.05 |q 41411 |future |or
'|collect Lost Mail##134859 |q 41368 |future |or
You can find mailboxes at these locations:
[59.15,48.75]
[50.85,58.94]
[44.27,68.33]
[38.24,48.51]
[39.96,32.67]
[45.60,38.86]
[49.44,36.97]
[48.74,25.32]
[52.08,27.27]
step
use the Lost Mail##135479 |only if itemcount(135479) >= 1 or haveq(41411) or completedq(41411)
use the Lost Mail##134859 |only if itemcount(134859) >= 1 or haveq(41368) or completedq(41368)
accept Lost Mail##41368 |only if itemcount(134859) >= 1 or haveq(41368) or completedq(41368)
accept Lost Mail##41411 |only if itemcount(135479) >= 1 or haveq(41411) or completedq(41411)
step
Enter the tunnel |goto Dalaran L/11 59.70,39.41 < 7 |walk
Watch the dialogue
talk Madam Goya##100986
|tip During periods without guards, The Underbelly is a PvP zone.
|tip Along the path as you reach the bottom of the stairs, talk to Raethan to hire a guard if you desire protection.
|tip Guards last for five minutes.
turnin Lost Mail##41368 |goto Dalaran L/11 71.41,17.92 |only if haveq(41368) or completedq(41368)
turnin Lost Mail##41411 |goto Dalaran L/11 71.41,17.92 |only if haveq(41411) or completedq(41411)
step
Follow the path |goto Dalaran L/10 33.91,39.18 < 7 |walk
Follow the path |goto Dalaran L/10 32.05,34.54 < 10 |walk
click Mail Tube##280797 |goto Dalaran L/10 33.46,31.60 < 7 |walk
Enter The Postmaster's Office |goto Dalaran L/10 39.46,41.83 < 7 |noway |c |q 46278 |future
step
talk The Postmaster##103976
accept Return to Sender##46278 |goto Dalaran L/10 37.62,40.15
step
Return #9# Letters |q 46278/1 |goto Dalaran L/10 38.98,40.71
|tip Click letters floating in the air around the room.
|tip Each one you click will return one letter.
step
talk The Postmaster##103976
turnin Return to Sender##46278 |goto Dalaran L/10 37.62,40.15
accept A Huge Package##41397 |goto Dalaran L/10 37.62,40.15
step
click Sack of Solid Stone
Heft the Solid Stone |q 41397/1 |goto Dalaran L/10 39.75,39.07
step
click Mail Tube##280797 |goto Dalaran L/10 37.87,42.14
Leave The Postmaster's Office |goto Dalaran L/10 32.99,31.62 |noway |c |q 41397
step
Follow the path |goto Dalaran L/10 38.93,44.80 < 10 |walk
Follow the path |goto Dalaran L/10 48.51,26.70 < 10 |walk
Deliver 1,362 Pieces of Solid Stone |q 41397/2 |goto Dalaran L/10 44.34,17.78
|tip Use the extra action button that appears on-screen.
step
click Mail Tube##280797 |goto Dalaran L/10 33.47,31.62 < 7
Enter The Postmaster's Office |goto Dalaran L/10 39.46,41.83 < 7 |noway |c |q 41397
step
talk The Postmaster##103976
turnin A Huge Package##41397 |goto Dalaran L/10 37.61,40.15
accept Priority Delivery##41367 |goto Dalaran L/10 37.61,40.15
step
Watch the dialogue
click Portal to the Frozen Throne
Take the Portal to the Frozen Throne |q 41367/1 |goto Dalaran L/10 38.67,40.17
step
clicknpc The Lich King##103996
Retrieve the Forgotten Loot |q 41367/2 |goto Icecrown Citadel L/4 50.49,70.56
step
kill Nexus-Lord Ashaal##132999 |q 41367/3 |goto Icecrown Citadel L/4 49.35,70.79
step
click Portal to Dalaran##251123 |goto Icecrown Citadel L/4 49.86,38.98
Return to Dalaran |goto Dalaran L/10 60.92,44.72 < 10 |noway |c |q 41367
step
Locate the Stalwart Adventurer |q 41367/4 |goto Feralas/0 68.69,73.06
step
talk Johnny Awesome##52562
turnin Priority Delivery##41367 |goto Feralas/0 68.69,73.06
accept Service with a Smile##41394 |goto Feralas/0 68.69,73.06
step
talk Gott Weedlespan##51735
Select _"I.... have to sell this horse to you."_ |gossip 39942
Select _"Unfortunately, yes."_ |gossip 48329
Sell Invincible's Reins |q 41394/1 |goto Feralas/0 70.76,73.08
step
talk Johnny Awesome##52562
turnin Service with a Smile##41394 |goto Feralas/0 68.69,73.07
accept Due Reward##41395 |goto Feralas/0 68.69,73.07
step
clicknpc Wilson##104110
Honor Twinkles' Memory |q 41395/1 |goto Hillsbrad Foothills/0 38.72,59.99
step
_Click the Complete Quest Box:_
turnin Due Reward##41395
step
click Mail Tube##280797 |goto Dalaran L/10 33.47,31.62 < 7
Enter The Postmaster's Office |goto Dalaran L/10 39.46,41.83 < 7 |noway |c |q 50247 |future
step
talk The Postmaster##103976
accept The Mail Must Flow##50247 |goto Dalaran L/10 37.61,40.13
step
talk The Postmaster##103976 |goto Dalaran L/10 37.61,40.13
Select _"I want to sort letters!"_ |gossip 48356
|tip Each letter will have an address.
|tip Click the portal for the zone that corresponds to the address.
Sort at Least 15 Letters |q 50247/1 |goto Dalaran L/10 37.59,40.53
step
talk The Postmaster##103976
turnin The Mail Must Flow##50247 |goto Dalaran L/10 37.61,40.13
]])
QuestCore:RegisterGuide("Leveling Guides\\Legion (10-70)\\Rogue Pickpocketing Quest Line",{
description="This guide will walk you through completing the Rogue pickpocketing quest line.",
condition_end=function() return completedq(47594) end,
},[[
step
This quest line is only available to Rogues |confirm
|only if not Rogue
step
talk Griftah##103792
accept Wanna Buy a Lamp?##47591 |goto Dalaran L/4 45.74,27.08
|only Rogue
step
talk Griftah##103792
buy 1 Dubious Lamp##151749 |n
|tip This costs 500 gold.
collect 1 Dubious Lamp##151749 |q 47591/1 |goto Dalaran L/4 45.74,27.08
|only Rogue
step
talk Griftah##103792
turnin Wanna Buy a Lamp?##47591 |goto Dalaran L/4 45.74,27.08
accept Shine Bright Like a Diamond##47592 |goto Dalaran L/4 45.74,27.08
|only Rogue
step
talk Griftah##103792
buy 1 Certified Organic Lamp Shining Kit##151181 |n
|tip This costs 500 gold.
collect 1 Certified Organic Lamp Shining Kit##151181 |q 47592/1 |goto Dalaran L/4 45.74,27.08
|only Rogue
step
Use the Certified Organic Lamp |use Certified Organic Lamp Shining Kit##151181
Use the Shining kit to polish the lamp |q 47592/2
|only Rogue
step
talk Griftah##103792
turnin Shine Bright Like a Diamond##47592 |goto Dalaran L/4 45.74,27.08
|only Rogue
step
talk Al'Abas##123087
accept The Mysterious, Magnificent Al'Abas##47603 |goto Dalaran L/4 45.74,27.08
|only Rogue
step
talk Al'Abas##123087
Speak with Al'Abas |q 47603/1 |goto Dalaran L/4 45.74,27.08
|only Rogue
step
talk Al'Abas##123087
turnin The Mysterious, Magnificent Al'Abas##47603 |goto Dalaran L/4 45.74,27.08
accept In the Land of Magic##47604 |goto Dalaran L/4 45.74,27.08
|only Rogue
step
talk Al'Abas##123087
Speak with Al'Abas again |q 47604/1 |goto Dalaran L/4 45.74,27.08
|only Rogue
step
talk Al'Abas##123087
turnin In the Land of Magic##47604 |goto Dalaran L/4 45.74,27.08
accept Coins of Air##47605 |goto Dalaran L/4 45.74,27.08
|only Rogue
step
talk Al'Abas##123087
turnin Coins of Air##47605 |goto Dalaran L/4 45.74,27.08
accept Loyalty Is Its Own Reward##47606 |goto Dalaran L/4 45.74,27.08
|only Rogue
step
talk Griftah##103792
accept I'll Take Those, Thanks!##47594 |goto Dalaran L/4 45.74,27.08
|only Rogue
stickystart "10k Coin"
step
Use your Stealth ability and Pickpocket mobs on the Broken Isles
Obtain #1000# Coins of Air |q 47606/1
|only Rogue
step
talk Al'Abas##123087
turnin Loyalty Is Its Own Reward##47606 |goto Dalaran L/4 45.74,27.08
accept High Fash-Djinn##47607 |goto Dalaran L/4 45.74,27.08
|only Rogue
step
Use your Stealth ability and Pickpocket the Demons and Elves on the Broken Isles
collect Manaforged Worry-Chain##151158 |q 47607/1
collect Managraphic Card##151159 |q 47607/2
collect Elegant Manabraid##151160 |q 47607/3
collect Subtle Chronometer##151161 |q 47607/4
collect Glitzy Mana-Chain##151162 |q 47607/5
collect Locket of Magical Memories##151163 |q 47607/6
|only Rogue
step
label "10k Coin"
Use your Stealth ability and Pickpocket mobs on the Broken Isles
Obtain #10000# Coins of Air |q 47594/1
|only Rogue
step
talk Al'Abas##123087
turnin High Fash-Djinn##47607 |goto Dalaran L/4 45.74,27.08
|only Rogue
step
talk Griftah##103792
turnin I'll Take Those, Thanks!##47594 |goto Dalaran L/4 45.74,27.08
|only Rogue
step
After this is complete, you get a repeatable quest to turn in 9,999 Coins of Air in exchange for 50 gold.
|tip You may do this as often as you want!
|tip You can also use these coins to buy items from Griftah including toys, pets, and transmogs.
confirm
|only Rogue
step
_Congratulations!_
You have completed the Rogue Pickpocketing Quest Line!
|only Rogue
]])
QuestCore:RegisterGuide("Leveling Guides\\Legion (10-70)\\Meatball Order Hall Champion",{
description="This guide will walk you through obtaining Meatball as a Class Order Hall champion.",
condition_end=function() return completedq(45312) end,
model={501},
},[[
step
To earn Meatball as a champion, you must have access to the Brawler's Guild
|tip You will need to collect a Blood-Soaked Invitation.
kill Helarjar Mystcaller##111325+, Helarjar Soulhunter##111328+, Helarjar Priest##111326+
collect 1 Blood-Soaked Invitation##144363 |goto Stormheim/0 85.32,11.34 |n
click Blood-Soaked Invitation##144363 |use Blood-Soaked Invitation##144363
Gain access to the Brawler's Guild |achieve 11559
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena/1 56.37,21.26 < 5
Select _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Brawl'gar Arena/1 57.07,48.67 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip When Oso begins casting Shotgun Blast, move out from in front of him.
|tip He may occasionally knock you back and then cast Grizzly Leap. Run out of this circle.
|only if QC:GetReputation(2010).friendRep<250
step
kill Oso##117753
|tip When Oso begins casting Shotgun Blast, move out from in front of him.
|tip He may occasionally knock you back and then cast Grizzly Leap. Run out of this circle.
Defeat Oso |complete QC:GetReputation(2010).friendRep>=250
step
clicknpc Dreadscar Battle Plans##101979 |only Warlock
clicknpc Command Map##102589 |only Priest
click Eye of Odin |only Warrior
clicknpc Scouting Map##120832 |only DemonHunter, DeathKnight, Druid, Hunter, Mage, Monk, Paladin, Rogue, Shaman
Complete the Class Hall mission "_There is no Brawlers Guild_" |complete itemcount(142522) >= 1 |goto Dreadscar Rift/0 66.19,47.01 |only Warlock
Complete the Class Hall mission "_There is no Brawlers Guild_" |complete itemcount(142522) >= 1 |goto Broken Shore/2 49.79,50.61 |only DeathKnight
Complete the Class Hall mission "_There is no Brawlers Guild_" |complete itemcount(142522) >= 1 |goto Mardum, the Shattered Abyss/2 58.84,54.91 |only DemonHunter
Complete the Class Hall mission "_There is no Brawlers Guild_" |complete itemcount(142522) >= 1 |goto The Dreamgrove/0 52.71,51.08 |only Druid
Complete the Class Hall mission "_There is no Brawlers Guild_" |complete itemcount(142522) >= 1 |goto Trueshot Lodge/0 42.49,46.59 |only Hunter
Complete the Class Hall mission "_There is no Brawlers Guild_" |complete itemcount(142522) >= 1 |goto Hall of the Guardian/1 81.38,60.79 |only Mage
Complete the Class Hall mission "_There is no Brawlers Guild_" |complete itemcount(142522) >= 1 |goto The Wandering Isle L/0 52.91,60.16 |only Monk
Complete the Class Hall mission "_There is no Brawlers Guild_" |complete itemcount(142522) >= 1 |goto Eastern Plaguelands/20 53.37,78.71 |only Paladin
Complete the Class Hall mission "_There is no Brawlers Guild_" |complete itemcount(142522) >= 1 |goto Netherlight Temple/1 49.85,48.87 |only Priest
Complete the Class Hall mission "_There is no Brawlers Guild_" |complete itemcount(142522) >= 1 |goto Dalaran L/4 37.51,44.29 |only Rogue
Complete the Class Hall mission "_There is no Brawlers Guild_" |complete itemcount(142522) >= 1 |goto The Maelstrom L/0 33.41,59.30 |only Shaman
Complete the Class Hall mission "_There is no Brawlers Guild_" |complete itemcount(142522) >= 1 |goto Skyhold/1 59.13,13.42 |only Warrior
|tip This mission costs 200 Order Resources and takes 3 hours to complete.
|only if not completedq(45111) and not haveq(45111)
step
click Rude Letter##142522 |use Rude Letter##142522
accept Everyone Loves a Good Fight##45111
step
click Far Sight Totem
Observe #5# Brawl'gar Arena matches |q 45111/1 |goto Brawl'gar Arena/1 52.09,74.49
|tip You can also participate in brawls to complete this quest.
step
talk Bruno Flameretardant##49889
turnin Everyone Loves a Good Fight##45111 |goto Brawl'gar Arena/1 42.23,92.49
step
clicknpc Dreadscar Battle Plans##101979 |only Warlock
clicknpc Command Map##102589 |only Priest
click Eye of Odin |only Warrior
clicknpc Scouting Map##120832 |only DemonHunter, DeathKnight, Druid, Hunter, Mage, Monk, Paladin, Rogue, Shaman
Complete the Class Hall mission "_Council of War_" |complete itemcount(142553) >= 1 |goto Dreadscar Rift/0 66.19,47.01 |only Warlock
Complete the Class Hall mission "_Council of War_" |complete itemcount(142553) >= 1 |goto Broken Shore/2 49.79,50.61 |only DeathKnight
Complete the Class Hall mission "_Council of War_" |complete itemcount(142553) >= 1 |goto Mardum, the Shattered Abyss/2 58.84,54.91 |only DemonHunter
Complete the Class Hall mission "_Council of War_" |complete itemcount(142553) >= 1 |goto The Dreamgrove/0 52.71,51.08 |only Druid
Complete the Class Hall mission "_Council of War_" |complete itemcount(142553) >= 1 |goto Trueshot Lodge/0 42.49,46.59 |only Hunter
Complete the Class Hall mission "_Council of War_" |complete itemcount(142553) >= 1 |goto Hall of the Guardian/1 81.38,60.79 |only Mage
Complete the Class Hall mission "_Council of War_" |complete itemcount(142553) >= 1 |goto The Wandering Isle L/0 52.91,60.16 |only Monk
Complete the Class Hall mission "_Council of War_" |complete itemcount(142553) >= 1 |goto Eastern Plaguelands/20 53.37,78.71 |only Paladin
Complete the Class Hall mission "_Council of War_" |complete itemcount(142553) >= 1 |goto Netherlight Temple/1 49.85,48.87 |only Priest
Complete the Class Hall mission "_Council of War_" |complete itemcount(142553) >= 1 |goto Dalaran L/4 37.51,44.29 |only Rogue
Complete the Class Hall mission "_Council of War_" |complete itemcount(142553) >= 1 |goto The Maelstrom L/0 33.41,59.30 |only Shaman
Complete the Class Hall mission "_Council of War_" |complete itemcount(142553) >= 1 |goto Skyhold/1 59.13,13.42 |only Warrior
|tip This mission costs 200 Order Resources and takes 12 hours to complete.
|tip You must get the bonus loot from this mission, so aim for 200% success chance.
|only if not completedq(45162) and not haveq(45162)
step
click Tuft of Dwarvish Beard##142553 |use Tuft of Dwarvish Beard##142553
accept We Brought the Hammer##45162
step
talk Bruno Flameretardant##49889
turnin We Brought the Hammer##45162 |goto Brawl'gar Arena/1 42.23,92.49
step
clicknpc Dreadscar Battle Plans##101979 |only Warlock
clicknpc Command Map##102589 |only Priest
click Eye of Odin |only Warrior
clicknpc Scouting Map##120832 |only DemonHunter, DeathKnight, Druid, Hunter, Mage, Monk, Paladin, Rogue, Shaman
Complete the Class Hall mission "_Its Clean Up Time_" |complete itemcount(142554) >= 1 |goto Dreadscar Rift/0 66.19,47.01 |only Warlock
Complete the Class Hall mission "_Its Clean Up Time_" |complete itemcount(142554) >= 1 |goto Broken Shore/2 49.79,50.61 |only DeathKnight
Complete the Class Hall mission "_Its Clean Up Time_" |complete itemcount(142554) >= 1 |goto Mardum, the Shattered Abyss/2 58.84,54.91 |only DemonHunter
Complete the Class Hall mission "_Its Clean Up Time_" |complete itemcount(142554) >= 1 |goto The Dreamgrove/0 52.71,51.08 |only Druid
Complete the Class Hall mission "_Its Clean Up Time_" |complete itemcount(142554) >= 1 |goto Trueshot Lodge/0 42.49,46.59 |only Hunter
Complete the Class Hall mission "_Its Clean Up Time_" |complete itemcount(142554) >= 1 |goto Hall of the Guardian/1 81.38,60.79 |only Mage
Complete the Class Hall mission "_Its Clean Up Time_" |complete itemcount(142554) >= 1 |goto The Wandering Isle L/0 52.91,60.16 |only Monk
Complete the Class Hall mission "_Its Clean Up Time_" |complete itemcount(142554) >= 1 |goto Eastern Plaguelands/20 53.37,78.71 |only Paladin
Complete the Class Hall mission "_Its Clean Up Time_" |complete itemcount(142554) >= 1 |goto Netherlight Temple/1 49.85,48.87 |only Priest
Complete the Class Hall mission "_Its Clean Up Time_" |complete itemcount(142554) >= 1 |goto Dalaran L/4 37.51,44.29 |only Rogue
Complete the Class Hall mission "_Its Clean Up Time_" |complete itemcount(142554) >= 1 |goto The Maelstrom L/0 33.41,59.30 |only Shaman
Complete the Class Hall mission "_Its Clean Up Time_" |complete itemcount(142554) >= 1 |goto Skyhold/1 59.13,13.42 |only Warrior
|tip This mission costs 200 Order Resources and takes 16 hours to complete.
|tip You must get the bonus loot from this mission, so aim for 200% success chance.
|tip It can take up to 2 hours for this mission to appear.
|only if not completedq(45163) and not haveq(45163)
step
click Broken Broom Handle##142554 |use Broken Broom Handle##142554
accept Cleaning Up##45163
step
talk Bruno Flameretardant##49889
turnin Cleaning Up##45163 |goto Brawl'gar Arena/1 42.23,92.49
step
clicknpc Dreadscar Battle Plans##101979 |only Warlock
clicknpc Command Map##102589 |only Priest
click Eye of Odin |only Warrior
clicknpc Scouting Map##120832 |only DemonHunter, DeathKnight, Druid, Hunter, Mage, Monk, Paladin, Rogue, Shaman
Complete the Class Hall mission "_Master of Shadows_" |complete itemcount(143561) >= 1 |goto Dreadscar Rift/0 66.19,47.01 |only Warlock
Complete the Class Hall mission "_Master of Shadows_" |complete itemcount(143561) >= 1 |goto Broken Shore/2 49.79,50.61 |only DeathKnight
Complete the Class Hall mission "_Master of Shadows_" |complete itemcount(143561) >= 1 |goto Mardum, the Shattered Abyss/2 58.84,54.91 |only DemonHunter
Complete the Class Hall mission "_Master of Shadows_" |complete itemcount(143561) >= 1 |goto The Dreamgrove/0 52.71,51.08 |only Druid
Complete the Class Hall mission "_Master of Shadows_" |complete itemcount(143561) >= 1 |goto Trueshot Lodge/0 42.49,46.59 |only Hunter
Complete the Class Hall mission "_Master of Shadows_" |complete itemcount(143561) >= 1 |goto Hall of the Guardian/1 81.38,60.79 |only Mage
Complete the Class Hall mission "_Master of Shadows_" |complete itemcount(143561) >= 1 |goto The Wandering Isle L/0 52.91,60.16 |only Monk
Complete the Class Hall mission "_Master of Shadows_" |complete itemcount(143561) >= 1 |goto Eastern Plaguelands/20 53.37,78.71 |only Paladin
Complete the Class Hall mission "_Master of Shadows_" |complete itemcount(143561) >= 1 |goto Netherlight Temple/1 49.85,48.87 |only Priest
Complete the Class Hall mission "_Master of Shadows_" |complete itemcount(143561) >= 1 |goto Dalaran L/4 37.51,44.29 |only Rogue
Complete the Class Hall mission "_Master of Shadows_" |complete itemcount(143561) >= 1 |goto The Maelstrom L/0 33.41,59.30 |only Shaman
Complete the Class Hall mission "_Master of Shadows_" |complete itemcount(143561) >= 1 |goto Skyhold/1 59.13,13.42 |only Warrior
|tip This mission costs 200 Order Resources and takes 16 hours to complete.
|tip You must get the bonus loot from this mission, so aim for 200% success chance.
|tip It can take up to 2 hours for this mission to appear.
|only if not completedq(45304) and not haveq(45304)
step
click Exhausted Shadow Candle##143561 |use Exhausted Shadow Candle##143561
accept Attacking the Darkness##45304
step
talk Bruno Flameretardant##49889
turnin Attacking the Darkness##45304 |goto Brawl'gar Arena/1 42.23,92.49
step
clicknpc Dreadscar Battle Plans##101979 |only Warlock
clicknpc Command Map##102589 |only Priest
click Eye of Odin |only Warrior
clicknpc Scouting Map##120832 |only DemonHunter, DeathKnight, Druid, Hunter, Mage, Monk, Paladin, Rogue, Shaman
Complete the Class Hall mission "_I've Got A Strange Feeling About This_" |complete itemcount(143590) >= 1 |goto Dreadscar Rift/0 66.19,47.01 |only Warlock
Complete the Class Hall mission "_I've Got A Strange Feeling About This_" |complete itemcount(143590) >= 1 |goto Broken Shore/2 49.79,50.61 |only DeathKnight
Complete the Class Hall mission "_I've Got A Strange Feeling About This_" |complete itemcount(143590) >= 1 |goto Mardum, the Shattered Abyss/2 58.84,54.91 |only DemonHunter
Complete the Class Hall mission "_I've Got A Strange Feeling About This_" |complete itemcount(143590) >= 1 |goto The Dreamgrove/0 52.71,51.08 |only Druid
Complete the Class Hall mission "_I've Got A Strange Feeling About This_" |complete itemcount(143590) >= 1 |goto Trueshot Lodge/0 42.49,46.59 |only Hunter
Complete the Class Hall mission "_I've Got A Strange Feeling About This_" |complete itemcount(143590) >= 1 |goto Hall of the Guardian/1 81.38,60.79 |only Mage
Complete the Class Hall mission "_I've Got A Strange Feeling About This_" |complete itemcount(143590) >= 1 |goto The Wandering Isle L/0 52.91,60.16 |only Monk
Complete the Class Hall mission "_I've Got A Strange Feeling About This_" |complete itemcount(143590) >= 1 |goto Eastern Plaguelands/20 53.37,78.71 |only Paladin
Complete the Class Hall mission "_I've Got A Strange Feeling About This_" |complete itemcount(143590) >= 1 |goto Netherlight Temple/1 49.85,48.87 |only Priest
Complete the Class Hall mission "_I've Got A Strange Feeling About This_" |complete itemcount(143590) >= 1 |goto Dalaran L/4 37.51,44.29 |only Rogue
Complete the Class Hall mission "_I've Got A Strange Feeling About This_" |complete itemcount(143590) >= 1 |goto The Maelstrom L/0 33.41,59.30 |only Shaman
Complete the Class Hall mission "_I've Got A Strange Feeling About This_" |complete itemcount(143590) >= 1 |goto Skyhold/1 59.13,13.42 |only Warrior
|tip This mission costs 200 Order Resources and takes 16 hours to complete.
|tip You must get the bonus loot from this mission, so aim for 200% success chance.
|tip It can take up to 2 hours for this mission to appear.
|only if not completedq(45312) and not haveq(45312)
step
click Hunk of Meatball##143590 |use Hunk of Meatball##143590
accept You Beat the Ball of Meat##45312
step
talk Bruno Flameretardant##49889
turnin You Beat the Ball of Meat##45312 |goto Brawl'gar Arena/1 42.23,92.49
step
Congratulations!
You have earned _Meatball_ as an Order Hall Champion
]])
