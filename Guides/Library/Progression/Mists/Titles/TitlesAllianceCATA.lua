-- QuestCore bundled guide (mists)
if not QuestCore then return end
if UnitFactionGroup("player")~="Alliance" then return end
QuestCore:RegisterGuide("Title Guides\\Burning Crusade Titles\\Player versus Player\\Justicar",{
expansion="mists",
mopready=true,
playertitle=35,
},[[
step
Earn "The Justicar" Achievement |achieve 907
|tip This is achieved by earning Exalted with 'The Leage of Arathor', 'The Silverwing Sentinels' and 'The Stormpike Guard'.
|tip You will need to queue for Arathi Basin, Warsong Gulch and Alterac Valley PVP enounters to earn reputation with these factions.
]])
QuestCore:RegisterGuide("Title Guides\\Burning Crusade Titles\\Reputations\\Of the Shattered Sun",{
expansion="mists",
mopready=true,
description="\nThese dailies will walk you through getting the reputation\nneeded to purchase the Title of the Shattered Sun.",
playertitle=38,
},[[
step
talk Exarch Nasuun##24932
accept Maintaining the Sunwell Portal##11514 |goto Shattrath City 49.10,42.50
step
talk Lord Torvos##25140
accept Sunfury Attack Plans##11877 |goto Shattrath City 62.80,36.00
step
talk Emissary Mordin##19202
accept Gaining the Advantage##11875 |goto Shattrath City 62.80,35.60
'|only if skill("Skinning")>300 or skill("Mining")>300 or skill("Herbalism")>300
step
talk Harbinger Haronem##19475
accept The Multiphase Survey##11880 |goto Shattrath City 61.70,52.10
step
kill Clefthoof Bull##17132, Talbuk Thorngrazer##17131, Wild Elekk##18334
|tip They are Elekk, Talbuk and Clefthooves.
|tip Remember to skin their corpses in order to collect the Nether Residue.
collect 8 Nether Residue##35229 |q 11875/1 |goto Nagrand 50.30,40.40
'|only if skill("Skinning")>=300
step
collect 8 Nether Residue##35229 |q 11875/1 |goto Nagrand 40.80,31.60
|tip Mine inside the cave and collect Nether Residue.
You can check [Nagrand,50.00,56.60] for more Mining Nodes.
only if skill("Mining")>=300
step
use the Multiphase Spectrographic Goggles##35233
Gain the "Multiphase Goggles" Buff |havebuff Multiphase Goggles##46273 |goto Nagrand 38.30,65.30
|tip You have to be in the Nagrand zone to correctly get the buff.
only if haveq(11880)
step
collect Felweed##22785 |n
collect Dreaming Glory##22786 |n
|tip These have a change to produce Nether Residue when gathered.
|tip Refer to the gathering guides to accomplish this.
collect 8 Nether Residue##35229 |q 11875/1
'|only if skill("Herbalism")>=300
step
use the Multiphase Spectrographic Goggles##35233
|tip Use them on the Fiery Red Orbs on the ground all around this area.
Take #6# Multiphase Readings |q 11880/1 |goto Nagrand 38.30,65.30
step
kill Unbound Ethereal##22244, Bash'ir Raider##22241, Bash'ir Arcanist##22243, Bash'ir Spell-Thief##22242
collect 1 Bash'ir Phasing Device##34248 |n
use the Bash'ir Phasing Device##34248
Become Out of Phase |havebuff Bash'ir Phasing Device##44856
click Smuggled Mana Cell##187039
Collect 10 Smuggled Mana Cell |q 11514/1 |goto Blade's Edge Mountains 54.00,18.10
step
kill Sunfury Bloodwarder##18853, Sunfury Captain##19453, Sunfury Magister##18855, Sunfury Geologist##19779, Sunfury Astromancer##19643
collect Sunfury Attack Plans##35231 |q 11877/1 |goto Netherstorm 25.90,66.80
step
talk Lord Torvos##25140
turnin Sunfury Attack Plans##11877 |goto Shattrath City 62.80,36.00
step
talk Emissary Mordin##19202
turnin Gaining the Advantage##11875 |goto Shattrath City 62.80,35.60
step
talk Harbinger Haronem##19475
turnin The Multiphas Survey##11880 |goto Shattrath City 61.60,52.20
step
talk Exarch Nasuun##24932
turnin Maintaining the Sunwell Portal##11514 |goto Shattrath City 49.10,42.50
step
talk Astromancer Darnarian##25133
accept Know Your Ley Lines##11547 |goto Isle of Quel'Danas 47.50,35.40
step
talk Battlemage Arynna##25057
accept The Air Strikes Must Continue##11533 |goto Isle of Quel'Danas 47.50,35.10
step
talk Harbinger Inuuro##25061
accept The Battle Must Go On##11537 |goto Isle of Quel'Danas 47.60,35.10
step
talk Anchorite Ayuri##25112
accept Your Continued Support##11548 |goto Isle of Quel'Danas 48.80,37.20
|tip This quest requires that you give 10 Gold in trade of reputation with the Shattered Sun Offensive.
turnin Your Continued Support##11548 |goto Isle of Quel'Danas 48.80,37.20
step
talk Vindicator Kaalan##25108
accept Keeping the Enemy at Bay##11543 |goto Isle of Quel'Danas 50.60,39.00
step
talk Magister Ilastar##25069
accept Crush the Dawnblade##11540 |goto Isle of Quel'Danas 49.30,40.40
step
talk Smith Hauthaa##25046
accept Don't Stop Now....##11536 |goto Isle of Quel'Danas 50.60,40.80
accept Ata'mal Armaments##11544 |goto Isle of Quel'Danas 50.60,40.80
step
talk Mar'nah##24975
accept Rediscovering Your Roots##11521 |goto Isle of Quel'Danas 51.50,32.50
accept Open for Business##11546 |goto Isle of Quel'Danas 51.50,32.50
step
talk Captain Valindria##25088
accept Disrupt the Greengill Coast##11541 |goto Isle of Quel'Danas 53.80,34.30
step
talk Captain Theris Dawnhearth##24967
accept Arm the Wards!##11523 |goto Isle of Quel'Danas 47.50,30.50
accept The Missing Magistrix##11526 |goto Isle of Quel'Danas 47.50,30.50
step
talk Vindicator Xayann##24965
accept Further Conversions##11525 |goto Isle of Quel'Danas 47.10,30.70
stickystart "Deploy_Converted_Sentries"
stickystart "Collect_Bloodberry"
stickystart "Kill_Dawnblade_Summoners"
stickystart "Kill_Dawnblade_Blood_Knight"
stickystart "Kill_Dawnblade_Marksman"
step
kill Wretched Fiend##24966+
collect 4 Mana Remnants##34338 |q 11523 |c |goto Isle of Quel'Danas 44.30,28.50
step
label "Deploy_Converted_Sentries"
kill Erratic Sentry##24972+ |n
use the Attuned Crystal Cores##34368
|tip Use it on Erratic Sentries' corpse.
Deploy #5# Converted Sentries |q 11525/1 |goto Isle of Quel'Danas 44.30,28.50
step
label "Collect_Bloodberry"
click Bloodberry Bush##187333
|tip They can be found all around this area on the ground.
collect 5 Bloodberry##34502 |q 11546/1 |goto Isle of Quel'Danas 44.30,28.50
step
label "Kill_Dawnblade_Summoners"
kill 6 Dawnblade Summoner##24978 |q 11540/1 |goto Isle of Quel'Danas 42.10,35.70
step
label "Kill_Dawnblade_Blood_Knight"
kill 6 Dawnblade Blood Knight##24976 |q 11540/2 |goto Isle of Quel'Danas 42.10,35.70
step
label "Kill_Dawnblade_Marksman"
kill 3 Dawnblade Marksman##24979 |q 11540/3 |goto Isle of Quel'Danas 42.10,35.70
step
use the Astromancer's Crystal##34533
Take the Bloodcrystal Reading |q 11547/3 |goto Isle of Quel'Danas 42.10,35.70
step
use the Mana Remnants##34338
Energize a Crystal Ward |q 11523/1 |goto Isle of Quel'Danas 46.50,35.50
stickystart "Burn_Bloodoath_Sails"
stickystart "Burn_Dawnchaser_Sails"
step
talk Ayren Cloudbreaker##25059
Select _"You Need to Intercept the Dawnblade Reinforcements."_
use the Flaming Oil##34489
|tip Target the ships sails as you fly around.
Burn the Sin'loren's Sails |q 11543/1 |goto Isle of Quel'Danas 48.50,25.20
step
label "Burn_Bloodoath_Sails"
use the Flaming Oil##34489
|tip Target the ships sails as you fly around.
Burn the Bloodoath's Sails |q 11543/2 |goto Isle of Quel'Danas 48.50,25.20
step
label "Burn_Dawnchaser_Sails"
use the Flaming Oil##34489
|tip Target the ships sails as you fly around.
Burn the Dawnchaser's Sails |q 11543/3 |goto Isle of Quel'Danas 48.50,25.20
step
kill 6 Dawnblade Reservist##25087+ |q 11543/4 |goto Isle of Quel'Danas 51.10,9.70
You Can Find More Around [Isle of Quel'Danas 55.20,11.80]
step
talk Unrestrained Dragonhawk##25236 |goto Isle of Quel'Danas,52.40,17.40
Ride the dragonhawk to Sun's Reach |goto Isle of Quel'Danas 48.40,25.30 |noway |c
stickystart "Bomb_Eredar_Sorcerer"
stickystart "Bomb_Wrath_Enforcer"
step
talk Ayren Cloudbreaker##25059
Select _"You've been ordered to undertake an airstrike."_
use the Arcane Charges##34475
|tip Use them on enemies around the Dead Scar area.
kill 2 Pit Overlord##25031+ |q 11533/1 |goto Isle of Quel'Danas 48.50,25.20
step
label "Bomb_Eredar_Sorcerer"
kill 3 Eredar Sorcerer##25033+ |q 11533/2 |goto Isle of Quel'Danas 48.50,25.20
step
label "Bomb_Wrath_Enforcer"
kill 12 Wrath Enforcer##25030+ |q 11533/3 |goto Isle of Quel'Danas 48.50,25.20
stickystart "Kill_Burning_Legion_Demon"
step
kill Emissary of Hate##25003 |n
use the Shattered Sun Banner##34414
|tip Use it on the Emissary of Hate's corpse.
Impale the Emissary of Hate |q 11537/1 |goto Isle of Quel'Danas,48.50,43.70
step
use the Astromancer's Crystal##34533
Take the Portal Readings |q 11547/1 |goto Isle of Quel'Danas 48.50,43.70
step
label "Kill_Burning_Legion_Demon"
kill 6 Burning Legion Demon##25068 |q 11537/2 |goto Isle of Quel'Danas,48.50,43.70
stickystart "Collect_Darkspine_Iron_Ore"
step
kill Darkspine Siren##25073+
collect Orb of Murloc Control##34483 |n
use the Orb of Murloc Control##34483
|tip Use them on Greengill Slaves along the shore.
Free 10 Greengill Slaves |q 11541/1 |goto Isle of Quel'Danas 64.10,49.90
step
label "Collect_Darkspine_Iron_Ore"
kill Darkspine Myrmidon##25060+
collect Darkspine Chest Key##34477 |n
|tip Use your Darkspine Chest Keys on the Darkspine Ore Chests.
collect 3 Darkspine Iron Ore##34479 |q 11536/1 |goto Isle of Quel'Danas 64.10,49.90
step
use the Astromancer's Crystal##34533
Take the Shrine Readings |q 11547/2 |goto Isle of Quel'Danas 61.10,62.00
step
talk Mar'nah##24975
turnin Open for Business##11546 |goto Isle of Quel'Danas 51.50,32.50
step
talk Captain Valindria##25088
turnin Disrupt the Greengill Coast##11541 |goto Isle of Quel'Danas 53.80,34.30
step
talk Smith Hauthaa##25046
turnin Don't Stop Now....##11536 |goto Isle of Quel'Danas 50.60,40.70
step
talk Vindicator Kaalan##25108
turnin Keeping the Enemy at Bay##11543 |goto Isle of Quel'Danas 50.60,39.00
step
talk Magister Ilastar##25069
turnin Crush the Dawnblade##11540 |goto Isle of Quel'Danas 49.30,40.40
step
talk Astromancer Darnarian##25133
turnin Know Your Ley Lines##11547 |goto Isle of Quel'Danas 47.50,35.30
step
talk Battlemage Arynna##25057
turnin The Air Strikes Must Continue##11533 |goto Isle of Quel'Danas 47.50,35.10
step
talk Harbinger Inuuro##25061
turnin The Battle Must Go On##11537 |goto Isle of Quel'Danas 47.60,35.10
step
talk Captain Theris Dawnhearth##24967
turnin Arm the Wards!##11523 |goto Isle of Quel'Danas 47.50,30.50
step
talk Vindicator Xayann##24965
turnin Further Conversions##11525 |goto Isle of Quel'Danas 47.10,30.70
step
use the Captured Legion Scroll##34420 |goto Isle of Quel'Danas 48.50,44.70
Teleport to Hellfire Peninsula |goto Hellfire Peninsula 58.60,18.70 < 100 |noway |c
step
talk Magistrix Seyla##24937
turnin The Missing Magistrix##11526 |goto Hellfire Peninsula 58.20,17.60
accept Blood for Blood##11515 |goto Hellfire Peninsula 58.20,17.60
accept Blast the Gateway##11516 |goto Hellfire Peninsula 58.20,17.60
stickystart "Collect_Emaciated_Felblood"
step
kill Wrath Herald##24919+
collect 4 Demonic Blood##34259 |n
use the Sizzling Embers##34253
|tip This will summon Living Flames.
kill Incandescent Fel Spark##22323+ |n
Watch for the _"Living Flare becomes unstable with brimming energy!"_ message.
Move Here Once You See the Message Above [Hellfire Peninsula 58.60,18.70]
Destroy the Legion Gateway |q 11516/1 |goto Hellfire Peninsula 66.40,20.10
step
label "Collect_Emaciated_Felblood"
use the Fel Siphon##34257
|tip Use them on Felblood Initiates.
kill 4 Emaciated Felblood##24918 |q 11515/1 |goto Hellfire Peninsula 59.90,21.00
step
talk Magistrix Seyla##24937
turnin Blast the Gateway##11516 |goto Hellfire Peninsula 58.20,17.60
turnin Blood for Blood##11515 |goto Hellfire Peninsula 58.20,17.60
step
kill Razorthorn Flayer##24920+
collect Razorthorn Flayer Gland##34255 |n
use the Razorthorn Flayer Gland##34255
|tip Use them on Razorthorn Ravagers.
|tip Use your pets Expose Razorthorn Root ability on mounds of dirt around the area.
'|cast Expose Razorthorn Root##44935
collect 5 Razorthorn Root##34254 |q 11521/1 |goto Terokkar Forest 59.70,10.30
step
kill Shadowmoon Chosen##22084, Shadowmoon Slayer##22082, Shadowmoon Darkweaver##22081
collect 5 Ata'mal Armament##34500 |q 11544 |goto Shadowmoon Valley 68.50,37.50
step
talk Mar'nah##24975
turnin Rediscovering Your Roots##11521 |goto Isle of Quel'Danas 51.50,32.50
step
use the Ata'mal Armament##34500
|tip Cleanse them at Hauthaa's Anvil.
Cleanse 5 Ata'mal Metals |q 11544/1 |goto Isle of Quel'Danas 50.60,40.70
step
talk Smith Hauthaa##25046
turnin Ata'mal Armaments##11544 |goto Isle of Quel'Danas 50.60,40.70
]])
QuestCore:RegisterGuide("Title Guides\\Wrath of the Lich King Titles\\Dungeons & Raids\\The Astral Walker",{
expansion="mists",
mopready=true,
playertitle=165,
},[[
step
kill Algalon the Observer##32871
|tip This is only be achieved in Ulduar (25 player) Hard Mode.
Earn the "Observed (25 player)" Achievement |achieve 3037
]])
QuestCore:RegisterGuide("Title Guides\\Wrath of the Lich King Titles\\Dungeons & Raids\\Bane of the Fallen King",{
expansion="mists",
mopready=true,
playertitle=174,
},[[
step
kill The Lich King##36597
|tip Kill him in Heroic Icecrown Citadel (10 player) to achieve this.
Earn the "Bane of the Fallen King" Achievement |achieve 4583
]])
QuestCore:RegisterGuide("Title Guides\\Wrath of the Lich King Titles\\Dungeons & Raids\\Champion of the Frozen Wastes",{
expansion="mists",
mopready=true,
description="\nThis title is earned by completing the \"Champion of the Frozen Wastes\" achievement. You must kill "..
"various bosses from dungeons and raids from around Northrend.",
playertitle=129,
},[[
step
Earn the "Champion of the Frozen Wastes" Achievement |achieve 1658
|tip Below will display the dungeon and raid bosses you haven't killed yet.
Slay "Sartharion" in _The Obsidian Sanctum_ Raid on Heroic Difficulty (10 or 25 player) |only if not achieved(1658,6)
Slay "Kel'Thuzad" In _the Naxxramas_ Raid (10 or 25 player) |only if not achieved(1658,7)
Slay "Malygos" in _The Eye of Eternity_ Raid (10 or 25 player) |only if not achieved(1658,12)
Slay "Anub'arak" in _Azjol-Nerub_ on Heroic Difficulty |only if not achieved(1658,4)
Slay "Sjonnir The Ironshaper" in the _Halls of Stone_ on Heroic Difficulty |only if not achieved(1658,13)
Slay "Keristrasza" in _The Nexus_ on Heroic Difficulty |only if not achieved(1658,1)
Slay "Herald Volazj" in _Ahn'kahet: The Old Kingdom_ on Heroic Difficulty |only if not achieved(1658,14)
Slay "Loken" in the _Halls of Lightning_ on Heroic Difficulty |only if not achieved(1658,15)
Slay "Ley-Guardian Eregos" in _The Oculus_ on Heroic Difficulty |only if not achieved(1658,10)
Slay "Ingvar the Plunderer" in _Utgarde Keep_ on Heroic Difficulty |only if not achieved(1658,3)
Slay "King Ymiron" in _Utgarde Pinnacle_ on Heroic Difficulty |only if not achieved(1658,9)
Slay "Mal'Ganis" in _The Culling of Stratholme_ on Heroic Difficulty |only if not achieved(1658,8)
Slay "The Prophet Tharon'ja" in _Drak'Tharon Keep_ on Heroic Difficulty |only if not achieved(1658,11)
Slay "Cyanigosa" in _The Violet Hold_ on Heroic Difficulty |only if not achieved(1658,5)
Slay "Gal'darah" in _Gundrak_ on Heroic Difficulty |only if not achieved(1658,2)
]])
QuestCore:RegisterGuide("Title Guides\\Wrath of the Lich King Titles\\Dungeons & Raids\\Herald of the Titans",{
expansion="mists",
mopready=true,
description="\nThis title is earned by defeating Algalon the Observer in Ulduar in 10-player.",
playertitle=166,
},[[
step
kill Algalon the Observer##32871
|tip This is only achieved in Ulduar (10 player) Hard Mode.
|tip You must also not wear any gear that is higher than 10-player Ulduar provides.
Earn the "Herald of the Titans" Achievement |achieve 3316
]])
QuestCore:RegisterGuide("Title Guides\\Wrath of the Lich King Titles\\Dungeons & Raids\\The Kingslayer",{
expansion="mists",
mopready=true,
playertitle=175,
},[[
step
kill The Lich King##36597
Earn "The Frozen Throne (10 player)" Achievement |achieve 4530 |or
Earn "The Frozen Throne (25 player)" Achievement|achieve 4597 |or
]])
QuestCore:RegisterGuide("Title Guides\\Wrath of the Lich King Titles\\Dungeons & Raids\\The Light of Dawn",{
expansion="mists",
mopready=true,
playertitle=173,
},[[
step
kill The Lich King##36597
|tip This must be done on Heroic difficulty.
Earn "The LIght of Dawn" Achievement |achieve 4584
]])
QuestCore:RegisterGuide("Title Guides\\Wrath of the Lich King Titles\\Dungeons & Raids\\Of the Nightfall",{
expansion="mists",
mopready=true,
playertitle=140,
},[[
step
kill Sartharion##28860
|tip Slay Sartharion with all 3 Twilight Drakes still alive.
Earn "The Twilight Zone (10 player)" Achievement |achieve 2051
]])
QuestCore:RegisterGuide("Title Guides\\Wrath of the Lich King Titles\\Dungeons & Raids\\The Patient",{
expansion="mists",
mopready=true,
description="\nThis guide will instruct you on how to get The Patient title.",
playertitle=172,
},[[
step
Use "Group Finder" and Navigate to the  _Dungeon Finder_ Section
|tip Choose any Random Heroic Dungeon and make sure to kill the final boss.
Earn the "Looking For More" Achievement |achieve 4476
step
Use "Group Finder" and Navigate to the  _Dungeon Finder_ Section
|tip Choose any Random Heroic Dungeon and make sure to kill the final boss.
Earn the "Looking For Many" Achievement |achieve 4477
]])
QuestCore:RegisterGuide("Title Guides\\Wrath of the Lich King Titles\\Dungeons & Raids\\Starcaller",{
expansion="mists",
mopready=true,
playertitle=164,
},[[
step
kill Algalon the Observer##32871
|tip This is only achieved in Ulduar (10 player) Hard Mode.
Earn the "Obseved (10 player)" Achievement |achieve 3036
]])
QuestCore:RegisterGuide("Title Guides\\Wrath of the Lich King Titles\\Dungeons & Raids\\Twilight Vanquisher",{
expansion="mists",
mopready=true,
playertitle=121,
},[[
step
kill Sartharion##28860
|tip Slay Sartharion with all 3 Twilight Drakes still alive.
Earn "The Twilight Zone (25 player)" Achievement |achieve 2054
]])
QuestCore:RegisterGuide("Title Guides\\Wrath of the Lich King Titles\\Player versus Player\\of the Alliance",{
expansion="mists",
mopready=true,
playertitle=94,
},[[
step
Earn the "100000 Honorable Kills" Achievement |achieve 870
|tip This is earned via PvP activities.
|tip It can be achieved in the open world or via battle grounds.
]])
QuestCore:RegisterGuide("Title Guides\\Wrath of the Lich King Titles\\Player versus Player\\Arena Master",{
expansion="mists",
mopready=true,
playertitle=50,
},[[
step
Just the Two of Us: 2200 |achieve 1174/1
|tip Earn a 2200 Personal Rating in the 2v2 bracket of the arena
Three's Company: 2200 |achieve 1174/2
|tip Earn 2200 Personal Rating in the 3v3 bracket of the arena.
Hottest Streak |achieve 1174/3
|tip Win ten Ranked Matches in a row with a personal rating above 1800.
Hot Streak |achieve 1174/4
|tip Win ten Ranked Matches in a row.
High Five: 2200 |achieve 1174/5
|tip Earn 2200 Personal Rating in the 5v5 Bracket of the Arena.
Brutally Dedicated |achieve 1174/6
|tip Win 300 Ranked Arena Matches.
World Wide Winner |achieve 1174/7
|tip Win a Ranked Match in Blade's Edge, Nagrand, Dalaran Sewers and Ruins of Lordaeron Arena at level 80.
Last Man Standing |achieve 1174/8
|tip In a 5v5 Match, be the sole survivor.
]])
QuestCore:RegisterGuide("Achievement Guides\\Professions\\Cooking\\Hail to the Chef",{
expansion="mists",
mopready=true,
achieveid={1563},
patch='30002',
description="This guide will show you all the achievements you need to complete the Hail to the Chef Achievement.",
},[[
step
Earn the "Second That Emotion" Achievement |achieve 1563/1
Earn the "Sous Chef" Achievement |achieve 1563/2
Earn the "The Outland Gourmet" Achievement |achieve 1563/3
Earn the "The Cake Is Not A Lie" Achievement |achieve 1563/4
Earn the "Captain Rumsey's Lager" Achievement |achieve 1563/5
Earn the "The Northrend Groumet" Achievement |achieve 1563/6
Earn the "Critter Gitter" Achievement |achieve 1563/7
Earn the "Grand Master Cook" Achievement |achieve 1563/8
Earn the "Dinner Impossible" Achievement |achieve 1563/9
Earn the "Kickin' It Up a Notch" Achievement |achieve 1563/10
Earn the "Our Daily Bread" Achievement |achieve 1563/11
]])
QuestCore:RegisterGuide("Achievement Guides\\Professions\\Cooking\\Second That Emotion",{
expansion="mists",
mopready=true,
achieveid={1780},
patch='30002',
description="Eat the 'emotion' foods.",
},[[
step
collect 1 Bad Clams##43491
collect 1 Haunted Herring##43492
collect 1 Last Week's Mammoth##43488
collect 1 Tasty Cupcake##43490
|tip You can buy these from the Auction House or farm them yourself.
Click Here to Farm Them Yourself |confirm
|next "eat" |only if default |or
'|achieve 1780 |or
step
collect 1 Succulent Clam Meat##36782
collect 1 Mote of Shadow##22577
collect 1 Chunk o' Mammoth##34736
collect 1 Northern Egg##43501
collect 1 Fangtooth Herring##41810
collect 1 Essence of Undeath##12808
collect 2 Simple Flour##30817
|tip These are the ingredients required to craft the dishes needed for the achievement.
|tip You can buy these from the Auction House or farm them yourself.
Click Here to Gather Them Yourself |confirm |next "Gather"
'|achieve 1780 |or
step
label "Gather"
kill Winterfin Warrior##25217+
collect Darkwater Clam##36781 |n
use the Darkwater Clam##36781
collect 1 Succulent Clam Meat##36782 |goto Borean Tundra 41.20,17.60 |or
'|achieve 1780 |or
step
kill Scourged Mammoth##25452+
collect 1 Chunk o' Mammoth##34736 |goto Borean Tundra 78.20,24.00 |or
'|achieve 1780 |or
step
kill Carrion Condor##26174
collect 1 Northern Egg##43501 |goto Borean Tundra 85.20,36.20 |or
'|achieve 1780 |or
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Fangtooth Herring##41810 |goto Howling Fjord 60.20,33.60 |or
'|achieve 1780 |or
step
talk Derek Odds##31032 |goto Dalaran 41.20,65.00
buy 2 Simple Flour##30817 |or
'|achieve 1780 |or
step
kill Voidspawn##17981 |goto Nagrand 37.80,66.60
collect 1 Mote of Shadow##22577 |or
'|achieve 1780 |or
step
_Inside the Scholomance Dungeon:_
Kill Enemies around this area
|tip Only undead enemies will drop the essence.
collect 1 Essence of Undeath##12808 |or
'|achieve 1780 |or
stickystart "Last_Weeks_Mammoth"
stickystart "Haunted_Herring"
stickystart "Tasty_Cupcake"
step
kill Crypt Crawler##25227+
collect 1 Recipe: Bad Clams##43509 |n
use the Recipe: Bad Clams##43509
learn Bad Clams##58523 |goto Borean Tundra/0 54.60,70.00 |or
'|achieve 1779 |or
step
label "Last_Weeks_Mammoth"
kill Crypt Crawler##25227+ |notinsticky
collect 1 Recipe: Last Week's Mammoth##43508 |n
use the Recipe: Last Week's Mammoth##43508
learn Last Week's Mammoth##58521 |goto Borean Tundra/0 54.60,70.00 |or
'|achieve 1779 |or
step
label "Haunted_Herring"
kill Crypt Crawler##25227+ |notinsticky
collect 1 Recipe: Haunted Herring##43510 |n
use the Recipe: Haunted Herring##43510
learn Haunted Herring##58525 |goto Borean Tundra/0 54.60,70.00 |or
'|achieve 1779 |or
step
label "Tasty_Cupcake"
kill Crypt Crawler##25227+ |notinsticky
collect 1 Recipe: Tasty Cupcake##43507 |n
use the Recipe: Tasty Cupcake##43507
learn Tasty Cupcake##58512 |goto Borean Tundra/0 54.60,70.00 |or
'|achieve 1779 |or
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Haunted Herring>_
collect 1 Haunted Herring##43492 |or
'|achieve 1780 |or
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Bad Clams>_
collect 1 Bad Clams##43491 |or
'|achieve 1780 |or
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Last Week's Mammoth>_
collect 1 Last Week's Mammoth##43488 |or
'|achieve 1780 |or
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Tasty Cupcake>_
collect 1 Tasty Cupcake##43490 |or
'|achieve 1780 |or
step
label "eat"
use the Haunted Herring##43492
Eat the Haunted Herring Emotion |achieve 1780/3
step
use the Bad Clams##43491
Eat the Bad Clams Emotion |achieve 1780/2
step
use the Last Week's Mammoth##43488
Eat the Last Week's Mammoth Emotion |achieve 1780/1
step
use the Tasty Cupcake##43490
Eat the Tasty Cupcake Emotion |achieve 1780/4
]])
QuestCore:RegisterGuide("Achievement Guides\\Professions\\Cooking\\Sous Chef",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(1798) end,
achieveid={1795,1796,1797,1798},
patch='40003',
description="Learn 200 cooking recipes.",
},[[
step
Train Illustrious Grand Master Cooking |skillmax Cooking,525
|tip Use the "Cooking 1-525" Cookign Guide to accomplish this.
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Charred Wolf Meat##2538 |goto Stormwind City/0 77.29,53.22
step
talk Stephen Ryback##5482
learn Roasted Boar Meat##2540 |goto Stormwind City/0 77.29,53.22
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Herb Baked Egg##8604 |goto Stormwind City/0 77.29,53.22
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Darkbrew Lager##88015 |goto Stormwind City/0 77.29,53.22
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Blackened Surprise##88006 |goto Stormwind City/0 77.29,53.22
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Spice Bread##37836 |goto Stormwind City/0 77.29,53.22
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Kaldorei Spider Kabob##6412 |goto Stormwind City/0 77.29,53.22
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Spiced Wolf Meat##2539 |goto Stormwind City/0 77.29,53.22
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Venison Jerky##93741 |goto Stormwind City/0 77.29,53.22
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Boiled Clams##6499 |goto Stormwind City/0 77.29,53.22
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Coyote Steak##2541 |goto Stormwind City/0 77.29,53.22
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Fillet of Frenzy##6415 |goto Stormwind City/0 77.29,53.22
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Dry Pork Ribs##2546 |goto Stormwind City/0 77.29,53.22
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Crab Cake##2544 |goto Stormwind City/0 77.29,53.22
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Goblin Deviled Clams##6500 |goto Stormwind City/0 77.29,53.22
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Tasty Lion Steak##3399 |goto Stormwind City/0 77.29,53.22
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Barbecued Buzzard Wing##4094 |goto Stormwind City/0 77.29,53.22
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Soothing Turtle Bisque##3400 |goto Stormwind City/0 77.29,53.22
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Spider Sausage##21175 |goto Stormwind City/0 77.29,53.22
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Spotted Yellowtail##18238 |goto Stormwind City/0 77.29,53.22
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Grilled Squid##18240 |goto Stormwind City/0 77.29,53.22
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Charred Bear Kabobs##46684 |goto Stormwind City/0 77.29,53.22
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Juicy Bear Burger##46688 |goto Stormwind City/0 77.29,53.22
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Nightfin Soup##18243 |goto Stormwind City/0 77.29,53.22
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Poached Sunscale Salmon##18244 |goto Stormwind City/0 77.29,53.22
step
talk Kendor Kabonka##340
|tip Inside the building.
buy 1 Recipe: Gooey Spider Cake##3683 |n
use the Recipe: Gooey Spider Cake##3683
learn Gooey Spider Cake##3377 |goto Stormwind City/0 76.59,52.86
step
talk Kendor Kabonka##340
|tip Inside the building.
buy 1 Recipe: Seasoned Wolf Kabob##2701 |n
use the Recipe: Seasoned Wolf Kabob##2701
learn Seasoned Wolf Kabob##2549 |goto Stormwind City/0 76.59,52.86
step
talk Kendor Kabonka##340
|tip Inside the building.
buy 1 Recipe: Murloc Fin Soup##3680 |n
use the Recipe: Murloc Fin Soup##3680
learn Murloc Fin Soup##3372 |goto Stormwind City/0 76.59,52.86
step
talk Kendor Kabonka##340
|tip Inside the building.
buy 1 Recipe: Crocolisk Gumbo##3681 |n
use the Recipe: Crocolisk Gumbo##3681
learn Crocolisk Gumbo##3373 |goto Stormwind City/0 76.59,52.86
step
talk Kendor Kabonka##340
|tip Inside the building.
buy 1 Recipe: Curiously Tasty Omelet##3682 |n
use the Recipe: Curiously Tasty Omelet##3682
learn Curiously Tasty Omelet##3376 |goto Stormwind City/0 76.59,52.86
step
talk Kendor Kabonka##340
|tip Inside the building.
buy 1 Recipe: Redridge Goulash##2699 |n
use the Recipe: Redridge Goulash##2699
learn Redridge Goulash##2547 |goto Stormwind City/0 76.59,52.86
step
talk Kendor Kabonka##340
|tip Inside the building.
buy 1 Recipe: Succulent Pork Ribs##2700 |n
use the Recipe: Succulent Pork Ribs##2700
learn Succulent Pork Ribs##2548 |goto Stormwind City/0 76.59,52.86
step
talk Kendor Kabonka##340
|tip Inside the building.
buy 1 Recipe: Crocolisk Steak##3678 |n
use the Recipe: Crocolisk Steak##3678
learn Crocolisk Steak##3370 |goto Stormwind City/0 76.59,52.86
step
talk Kendor Kabonka##340
|tip Inside the building.
buy 1 Recipe: Blood Sausage##3679 |n
use the Recipe: Blood Sausage##3679
learn Blood Sausage##3371 |goto Stormwind City/0 76.59,52.86
step
talk Kendor Kabonka##340
|tip Inside the building.
buy 1 Recipe: Cooked Crab Claw##2698 |n
use the Recipe: Cooked Crab Claw##2698
learn Cooked Crab Claw##2545 |goto Stormwind City/0 76.59,52.86
step
talk Kendor Kabonka##340
|tip Inside the building.
buy 1 Recipe: Westfall Stew##728 |n
use the Recipe: Westfall Stew##728
learn Westfall Stew##2543 |goto Stormwind City/0 76.59,52.86
step
talk Kendor Kabonka##340
|tip Inside the building.
buy 1 Recipe: Goretusk Liver Pie##2697 |n
use the Recipe: Goretusk Liver Pie##2697
learn Goretusk Liver Pie##2542 |goto Stormwind City/0 76.59,52.86
step
talk Kendor Kabonka##340
|tip Inside the building.
buy 1 Recipe: Beer Basted Boar Ribs##2889 |n
use the Recipe: Beer Basted Boar Ribs##2889
learn Beer Basted Boar Ribs##2795 |goto Stormwind City/0 76.59,52.86
step
talk Auctioneer Fitch##8719
|tip The following recipes are purchased from Horde vendors.
buy 1 Recipe: Roasted Kodo Meat##5484 |n
use the Recipe: Roasted Kodo Meat##5484
learn Roasted Kodo Meat##6414 |goto Stormwind City/0 61.16,70.78
step
talk Auctioneer Fitch##8719
|tip The following recipes are purchased from Horde vendors.
buy 1 Recipe: Crispy Bat Wing##12226 |n
use the Recipe: Crispy Bat Wing##12226
learn Crispy Bat Wing##15935 |goto Stormwind City/0 61.16,70.78
step
talk Auctioneer Fitch##8719
|tip The following recipes are purchased from Horde vendors.
buy 1 Recipe: Scorpid Surprise##5483 |n
use the Recipe: Scorpid Surprise##5483
learn Scorpid Surprise##6413 |goto Stormwind City/0 61.16,70.78
step
talk Auctioneer Fitch##8719
|tip The following recipes are purchased from Horde vendors.
buy 1 Recipe: Strider Stew##5486 |n
use the Recipe: Strider Stew##5486
learn Strider Stew##6416 |goto Stormwind City/0 61.16,70.78
step
talk Auctioneer Fitch##8719
|tip The following recipes are purchased from Horde vendors.
buy 1 Recipe: Crispy Lizard Tail##5488 |n
use the Crispy Lizard Tail##5488
learn Crispy Lizard Tail##6418 |goto Stormwind City/0 61.16,70.78
step
talk Auctioneer Fitch##8719
|tip The following recipes are purchased from Horde vendors.
buy 1 Recipe: Heavy Crocolisk Stew##20075 |n
use the Recipe: Heavy Crocolisk Stew##20075
learn Heavy Crocolisk Stew##24418 |goto Stormwind City/0 61.16,70.78
step
talk Auctioneer Fitch##8719
|tip The following recipes are purchased from Horde vendors.
buy 1 Recipe: Hot Lion Chops##3735 |n
use the Recipe: Hot Lion Chops##3735
learn Hot Lion Chops##3398 |goto Stormwind City/0 61.16,70.78
step
talk Auctioneer Fitch##8719
|tip The following recipes are purchased from Horde vendors.
buy 1 Recipe: Carrion Surprise##12232 |n
use the Recipe: Carrion Surprise##12232
learn Carrion Surprise##15863 |goto Stormwind City/0 61.16,70.78
step
talk Auctioneer Fitch##8719
|tip The following recipes are purchased from Horde vendors.
buy 1 Recipe: Bat Bites##27687 |n
use the Recipe: Bat Bites##27687
learn Bat Bites##33278 |goto Stormwind City/0 61.16,70.78
step
talk Auctioneer Fitch##8719
|tip The following recipes are purchased from Horde vendors.
buy 1 Recipe: Lynx Steak##27685 |n
use the Recipe: Lynx Steak##27685
learn Lynx Steak##33276 |goto Stormwind City/0 61.16,70.78
step
talk Shay Pressler##46602
|tip Inside the building.
|tip The following recipes require Honored reputation with a guild.
|tip Earn guild reputation by completing quests.
buy 1 Recipe: Broiled Dragon Feast##62799 |n
use the Recipe: Broiled Dragon Feast##62799
learn Broiled Dragon Feast##88011 |goto Stormwind City/0 64.16,77.02
step
talk Shay Pressler##46602
|tip Inside the building.
|tip The following recipes require Honored reputation with a guild.
|tip Earn guild reputation by completing quests.
buy 1 Recipe: Seafood Magnifique Feast##62800 |n
use the Recipe: Seafood Magnifique Feast##62800
learn Seafood Magnifique Feast##88036 |goto Stormwind City/0 64.16,77.02
step
talk Kriggon Talsone##4305
buy 1 Recipe: Clam Chowder##5528 |n
use the Recipe: Clam Chowder##5528
learn Clam Chowder##6501 |goto Westfall/0 36.23,90.19
step
talk Kriggon Talsone##4305
buy 1 Recipe: Slitherskin Mackerel##6326 |n
use the Recipe: Slitherskin Mackerel##6326
learn Slitherskin Mackerel##7752 |goto Westfall/0 36.23,90.19
step
talk Kriggon Talsone##4305
buy 1 Recipe: Spiced Chili Crab##16111 |n
use the Recipe: Spiced Chili Crab##16111
learn Spiced Chili Crab##15915 |goto Westfall/0 36.23,90.19
step
talk Khara Deepwater##1684
buy 1 Recipe: Longjaw Mud Snapper##6328 |n
use the Recipe: Longjaw Mud Snapper##6328
learn Longjaw Mud Snapper##7753 |goto Loch Modan/0 40.28,39.29
step
talk Khara Deepwater##1684
buy 1 Recipe: Loch Frenzy Delight##6329 |n
use the Recipe: Loch Frenzy Delight##6329
learn Loch Frenzy Delight##7754 |goto Loch Modan/0 40.28,39.29
step
talk Khara Deepwater##1684
buy 1 Recipe: Brilliant Smallfish##6325 |n
use the Recipe: Brilliant Smallfish##6325
learn Brilliant Smallfish##7751 |goto Loch Modan/0 40.28,39.29
step
Enter the building |goto Loch Modan/0 35.19,47.75 < 5 |walk
talk Drac Roughcut##1465
|tip Inside the building.
buy 1 Recipe: Smoked Bear Meat##6892 |n
use the Recipe: Smoked Bear Meat##6892
learn Smoked Bear Meat##8607 |goto Loch Modan/0 35.57,49.14
step
talk Vidra Hearthstove##1963
|tip Inside the building.
accept Thelsamar Blood Sausages##26860 |goto Loch Modan/0 34.83,49.29
step
kill Black Bear##1186+
collect 8 Bear Rump##60497 |q 26860/1 |goto Loch Modan/0 33.04,33.79
step
Enter the building |goto Loch Modan/0 35.19,47.75 < 5 |walk
talk Vidra Hearthstove##1963
|tip Inside the building.
turnin Thelsamar Blood Sausages##26860 |goto Loch Modan/0 34.83,49.29
step
use the Recipe: Blood Sausage##3679
|tip Rewarded from the 'Thelsamar Blood Sausages' quest.
learn Blood Sausage##3371
step
talk Corporal Bluth##734
buy 1 Recipe: Jungle Stew##12231 |n
use the Recipe: Jungle Stew##12231
learn Jungle Stew##15861 |goto Northern Stranglethorn/0 47.44,10.22
step
talk Kelsey Yance##2664
|tip  Inside the building.
buy 1 Recipe: Mightfish Steak##13948 |n
use the Recipe: Mightfish Steak##13948
learn Mightfish Steak##18246 |goto The Cape of Stranglethorn/0 42.80,68.97
step
talk Kelsey Yance##2664
|tip  Inside the building.
buy 1 Recipe: Hot Smoked Bass##13943 |n
use the Recipe: Hot Smoked Bass##13943
learn Hot Smoked Bass##18242 |goto The Cape of Stranglethorn/0 42.80,68.97
step
talk Kelsey Yance##2664
|tip  Inside the building.
buy 1 Recipe: Cooked Glossy Mightfish##13940 |n
use the Recipe: Cooked Glossy Mightfish##13940
learn Cooked Glossy Mightfish##18239 |goto The Cape of Stranglethorn/0 42.80,68.97
step
talk Kelsey Yance##2664
|tip  Inside the building.
buy 1 Recipe: Filet of Redgill##13941 |n
use the Recipe: Filet of Redgill##13941
learn Filet of Redgill##18241 |goto The Cape of Stranglethorn/0 42.80,68.97
step
talk Kelsey Yance##2664
|tip  Inside the building.
buy 1 Recipe: Giant Clam Scorcho##6039 |n
use the Recipe: Giant Clam Scorcho##6039
learn Giant Clam Scorcho##7213 |goto The Cape of Stranglethorn/0 42.80,68.97
step
talk Kelsey Yance##2664
|tip  Inside the building.
buy 1 Recipe: Sagefish Delight##21219 |n
use the Recipe: Sagefish Delight##21219
learn Sagefish Delight##25954 |goto The Cape of Stranglethorn/0 42.80,68.97
step
talk Kelsey Yance##2664
|tip  Inside the building.
buy 1 Recipe: Rockscale Cod##6369 |n
use the Recipe: Rockscale Cod##6369
learn Rockscale Cod##7828 |goto The Cape of Stranglethorn/0 42.80,68.97
step
talk Kelsey Yance##2664
|tip  Inside the building.
buy 1 Recipe: Mithril Head Trout##17062 |n
use the Recipe: Mithril Head Trout##17062
learn Mithril Head Trout##20916 |goto The Cape of Stranglethorn/0 42.80,68.97
step
talk Kelsey Yance##2664
|tip  Inside the building.
buy 1 Recipe: Smoked Sagefish##21099 |n
use the Recipe: Smoked Sagefish##21099
learn Smoked Sagefish##25704 |goto The Cape of Stranglethorn/0 42.80,68.97
step
talk Mrs. Gant##54232
|tip Inside the building at the bottom floor.
buy 1 Recipe: Undermine Clam Chowder##16767 |n
use the Recipe: Undermine Clam Chowder##16767
learn Undermine Clam Chowder##20626 |goto The Cape of Stranglethorn/0 42.69,72.72
step
talk Kilxx##3497
buy 1 Recipe: Bristle Whisker Catfish##6330 |n
use the Recipe: Bristle Whisker Catfish##6330
learn Bristle Whisker Catfish##7755 |goto The Barrens/0 68.57,72.60
step
talk Kilxx##3497
buy 1 Recipe: Rainbow Fin Albacore##6368 |n
use the Recipe: Rainbow Fin Albacore##6368
learn Rainbow Fin Albacore##7827 |goto The Barrens/0 68.57,72.60
step
talk Zidormi##63546
Select _"Show me Theramore before the destruction."_
Travel to the Past |complete QC.InPhase("Old Dustwallow") |goto Dustwallow Marsh/0 55.91,49.54
step
talk Helenia Olden##4897
buy 1 Recipe: Dragonbreath Chili##12239 |n
use the Recipe: Dragonbreath Chili##12239
learn Dragonbreath Chili##15906 |goto Dustwallow Marsh/0 66.44,51.46
step
talk Helenia Olden##4897
buy 1 Recipe: Mystery Stew##12233 |n
use the Recipe: Mystery Stew##12233
learn Mystery Stew##15865 |goto Dustwallow Marsh/0 66.44,51.46
step
talk Helenia Olden##4897
buy 1 Recipe: Roast Raptor##12228 |n
use the Recipe: Roast Raptor##12228
learn Roast Raptor##15855 |goto Dustwallow Marsh/0 66.44,51.46
step
talk Dirge Quikcleave##40589
buy 1 Recipe: Tender Wolf Steak##18046 |n
use the Recipe: Tender Wolf Steak##18046
learn Tender Wolf Steak##22480 |goto Tanaris/0 52.57,29.05
step
talk Dirge Quikcleave##40589
accept Clamlette Surprise##6610 |goto Tanaris/0 52.57,29.05
step
kill Fire Roc##5429+
collect 10 Giant Egg##12207 |q 6610/1 |goto Tanaris/0 45.14,39.78
You can find more around [Tanaris/0 47.87,46.19]
step
talk Carmen Ibanozzle##38714
buy 20 Fine Aged Cheddar##3927 |q 6610/3 |goto Tanaris/0 55.66,60.99
step
Kill enemies around this area
collect Big-Mouth Clam##7973+ |n
use the Big-Mouth Clam##7973
collect 10 Zesty Clam Meat##7974 |q 6610/2 |goto Tanaris/0 54.36,37.66
step
talk Dirge Quikcleave##40589
turnin Clamlette Surprise##6610 |goto Tanaris/0 52.57,29.05
step
learn Clamlette Magnifique##64054
|tip This should be automatically learned from quest completion.
step
talk Zidormi##128607
|tip She is at the top of the ramp leading from Un'Goro Crater to Silithus.
Select _"Can you show me what Silithus was like before the Wound in the World?"_
Travel to the Past |complete QC.InPhase('Old Silithus') |goto Silithus/0 78.93,21.97 |q 8307 |future
step
talk Calandrath##15174
|tip Inside the building.
accept Desert Recipe##8307 |goto Silithus/0 55.52,36.77
step
click Sandy Cookbook##180503
turnin Desert Recipe##8307 |goto Silithus/0 43.55,42.05
accept Sharing the Knowledge##8313 |goto Silithus/0 43.55,42.05
step
talk Calandrath##15174
|tip Inside the building.
turnin Sharing the Knowledge##8313 |goto Silithus/0 55.52,36.77
step
learn Smoked Desert Dumplings##24801
|tip This should be automatically learned from quest completion.
step
talk Vivianna##7947
|tip She walks around this area.
buy 1 Recipe: Hot Wolf Ribs##12229 |n
use the Recipe: Hot Wolf Ribs##12229
learn Hot Wolf Ribs##15856 |goto Feralas/0 46.33,41.67
step
talk Vivianna##7947
|tip She walks around this area.
buy 1 Recipe: Baked Salmon##13949 |n
use the Recipe: Baked Salmon##13949
learn Baked Salmon##18247 |goto Feralas/0 46.33,41.67
step
talk Vivianna##7947
|tip She walks around this area.
buy 1 Recipe: Lobster Stew##13947 |n
use the Recipe: Lobster Stew##13947
learn Lobster Stew##18245 |goto Feralas/0 46.33,41.67
step
talk Janet Hommers##8150
buy 1 Recipe: Heavy Kodo Stew##12240 |n
use the Recipe: Heavy Kodo Stew##12240
learn Heavy Kodo Stew##15910 |goto Desolace/0 66.19,6.58
step
talk Himmik##11187
|tip Inside the building.
buy 1 Recipe: Monster Omelet##16110 |n
use the Recipe: Monster Omelet##16110
learn Monster Omelet##15933 |goto Winterspring/0 59.82,51.56
step
talk Acteon##17110
accept The Great Moongraze Hunt##9454 |goto Azuremyst Isle/0 49.78,51.94
step
kill Moongraze Stag##17200+
collect 6 Moongraze Stag Tenderloin##23676 |q 9454/1 |goto Azuremyst Isle/0 52.08,57.60
step
talk Acteon##17110
turnin The Great Moongraze Hunt##9454 |goto Azuremyst Isle/0 49.78,51.94
step
use the Recipe: Roasted Moongraze Tenderloin##27686
|tip Rewarded "The Great Moongraze Hunt" quest.
learn Roasted Moongraze Tenderloin##33277
step
talk Fazu##18427
buy 1 Recipe: Crunchy Spider Surprise##22647 |n
use the Recipe: Crunchy Spider Surprise##22647
learn Crunchy Spider Surprise##28267 |goto Bloodmyst Isle/0 53.43,56.37
step
talk Jack Trapper##19185
|tip Inside the building.
learn Stewed Trout##42296 |goto Shattrath City/0 63.09,68.38
step
talk Jack Trapper##19185
|tip Inside the building.
learn Fisherman's Feast##42302 |goto Shattrath City/0 63.09,68.38
step
talk Jack Trapper##19185
|tip Inside the building.
learn Hot Buttered Trout##42305 |goto Shattrath City/0 63.09,68.38
step
talk Supply Officer Mills##19038
|tip Inside the building.
buy 1 Recipe: Blackened Basilisk##27690 |n
use the Recipe: Blackened Basilisk##27690
learn Blackened Basilisk##33286 |goto Terokkar Forest/0 55.73,53.04
step
talk Supply Officer Mills##19038
|tip Inside the building.
buy 1 Recipe: Warp Burger##27692 |n
use the Recipe: Warp Burger##27692
learn Warp Burger##33288 |goto Terokkar Forest/0 55.73,53.04
step
talk Innkeeper Biribi##19296
|tip Inside the building.
buy 1 Recipe: Golden Fish Sticks##27699 |n
use the Recipe: Golden Fish Sticks##27699
learn Golden Fish Sticks##33295 |goto Terokkar Forest/0 56.70,53.28
step
talk Innkeeper Biribi##19296
|tip Inside the building.
buy 1 Recipe: Spicy Crawdad##27700 |n
use the Recipe: Spicy Crawdad##27700
learn Spicy Crawdad##33296 |goto Terokkar Forest/0 56.70,53.28
step
Enter the building |goto Hellfire Peninsula/0 54.91,63.61 < 5 |walk
talk Sid Limbardi##16826
|tip Inside the building.
buy 1 Recipe: Ravager Dog##27688 |n
use the Recipe: Ravager Dog##27688
learn Ravager Dog##33284 |goto Hellfire Peninsula/0 54.22,63.60 |complete knowsrecipe(33284)
step
talk Legassi##19344
accept Ravager Egg Roundup##9349 |goto Hellfire Peninsula/0 49.24,74.83
step
click Ravager Egg##181385
Kill Razorfang enemies around this area
collect 12 Ravager Egg##23217 |q 9349/1 |goto Hellfire Peninsula/0 40.76,84.80
step
talk Legassi##19344
turnin Ravager Egg Roundup##9349 |goto Hellfire Peninsula/0 49.24,74.83
accept Helboar, the Other White Meat##9361 |goto Hellfire Peninsula/0 49.24,74.83
step
kill Deranged Hellboar##16863+
collect Tainted Helboar Meat##23270 |n
use the Purification Mixture##23268
collect 8 Purified Helboar Meat##23248 |q 9361/1 |goto Hellfire Peninsula/0 50.00,67.70
step
talk Legassi##19344
turnin Helboar, the Other White Meat##9361 |goto Hellfire Peninsula/0 49.24,74.83
accept Smooth as Butter##9356 |goto Hellfire Peninsula/0 49.24,74.83
step
kill Bonestripper Buzzard##16972+
collect 12 Plump Buzzard Wing##23239 |q 9356/1 |goto Hellfire Peninsula/0 60.31,68.54
step
talk Legassi##19344
turnin Smooth as Butter##9356 |goto Hellfire Peninsula/0 49.24,74.83
step
use the Recipe: Buzzard Bites##27684
|tip Reward from "Smooth as Butter".
learn Buzzard Bites##33279
step
talk Xerintha Ravenoak##20916
buy 1 Recipe: Crunchy Serpent##31674 |n
use the Recipe: Crunchy Serpent##31674
learn Crunchy Serpent##38868 |goto Blade's Edge Mountains/0 62.48,40.34
step
talk Xerintha Ravenoak##20916
buy 1 Recipe: Mok'Nathal Shortribs##31675 |n
use the Recipe: Mok'Nathal Shortribs##31675
learn Mok'Nathal Shortribs##38867 |goto Blade's Edge Mountains/0 62.48,40.34
step
talk Juno Dufrain##18911
buy 1 Recipe: Blackened Sporefish##27696 |n
use the Recipe: Blackened Sporefish##27696
learn Blackened Sporefish##33292 |goto Zangarmarsh/0 78.05,66.09
step
talk Doba##20028
buy 1 Recipe: Blackened Trout##27694 |n
use the Recipe: Blackened Trout##27694
learn Blackened Trout##33290 |goto Zangarmarsh/0 42.33,27.91
step
talk Doba##20028
buy 1 Recipe: Feltail Delight##27695 |n
use the Recipe: Feltail Delight##27695
learn Feltail Delight##33291 |goto Zangarmarsh/0 42.33,27.91
step
Reach Neutral Reputation with Sporeggar |complete rep("Sporeggar") >= Neutral
|tip Use the "Sporeggar" reputation guide to accomplish this.
step
click Glowcap##182053
|tip They look like glowing orange and yellow mushrooms on the ground around this area.
collect 1 Glowcap##24245 |goto Zangarmarsh/0 18.74,51.53
step
talk Mycah##18382
buy 1 Recipe: Clam Bar##30156 |n
use the Recipe: Clam Bar##30156
learn Clam Bar##36210 |goto Zangarmarsh/0 18.26,51.12
step
talk Uriku##20096
buy 1 Recipe: Roasted Clefthoof##27691 |n
use the Recipe: Roasted Clefthoof##27691
learn Roasted Clefthoof##33287 |goto Nagrand/0 56.21,73.33
step
talk Uriku##20096
buy 1 Recipe: Talbuk Steak##27693 |n
use the Recipe: Talbuk Steak##27693
learn Talbuk Steak##33289 |goto Nagrand/0 56.21,73.33
step
talk Uriku##20096
buy 1 Recipe: Grilled Mudfish##27697 |n
use the Recipe: Grilled Mudfish##27697
learn Grilled Mudfish##33293 |goto Nagrand/0 56.21,73.33
step
talk Uriku##20096
buy 1 Recipe: Poached Bluefish##27698 |n
use the Recipe: Poached Bluefish##27698
learn Poached Bluefish##33294 |goto Nagrand/0 56.21,73.33
step
talk Katherine Lee##28705
|tip Walking around inside the building.
|tip Inside the building.
learn Grilled Bonescale##45561  |goto Dalaran/1 40.53,65.62
step
talk Katherine Lee##28705
|tip Walking around inside the building.
learn Sauteed Goby##45562 |goto Dalaran/1 40.53,65.62
step
talk Katherine Lee##28705
|tip Walking around inside the building.
learn Smoked Rockfin##45560 |goto Dalaran/1 40.53,65.62
step
talk Katherine Lee##28705
|tip Walking around inside the building.
learn Baked Manta Ray##45569 |goto Dalaran/1 40.53,65.62
step
talk Katherine Lee##28705
|tip Walking around inside the building.
learn Dalaran Clam Chowder##58065 |goto Dalaran/1 40.53,65.62
step
talk Katherine Lee##28705
|tip Walking around inside the building.
learn Grilled Sculpin##45563 |goto Dalaran/1 40.53,65.62
step
talk Katherine Lee##28705
|tip Walking around inside the building.
learn Mammoth Meal##45549 |goto Dalaran/1 40.53,65.62
step
talk Katherine Lee##28705
|tip Walking around inside the building.
learn Pickled Fangtooth##45566 |goto Dalaran/1 40.53,65.62
step
talk Katherine Lee##28705
|tip Walking around inside the building.
learn Poached Nettlefish##45565 |goto Dalaran/1 40.53,65.62
step
talk Katherine Lee##28705
|tip Walking around inside the building.
learn Rhino Dogs##45553 |goto Dalaran/1 40.53,65.62
step
talk Katherine Lee##28705
|tip Walking around inside the building.
learn Roasted Worg##45552 |goto Dalaran/1 40.53,65.62
step
talk Katherine Lee##28705
|tip Walking around inside the building.
learn Shoveltusk Steak##45550 |goto Dalaran/1 40.53,65.62
step
talk Katherine Lee##28705
|tip Walking around inside the building.
learn Smoked Salmon##45564 |goto Dalaran/1 40.53,65.62
step
talk Katherine Lee##28705
|tip Walking around inside the building.
learn Worm Delight##45551 |goto Dalaran/1 40.53,65.62
step
talk Katherine Lee##28705
|tip Walking around inside the building.
learn Great Feast##45554 |goto Dalaran/1 40.53,65.62
step
talk Katherine Lee##28705
|tip Walking around inside the building.
learn Black Jelly##64358 |goto Dalaran/1 40.53,65.62
step
talk Rollick MacKreel##26989
accept Northern Cooking##13088 |goto Borean Tundra/0 57.93,71.54
step
Kill Wooly Rhino enemies around this area
collect 4 Chilled Meat##43013 |q 13088/1 |goto Borean Tundra/0 47.86,72.98
step
talk Rollick MacKreel##26989
turnin Northern Cooking##13088 |goto Borean Tundra/0 57.93,71.54
step
learn Northern Stew##57421
stickystart "Last_Weeks_Mammoth"
stickystart "Haunted_Herring"
stickystart "Tasty_Cupcake"
step
kill Crypt Crawler##25227+
collect 1 Recipe: Bad Clams##43509 |n
use the Recipe: Bad Clams##43509
learn Bad Clams##58523 |goto Borean Tundra/0 54.60,70.00 |or
'|achieve 1779 |or
step
label "Last_Weeks_Mammoth"
kill Crypt Crawler##25227+ |notinsticky
collect 1 Recipe: Last Week's Mammoth##43508 |n
use the Recipe: Last Week's Mammoth##43508
learn Last Week's Mammoth##58521 |goto Borean Tundra/0 54.60,70.00 |or
'|achieve 1779 |or
step
label "Haunted_Herring"
kill Crypt Crawler##25227+ |notinsticky
collect 1 Recipe: Haunted Herring##43510 |n
use the Recipe: Haunted Herring##43510
learn Haunted Herring##58525 |goto Borean Tundra/0 54.60,70.00 |or
'|achieve 1779 |or
step
label "Tasty_Cupcake"
kill Crypt Crawler##25227+ |notinsticky
collect 1 Recipe: Tasty Cupcake##43507 |n
use the Recipe: Tasty Cupcake##43507
learn Tasty Cupcake##58512 |goto Borean Tundra/0 54.60,70.00 |or
'|achieve 1779 |or
step
talk Jon Casper##49701
buy 1 Recipe: Whitecrest Gumbo##65406 |n
use the Recipe: Whitecrest Gumbo##65406
learn Whitecrest Gumbo##88047 |goto Stormwind City/0 50.43,71.87
step
talk Jon Casper##49701
buy 1 Recipe: Lavascale Fillet##65407 |n
use the Recipe: Lavascale Fillet##65407
learn Lavascale Fillet##88024 |goto Stormwind City/0 50.43,71.87
step
talk Jon Casper##49701
buy 1 Recipe: Lavascale Minestrone##65409 |n
use the Recipe: Lavascale Minestrone##65409
learn Lavascale Minestrone##88025 |goto Stormwind City/0 50.43,71.87
step
talk Jon Casper##49701
buy 1 Recipe: Salted Eye##65410 |n
use the Recipe: Salted Eye##65410
learn Salted Eye##88035 |goto Stormwind City/0 50.43,71.87
step
talk Jon Casper##49701
buy 1 Recipe: Broiled Mountain Trout##65411 |n
use the Recipe: Broiled Mountain Trout##65411
learn Broiled Mountain Trout##88012 |goto Stormwind City/0 50.43,71.87
step
talk Jon Casper##49701
buy 1 Recipe: Lightly Fried Lurker##65412 |n
use the Recipe: Lightly Fried Lurker##65412
learn Lightly Fried Lurker##88028 |goto Stormwind City/0 50.43,71.87
step
talk Jon Casper##49701
buy 1 Recipe: Seasoned Crab##65413 |n
use the Recipe: Seasoned Crab##65413
learn Seasoned Crab##88037 |goto Stormwind City/0 50.43,71.87
step
talk Jon Casper##49701
buy 1 Recipe: Starfire Espresso##65414 |n
use the Recipe: Starfire Espresso##65414
learn Starfire Espresso##88045 |goto Stormwind City/0 50.43,71.87
step
talk Jon Casper##49701
buy 1 Recipe: Feathered Lure##65408 |n
use the Recipe: Feathered Lure##65408
learn Feathered Lure##88017 |goto Stormwind City/0 50.43,71.87
step
talk Jon Casper##49701
buy 1 Recipe: Highland Spirits##65415 |n
use the Recipe: Highland Spirits##65415
learn Highland Spirits##88022 |goto Stormwind City/0 50.43,71.87
step
talk Jon Casper##49701
buy 1 Recipe: Lurker Lunch##65416 |n
use the Recipe: Lurker Lunch##65416
learn Lurker Lunch##88030 |goto Stormwind City/0 50.43,71.87
step
talk Jon Casper##49701
buy 1 Recipe: Pickled Guppy##65417 |n
use the Recipe: Pickled Guppy##65417
learn Pickled Guppy##88033 |goto Stormwind City/0 50.43,71.87
step
talk Jon Casper##49701
buy 1 Recipe: Hearty Seafood Soup##65418 |n
use the Recipe: Hearty Seafood Soup##65418
learn Hearty Seafood Soup##88021 |goto Stormwind City/0 50.43,71.87
step
talk Jon Casper##49701
buy 1 Recipe: Tender Baked Turtle##65419 |n
use the Recipe: Tender Baked Turtle##65419
learn Tender Baked Turtle##88046 |goto Stormwind City/0 50.43,71.87
step
talk Jon Casper##49701
buy 1 Recipe: Mushroom Sauce Mudfish##65420 |n
use the Recipe: Mushroom Sauce Mudfish##65420
learn Mushroom Sauce Mudfish##88031 |goto Stormwind City/0 50.43,71.87
step
talk Jon Casper##49701
buy 1 Recipe: Severed Sagefish Head##65421 |n
use the Recipe: Severed Sagefish Head##65421
learn Severed Sagefish Head##88039 |goto Stormwind City/0 50.43,71.87
step
talk Jon Casper##49701
buy 1 Recipe: Delicious Sagefish Tail##65422 |n
use the Recipe: Delicious Sagefish Tail##65422
learn Delicious Sagefish Tail##88016 |goto Stormwind City/0 50.43,71.87
step
talk Jon Casper##49701
buy 1 Recipe: Fish Fry##65423 |n
use the Recipe: Fish Fry##65423
learn Fish Fry##88018 |goto Stormwind City/0 50.43,71.87
step
talk Jon Casper##49701
buy 1 Recipe: Scalding Murglesnout##68688 |n
use the Recipe: Scalding Murglesnout##68688
learn Scalding Murglesnout##96133 |goto Stormwind City/0 50.43,71.87
step
talk Jon Casper##49701
buy 1 Recipe: Blackbelly Sushi##65424 |n
use the Recipe: Blackbelly Sushi##65424
learn Blackbelly Sushi##88034 |goto Stormwind City/0 50.43,71.87
step
talk Jon Casper##49701
buy 1 Recipe: Skewered Eel##65425 |n
use the Recipe: Skewered Eel##65425
learn Skewered Eel##88042 |goto Stormwind City/0 50.43,71.87
step
talk Jon Casper##49701
buy 1 Recipe: Baked Rockfish##65426 |n
use the Recipe: Baked Rockfish##65426
learn Baked Rockfish##88003 |goto Stormwind City/0 50.43,71.87
step
talk Jon Casper##49701
buy 1 Recipe: Basilisk Liverdog##65427 |n
use the Recipe: Basilisk Liverdog##65427
learn Basilisk Liverdog##88004 |goto Stormwind City/0 50.43,71.87
step
talk Jon Casper##49701
buy 1 Recipe: Grilled Dragon##65428 |n
use the Recipe: Grilled Dragon##65428
learn Grilled Dragon##88020 |goto Stormwind City/0 50.43,71.87
]])
QuestCore:RegisterGuide("Achievement Guides\\Professions\\Cooking\\The Outland Gourmet",{
expansion="mists",
mopready=true,
achieveid={1800},
patch='30002',
description="Cook each of the Outland cooking recipes.",
},[[
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Stewed Trout##42296 |goto Stormwind City/0 77.29,53.22
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Fisherman's Feast##42302 |goto Stormwind City/0 77.29,53.22
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Hot Buttered Trout##42305 |goto Stormwind City/0 77.29,53.22
step
talk Legassi##19344
accept Ravager Egg Roundup##9349 |goto Hellfire Peninsula 49.20,74.80
step
kill Razorfang Hatchling##16932, Razorfang Ravager##16933
collect 12 Ravager Egg##23217 |q 9349/1 |goto Hellfire Peninsula 39.00,88.40
step
talk Legassi##19344
turnin Ravager Egg Roundup##9349 |goto Hellfire Peninsula 49.20,74.80
accept Helboar, the Other White Meat##9361 |goto Hellfire Peninsula 49.20,74.80
step
kill Deranged Hellboar##16863+
collect Tainted Helboar Meat##23270 |n
use the Purification Mixture##23268
collect 8 Purified Helboar Meat##23248 |q 9361/1 |goto Hellfire Peninsula 51.20,69.80
step
talk Legassi##19344
turnin Helboar, the Other White Meat##9361 |goto Hellfire Peninsula 49.20,74.80
accept Smooth as Butter##9356 |goto Hellfire Peninsula 49.20,74.80
step
kill Bonestripper Buzzard##16972
collect 12 Plump Buzzard Wing##23239 |q 9356/1 |goto Hellfire Peninsula 61.00,66.60
step
talk Legassi##19344
turnin Smooth as Butter##9356 |goto Hellfire Peninsula 49.20,74.80
step
collect 1 Recipe: Buzzard Bites##27684 |n
use the Recipe: Buzzard Bites##27684
learn Buzzard Bites##33279
step
talk Sid Limbardi##16826
buy 1 Recipe: Ravager Dog##27688 |n
use the Recipe: Ravager Dog##27688
learn Ravager Dog##33284 |goto Hellfire Peninsula 54.20,63.60
step
talk Mycah##18382
collect Glowcap##24245 |n
|tip Glowcaps are scattered out around usually at bottom of the large mushrooms around Sporeggar
buy 1 Recipe: Clam Bar##30156 |n
|tip You must be at least Neutral with Sporeggar to purchase this recipe.
|tip Refer to the Sporeggar guide to accomplish this.
use the Recipe: Clam Bar##30156
learn Clam Bar##36210 |goto Zangarmarsh 17.80,51.20
step
talk Doba##20028
buy 1 Recipe Feltail Delight##27695 |n
use the Recipe Feltail Delight##27695
learn Feltail Delight##33291 |goto Zangarmarsh 42.20,27.80
step
talk Doba##20028
buy 1 Recipe: Blackened Trout##27694 |n
use the Recipe: Blackened Trout##27694
learn Blackened Trout##33290 |goto Zangarmarsh 42.20,27.80
step
talk Juno Dufrain##18911
buy 1 Recipe: Blackened Sporefish##27696 |n
use the Recipe: Blackened Sporefish##27696
learn Blackened Sporefish##33292 |goto Zangarmarsh 78.00,66.00
step
talk Uriku##20096
buy 1 Recipe: Grilled Mudfish##27697 |n
use the Recipe: Grilled Mudfish##27697
learn Grilled Mudfish##33293 |goto Nagrand 56.20,73.20
step
buy 1 Recipe: Talbuk Steak##27693 |n
use the Recipe: Talbuk Steak##27693
learn Talbuk Steak##33289  |goto Nagrand 56.20,73.20
step
buy 1 Recipe: Poached Bluefish##27698 |n
use the Recipe: Poached Bluefish##27698
learn Poached Bluefish##33294  |goto Nagrand 56.20,73.20
step
buy 1 Recipe: Roasted Clefthoof##27691 |n
use the Recipe: Roasted Clefthoof##27691
learn Roasted Clefthoof##33287  |goto Nagrand 56.20,73.20
step
talk Innkeeper Biribi##19296
buy 1 Recipe: Golden Fish Sticks##27699 |n
learn Golden Fish Sticks##33295 |use Recipe: Golden Fish Sticks##27699 |goto Terokkar Forest 56.60,53.20
step
talk Innkeeper Biribi##19296
buy 1 Recipe: Spicy Crawdad##27700 |n
learn Spicy Crawdad##33296 |use Recipe: Spicy Crawdad##27700 |goto Terokkar Forest 56.60,53.20
step
talk Supply Officer Mills##19038
use the Recipe Blackened Basilisk##27690
buy 1 Recipe Blackened Basilisk##27690 |n
learn Blackened Basilisk##33286 |goto Terokkar Forest 55.80,53.00
step
buy 1 Recipe: Warp Burger##27692 |n
use the Recipe: Warp Burger##27692
learn Warp Burger##33288  |goto Terokkar Forest 55.80,53.00
step
talk Xerintha Ravenoak##20916
buy 1 Recipe: Mok'Nathal Shortribs##31675 |n
use the Recipe: Mok'Nathal Shortribs##31675
learn Mok'Nathal Shortribs##38867 |goto Blade's Edge Mountains 62.40,40.20
step
talk Xerintha Ravenoak##20916
buy 1 Recipe: Crunchy Serpent##31674 |n
use the Recipe: Crunchy Serpent##31674
learn Crunchy Serpent##38868 |goto Blade's Edge Mountains 62.40,40.20
step
collect 1 Recipe: Spicy Hot Talbuk##33873 |n
use the Recipe: Spicy Hot Talbuk##33873
|tip This may drop from Cooking Dailies available in Shattrath City.
|tip Choose the Crate of Meat.
learn Spicy Hot Talbuk##43765
step
collect 1 Recipe: Broiled Bloodfin##33869 |n
use the Recipe: Broiled Bloodfin##33869
|tip This may drop from Cooking Dailies available in Shattrath City.
|tip Choose the Barrel of Fish.
learn Broiled Bloodfin##43761
step
collect 1 Recipe: Skullfish Soup##33870 |n
use the Recipe: Skullfish Soup##33870
|tip This may drop from Cooking Dailies available in Shattrath City.
|tip Choose the Barrel of Fish.
learn Skullfish Soup##43707
step
collect 1 Recipe: Kibler's Bits##33875 |n
use the Recipe: Kibler's Bits##33875
|tip These recipes are collected from Shattrath Cooking Dailies
|tip They aren't 100% drop rates.
|tip You can choose Crates of Meat or Barrel of Fish.
learn Kibler's Bits##43772
step
collect Recipe: Stormchops##33871 |n
use the Recipe: Delicious Chocolate Cake##33925
|tip These recipes are collected from Shattrath Cooking Dailies
|tip They aren't 100% drop rates.
|tip You can choose Crates of Meat or Barrel of Fish or the Small Spice Bag.
learn Delicious Chocolate Cake##43779
step
collect Recipe: Stormchops##33871 |n
use the Recipe: Stormchops##33871
|tip These recipes are collected from Shattrath Cooking Dailies
|tip They aren't 100% drop rates.
|tip You can choose Crates of Meat or Barrel of Fish or the Small Spice Bag.
learn Stormchops##43758
step
You Can Purchase These from the Auction House or Farm Them
|tip Refer to farming guides to accomplish this.
collect 8 Small Eggs##6889
collect 2 Buzzard Meat##27671
collect 2 Clefthoof Meat##27678
collect 2 Jaggal Clam Meat##24477
collect 2 Talbuk Venison##27682
collect 1 Chunk o' Basilisk##27677
collect 1 Raptor Ribs##31670
collect 1 Ravager Flesh##27674
collect 1 Serpent Flesh##31671
collect 1 Warped Flesh##27681
collect 3 Mageroyal##785
'|achieve 1800 |or
step
You Can Purchase These from the Auction House or Farm Them
|tip Refer to farming guides to accomplish this.
collect 2 Barbed Gill Trout##27422
collect 1 Bloodfin Catfish##33823
collect 1 Crescent-Tail Skullfish##33824
collect 1 Enormous Barbed Gill Trout##27516
collect 1 Figluster's Mudfish##27435
collect 1 Golden Darter##27438
collect 1 Huge Spotted Feltail##27515
collect 1 Icefin Bluefish##27437
collect 1 Lightning Eel##13757
collect 1 Spotted Feltail##27425
collect 1 Zangarian Sporefish##27429
'|achieve 1800 |or
step
talk Innkeeper Allison##6740
|tip Inside the building.
buy 5 Goldenbark Apple##4539 |goto Stormwind City 60.80,74.80 |or
'|achieve 1800 |or
step
talk Innkeeper Allison##6740
|tip Inside the building.
buy 4 Ice Cold Milk##1179 |goto Stormwind City 60.80,74.80 |or
'|achieve 1800 |or
step
talk Erika Tate##5483
|tip Inside the building.
buy 8 Simple Flour##30817 |goto Stormwind City 77.60,53.10 |or
'|achieve 1800 |or
step
talk Erika Tate##5483
|tip Inside the building.
buy 4 Mild Spices##2678 |goto Stormwind City 77.60,53.10 |or
'|achieve 1800 |or
step
talk Reese Langston##1327
buy 1 Flask of Port##2593 |goto Stormwind City 76.30,53.00 |or
'|achieve 1800 |or
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Delicious Chocolate Cake>_
Cook a "Delicious Chocolate Cake" |achieve 1800/16 |or
'|achieve 1800 |or
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Blackened Trout>_
Cook a "Blackened Trout" |achieve 1800/21 |or
'|achieve 1800 |or
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Buzzard Bites>_
Cook Buzzard Bites |achieve 1800/20 |or
'|achieve 1800 |or
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Clam Bar>_
Cook a "Clam Bar" |achieve 1800/11 |or
'|achieve 1800 |or
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Feltail Delight>_
Cook a "Feltail Delight" |achieve 1800/15 |or
'|achieve 1800 |or
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Ravager Dog>_
Cook a "Ravager Dog" |achieve 1800/3 |or
'|achieve 1800 |or
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Stormchop>_
Cook "Stormchops" |achieve 1800/14 |or
'|achieve 1800 |or
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Blackened Sporefish>_
Cook a "Blackened Sporefish" |achieve 1800/13 |or
'|achieve 1800 |or
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Blackened Basilisk>_
Cook "Blackened Basilisk" |achieve 1800/24 |or
'|achieve 1800 |or
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Grilled Mudfish>_
Cook a "Grilled Mudfish" |achieve 1800/12 |or
'|achieve 1800 |or
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Poached Bluefish>_
Cook a "Poached Bluefish" |achieve 1800/2 |or
'|achieve 1800 |or
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Broiled Bloodfin>_
Cook "Broiled Bloodfin" |achieve 1800/10
'|achieve 1800 |or
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Golden Fish Sticks>_
Cook Golden Fish Sticks |achieve 1800/17 |or
'|achieve 1800 |or
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Kibler's Bits>_
Cook "Kibler's Bits" |achieve 1800/18 |or
'|achieve 1800 |or
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Roasted Clefthoof>_
Cook "Roasted Clefthoof" |achieve 1800/9 |or
'|achieve 1800 |or
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Talbuk Steak>_
Cook a "Talbuk Steak" |achieve 1800/8 |or
'|achieve 1800 |or
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Warp Burger >_
Cook a "Warp Burger" |achieve 1800/19 |or
'|achieve 1800 |or
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Crunchy Serpent>_
Cook a "Crunchy Serpent" |achieve 1800/7 |or
'|achieve 1800 |or
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Mok'Nathal Shortribs>_
Cook "Mok'Nathal Shortribs" |achieve 1800/25 |or
'|achieve 1800 |or
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Fisherman's Feast>_
Cook a "Fisherman's Feast" |achieve 1800/6 |or
'|achieve 1800 |or
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Hot Buttered Trout>_
Cook a "Hot Buttered Trout" |achieve 1800/1
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Skullfish Soup>_
Cook "Skullfish Soup" |achieve 1800/22 |or
'|achieve 1800 |or
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Spicy Crawdad>_
Cook a "Spicy Crawdad" |achieve 1800/5 |or
'|achieve 1800 |or
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Spicy Hot Talbuk>_
Cook "Spicy Hot Talbuk" |achieve 1800/23 |or
'|achieve 1800 |or
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Stewed Trout>_
Cook a "Stewed Trout" |achieve 1800/4 |or
'|achieve 1800 |or
]])
QuestCore:RegisterGuide("Achievement Guides\\Professions\\Cooking\\The Northrend Gourmet",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(1779) end,
achieveid={1777,1778,1779},
patch='30002',
description="Cook 45 of the Northrend recipes.",
},[[
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Dalaran Clam Chowder##58065 |goto Stormwind City/0 77.29,53.22
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Grilled Sculpin##45563 |goto Stormwind City/0 77.29,53.22
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Mammoth Meal##45549 |goto Stormwind City/0 77.29,53.22
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Pickled Fangtooth##45566 |goto Stormwind City/0 77.29,53.22
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Poached Nettlefish##45565 |goto Stormwind City/0 77.29,53.22
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Rhino Dogs##45553 |goto Stormwind City/0 77.29,53.22
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Roasted Worg##45552 |goto Stormwind City/0 77.29,53.22
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Shoveltusk Steak##45550 |goto Stormwind City/0 77.29,53.22
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Smoked Salmon##45564 |goto Stormwind City/0 77.29,53.22
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Worm Delight##45551 |goto Stormwind City/0 77.29,53.22
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Fisherman's Feast##42302 |goto Stormwind City/0 77.29,53.22
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Hot Buttered Trout##42305 |goto Stormwind City/0 77.29,53.22
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Great Feast##45554 |goto Stormwind City/0 77.29,53.22
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Black Jelly##64358 |goto Stormwind City/0 77.29,53.22
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Darkbrew Lager##88015 |goto Stormwind City/0 77.29,53.22
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Blackened Surprise##88006 |goto Stormwind City/0 77.29,53.22
step
talk Rollick MacKreel##269898
|tip Inside the building.
accept Northern Cooking##1308 |goto Borean Tundra/0 57.80,71.40
|only if Alliance
step
kill Wooly Rhino Matriarch##25487,Wooly Rhino Calf##25488
collect 4 Chilled Meat##43013 |q 13088/1 |goto Borean Tundra/0 45,47.40
step
talk Rollick MacKreel##26989
|tip Inside the building.
turnin Northern Cooking##13088 |goto Borean Tundra/0 57.80,71.40
step
learn Northern Stew##57421 |q 13088
|tip You will have learned this from completing the "Northern Cooking" quest.
stickystart "Last_Weeks_Mammoth"
stickystart "Haunted_Herring"
stickystart "Tasty_Cupcake"
step
kill Crypt Crawler##25227+
collect 1 Recipe: Bad Clams##43509 |n
use the Recipe: Bad Clams##43509
learn Bad Clams##58523 |goto Borean Tundra/0 54.60,70.00 |or
'|achieve 1779 |or
step
label "Last_Weeks_Mammoth"
kill Crypt Crawler##25227+ |notinsticky
collect 1 Recipe: Last Week's Mammoth##43508 |n
use the Recipe: Last Week's Mammoth##43508
learn Last Week's Mammoth##58521 |goto Borean Tundra/0 54.60,70.00 |or
'|achieve 1779 |or
step
label "Haunted_Herring"
kill Crypt Crawler##25227+ |notinsticky
collect 1 Recipe: Haunted Herring##43510 |n
use the Recipe: Haunted Herring##43510
learn Haunted Herring##58525 |goto Borean Tundra/0 54.60,70.00 |or
'|achieve 1779 |or
step
label "Tasty_Cupcake"
kill Crypt Crawler##25227+ |notinsticky
collect 1 Recipe: Tasty Cupcake##43507 |n
use the Recipe: Tasty Cupcake##43507
learn Tasty Cupcake##58512 |goto Borean Tundra/0 54.60,70.00 |or
'|achieve 1779 |or
step
talk Grimbooze Thunderbrew##29157
accept Some Make Lemonade, Some Make Liquor##12634 |goto Sholazar Basin/0 26.80,60.10
stickystart "Collect_Orange"
stickystart "Collect_Papaya"
step
click Sturdy Vine##190622
|tip They look like brown vines that hang from trees around this area.
talk Adventurous Dwarf##28604+
|tip Rarely, a Dwarf will fall down.
|tip Ask them for a bunch of bananas.
click Banana Bunch##190625
collect 2 Banana Bunch##38653 |q 12634/2 |goto Sholazar Basin/0 42.84,63.34
step
label "Collect_Orange"
click Sturdy Vine##190622
|tip They look like brown vines that hang from trees around this area.
talk Adventurous Dwarf##28604+
|tip Rarely, a Dwarf will fall down.
|tip Ask them for an orange.
click Orange##190624
collect Orange##38656 |q 12634/1 |goto Sholazar Basin/0 42.84,63.34
step
label "Collect_Papaya"
click Sturdy Vine##190622
|tip They look like brown vines that hang from trees around this area.
talk Adventurous Dwarf##28604+
|tip Rarely, a Dwarf will fall down.
|tip Ask them for a papaya.
click Papaya##190623
collect Papaya##38655 |q 12634/3 |goto Sholazar Basin/0 42.84,63.34
step
talk Grimbooze Thunderbrew##29157
turnin Some Make Lemonade, Some Make Liquor##12634 |goto Sholazar Basin 26.80,60.10
accept Still At It##12644 |goto Sholazar Basin 26.80,60.10
step
talk "Tipsy" McManus##28566
Select _"I'm ready to start the distillation, uh, Tipsy."_
Click Here After Starting the Distillation |confirm |goto Sholazar Basin 26.67,59.99 |q 12644
step
Perform the Distillation
|tip Stand here, you can reach all of the objects you need to click from here.
|tip Click the items on the ground or on the machine that he yells at you during the process, it's random.
click Thunderbrew's Jungle Punch##190643
|tip It looks like a wooden barrel that appears near you after you complete the distillation.
collect Thunderbrew's Jungle Punch##38688 |q 12644/1 |goto Sholazar Basin 26.71,59.83
step
talk Grimbooze Thunderbrew##29157
turnin Still At It##12644 |goto Sholazar Basin/0 26.80,60.10
accept The Taste Test##12645 |goto Sholazar Basin/0 26.80,60.10
step
use the Jungle Punch Sample##38697
|tip Use it on Hadrius Harlowe.
Watch the dialogue
Complete Hadrius' Taste Test |q 12645/2 |goto Sholazar Basin/0 27.40,59.40
step
use the Jungle Punch Sample##38697
|tip Use it on Hemet Nesingwary.
Watch the dialogue
Complete Hemet's Taste Test |q 12645/1 |goto Sholazar Basin/0 27.10,58.64
step
use the Jungle Punch Sample##38697
|tip Use it on Tamara Wobblesprocket.
Watch the dialogue
Complete Tamara's Taste Test |q 12645/3 |goto Sholazar Basin/0 50.48,62.13
step
talk Grimbooze Thunderbrew##29157
turnin The Taste Test##12645 |goto Sholazar Basin/0 26.80,60.10
step
talk Washed-Up Mage##32516
accept Fletcher's Lost and Found##13571 |goto Dalaran/1 44.20,25.60
step
Gather #74# Epicurean Awards |complete curcount(81) >= 74 |or
|tip You will need a total of 74 Epicurean Awards to get all of the recipes.
|tip These are earned through completing Dalaran Cooking Dailies.
Click Here to Load the "Dalaran Cooking Dailies" Guide |confirm |next "Dailies Guides\\Wrath of the Lich King\\Dalaran Cooking Dailies"
'|achieve 1779 |or
step
talk Katherine Lee##28705
|tip Inside the building.
buy 1 Recipe: Mega Mammoth Meal##43018 |n
use the Recipe: Mega Mammoth Meal##43018
learn Mega Mammoth Meal##45555 |goto Dalaran/1 41.60,64.60
step
talk Katherine Lee##28705
|tip Inside the building.
buy 1 Recipe: Tender Shoveltusk Steak##43019 |n
use the Recipe: Tender Shoveltusk Steak##43019
learn Tender Shoveltusk Steak##45556 |goto Dalaran/1 41.60,64.60
step
talk Katherine Lee##28705
|tip Inside the building.
buy 1 Recipe: Spiced Worm Burger##43020 |n
use the Recipe: Spiced Worm Burger##43020
learn Spiced Worm Burger##45557 |goto Dalaran/1 41.60,64.60
step
talk Katherine Lee##28705
|tip Inside the building.
buy 1 Recipe: Very Burnt Worg##43021 |n
use the Recipe: Very Burnt Worg##43021
learn Very Burnt Worg##45558 |goto Dalaran/1 41.60,64.60
step
talk Katherine Lee##28705
|tip Inside the building.
buy 1 Recipe: Worg Tartare##44954 |n
use the Recipe: Worg Tartare##44954
learn Worg Tartare##62350 |goto Dalaran/1 41.60,64.60
step
talk Katherine Lee##28705
|tip Inside the building.
buy 1 Recipe: Mighty Rhino Dogs##43022 |n
use the Recipe: Mighty Rhino Dogs##43022
learn Mighty Rhino Dogs##45559 |goto Dalaran/1 41.60,64.60
step
talk Katherine Lee##28705
|tip Inside the building.
buy 1 Recipe: Poached Northern Sculpin##43023 |n
use the Recipe: Poached Northern Sculpin##43023
learn Poached Northern Sculpin##45567 |goto Dalaran/1 41.60,64.60
step
talk Katherine Lee##28705
|tip Inside the building.
buy 1 Recipe: Firecracker Salmon##43024 |n
use the Recipe: Firecracker Salmon##43024
learn Firecracker Salmon##45568 |goto Dalaran/1 41.60,64.60
step
talk Katherine Lee##28705
|tip Inside the building.
buy 1 Recipe: Spicy Blue Nettlefish##43025 |n
use the Recipe: Spicy Blue Nettlefish##43025
learn Spicy Blue Nettlefish##45571 |goto Dalaran/1 41.60,64.60
step
talk Katherine Lee##28705
|tip Inside the building.
buy 1 Recipe: Imperial Manta Steak##43026 |n
use the Recipe: Imperial Manta Steak##43026
learn Imperial Manta Steak##45570 |goto Dalaran/1 41.60,64.60
step
talk Katherine Lee##28705
|tip Inside the building.
buy 1 Recipe: Spicy Fried Herring##43027 |n
use the Recipe: Spicy Fried Herring##43027
learn Spicy Fried Herring##57433 |goto Dalaran/1 41.60,64.60
step
talk Katherine Lee##28705
|tip Inside the building.
buy 1 Recipe: Rhinolicious Wormsteak##43028 |n
use the Recipe: Rhinolicious Wormsteak##43028
learn Rhinolicious Wormsteak##57434 |goto Dalaran/1 41.60,64.60
step
talk Katherine Lee##28705
|tip Inside the building.
buy 1 Recipe: Critter Bites##43029 |n
use the Recipe: Critter Bites##43029
learn Critter Bites##57435 |goto Dalaran/1 41.60,64.60
step
talk Katherine Lee##28705
|tip Inside the building.
buy 1 Recipe: Hearty Rhino##43030 |n
use the Recipe: Hearty Rhino##43030
learn Hearty Rhino##57436 |goto Dalaran/1 41.60,64.60
step
talk Katherine Lee##28705
|tip Inside the building.
buy 1 Recipe: Snapper Extreme##43031 |n
use the Recipe: Snapper Extreme##43031
learn Snapper Extreme##57437 |goto Dalaran/1 41.60,64.60
step
talk Katherine Lee##28705
|tip Inside the building.
buy 1 Recipe: Blackened Worg Steak##43032 |n
use the Recipe: Blackened Worg Steak##43032
learn Blackened Worg Steak##57438 |goto Dalaran/1 41.60,64.60
step
talk Katherine Lee##28705
|tip Inside the building.
buy 1 Recipe: Cuttlesteak##43033 |n
use the Recipe: Cuttlesteak##43033
learn Cuttlesteak##57439 |goto Dalaran/1 41.60,64.60
step
talk Katherine Lee##28705
|tip Inside the building.
buy 1 Recipe: Spiced Mammoth Treats##43034 |n
use the Recipe: Spiced Mammoth Treats##43034
learn Spiced Mammoth Treats##57440 |goto Dalaran/1 41.60,64.60
step
talk Katherine Lee##28705
|tip Inside the building.
buy 1 Recipe: Blackened Dragonfin##43035 |n
use the Recipe: Blackened Dragonfin##43035
learn Blackened Dragonfin##57441 |goto Dalaran/1 41.60,64.60
step
talk Katherine Lee##28705
|tip Inside the building.
buy 1 Recipe: Dragonfin Fillet##43036 |n
use the Recipe: Dragonfin Fillet##43036
learn Dragonfin Fillet##57442 |goto Dalaran/1 41.60,64.60
step
talk Katherine Lee##28705
|tip Inside the building.
buy 1 Recipe: Tracker Snacks##43037 |n
use the Recipe: Tracker Snacks##43037
learn Tracker Snacks##57443 |goto Dalaran/1 41.60,64.60
step
talk Katherine Lee##28705
|tip Inside the building.
buy 1 Recipe: Gigantic Feast##43505 |n
use the Recipe: Gigantic Feast##43505
learn Gigantic Feast##58527 |goto Dalaran/1 41.60,64.60
step
talk Katherine Lee##28705
|tip Inside the building.
buy 1 Recipe: Small Feast##43506 |n
use the Recipe: Small Feast##43506
learn Small Feast##58528 |goto Dalaran/1 41.60,64.60
step
talk Katherine Lee##28705
|tip Inside the building.
buy 1 Recipe: Fish Feast##43017 |n
use the Recipe: Fish Feast##43017
learn Fish Feast##57423 |goto Dalaran/1 41.60,64.60
step
collect 1 Barrelhead Goby##41812
|tip You can gather them yourself or buy them from the Auction House.
|tip If farming, refer to the appropriate guide to accomplish this.
'|achieve 1779 |or
step
collect 4 Bonescale Snapper##41808
|tip You can gather them yourself or buy them from the Auction House.
|tip If farming, refer to the appropriate guide to accomplish this.
'|achieve 1779 |or
step
collect 5 Chilled Meat##43013
|tip You can gather them yourself or buy them from the Auction House.
|tip If farming, refer to the appropriate guide to accomplish this.
'|achieve 1779 |or
step
collect 8 Chunk o' Mammoth##34736
|tip You can gather them yourself or buy them from the Auction House.
|tip If farming, refer to the appropriate guide to accomplish this.
'|achieve 1779 |or
step
collect 2 Deep Sea Monsterbelly##41800
|tip You can gather them yourself or buy them from the Auction House.
|tip If farming, refer to the appropriate guide to accomplish this.
'|achieve 1779 |or
step
collect 2 Dragonfin Angelfish##41807
|tip You can gather them yourself or buy them from the Auction House.
|tip If farming, refer to the appropriate guide to accomplish this.
'|achieve 1779 |or
step
collect 1 Essence of Undeath##12808
|tip You can gather them yourself or buy them from the Auction House.
|tip If farming, refer to the appropriate guide to accomplish this.
'|achieve 1779 |or
step
collect 2 Fangtooth Herring##41810
|tip You can gather them yourself or buy them from the Auction House.
|tip If farming, refer to the appropriate guide to accomplish this.
'|achieve 1779 |or
step
collect 6 Glacial Salmon##41809 |or
|tip You can gather them yourself or buy them from the Auction House.
|tip If farming, refer to the appropriate guide to accomplish this.
'|achieve 1779 |or
step
collect 2 Imperial Manta Ray##41809 |or
|tip You can gather them yourself or buy them from the Auction House.
|tip If farming, refer to the appropriate guide to accomplish this.
'|achieve 1779 |or
step
collect 1 Moonglow Cuttlefish##41801 |or
|tip You can gather them yourself or buy them from the Auction House.
|tip If farming, refer to the appropriate guide to accomplish this.
'|achieve 1779 |or
step
collect 1 Mote of Shadow##22577 |or
|tip You can gather them yourself or buy them from the Auction House.
|tip If farming, refer to the appropriate guide to accomplish this.
'|achieve 1779 |or
step
collect 4 Musselback Sculpin##41806 |or
|tip You can gather them yourself or buy them from the Auction House.
|tip If farming, refer to the appropriate guide to accomplish this.
'|achieve 1779 |or
step
collect 6 Nettlefish##51813 |or
|tip You can gather them yourself or buy them from the Auction House.
|tip If farming, refer to the appropriate guide to accomplish this.
'|achieve 1779 |or
step
collect 1 Northern Egg##43501 |or
|tip You can gather them yourself or buy them from the Auction House.
|tip If farming, refer to the appropriate guide to accomplish this.
'|achieve 1779 |or
step
collect 23 Northern Spices##43007 |or
|tip You can gather them yourself or buy them from the Auction House.
|tip If farming, refer to the appropriate guide to accomplish this.
'|achieve 1779 |or
step
collect 7 Rhino Meat##43012 |or
|tip You can gather them yourself or buy them from the Auction House.
|tip If farming, refer to the appropriate guide to accomplish this.
'|achieve 1779 |or
step
collect 3 Rockfin Grouper##41803 |or
|tip You can gather them yourself or buy them from the Auction House.
|tip If farming, refer to the appropriate guide to accomplish this.
'|achieve 1779 |or
step
collect 4 Shoveltusk Flank##43009 |or
|tip You can gather them yourself or buy them from the Auction House.
|tip If farming, refer to the appropriate guide to accomplish this.
'|achieve 1779 |or
step
collect 3 Succulent Clam Meat##36782 |or
|tip You can gather them yourself or buy them from the Auction House.
|tip If farming, refer to the appropriate guide to accomplish this.
'|achieve 1779 |or
step
collect 5 Worg Haunch##43011 |or
|tip You can gather them yourself or buy them from the Auction House.
|tip If farming, refer to the appropriate guide to accomplish this.
'|achieve 1779 |or
step
collect 5 Worm Meat##43010 |or
|tip You can gather them yourself or buy them from the Auction House.
|tip If farming, refer to the appropriate guide to accomplish this.
'|achieve 1779 |or
step
talk Erika Tate##5483
|tip Inside the building.
buy 2 Simple Flour##30817 |goto Stormwind City/0 77.60,53.10 |or
'|achieve 1779 |or
step
talk Innkeeper Allison##6740
|tip Inside the building.
buy 2 Tundra Berries##35949 |goto Stormwind City/0 60.80,74.80 |or
'|achieve 1779 |or
step
talk Innkeeper Allison##6740
|tip Inside the building.
buy 1 Savory Snowplum##35948 |goto Stormwind City/0 60.80,74.80 |or
'|achieve 1779 |or
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Bad Clams>_
Cook Bad Clams |achieve 1779/9
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Baked Manta Ray>_
Cook Baked Manta Ray |achieve 1779/38
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Blackened Dragonfin>_
Cook a Blackened Dragonfin |achieve 1779/15
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Blackened Worg Steak>_
Cook a Blackened Worg Steak |achieve 1779/41
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Critter Bites>_
Cook Critter Bites |achieve 1779/14
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Cuttlesteak>_
Cook a Cuttlesteak |achieve 1779/26
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Dalaran Clam Chowder>_
Cook Dalaran Clam Chowder |achieve 1779/32
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Dragonfin Filet>_
Cook a Dragonfin Filet |achieve 1779/10
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Firecracker Salmon>_
Cook a Firecracker Salmon |achieve 1779/25
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Fish Feast>_
Cook a Fish Feast |achieve 1779/18
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Gigantic Feast>_
Cook a Gigantic Feast |achieve 1779/40
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Great Feast>_
Cook a Great Feast |achieve 1779/39
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Grilled Bonescale>_
Cook a Grilled Bonescale |achieve 1779/19
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Grilled Sculpin>_
Cook a Grilled Sculpin |achieve 1779/28
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Haunted Herring>_
Cook a Haunted Herring |achieve 1779/12
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Hearty Rhino>_
Cook Hearty Rhino |achieve 1779/17
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Imperial Manta Steak>_
Cook an Imperial Manta Steak |achieve 1779/34
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Kungaloosh>_
Brew some Kungaloosh |achieve 1779/16
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Last Week's Mammoth>_
Cook Last Week's Mammoth |achieve 1779/29
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Mammoth Meal>_
Cook a Mammoth Meal |achieve 1779/27
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Mega Mammoth Meal>_
Cook a Mega Mammoth Meal |achieve 1779/24
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Mighty Rhino Dogs>_
Cook Mighty Rhino Dogs |achieve 1779/37
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Northern Stew>_
Cook Northern Stew |achieve 1779/8
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Pickled Fangtooth>_
_Cook_ Pickled Fangtooth |achieve 1779/7
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Poached Nettlefish>_
Cook a Poached Nettlefish |achieve 1779/6
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Poached Northern Sculpin>_
Cook a Poached Northern Sculpin |achieve 1779/23
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Rhino Dogs>_
Cook Rhino Dogs |achieve 1779/5
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Rhinolicious Wormsteak>_
Cook a Rhinolicious Wormsteak |achieve 1779/21
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Roasted Worg>_
Cook Roasted Worg |achieve 1779/42
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Sauteed Goby>_
Cook a Sauteed Goby |achieve 1779/4
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Shoveltusk Steak>_
Cook a Shoveltusk Steak |achieve 1779/44
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Small Feast>_
Cook a Small Feast |achieve 1779/33
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Smoked Rockfin>_
Cook Smoked Rockfin |achieve 1779/3
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Smoked Salmon>_
Cook a Smoked Salmon |achieve 1779/43
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Snapper Extreme>_
Cook Snapper Extreme |achieve 1779/30
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Spiced Mammoth Treat>_
Cook Spiced Mammoth Treats |achieve 1779/1
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Spiced Worm Burger>_
Cook a Spiced Worm Burger |achieve 1779/45
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Spicy Blue Nettlefish>_
Cook a Spicy Blue Nettlefish |achieve 1779/35
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Spicy Fried Herring>_
Cook a Spicy Fried Herring |achieve 1779/22
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Tasty Cupcake>_
Cook a Tasty Cupcake |achieve 1779/31
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Tender Shoveltusk Steak>_
Cook a Tender Shoveltusk Steak |achieve 1779/36
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Tracker Snacks>_
Cook Tracker Snacks |achieve 1779/13
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Very Burnt Worg>_
Cook Very Burnt Worg |achieve 1779/20
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Worg Tartare>_
Cook a Worg Tartare |achieve 1779/2
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Worm Delight>_
Cook Worm Delight |achieve 1779/11
]])
QuestCore:RegisterGuide("Achievement Guides\\Professions\\Cooking\\The Cake Is Not A Lie",{
expansion="mists",
mopready=true,
achieveid={877},
patch='30001',
description="Bake a Delicious Chocolate Cake.",
},[[
step
collect Recipe: Delicious Chocolate Cake##33925 |n
|tip This is gathered from completing Shatthrath Cooking Dailies.
|tip It can drop from the Barrel of Fish, Crate of Meat or Small Spice Bag.
|tip It's not a 100% drop rate.
use the Recipe: Delicious Chocolate Cake##33925
learn Delicious Chocolate Cake##43779 |or
Click Here to Load the "Shattrath Cooking Dailies" Guide |confirm |next "Dailies Guides\\The Burning Crusade\\Shattrath Cooking Dailies" |or
step
talk Maegan Tillman##44237
|tip Inside the building.
buy 4 Ice Cold Milk##1179 |goto Stormwind City 75.70,54.10 |or
'|achieve 877 |or
|only if Alliance
step
talk Reese Langston##1327
|tip Inside the building.
buy 1 Flask of Port##2593 |goto Stormwind City 76.30,53.00 |or
'|achieve 877 |or
|only if Alliance
step
talk Erika Tate##5483
|tip Inside the building.
buy 8 Simple Flour##30817 |goto Stormwind City 77.60,53.00 |or
'|achieve 877 |or
|only if Alliance
step
talk Erika Tate##5483
|tip Inside the building.
buy 4 Mild Spices##2678 |goto Stormwind City 77.60,53.00 |or
'|achieve 877 |or
|only if Alliance
step
talk Barkeep Morag##5611
buy 4 Ice Cold Milk##1179 |goto Orgrimmar/1 54.90,78.20 |or
'|achieve 877 |or
|only if Horde
step
talk Suja##46708
buy 8 Simple Flour##30817 |goto Orgrimmar/1 56.40,61.30 |or
'|achieve 877 |or
|only if Horde
step
talk Suja##46708
buy 4 Mild Spices##2678 |goto Orgrimmar/1 56.40,61.30 |or
'|achieve 877 |or
|only if Horde
step
talk Daisy##40832
buy 1 Flask of Port##2593 |goto Thousand Needles 76.50,74.80 |or
'|achieve 877 |or
|only if Horde
step
collect 3 Mageroyal##785 |or
|tip You can gather them yourself or buy them from the Auction House.
|tip If farming, refer to the appropriate guide to accomplish this.
'|achieve 877 |or
step
collect 8 Small Egg##6889 |or
|tip You can gather them yourself or buy them from the Auction House.
|tip If farming, refer to the appropriate guide to accomplish this.
'|achieve 877 |or
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 1 Delicious Chocolate Cake>_
Bake a Delicious Chocolate Cake |achieve 877
]])
QuestCore:RegisterGuide("Achievement Guides\\Professions\\Cooking\\Critter Gitter",{
expansion="mists",
mopready=true,
achieveid={1781},
patch='30002',
description="This guide will walk you through coerceing 10 critters to be your pet within 3 minutes or less using Critter Bites.",
},[[
step
collect 10 Critter Bites##43004 |next "Achievement" |or
|tip You can buy them from the Auction House or farm them.
Click Here to Farm the Materials for 10 Critter Bites |confirm |achieve 1781 |or
step
collect 20 Chilled Meat##43013 |or
|tip You can gather them yourself or buy them from the Auction House.
|tip If farming, refer to the appropriate guide to accomplish this.
'|achieve 1781 |or
step
collect 10 Northern Spices##43007
|tip You can gather them yourself or buy them from the Auction House.
|tip They are gathered from Dalaran Cooking Dailies, choosing the Small Spice Bag reward.
'|achieve 1781 |or
step
Gather #3# Dalaran Cooking Awards |complete curcount(81) >= 3 |or
|tip These are gathered through Dalaran Cooking Daily quests.
'|achieve 1781 |or
step
talk Derek Odds##31032
buy 1 Recipe: Critter Bites##43029 |n
use the Recipe: Critter Bites##43029
learn Critter Bites##57435 |goto Dalaran 41.60,64.80
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 10 Critter Bites>_
|tip If you can't craft them yourself, find someone who can.
collect 10 Critter Bites##43004 |or
'|achieve 1781 |or
step
label "Achievement"
use the Critter Bites##43004
|tip Use them on Beetles, Scorpions, and Cockroaches around this area.
|tip Use all 10 Critter Bites as quick as possible.
|tip These critters are scattered all throughout the tunnel.
Coerce #10# critters to be your pet within 3 minutes or less |achieve 1781 |goto Eastern Plaguelands 4.70,35.50
]])
QuestCore:RegisterGuide("Achievement Guides\\Professions\\Cooking\\Grand Master Cook",{
expansion="mists",
mopready=true,
achieveid={125},
patch='30002',
description="This guide will walk you through coerceing 10 critters to be your pet within 3 minutes or less using Critter Bites.",
},[[
step
Earn the "Grand Master Cook" Achievement |achieve 125 |or
|tip Refer to Cooking 1-525 or the Cooking + Fishing 1-525 Leveling Guide to accomplish this.
]])
QuestCore:RegisterGuide("Achievement Guides\\Professions\\Cooking\\Our Daily Bread",{
expansion="mists",
mopready=true,
achieveid={1782},
patch='30002',
description="Complete each of the cooking daily quests offered by Katherine Lee in Dalaran.",
},[[
step
Complete the Following Daily Quests:
Sewer Stew |achieve 1782/1
Infused Mushroom Meatloaf |achieve 1782/2
Cheese for Glowergold |achieve 1782/3
Mustard Dogs! |achieve 1782/4
Convention at the LEgerdemain |achieve 1782/5
|tip Refer to the Dalaran Cooking Dailies guide to accomplish this.
]])
QuestCore:RegisterGuide("Achievement Guides\\Professions\\Cooking\\Kickin' It Up a Notch",{
expansion="mists",
mopready=true,
achieveid={906},
patch='30001',
description="Complete each of The Rokk's 4 cooking daily quests.",
},[[
step
Complete the Following Daily Quests:
Super Hot Stew |achieve 906/1
Revenge is Tasty |achieve 906/2
Soup for the Soul |achieve 906/3
Manalicious |achieve 906/4
|tip Refer to the Shattrath City Cooking Dailies guide to accomplish this.
]])
QuestCore:RegisterGuide("Achievement Guides\\Professions\\Cooking\\Dinner Impossible",{
expansion="mists",
mopready=true,
achieveid={1785},
patch='30002',
description="Present a Great Feast in each of the battlegrounds.",
},[[
step
collect 5 Great Feast##34753 |next "Achievement" |or
|tip Buy them from the Auction House or create them yourself.
Click Here if You Wish to Farm the Materials |confirm |or
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Great Feast##45554 |goto Stormwind City/0 77.29,53.22
step
collect 5 Chunk o'Mammoth##34736 |n
collect 5 Shoveltusk Flank##43009 |n
collect 5 Worm Meat##43010 |n
collect 10 Chilled Meat##43013 |n
|tip Buy them from the Auction House or farm them yourself.
Click Here if You Wish to Farm the Materials |confirm |next "farm2"
Click Here if You Have the Materials |confirm |next "Craft"
step
label "farm2"
kill Scourged Mammoth##25452+
collect 5 Chunk o'Mammoth##34736 |goto Borean Tundra 78.20,24.00
collect 10 Chilled Meat##43013 |goto Borean Tundra 78.20,24.00
step
kill Tundra Crawler##25454+
collect 5 Worm Meat##43010 |goto Borean Tundra 76.20,23.00
step
kill Shoveltusk##23690+
collect 5 Shoveltusk Flank##43009 |goto Howling Fjord 73.60,40.00
step
label "Craft"
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 5 Great Feast>_
collect 5 Great Feast##34753 |or
'|achieve 1785 |or
step
label "Achievement"
_"Enter Alterac Valley"_
use the Great Feast##34753
Present a Great Feast in "Alterac Valley" |achieve 1785/2
step
_"Enter the Eye of the Storm"_
use the Great Feast##34753
Present a Great Feast in the "Eye of the Storm" |achieve 1785/5
step
_"Enter Arathi Basin"_
use the Great Feast##34753
Present a Great Feast in "Arathi Basin" |achieve 1785/3
step
_"Enter Warsong Gulch"_
Present a Great Feast in "Warsong Gulch" |achieve 1785/1
step
_"Enter Strand of the Ancients"_
use the Great Feast##34753
Present a Great Feast in the"Strand of the Ancients" |achieve 1785/4
]])
QuestCore:RegisterGuide("Title Guides\\Wrath of the Lich King Titles\\Professions\\Fishing\\Salty",{
expansion="mists",
mopready=true,
description="\nThis guide will walk you through the steps to earn the Salty title.",
playertitle=51,
},[[
step
Earn the "Fish Don't Leave Footprints" Achievement |achieve 1516/1
Earn the "Outland Angler" Achievement |achieve 1516/2
Earn "The Fishing Diplomat" Achievement |achieve 1516/3
Earn "The Scavenger" Achievement |achieve 1516/4
Earn "The Old Gnome and the Sea" Achievement |achieve 1516/5
Earn the "Grand Master Fisherman" Achievement |achieve 1516/6
Earn the "Mr. Pinchy's Magical Crawdad Box" Achievement |achieve 1516/7
Earn the "1000 Fish" Achievement |achieve 1516/8
Earn the "Northrend Angler" Achievement |achieve 1516/9
Earn "The Lurker Above" Achievement |achieve 1516/10
Earn the "Old Man Barlowned" Achievement |achieve 1516/11
Earn the "One that Didn't Get Away" Achievement |achieve 1516/12
Earn the "Master Angler of Azeroth" Achievement |achieve 1516/13
Earn the "The Coin Master" Achievement |achieve 1516/14
step
talk Catherine Leland##5494
buy 1 Fishing Pole##6256 |goto Stormwind City,54.90,69.70
buy 10 Shiny Bauble##6529 |goto Stormwind City,54.90,69.70
step
Equip your Fishing Pole |use Fishing Pole##6256
Use the Shiny Bauble to temporarily increase your Fishing skill, to make it easier to catch fish |use Shiny Bauble##6529
|tip If your Shiny Bauble Fishing skill boost expires, you can buy more Shiny Baubles to help you fish.
Stand on the end of this wooden dock
Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
Catch 1000 Fish. |achieve 1561/1
Catch a 32 Pound Catfish |achieve 878
#include "The_Fishing_Diplomat"
#include "Old_Man_Barlowned"
#include "Mr_Pinchy"
#include "The_Lurker_Above"
#include "The_Coin_Master"
]])
QuestCore:RegisterGuide("Title Guides\\Wrath of the Lich King Titles\\Quests\\The Loremaster",{
expansion="mists",
mopready=true,
achieveid={1682},
patch='unknown',
description="\nComplete the various Kalimdor quests in each zone.",
},[[
step
Earn the "Loremaster of Northrend" Achievement |achieve 1681/1
step
Earn the "Loremaster of Kalimdor" Achievement |achieve 1681/2
step
Earn the "Loremaster of Eastern Kingdom" Achievement |achieve 1681/3
step
Earn the "Loremaster of Outland" Achievement |achieve 1681/4
step
Earn the "Loremaster of Cataclysm" Achievement |achieve 1681/5
]])
QuestCore:RegisterGuide("Title Guides\\Wrath of the Lich King Titles\\Quests\\Loremaster of Kalimdor",{
expansion="mists",
mopready=true,
achieveid={1678},
patch='unknown',
description="\nComplete the various Kalimdor quests in each zone.",
},[[
step
Complete the "Silithus Quests" Achievement |achieve 1678/1
|tip Refer to the Silithus leveling guide to accomplish this.
step
Complete the "Bloodmyst Isle Quests" Achievement |achieve 1678/2
|tip Refer to the Bloodmyst Isle leveling guide to accomplish this.
step
Complete the "Winterspring Quests" Achievement |achieve 1678/3
|tip Refer to the Winterspring leveling guide to accomplish this.
step
Complete the "Darkshore Quests" Achievement |achieve 1678/4
|tip Refer to the Darkshore leveling guide to accomplish this.
step
Complete the "Desolace Quests" Achievement |achieve 1678/5
|tip Refer to the Desolace leveling guide to accomplish this.
step
Complete the "Felwood Quests" Achievement |achieve 1678/6
|tip Refer to the Felwood leveling guide to accomplish this.
step
Complete the "Dustwallow Marsh Quests" Achievement |achieve 1678/7
|tip Refer to the Dustwallow leveling guide to accomplish this.
step
Complete the "Stonetalon Mountains Quests" Achievement |achieve 1678/8
|tip Refer to the Stonetalon Mountains leveling guide to accomplish this.
step
Complete the "Tanaris Quests" Achievement |achieve 1678/9
|tip Refer to the Tanaris leveling guide to accomplish this.
step
Complete the "Thousand Needles Quests" Achievement |achieve 1678/10
|tip Refer to the Thousand Needles leveling guide to accomplish this.
step
Complete the "Ashenvale Quests" Achievement |achieve 1678/11
|tip Refer to the Ashenvale leveling guide to accomplish this.
step
Complete the "Un'Goro Crater Quests" Achievement |achieve 1678/12
|tip Refer to the Un'Goro Crater leveling guide to accomplish this.
step
Complete the "Southern Barrens Quests" Achievement |achieve 1678/13
|tip Refer to the Southern Barrens leveling guide to accomplish this.
step
Complete the "Feralas Quests" Achievement |achieve 1678/14
|tip Refer to the Feralas leveling guide to accomplish this.
]])
QuestCore:RegisterGuide("Title Guides\\Wrath of the Lich King Titles\\Quests\\Loremaster of Eastern Kingdoms",{
expansion="mists",
mopready=true,
achieveid={1676},
patch='unknown',
description="\nComplete the various Eastern Kingdoms quests in each zone.",
},[[
step
Complete the "Wetlands Quests" Achievement |achieve 1676/1
|tip Refer to the Wetlands leveling guide to accomplish this.
step
Complete the "Hinterlands Quests" Achievement |achieve 1676/2
|tip Refer to the Hinterlands leveling guide to accomplish this.
step
Complete the "Redridge Mountains Quests" Achievement |achieve 1676/3
|tip Refer to the Redridge Mountains leveling guide to accomplish this.
step
Complete the "Loch Modan Quests" Achievement |achieve 1676/4
|tip Refer to the Loch Modan leveling guide to accomplish this.
step
Complete the "Eastern Plaguelands Quests" Achievement |achieve 1676/5
|tip Refer to the Eastern Plaguelands leveling guide to accomplish this.
step
Complete the "Westfall Quests" Achievement |achieve 1676/6
|tip Refer to the Westfall leveling guide to accomplish this.
step
Complete the "Duskwood Quests" Achievement |achieve 1676/7
|tip Refer to the Duskwood leveling guide to accomplish this.
step
Complete the "Western Plaguelands Quests" Achievement |achieve 1676/8
|tip Refer to the Western Plaguelands leveling guide to accomplish this.
step
Complete the "Swamp of Sorrows Quests" Achievement |achieve 1676/9
|tip Refer to the Swamp of Sorrows leveling guide to accomplish this.
step
Complete the "Cape of Stranglethorn Quests" Achievement |achieve 1676/10
|tip Refer to the Cape of Stranglethorn leveling guide to accomplish this.
step
Complete the "Arathi Highland Quests" Achievement|achieve 1676/11
|tip Refer to the Arathi Highlands leveling guide to accomplish this.
step
Complete the "Burning Steppes Quests" Achievement |achieve 1676/12
|tip Refer to the Burning Steppes leveling guide to accomplish this.
step
Complete the "Blasted Lands Quests" Achievement |achieve 1676/13
|tip Refer to the Blasted Lands leveling guide to accomplish this.
step
Complete the "Badlands Quests" Achievement |achieve 1676/14
|tip Refer to the Badlands leveling guide to accomplish this.
step
Complete the "Searing Gorge Quests" Acheivement |achieve 1676/15
|tip Refer to the Searing Gorge leveling guide to accomplish this.
step
Complete the "Northern Stranglethorn Quests" Achievement |achieve 1676/16
|tip Refer to the Northern Stranglethorn leveling guide to accomplish this.
]])
QuestCore:RegisterGuide("Title Guides\\Wrath of the Lich King Titles\\Quests\\Loremaster of Outlands",{
expansion="mists",
mopready=true,
achieveid={1262},
patch='unknown',
description="\nComplete the various Eastern Kingdoms quest achievements for each zone.",
},[[
step
Complete the "Mysteries of the Marsh" Achievement |achieve 1262/3
|tip Refer to the Zangarmarsh leveling guide to accomplish this.
step
Complete the "To Hellfire and Back" Achievement |achieve 1262/1
|tip Refer to the Hellfire Peninsula leveling guide to accomplish this.
step
Complete the "Into the Nether" Achievement |achieve 1262/5
|tip Refer to the Netherstorm leveling guide to accomplish this.
step
Complete the "On the Blade's Edge" Achievement |achieve 1262/6
|tip Refer to the Blade's Edge Mountain leveling guide to accomplish this.
step
Complete the "Nagrand Slam" Achievement |achieve 1262/2
|tip Refer to the Nagrand leveling guide to accomplish this.
step
Complete the "Terror of Terokkar" Achievement |achieve 1262/7
|tip Refer to the Terrokar Forest leveling guide to accomplish this.
step
Complete the "Shadow of the Betrayer" Achievement |achieve 1262/4
|tip Refer to the Shadowmoon Valley leveling guide to accomplish this.
]])
QuestCore:RegisterGuide("Title Guides\\Wrath of the Lich King Titles\\Quests\\Loremaster of Northrend",{
expansion="mists",
mopready=true,
achieveid={41},
patch='unknown',
description="\nComplete the various Northrend quest achievements for each zone.",
},[[
step
Complete the "The Empire of Zul'Drak" Achievement|achieve 41/6
|tip Refer to the Zul'Drak leveling guide to accomplish this.
step
Complete the "Might of Dragonblight" Achievement|achieve 41/7
|tip Refer to the Dragonblight leveling guide to accomplish this.
step
Complete the "Into the Basin" Achievement|achieve 41/3
|tip Refer to the Sholazar Basin leveling guide to accomplish this.
step
Complete the "Fo' Grizzle My Shizzle" Achievement|achieve 41/5
|tip Refer to the Grizzly Hills leveling guide to accomplish this.
step
Complete the "Icecrown: The Final Goal" Achievement|achieve 41/1
|tip Refer to the Icecrown leveling guide to accomplish this.
step
Complete the "The Summit of Storm Peaks" Achievement|achieve 41/4
|tip Refer to the Storm Peaks leveling guide to accomplish this.
step
Complete the "Nothing Boring About Borean" Achievement|achieve 41/8
|tip Refer to the Borean Tundra leveling guide to accomplish this.
step
Complete the "I've Toured the Fjord" Achievement|achieve 41/2
|tip Refer to the Howling Fjord leveling guide to accomplish this.
]])
QuestCore:RegisterGuide("Title Guides\\Wrath of the Lich King Titles\\Quests\\Loremaster of Cataclysm",{
expansion="mists",
mopready=true,
achieveid={4875},
patch='unknown',
description="\nComplete the various Cataclysm quest achievements for each zone.",
},[[
step
Complete the "Fading into Twilight" Achievement |achieve 4875/1
|tip Refer to the Twilight Highlands leveling guide to accomplish this.
step
Complete the "Unearthing Uldum" Achievement |achieve 4875/2
|tip Refer to the Uldum leveling guide to accomplish this.
step
Complete the "Deep Into Deepholm" Achievement |achieve 4875/3
|tip Refer to the Deepholm leveling guide to accomplish this.
step
Complete the "Coming Down the Mountain" Achievement |achieve 4875/4
|tip Refer to the Mount Hyjal leveling guide to accomplish this.
step
Complete the "inking into Vash'jir" Achievement |achieve 4875/5
|tip Refer to the Vash'jir leveling guide to accomplish this.
]])
QuestCore:RegisterGuide("Reputation Guides\\Classic Reputations\\Argent Dawn",{
expansion="mists",
mopready=true,
description="\nThis guide will walk you through becoming exalted with The Argent Dawn faction.",
achieveid={946},
patch='30001',
},[[
step
talk Fiona##45417
turnin Into the Woods##27683 |goto Eastern Plaguelands/0 9.00,66.50
accept Gidwin Goldbraids##27367 |goto Eastern Plaguelands/0 9.00,66.50
accept Tarenar Sunstrike##27370 |goto Eastern Plaguelands/0 9.00,66.50
step
talk Gidwin Goldbraids##45428
turnin Gidwin Goldbraids##27367 |goto Eastern Plaguelands/0 4.10,36.00
accept Just Encased##27368 |goto Eastern Plaguelands/0 4.10,36.00
step
kill Crypt Stalker##8555, Crypt Horror##8557, Crypt Walker##8556, Crypt Slayer##8558
|tip All inside this tunnel.
collect 8 Crypt Bile##60983 |q 27368/1 |goto Eastern Plaguelands/0 5.10,33.40
step
talk Gidwin Goldbraids##45428
turnin Just Encased##27368 |goto Eastern Plaguelands/0 4.10,36.00
accept Greasing the Wheel##27369 |goto Eastern Plaguelands/0 4.10,36.00
step
click Banshee's Bell##9889+
|tip They look like small black plants on the ground around this area.
|tip You can find more along the shore next to the river.
|tip Work your way south while collecting them.
collect 10 Banshee's Bells##60984 |q 27369/1 |goto Eastern Plaguelands/0 3.40,38.00
step
talk Fiona##45417
turnin Greasing the Wheel##27369 |goto Eastern Plaguelands/0 9.00,66.50
step
talk Tarenar Sunstrike##45429
turnin Tarenar Sunstrike##27370 |goto Eastern Plaguelands/0 18.40,74.80
accept What I Do Best##27371 |goto Eastern Plaguelands/0 18.40,74.80
step
kill 5 Death's Step Miscreation##45444+ |q 27371/1 |goto Eastern Plaguelands/0 18.45,78.27
step
_Click the Complete Quest Box:_
turnin What I Do Best##27371
accept A Gift For Fiona##27372
step
kill Plaguehound Runt##8596+
|tip They share spawn locations with the Carrion Grubs.
collect 10 Plaguehound Blood##60986 |q 27372/1 |goto Eastern Plaguelands/0 17.20,68.70
You can find more around [Eastern Plaguelands/0 14.40,63.00]
step
talk Fiona##45417
turnin A Gift For Fiona##27372 |goto Eastern Plaguelands/0 9.00,66.50
accept Onward, to Light's Hope Chapel##27373 |goto Eastern Plaguelands/0 9.00,66.50
step
clicknpc Fiona's Caravan##45400
_Complete 1 of the 3 Quests to Receive a Buff:_
|tip All of the buffs only work while you're in Eastern Plaguelands.
|tip "Fiona's Lucky Charm" gives you a chance to loot extra gold or items from enemies.
|tip "Gidwin's Weapon Oil" gives you a chance to do extra Holy damage on melee and ranged attacks.
|tip "Tarenar's Talisman" gives you a chance to do extra Holy damage on successful spell attacks.
_Choose a Buff:_
|tip You can only complete one of these at a time, but you can change your choice afterwards, if you want.
Gain Fiona's Lucky Charm |havebuff Fiona's Lucky Charm##85612 |or |q 27373 |goto Eastern Plaguelands/0 8.80,66.60
Gain Gidwin's Weapon Oil |havebuff Gidwin's Weapon Oil##85613 |or |q 27373 |goto Eastern Plaguelands/0 8.80,66.60
Gain Tarenar's Talisman |havebuff Tarenar's Talisman##85614 |or |q 27373 |goto Eastern Plaguelands/0 8.80,66.60
step
clicknpc Fiona's Caravan##45400
Choose _"Ride Fiona's Caravan to its next destination."_
Begin Riding Fiona's Caravan |invehicle |goto Eastern Plaguelands/0 8.80,66.60 |q 27373
step
Ride Fiona's Caravan |q 27373/1 |goto Eastern Plaguelands/0 34.72,68.58 |notravel
step
talk Urk Gagbaz##45500
accept Zaeldarr the Outcast##27432 |goto Eastern Plaguelands/0 35.00,68.10
step
talk Fiona##45417
turnin Onward, to Light's Hope Chapel##27373 |goto Eastern Plaguelands/0 34.90,69.10
step
talk Tarenar Sunstrike##45429
accept Traveling Companions##27381 |goto Eastern Plaguelands/0 35.30,68.80
step
talk Carlin Redpath##11063
|tip Inside the tower.
accept Little Pamela##27383 |goto Eastern Plaguelands/0 35.60,68.90
step
talk Argus Highbeacon##45451
|tip He walks around at the top of the tower.
Select _"Are you interested in joining our caravan?  We're headed to Light's Hope Chapel."_
Find a Traveling Companion |q 27381/1 |goto Eastern Plaguelands/0 35.90,69.30
step
talk Argus Highbeacon##45451
|tip He walks around at the top of the tower.
accept Rough Roads##27382 |goto Eastern Plaguelands/0 35.90,69.30
step
talk Tarenar Sunstrike##45429
turnin Traveling Companions##27381 |goto Eastern Plaguelands/0 35.30,68.90
step
talk Pamela Redpath##10926
turnin Little Pamela##27383 |goto Eastern Plaguelands/0 32.40,83.70
accept Pamela's Doll##27384 |goto Eastern Plaguelands/0 32.40,83.70
accept I'm Not Supposed to Tell You This##27392 |goto Eastern Plaguelands/0 32.40,83.70
step
click Pamela's Doll's Right Side##176143
|tip The doll parts look like various shaped yellow objects inside the buildings around this area.
|tip They spawn in random locations inside the buildings.
collect Pamela's Doll's Right Side##12888 |q 27384 |goto Eastern Plaguelands/0 35.50,85.30
collect Pamela's Doll's Left Side##12887 |q 27384 |goto Eastern Plaguelands/0 35.50,85.30
collect Pamela's Doll's Head##12886 |q 27384 |goto Eastern Plaguelands/0 35.50,85.30
step
use Pamela's Doll's Head##12886
collect Pamela's Doll##12885 |q 27384/1
step
kill The Lone Hunter##45450
collect Joseph's Hunting Blade##60987 |q 27392/1 |goto Eastern Plaguelands/0 40.30,83.80
step
talk Pamela Redpath##10926
|tip She walks around inside the crumbled house.
turnin Pamela's Doll##27384 |goto Eastern Plaguelands/0 32.40,83.70
turnin I'm Not Supposed to Tell You This##27392 |goto Eastern Plaguelands/0 32.40,83.70
accept Uncle Carlin##27385 |goto Eastern Plaguelands/0 32.40,83.70
step
talk Carlin Redpath##11063
|tip Inside the tower.
turnin Uncle Carlin##27385 |goto Eastern Plaguelands/0 35.60,68.90
accept A Strange Historian##27386 |goto Eastern Plaguelands/0 35.60,68.90
step
talk Chromie##10667
turnin A Strange Historian##27386 |goto Eastern Plaguelands/0 35.30,68.00
accept Villains of Darrowshire##27387 |goto Eastern Plaguelands/0 35.30,68.00
accept Heroes of Darrowshire##27388 |goto Eastern Plaguelands/0 35.30,68.00
accept Marauders of Darrowshire##27389 |goto Eastern Plaguelands/0 35.30,68.00
step
talk Urk Gagbaz##45500
accept Cenarion Tenacity##27544 |goto Eastern Plaguelands/0 35.00,68.10
step
talk Carlin Redpath##11063
|tip Inside the tower.
Select _"Carlin, do you have the extended Annals of Darrowshire?"_
collect Extended Annals of Darrowshire##13202 |q 27388/1 |goto Eastern Plaguelands/0 35.60,68.90
stickystart "Kill_Plaguebats"
step
click Shattered Sword of Marduk##176209
collect Shattered Sword of Marduk##12957 |q 27387/2 |goto Eastern Plaguelands/0 39.80,72.40
step
label "Kill_Plaguebats"
kill 13 Plaguebat##8600+ |q 27382/1 |goto Eastern Plaguelands/0 39.60,72.10
|tip All around this area. |notinsticky
step
talk Argus Highbeacon##45451
|tip He walks around at the top of the tower.
turnin Rough Roads##27382 |goto Eastern Plaguelands/0 35.60,68.70
step
Enter the crypt |goto Eastern Plaguelands/0 24.20,78.50 < 10 |walk
kill Zaeldarr the Outcast##12250
|tip At the bottom of the crypt.
collect Zaeldarr's Head##15785 |q 27432/1 |goto Eastern Plaguelands/0 23.80,77.90
step
click Redpath's Shield##176207
|tip Inside the building.
collect Redpath's Shield##12955 |q 27388/3 |goto Eastern Plaguelands/0 22.10,68.20
step
click Davil's Libram##176206
|tip Upstairs inside the building.
|tip Inside the fireplace.
collect Davil's Libram##12954 |q 27388/2 |goto Eastern Plaguelands/0 22.30,68.30
step
talk Urk Gagbaz##45500
turnin Zaeldarr the Outcast##27432 |goto Eastern Plaguelands/0 35.00,68.20
step
talk Chromie##10667
turnin Heroes of Darrowshire##27388 |goto Eastern Plaguelands/0 35.20,68.10
step
click Horgus' Skull##176208
collect Skull of Horgus##12956 |q 27387/1 |goto Eastern Plaguelands/0 37.30,60.20
step
talk Rayne##16135
turnin Cenarion Tenacity##27544 |goto Eastern Plaguelands/0 30.20,56.90
accept Postponing the Inevitable##27420 |goto Eastern Plaguelands/0 30.20,56.90
accept Amidst Death, Life##27421 |goto Eastern Plaguelands/0 30.20,56.90
stickystart "Collect_Resonating_Skulls"
stickystart "Destroy_Plague_Disseminators"
step
use Rayne's Seeds##61036
|tip Inside the building.
Plant a Seed in the Western Necropolis |q 27421/2 |goto Eastern Plaguelands/0 33.70,44.40
step
use Rayne's Seeds##61036
|tip Inside the building.
Plant a Seed in the Northeastern Necropolis |q 27421/3 |goto Eastern Plaguelands/0 37.80,42.50
step
use Rayne's Seeds##61036
|tip Inside the building.
Plant a Seed in the Southeastern Necropolis |q 27421/1 |goto Eastern Plaguelands/0 37.60,48.30
step
label "Collect_Resonating_Skulls"
kill Scourge Champion##8529+
collect Fetid Skull##13157 |n
Use your Mystic Crystal when you have a Fetid Skull |use Mystic Crystal##13156
collect 5 Resonating Skull##13155 |q 27389/1 |goto Eastern Plaguelands/0 36.40,46.00
step
label "Destroy_Plague_Disseminators"
kill Shadowmage##8550, Dark Adept##8546, Shadowmage##8550
collect Plague Disseminator Control Rune##61037 |n
|tip Scourge Champions will not drop the runes. |notinsticky
use the Overcharged Mote##61038
|tip Use it near Plague Disseminators. |notinsticky
|tip They look like small buildings floating in the air around this area. |notinsticky
Destroy #3# Plague Disseminators |q 27420/1 |goto Eastern Plaguelands/0 36.40,46.00
step
talk Rayne##16135
turnin Postponing the Inevitable##27420 |goto Eastern Plaguelands/0 30.20,56.90
turnin Amidst Death, Life##27421 |goto Eastern Plaguelands/0 30.20,56.90
step
talk Chromie##10667
turnin Villains of Darrowshire##27387 |goto Eastern Plaguelands/0 35.30,68.10
turnin Marauders of Darrowshire##27389 |goto Eastern Plaguelands/0 35.30,68.10
accept The Battle of Darrowshire##27390 |goto Eastern Plaguelands/0 35.30,68.10
step
use the Relic Bundle##15209
kill Redpath the Corrupted##10938
|tip Fight in the battle nearby and follow the instructions that appear on your screen.
talk Joseph Redpath##10936
|tip He appears after the battle in this location.
Accept Redpath's Forgiveness |q 27390/1 |goto Eastern Plaguelands/0 35.10,84.00
step
talk Pamela Redpath##10926
|tip She walks around inside the crumbled house.
turnin The Battle of Darrowshire##27390 |goto Eastern Plaguelands/0 32.40,83.70
accept Hidden Treasures##27391 |goto Eastern Plaguelands/0 32.40,83.70
step
click Joseph's Chest##177544
|tip On the ground outside the crumbled house.
turnin Hidden Treasures##27391 |goto Eastern Plaguelands/0 32.20,83.40
step
talk Fiona##45417
accept The Trek Continues##27448 |goto Eastern Plaguelands/0 34.90,69.20
step
clicknpc Fiona's Caravan##45400
Choose _"Ride Fiona's Caravan to its next destination."_
Begin Riding Fiona's Caravan |invehicle |goto Eastern Plaguelands/0 35.00,69.30 |q 27448
step
Ride in Fiona's Caravan |q 27448/1 |goto Eastern Plaguelands/0 52.61,53.92 |notravel
|tip Click Fiona's Caravan when you arrive and accept the "Argus' Journal" buff.
|tip It gives a 2% XP boost while in Eastern Plaguelands, so you can level a bit faster.
step
talk Fiona##45417
turnin The Trek Continues##27448 |goto Eastern Plaguelands/0 52.90,53.10
accept Boys Will Be Boys##27455 |goto Eastern Plaguelands/0 52.90,53.10
step
talk Betina Bigglezink##11035
accept To Kill With Purpose##27451 |goto Eastern Plaguelands/0 53.20,54.60
accept Dark Garb##27452 |goto Eastern Plaguelands/0 53.20,54.60
step
talk Frederick Calston##45575
|tip At the top of the tower.
accept Frederick's Fish Fancy##27450 |goto Eastern Plaguelands/0 53.80,54.00
step
talk Vex'tul##45574
accept Honor and Strength##27449 |goto Eastern Plaguelands/0 52.80,51.40
|tip You will be attacked.
step
kill 3 Mossflayer Rogue##45579+ |q 27449/1 |goto Eastern Plaguelands/0 52.80,51.40
step
talk Vex'tul##45574
turnin Honor and Strength##27449 |goto Eastern Plaguelands/0 52.80,51.40
stickystart "Collect_Infectis_Inchers"
stickystart "Collect_Infectis_Scuttlers"
step
clicknpc Plague Puffer##45650+
|tip They look like small blowfish underwater around this area.
collect 8 Plague Puffer##61292 |q 27450/1 |goto Eastern Plaguelands/0 50.20,61.30
step
label "Collect_Infectis_Inchers"
clicknpc Infectis Incher##45655+
|tip They look like small snails underwater around this area.
collect 8 Infectis Incher##61293 |q 27450/2 |goto Eastern Plaguelands/0 50.20,61.30
step
label "Collect_Infectis_Scuttlers"
clicknpc Infectis Scuttler##45657+
|tip They look like small crabs underwater around this area.
collect 8 Infectis Scuttler##61294 |q 27450/3 |goto Eastern Plaguelands/0 50.20,61.30
step
kill Hate Shrieker##8541, Gibbering Ghoul##8531, Stitched Horror##8543, Unseen Servant##8538
collect 7 Living Rot##15447 |n
|tip These only last for 10 minutes before they disappear from your bags.
|tip Keep an eye on the timer and try to get them as fast as you can.
use the Mortar and Pestle##15454
|tip Use it once you have 7 Living Rot.
collect Coagulated Rot##15448 |q 27451/1 |goto Eastern Plaguelands/0 53.70,62.30
step
_Click the Complete Quest Box:_
turnin To Kill With Purpose##27451
stickystart "Collect_Death_Cultist_Robes"
step
kill Vile Tutor##8548, Dark Summoner##8551
|tip Only Dark Summoners and Vile Tutors will drop the items.
collect Death Cultist Headwear##61280 |q 27452/1 |goto Eastern Plaguelands/0 55.70,61.00
step
label "Collect_Death_Cultist_Robes"
kill Vile Tutor##8548, Dark Summoner##8551 |notinsticky
|tip Only Dark Summoners and Vile Tutors will drop the items. |notinsticky
collect Death Cultist Robes##61281 |q 27452/2 |goto Eastern Plaguelands/0 55.70,61.00
step
_Click the Complete Quest Box:_
turnin Dark Garb##27452
accept Catalysm##27453
step
use Betina's Flasks##61284
'|kill Plague Ravager##8520, Blighted Surge##8519
|tip Use it on Plague Ravagers and Blighted Surges underwater around this area.
collect 8 Active Liquid Plague Agent##61285 |q 27453/1 |goto Eastern Plaguelands/0 57.60,72.60
step
_Click the Complete Quest Box:_
turnin Catalysm##27453
accept Just a Drop in the Bucket##27454
step
use the Death Cultist Disguise##61283
Wear your Death Cultist Disguise |havebuff spell:85141 |q 27454 |goto Eastern Plaguelands/0 61.70,75.50
step
click Mereldar Plague Cauldron##205485
Choose _"Throw in an entire flask."_
Disturb the Mereldar Plague Cauldron |q 27454/1 |goto Eastern Plaguelands/0 62.40,76.40
step
talk Betina Bigglezink##11035
turnin Just a Drop in the Bucket##27454 |goto Eastern Plaguelands/0 53.20,54.60
step
talk Frederick Calston##45575
|tip At the top of the tower.
turnin Frederick's Fish Fancy##27450 |goto Eastern Plaguelands/0 53.80,54.00
step
talk Gidwin Goldbraids##45431
turnin Boys Will Be Boys##27455 |goto Eastern Plaguelands/0 74.40,53.30
accept A Boyhood Dream##27463 |goto Eastern Plaguelands/0 74.40,53.30
step
talk Rimblat Earthshatter##16134
accept Gathering Some Grub(s)##27456 |goto Eastern Plaguelands/0 73.80,51.90
step
talk Smokey LaRue##11033
accept Smokey and the Bandage##27458 |goto Eastern Plaguelands/0 74.90,53.50
step
talk Jessica Chambers##16256
|tip Inside the building.
home Light's Hope Chapel |goto Eastern Plaguelands/0 75.60,52.40
step
talk Leonid Barthalomew the Revered##11036
|tip Inside the building.
accept The Brotherhood of Light##27459 |goto Eastern Plaguelands/0 75.60,52.00
step
talk Lord Maxwell Tyrosus##11034
|tip Inside the building.
turnin A Boyhood Dream##27463 |goto Eastern Plaguelands/0 75.90,52.00
accept Argent Call: The Trial of the Crypt##27464 |goto Eastern Plaguelands/0 75.90,52.00
step
Enter the crypt |goto Eastern Plaguelands/0 77.20,50.80 < 10 |walk
use the Argent Scroll##61309
|tip At the bottom of the crypt.
Watch the dialogue
Kill the enemies that attack in waves
kill Lord Raymond George##45707
Complete the Trial of the Crypt |q 27464/1 |goto Eastern Plaguelands/0 77.20,51.40
step
Leave the crypt |goto Eastern Plaguelands/0 77.37,50.81 < 10 |walk |only if subzone("Crypt") and indoors()
talk Lord Maxwell Tyrosus##11034
|tip Inside the building.
turnin Argent Call: The Trial of the Crypt##27464 |goto Eastern Plaguelands/0 75.90,52.00
accept Argent Call: The Noxious Glade##27465 |goto Eastern Plaguelands/0 75.90,52.00
step
talk Master Craftsman Omarion##16365
|tip Inside the building.
accept Buried Blades##27467 |goto Eastern Plaguelands/0 75.70,52.00
step
kill Stephen Browman##46167
|tip Inside the building.
collect Browman's Wrappings##62028 |q 27458/1 |goto Eastern Plaguelands/0 71.90,45.40
stickystart "Bury_Blades"
stickystart "Slay_Noxious_Glade_Scourge"
step
kill Skullmage##45691, Noxious Assassin##45692
|tip Only Skullmages and Noxious Assassins will count toward the goal.
|tip Be careful of the large patrolling elite enemy, Garginox.
kill 8 Noxious Glade Cultists |q 27465/2 |goto Eastern Plaguelands/0 77.40,37.30
step
label "Bury_Blades"
clicknpc Slain Scourge Trooper##45695+
|tip They look like skeletons laying on the ground around this area. |notinsticky
|tip Be careful of the large patrolling elite enemy, Garginox. |notinsticky
Bury #10# Blades |q 27467/1
step
label "Slay_Noxious_Glade_Scourge"
kill Diseased Flayer##8532, Death Singer##8542, Dread Weaver##8528
|tip Only Diseased Flayers, Dread Weavers, and Death Singers will count toward this goal.
|tip Be careful of the large patrolling elite enemy, Garginox. |notinsticky
Slay #16# Noxious Glade Scourge |q 27465/1 |goto Eastern Plaguelands/0 77.40,37.30
step
talk Master Craftsman Omarion##16365
|tip Inside the building.
turnin Buried Blades##27467 |goto Eastern Plaguelands/0 75.70,52.00
step
talk Lord Maxwell Tyrosus##11034
|tip Inside the building.
turnin Argent Call: The Noxious Glade##27465 |goto Eastern Plaguelands/0 75.90,52.00
step
talk Smokey LaRue##11033
turnin Smokey and the Bandage##27458 |goto Eastern Plaguelands/0 74.90,53.50
step
kill Carrion Devourer##8605, Carrion Grub##8603
|tip They look like large yellow grubs.
collect 15 Slab of Carrion Worm Meat##13853 |q 27456/1 |goto Eastern Plaguelands/0 71.10,60.60
step
talk Archmage Angela Dosantos##16116
turnin The Brotherhood of Light##27459 |goto Eastern Plaguelands/0 72.60,74.80
accept Soft Landing##27460 |goto Eastern Plaguelands/0 72.60,74.80
step
kill Scarlet Cleric##9449, Scarlet Warder##9447, Scarlet Enchanter##9452
Slay #10# Tyr's Hand Scarlet Crusaders |q 27460/1 |goto Eastern Plaguelands/0 73.60,74.80
step
click Crusader's Flare##205875
turnin Soft Landing##27460 |goto Eastern Plaguelands/0 77.60,79.40
accept To Take the Abbey##27461 |goto Eastern Plaguelands/0 77.60,79.40
accept To Take the Barracks##27462 |goto Eastern Plaguelands/0 77.60,79.40
step
talk Crusade Commander Korfax##16112
turnin To Take the Barracks##27462 |goto Eastern Plaguelands/0 75.30,76.20
accept Scarlet Salvage##27614 |goto Eastern Plaguelands/0 75.30,76.20
accept The Wrathcaster##27615 |goto Eastern Plaguelands/0 75.30,76.20
accept The Huntsman##27616 |goto Eastern Plaguelands/0 75.30,76.20
accept The Commander##27619 |goto Eastern Plaguelands/0 75.30,76.20
step
click Battered Chest##205880
|tip Inside the fort.
collect Crimson Boar##61959 |q 27614/1 |goto Eastern Plaguelands/0 74.80,76.70
step
click Battered Chest##205880
|tip Inside the fort.
collect Lihanna's Strand##61960 |q 27614/2 |goto Eastern Plaguelands/0 74.20,78.30
step
click Battered Chest##205880
|tip Inside the fort.
collect Shroud of Uther##61961 |q 27614/3 |goto Eastern Plaguelands/0 75.10,79.00
step
click Battered Chest##205880
|tip Inside the fort.
collect Gavinrad's Sigil##61962 |q 27614/4 |goto Eastern Plaguelands/0 75.90,77.50
step
kill Mataus the Wrathcaster##46093 |q 27615/1 |goto Eastern Plaguelands/0 75.00,78.30
|tip Downstairs inside the fort.
step
kill Scarlet Commander Marjhan##46092 |q 27619/1 |goto Eastern Plaguelands/0 74.90,78.30
|tip Upstairs inside the fort, in the large open room.
step
kill Huntsman Leopold##46094 |q 27616/1 |goto Eastern Plaguelands/0 74.50,77.50
|tip Outside, on top of the fort.
step
talk Crusade Commander Korfax##16112
turnin Scarlet Salvage##27614 |goto Eastern Plaguelands/0 75.30,76.20
turnin The Wrathcaster##27615 |goto Eastern Plaguelands/0 75.30,76.20
turnin The Huntsman##27616 |goto Eastern Plaguelands/0 75.30,76.20
turnin The Commander##27619 |goto Eastern Plaguelands/0 75.30,76.20
accept Argent Upheaval##27618 |goto Eastern Plaguelands/0 75.30,76.20
step
talk Archmage Angela Dosantos##16116
turnin Argent Upheaval##27618 |goto Eastern Plaguelands/0 76.10,75.30
step
talk Crusade Commander Eligor Dawnbringer##16115
turnin To Take the Abbey##27461 |goto Eastern Plaguelands/0 76.70,73.10
accept Victory From Within##27612 |goto Eastern Plaguelands/0 76.70,73.10
accept The Assassin##27613 |goto Eastern Plaguelands/0 76.70,73.10
step
Click the Argent Portal
|tip Upstairs inside the building.
Open the Portal within the Library Wing |q 27612/2 |goto Eastern Plaguelands/0 77.80,71.00
step
Click the Argent Portal
|tip Upstairs inside the building.
Open the Portal Within the Hall of Arms |q 27612/1 |goto Eastern Plaguelands/0 78.60,72.90
step
Run up the spiral stairs |goto Eastern Plaguelands/0 77.93,72.62 < 7 |walk
kill Rohan the Assassin##46095 |q 27613/1 |goto Eastern Plaguelands/0 77.60,72.70
|tip He's stealthed, in the room at the top of the building.
step
talk Crusade Commander Eligor Dawnbringer##16115
|tip Outside in front of the building.
turnin Victory From Within##27612 |goto Eastern Plaguelands/0 76.70,73.10
turnin The Assassin##27613 |goto Eastern Plaguelands/0 76.70,73.10
accept Befouled No More##27617 |goto Eastern Plaguelands/0 76.70,73.10
step
talk Archmage Angela Dosantos##16116
turnin Befouled No More##27617 |goto Eastern Plaguelands/0 76.10,75.30
accept Like Rats##27620 |goto Eastern Plaguelands/0 76.10,75.30
step
kill Crusader Lord Valdelmar##46096 |q 27620/1 |goto Eastern Plaguelands/0 82.30,79.40
|tip Inside the cathedral.
step
talk Leonid Barthalomew the Revered##11036
|tip Inside the building.
turnin Like Rats##27620 |goto Eastern Plaguelands/0 75.60,52.00
step
talk Tarenar Sunstrike##45729
|tip Inside the building.
accept Argent Call: Northdale##27466 |goto Eastern Plaguelands/0 75.80,52.40
step
talk Rimblat Earthshatter##16134
turnin Gathering Some Grub(s)##27456 |goto Eastern Plaguelands/0 73.80,51.90
accept An Opportune Alliance##27457 |goto Eastern Plaguelands/0 73.80,51.90
step
talk Vex'tul##45574
|tip He walks around this area.
accept Out of the Ziggurat##27481 |goto Eastern Plaguelands/0 61.80,41.00
step
talk Deacon Andaal##45736
|tip He walks around this area.
accept Righteous Indignation##27479 |goto Eastern Plaguelands/0 61.00,43.70
step
talk Gamella Cracklefizz##45735
accept The Corpulent One##27477 |goto Eastern Plaguelands/0 61.60,43.10
step
talk Fiona##45417
turnin An Opportune Alliance##27457 |goto Eastern Plaguelands/0 61.50,42.70
turnin Argent Call: Northdale##27466 |goto Eastern Plaguelands/0 61.50,42.70
step
talk Tarenar Sunstrike##45729
accept Ix'lar the Underlord##27487 |goto Eastern Plaguelands/0 61.60,43.20
stickystart "Slay_Ixlars_Minions"
step
kill Ix'lar the Underlord##45744 |q 27487/1 |goto Eastern Plaguelands/0 61.80,35.70
|tip He's a big purple bug that walks around this area, so you may need to search for him.
step
label "Slay_Ixlars_Minions"
kill Scourge Guard##8527, Gangled Golem##8544, Nerubian Sycophant##45743
Kill #10# Ix'lar Minions |q 27487/2 |goto Eastern Plaguelands/0 61.80,35.70
step
kill Borelgore##11896 |q 27477/1 |goto Eastern Plaguelands/0 56.70,27.90
|tip It looks like a huge yellow grub that walks around this area inside this trench.
stickystart "Collect_Mossflayer_Eyes"
step
Follow the path up |goto Eastern Plaguelands/0 59.35,17.41 < 30 |only if walking
kill Warlord Thresh'jin##10822
|tip At the top of the temple.
|tip He's elite, but you can kill him easily.
|tip Avoid the dirt piles on the ground, they spawn more enemies.
collect Body of Warlord Thresh'jin##61315 |q 27481/1 |goto Eastern Plaguelands/0 66.80,9.90
step
_Click the Complete Quest Box:_
turnin Out of the Ziggurat##27481
accept Into the Flames##27482
step
use the Body of Warlord Thresh'jin##61316
|tip At the top of the temple.
Watch the dialogue
Burn Warlord Thresh'jin's Body |q 27482/1 |goto Eastern Plaguelands/0 67.40,9.00
step
_Click the Complete Quest Box:_
turnin Into the Flames##27482
step
label "Collect_Mossflayer_Eyes"
kill Mossflayer Scout##8560, Mossflayer Cannibal##8562, Mossflayer Shadowhunter##8561
|tip Avoid the dirt piles on the ground, they spawn more enemies. |notinsticky
collect 30 Mossflayer Eye##61313 |q 27479/1 |goto Eastern Plaguelands/0 64.50,13.70
step
talk Deacon Andaal##45736
|tip He walks around this area.
turnin Righteous Indignation##27479 |goto Eastern Plaguelands/0 61.30,44.50
step
talk Gamella Cracklefizz##45735
turnin The Corpulent One##27477 |goto Eastern Plaguelands/0 61.60,43.10
step
talk Fiona##45417
turnin Ix'lar the Underlord##27487 |goto Eastern Plaguelands/0 61.50,42.70
step
talk Tarenar Sunstrike##45729
accept Impatience##27488 |goto Eastern Plaguelands/0 61.60,43.20
step
click Open Prayer Book##205537
collect Gidwin's Prayer Book##61318 |q 27488/1 |goto Eastern Plaguelands/0 65.50,24.40
step
talk Tarenar Sunstrike##45729
turnin Impatience##27488 |goto Eastern Plaguelands/0 61.60,43.20
accept Nobody to Blame but Myself##27489 |goto Eastern Plaguelands/0 61.60,43.20
step
clicknpc Fiona's Caravan##45400
Choose _"Ride Fiona's Caravan to its next destination."_
Begin Riding Fiona's Caravan |invehicle |goto Eastern Plaguelands/0 61.60,42.50 |q 27489
step
Ride Fiona's Caravan to Northpass Tower |q 27489/1 |goto Eastern Plaguelands/0 50.51,20.67 |notravel
step
talk Tarenar Sunstrike##45729
turnin Nobody to Blame but Myself##27489 |goto Eastern Plaguelands/0 50.40,20.10
accept Beat it Out of Them##27522 |goto Eastern Plaguelands/0 50.40,20.10
step
talk Kirkian Dawnshield##45826
accept Wretched Hive of Scum and Villainy##27521 |goto Eastern Plaguelands/0 50.00,19.50
stickystart "Kill_Scourge_Siege_Engineers"
step
kill Scourge Siege Engineer##17878+
|tip You will eventually complete the quest goals.
Discover Gidwin's Location |q 27522/2 |goto Eastern Plaguelands/0 54.60,19.10
Discover Gidwin's Captor |q 27522/3 |goto Eastern Plaguelands/0 54.60,19.10
step
label "Kill_Scourge_Siege_Engineers"
kill 6 Scourge Siege Engineer##17878 |q 27522/1 |goto Eastern Plaguelands/0 54.60,19.10
step
kill Wretched Pathstrider##8565, Wretched Ranger##8564, Wretched Woodsman##8563
Kill #9# Quel'lithien Wretched |q 27521/1 |goto Eastern Plaguelands/0 47.00,17.40
step
talk Corpseburner Tim##45816
accept Duskwing, Oh How I Hate Thee...##27523 |goto Eastern Plaguelands/0 48.00,23.00
step
Use The Corpseburner's Flare in this spot |use The Corpseburner's Flare##61334
|tip Use it on Duskwing.
|tip It looks like a large gray bat that flies in the sky around this area.
kill Duskwing##11897
collect Patch of Duskwing's Fur##15850 |q 27523/1 |goto Eastern Plaguelands/0 46.40,33.80
step
talk Corpseburner Tim##45816
turnin Duskwing, Oh How I Hate Thee...##27523 |goto Eastern Plaguelands/0 48.00,23.00
step
talk Fiona##45417
turnin Beat it Out of Them##27522 |goto Eastern Plaguelands/0 50.50,20.20
accept Blind Fury##27524 |goto Eastern Plaguelands/0 50.50,20.20
step
talk Argus Highbeacon##45451
accept The Plaguewood Tower##27532 |goto Eastern Plaguelands/0 50.50,20.20
step
talk Kirkian Dawnshield##45826
turnin Wretched Hive of Scum and Villainy##27521 |goto Eastern Plaguelands/0 50.00,19.50
step
talk Tarenar Sunstrike##45729
|tip He walks around this area.
turnin Blind Fury##27524 |goto Eastern Plaguelands/0 27.60,21.20
accept Guardians of Stratholme##27525 |goto Eastern Plaguelands/0 27.60,21.20
step
talk Crusader Kevin Frost##45831
accept Scourged Mass##27528 |goto Eastern Plaguelands/0 27.60,20.90
accept Defenders of Darrowshire##27529 |goto Eastern Plaguelands/0 27.60,20.90
accept Add 'em to the Pile##27539 |goto Eastern Plaguelands/0 27.60,20.90
step
kill Karthis Darkrune##45868 |q 27525/2
|tip Inside the building.
collect The Baroness' Missive##61378 |goto Eastern Plaguelands/0 29.40,19.70 |q 27551 |future
step
use The Baroness' Missive##61378
accept The Baroness' Missive##27551
step
talk Tarenar Sunstrike##45729
|tip He walks around this area.
turnin The Baroness' Missive##27551 |goto Eastern Plaguelands/0 27.40,21.30
accept Gidwin's Fate Revealed##27526 |goto Eastern Plaguelands/0 27.40,21.30
stickystart "Free_Darrowshire_Spirits"
stickystart "Burn_Overstuffed_Golem_Corpses"
stickystart "Collect_Stinking_Skulls"
step
Watch the dialogue
|tip Inside the building.
Find Gidwin Goldbraids |q 27526/1 |goto Eastern Plaguelands/0 29.10,26.20
step
talk Gidwin Goldbraids##45730
|tip Inside the building.
turnin Gidwin's Fate Revealed##27526 |goto Eastern Plaguelands/0 28.40,25.90
accept Journey's End##27527 |goto Eastern Plaguelands/0 28.40,25.90
step
kill Omasum Blighthoof##45867 |q 27525/1 |goto Eastern Plaguelands/0 25.40,19.80
|tip Inside the building.
step
label "Free_Darrowshire_Spirits"
kill Cannibal Ghoul##8530+
|tip You can find them all around the Plaguewood area. |notinsticky
talk Darrowshire Spirit##11064
|tip They spawn after you kill Cannibal Ghouls.
Free #8# Darrowshire Spirits |q 27529/1 |goto Eastern Plaguelands/0 31.40,20.30
step
label "Burn_Overstuffed_Golem_Corpses"
kill Overstuffed Golem##45851+
|tip They look like abominations.
|tip You can find them all around the Plaguewood area. |notinsticky
use Crusader's Torch##61369
|tip use it on their corpses.
Burn #8# Overstuffed Golem Corpses |q 27528/1 |goto Eastern Plaguelands/0 31.40,20.30
step
label "Collect_Stinking_Skulls"
kill Cursed Mage##8524, Scourge Soldier##8523
|tip Only Cursed Mages and Scourge Soldiers will drop the quest item.
|tip You can find them all around the Plaguewood area. |notinsticky
collect 16 Stinking Skull##61372 |q 27539/1 |goto Eastern Plaguelands/0 31.40,20.30
step
talk Tarenar Sunstrike##45729
|tip Inside the building.
turnin Guardians of Stratholme##27525 |goto Eastern Plaguelands/0 28.50,25.90
step
talk Crusader Kevin Frost##45831
turnin Scourged Mass##27528 |goto Eastern Plaguelands/0 27.60,20.90
turnin Defenders of Darrowshire##27529 |goto Eastern Plaguelands/0 27.60,20.90
turnin Add 'em to the Pile##27539 |goto Eastern Plaguelands/0 27.60,20.90
accept The Corpsebeasts##27530 |goto Eastern Plaguelands/0 27.60,20.90
step
use the Argent Lightwell Charm##61375
|tip Use it next to Corpsebeasts.
|tip They look like large brown monster corpses laying on the ground around this area.
|tip Kill the Plaguewood Reanimators channeling the corpses to able to use the item.
|tip Place three lightwells at each corpse (one near each foot, and one near the head).
Destroy #3# Corpsebeasts |q 27530/1 |goto Eastern Plaguelands/0 28.30,32.30
step
talk Crusader Kevin Frost##45831
turnin The Corpsebeasts##27530 |goto Eastern Plaguelands/0 27.60,20.90
step
talk Argent Apothecary Judkins##45828
|tip He walks around this area.
turnin The Plaguewood Tower##27532 |goto Eastern Plaguelands/0 17.70,28.00
accept Counter-Plague Research##27531 |goto Eastern Plaguelands/0 17.70,28.00
accept Just a Little Touched##27535 |goto Eastern Plaguelands/0 17.70,28.00
step
click Flesh Giant Foot##205558
collect Flesh Giant Foot Scrapings##61366 |q 27531/3 |goto Eastern Plaguelands/0 25.10,34.50
step
click Disembodied Arm##205560+
|tip They look like small grey skeleton arms on the ground around this area.
|tip They're sometimes hard to see.
collect 5 Disembodied Arm##61365 |q 27531/2 |goto Eastern Plaguelands/0 23.50,22.40
step
click Rotberry Bush##205559+
|tip They look like small green bushes with tiny red berries on them near the giant mushrooms around this area.
collect 20 Rotberry##61364 |q 27531/1 |goto Eastern Plaguelands/0 23.50,22.40
step
talk Argent Apothecary Judkins##45828
|tip He walks around this area.
turnin Counter-Plague Research##27531 |goto Eastern Plaguelands/0 17.70,28.00
step
talk Augustus the Touched##12384
|tip Inside the building.
turnin Just a Little Touched##27535 |goto Eastern Plaguelands/0 11.30,28.60
accept A Fate Worse Than Butchery##27533 |goto Eastern Plaguelands/0 11.30,28.60
accept Augustus' Receipt Book##27534 |goto Eastern Plaguelands/0 11.30,28.60
stickystart "plaguedswine"
step
click Augustus' Receipt Book##177789
|tip Upstairs inside the building.
collect Augustus' Receipt Book##15884 |q 27534/1 |goto Eastern Plaguelands/0 14.20,26.30
step
label "plaguedswine"
kill 9 Plagued Swine##16117+ |q 27533/1 |goto Eastern Plaguelands/0 14.40,28.50
step
talk Augustus the Touched##12384
|tip Inside the building.
turnin A Fate Worse Than Butchery##27533 |goto Eastern Plaguelands/0 11.30,28.60
turnin Augustus' Receipt Book##27534 |goto Eastern Plaguelands/0 11.30,28.60
step
talk Fiona##45417
turnin Journey's End##27527 |goto Eastern Plaguelands/0 73.70,52.10
step
label "Annals"
talk Lord Raymond George##49856
|tip These are dungeon quests. If you are not high level, you will need to get a group to continue.
accept Annals of the Silver Hand##28755 |repeatable |goto Eastern Plaguelands/0 76.10,51.00
step
click The Bastion Door##444
Enter the hallway |goto Stratholme 30.50,35.80 < 10
click Hall of the High Command Door##444
Enter the Hallway and turn left |goto Stratholme 20.10,59.50 < 10
click Annals of the Silver Hand##207389
collect Annals of the Silver Hand##65615 |q 28755/1 |repeatable |goto Stratholme 27.50,74.70
step
talk Lord Raymond George##49856
turnin Annals of the Silver Hand##28755 |goto Eastern Plaguelands/0 76.20,51.00
|tip If you do not reset your instance then you will only be forced to clear mobs one time.
Earn Exalted reputation with the Argent Dawn |complete rep('Argent Dawn')==Exalted |only if rep('Argent Dawn')==Exalted
|next "Annals" |only if rep('Argent Dawn')<=Revered
]])
QuestCore:RegisterGuide("Reputation Guides\\Wrath of the Lich King Reputations\\Argent Crusade",{
expansion="mists",
mopready=true,
description="\nThis guide will show you how to earn the Argent Champion title.",
playertitle=99,
},[[
step
talk Highlord Tirion Fordring##28179
accept Honor Above All Else##13036 |goto Icecrown/0 87.50,75.80
step
talk Crusade Commander Entari##30223
turnin Honor Above All Else##13036 |goto Icecrown/0  87.10,75.80
accept Scourge Tactics##13008 |goto Icecrown/0  87.10,75.80
step
talk Father Gustav##30226
|tip He walks around this area.
accept Curing The Incurable##13040 |goto Icecrown/0  86.80,76.70
step
talk Crusader Lord Dalfors##30224
accept Defending The Vanguard##13039 |goto Icecrown/0 86.10,75.80
stickystart "Collect_Forgotten_Depths_Venom_Sacs"
stickystart "Slay_Forgotten_Depths_Nerubians"
step
clicknpc Webbed Crusader##30273+
|tip They look like white squirming cocoons on the ground.
|tip You can find them all around the Valley of Echoes area.
Free #8# Webbed Crusaders |q 13008/1 |goto Icecrown/0 83.85,75.58
step
label "Collect_Forgotten_Depths_Venom_Sacs"
Kill enemies around this area
|tip They look like spiders.
|tip You can find them all around the Valley of Echoes area. |notinsticky
collect 10 Forgotten Depths Venom Sac##42770|q 13040/1 |goto Icecrown/0 83.85,75.58
step
label "Slay_Forgotten_Depths_Nerubians"
Kill enemies around this area |notinsticky
|tip They look like spiders. |notinsticky
|tip You can find them all around the Valley of Echoes area. |notinsticky
Slay #15# Forgotten Depths Nerubians |q 13039/1 |goto Icecrown/0 83.85,75.58
step
talk Crusader Lord Dalfors##30224
turnin Defending The Vanguard##13039 |goto Icecrown/0  86.10,75.80
step
talk Father Gustav##30226
|tip He walks around this area.
turnin Curing The Incurable##13040 |goto Icecrown/0 86.80,76.70
step
talk Crusade Commander Entari##30223
turnin Scourge Tactics##13008 |goto Icecrown/0 87.10,75.80
accept If There Are Survivors...##13044 |goto Icecrown/0 87.10,75.80
step
talk Penumbrius##30227
turnin If There Are Survivors...##13044 |goto Icecrown/0 87.00,79.00
accept Into The Wild Green Yonder##13045 |goto Icecrown/0 87.00,79.00
step
clicknpc Argent Skytalon##30500
Ride an Argent Skytalon |invehicle |goto Icecrown/0 87.10,79.14 |q 13045
step
clicknpc Captured Crusader##30407+
|tip Use the "Grab Captured Crusader" ability on your action bar near Captured Crusaders.
|tip They look like humans trapped in brown and white webbed cocoons.
|tip You can find them all around the Scourgeholme area.
Bring Them to Safety
|tip Fly them back to the Argent Vanguard.
|tip Use the "Drop Off Captured Crusader" ability on your action bar.
Rescue #3# Captured Crusaders |q 13045/1 |goto Icecrown/0 78.40,64.61
Bring the Captured Crusaders to [Icecrown/0 86.85,76.60]
step
Release the Argent Skytalon |outvehicle |goto Icecrown/0 87.46,75.83 |q 13045
|tip Click the red arrow on your action bar.
step
talk Highlord Tirion Fordring##28179
turnin Into The Wild Green Yonder##13045 |goto Icecrown/0 87.50,75.80
accept A Cold Front Approaches##13070 |goto Icecrown/0 87.50,75.80
step
talk Siegemaster Fezzik##30657
|tip Inside the building.
turnin A Cold Front Approaches##13070 |goto Icecrown/0 85.60,76.00
accept The Last Line Of Defense##13086 |goto Icecrown/0 85.60,76.00
step
clicknpc Argent Cannon##30236+
|tip They look like mounted metal guns on top of the walls around this area.
Control the Argent Cannon |invehicle |goto Icecrown/0 85.33,75.84 |q 13086
stickystart "Slay_Scourge_Attackers"
step
kill 3 Frostbrood Destroyer##30575 |q 13086/2 |goto Icecrown/0 85.33,75.84
|tip They look like skeletal dragons nearby.
|tip Use the abilities on your action bar.
step
label "Slay_Scourge_Attackers"
Kill enemies around this area |notinsticky
|tip On the ground and in the air nearby. |notinsticky
|tip Use the abilities on your action bar. |notinsticky
Slay #100# Scourge Attackers |q 13086/1 |goto Icecrown/0 85.33,75.84
step
Stop Controlling the Argent Cannon |outvehicle |q 13086
|tip Click the yellow arrow on your action bar.
step
talk Siegemaster Fezzik##30657
|tip Inside the building.
turnin The Last Line Of Defense##13086 |goto Icecrown/0 85.60,76.00
step
talk Highlord Tirion Fordring##28179
accept Once More Unto The Breach, Hero##13105 |goto Icecrown/0 86.00,75.80 |only DeathKnight
accept Once More Unto The Breach, Hero##13104 |goto Icecrown/0 86.00,75.80 |only if not DeathKnight
step
talk The Ebon Watcher##30596
turnin Once More Unto The Breach, Hero##13105 |only DeathKnight |goto Icecrown/0 83.00,72.90
turnin Once More Unto The Breach, Hero##13104 |only if not DeathKnight |goto Icecrown/0 83.00,72.90
accept The Purging Of Scourgeholme##13118 |goto Icecrown/0 83.00,72.90
accept The Scourgestone##13122 |goto Icecrown/0 83.00,72.90
step
talk Crusade Architect Silas##30686
accept The Stone That Started A Revolution##13130 |goto Icecrown/0 83.00,73.10
step
talk Crusade Engineer Spitzpatrick##30714
accept It Could Kill Us All##13135 |goto Icecrown/0 83.00,73.10
step
talk Father Gustav##30683
|tip Inside the building.
accept The Restless Dead##13110 |goto Icecrown/0 82.90,72.80
stickystart "Collect_Ancient_Elven_Masonry"
stickystart "Collect_Crystallized_Energy"
step
click Crystalline Heartwood##192908+
|tip They look like pink glowing tree stumps on the ground.
collect 10 Crystalline Heartwood##43217 |q 13130/1 |goto Crystalsong Forest 59.90,57.20
You can find more around: |notinsticky
[Crystalsong Forest/0 69.53,69.92]
[Crystalsong Forest/0 75.58,66.02]
[Crystalsong Forest/0 82.96,64.06]
step
label "Collect_Crystallized_Energy"
kill Unbound Ent##30862+, Unbound Dryad##30860+
collect 8 Crystallized Energy##43225 |q 13135/1 |goto Crystalsong Forest/0 59.90,57.20
You can find more around: |notinsticky
[Crystalsong Forest/0 63.57,66.94]
[Crystalsong Forest/0 61.01,54.67]
step
label "Collect_Ancient_Elven_Masonry"
click Ancient Elven Masonry##192912+
|tip They look like blue stone column pieces on the ground.
collect 10 Ancient Elven Masonry##43218 |q 13130/2 |goto Crystalsong Forest/0 75.58,66.02
You can find more around: |notinsticky
[Crystalsong Forest/0 82.96,64.06]
step
talk Crusade Architect Silas##30686
turnin The Stone That Started A Revolution##13130 |goto Icecrown/0 83.00,73.10
step
talk Crusade Engineer Spitzpatrick##30714
turnin It Could Kill Us All##13135 |goto Icecrown/0 83.00,73.10
stickystart "Kill_Forgotten_Depths_Underkings"
stickystart "Kill_Reanimated_Crusaders"
stickystart "Free_Restless_Souls"
stickystart "Collect_Scourgestones"
step
kill 3 Forgotten Depths Underking##31039+ |q 13118/2 |goto Icecrown/0 80.40,68.20
|tip They are usually inside or next to the buildings around the Scourgeholme area.
You can find more around:
[Icecrown/0 79.21,64.00]
[Icecrown/0 75.65,61.06]
[Icecrown/0 79.06,60.42]
[Icecrown/0 78.79,56.27]
step
label "Kill_Forgotten_Depths_Underkings"
kill 3 Forgotten Depths High Priest##31037+ |q 13118/1 |goto Icecrown/0 78.00,63.16
|tip They look like huge beetles.
|tip You can find them all around the Scourgeholme area. |notinsticky
step
label "Kill_Reanimated_Crusaders"
kill 8 Reanimated Crusader##31043+ |q 13118/3 |goto Icecrown/0 78.32,66.36
|tip They look like skeletons.
|tip You can find them all around the Scourgeholme area. |notinsticky
step
label "Free_Restless_Souls"
kill Reanimated Crusader##31043+
|tip They look like skeletons.
|tip You can find them all around the Scourgeholme area. |notinsticky
use the Holy Water##43153
|tip Use it on their corpses.
Free #10# Restless Souls |q 13110/1 |goto Icecrown/0 78.32,66.36
step
label "Collect_Scourgestones"
Kill enemies around this area
|tip You can find them all around the Scourgeholme area. |notinsticky
collect 15 Scourgestone##43169 |q 13122/1 |goto Icecrown/0 78.00,63.16
step
talk The Ebon Watcher##30596
turnin The Purging Of Scourgeholme##13118 |goto Icecrown/0 83.00,72.90
turnin The Scourgestone##13122 |goto Icecrown/0 83.00,72.90
accept The Air Stands Still##13125 |goto Icecrown/0 83.00,72.90
step
talk Father Gustav##30683
|tip Inside the building.
turnin The Restless Dead##13110 |goto Icecrown/0 82.90,72.80
step
Enter the building |goto Icecrown/0 77.85,62.54 < 20 |walk
use the War Horn of Acherus##43206
|tip Use it on Salranax the Flesh Render inside the building.
|tip He is elite, but don't worry.
|tip Your allies will appear to help you kill him after you use the horn.
kill Salranax the Flesh Render##30829 |q 13125/1 |goto Icecrown/0 77.33,61.90
step
Enter the building |goto Icecrown/0 79.27,60.55 < 15 |walk
use the War Horn of Acherus##43206
|tip Use it on High Priest Yath'amon inside the building.
|tip He is elite, but don't worry.
|tip Your allies will appear to help you kill him after you use the horn.
kill High Priest Yath'amon##30831 |q 13125/3 |goto Icecrown/0 80.08,61.16
step
use the War Horn of Acherus##43206
|tip Use it on Underking Talonox.
|tip He walks around this area.
|tip He is elite, but don't worry.
|tip Your allies will appear to help you kill him after you use the horn.
kill Underking Talonox##30830 |q 13125/2 |goto Icecrown/0 76.48,53.70
step
click Return to the Valley of Echoes |goto Icecrown/0 76.48,53.70 < 5
|tip High Lord Darion will open a Death Gate after Underking Talonox is defeated.
talk The Ebon Watcher##30596
turnin The Air Stands Still##13125 |goto Icecrown/0 83.02,72.93
step
talk Father Gustav##30683
|tip Inside the building.
accept Into The Frozen Heart Of Northrend##13139 |goto Icecrown/0 82.90,72.80
step
talk Highlord Tirion Fordring##28179
turnin Into The Frozen Heart Of Northrend##13139 |goto Icecrown/0 86.00,75.80
accept The Battle For Crusaders' Pinnacle##13141 |goto Icecrown/0 86.00,75.80
step
use the Blessed Banner of the Crusade##43243
|tip Your allies will appear and help you fight.
Kill the enemies that attack in waves
|tip Groups of enemies will run up the path nearby.
kill Halof the Deathbringer##30989
Complete the Battle for Crusaders' Pinnacle |q 13141/1 |goto Icecrown/0 80.08,71.94
step
talk Father Gustav##30683
|tip Inside the building.
turnin The Battle For Crusaders' Pinnacle##13141 |goto Icecrown/0 82.90,72.80
accept The Crusaders' Pinnacle##13157 |goto Icecrown/0 82.90,72.80
step
talk Highlord Tirion Fordring##28179
turnin The Crusaders' Pinnacle##13157 |goto Icecrown/0 79.80,71.80
accept A Tale of Valor##13068 |goto Icecrown/0 79.80,71.80
step
talk Marshal Ivalius##31241
|tip Inside the building.
accept The Skybreaker##13225 |goto Icecrown/0 79.40,72.90
step
talk Crusader Bridenbrad##30562
turnin A Tale of Valor##13068 |goto Icecrown/0 79.80,30.80
accept A Hero Remains##13072 |goto Icecrown/0 79.80,30.80
step
talk Highlord Tirion Fordring##28179
turnin A Hero Remains##13072 |goto Icecrown/0 79.80,71.80
accept The Keeper's Favor##13073 |goto Icecrown/0 79.80,71.80
step
talk Arch Druid Lilliandra##30630
Select _"It's a pleasure to meet you as well, Archdruid. I am on a task from Tirion and time is short, might I trouble you for a portal to Moonglade?"_
clicknpc Moonglade Portal##32790
|tip It appears nearby.
|tip You can use your Teleport Moonglade spell instead if you like.  |only Druid
Teleport to Moonglade |complete zone("Moonglade") |goto Icecrown/0 87.06,77.02 |q 13073
step
talk Keeper Remulos##11832
turnin The Keeper's Favor##13073 |goto Moonglade/0 36.20,41.80
accept Hope Within the Emerald Nightmare##13074 |goto Moonglade/0 36.20,41.80
step
click Emerald Acorn##192676+
|tip They look like brown pinecones on the ground, usually near trees.
|tip You can find them all around the Shrine of Remulos area.
collect 3 Emerald Acorn##43006 |q 13074/1 |goto Moonglade/0 34.63,41.48
step
Wake from the Dream |nobuff Fitful Dream##57413 |q 13074
|tip Right-click the "Fitful Dream" buff near your minimap.
step
talk Keeper Remulos##11832
turnin Hope Within the Emerald Nightmare##13074 |goto Moonglade/0 36.20,41.81
accept The Boon of Remulos##13075 |goto Moonglade/0 36.20,41.81
step
clicknpc Moonglade Return Portal##32788 |goto Moonglade/0 36.20,41.81
|tip It appears next to Keeper Remulos.
talk Crusader Bridenbrad##30562
turnin The Boon of Remulos##13075 |goto Icecrown/0 79.85,30.82
accept Time Yet Remains##13076 |goto Icecrown/0 79.85,30.82
step
talk Highlord Tirion Fordring##28179
turnin Time Yet Remains##13076 |goto Icecrown/0 79.80,71.80
accept The Touch of an Aspect##13077 |goto Icecrown/0  79.80,71.80
step
talk Alexstrasza the Life-Binder##26917
|tip At the top of the tower.
turnin The Touch of an Aspect##13077 |goto Dragonblight/0 59.83,54.66
accept Dahlia's Tears##13078 |goto Dragonblight/0 59.83,54.66
step
click Dahlia's Tears##192773+
|tip They look like small yellow flowers on the ground around this area.
collect Dahlia's Tears##43084 |q 13078/1 |goto Dragonblight/0 51.98,47.10
You can find more around: |notinsticky
[Dragonblight/0 50.36,52.09]
[Dragonblight/0 43.92,51.88]
step
talk Alexstrasza the Life-Binder##26917
|tip At the top of the tower.
turnin Dahlia's Tears##13078 |goto Dragonblight/0 59.83,54.66
accept The Boon of Alexstrasza##13079 |goto Dragonblight/0 59.83,54.66
step
talk Crusader Bridenbrad##30562
turnin The Boon of Alexstrasza##13079 |goto Icecrown/0 79.80,30.80
accept Hope Yet Remains##13080 |goto Icecrown/0 79.80,30.80
step
talk Highlord Tirion Fordring##28179
turnin Hope Yet Remains##13080 |goto Icecrown/0 79.80,71.80
accept The Will of the Naaru##13081 |goto Icecrown/0 79.80,71.80
step
Watch the dialogue
|tip Rhydian will approach nearby and cast a portal.
clicknpc Portal to Shattrath##26255
Teleport to Shattrath City |complete zone("Shattrath City") |goto Icecrown/0 79.90,71.84 |q 13081
step
talk A'dal##18481
turnin The Will of the Naaru##13081 |goto Shattrath City/0 54,44.80
accept The Boon of A'dal##13082 |goto Shattrath City/0 54,44.80
step
talk Crusader Bridenbrad##30562
turnin The Boon of A'dal##13082 |goto Icecrown/0 79.80,30.80
step
label "Tabard"
You should now be above Honored with the _Argent Crusade_
The fastest way to continue to earn reputation with Argent Crusade is to buy a tabard and run any dungeon that gives experience
|confirm
step
talk Veteran Crusader Aliocha Segard##30431
buy 1 Tabard of the Argent Crusade##43154 |goto Icecrown/0 87.50,75.60
step
Equip this Tabard in your bags |equipped Tabard of the Argent Crusade##43154 |use Tabard of the Argent Crusade##43154
|tip Run any dungeon in Northrend to gain reputation for the Argent Crusade.
Earn Exalted Reputation with the Argent Crusade Faction |complete rep("Argent Crusade")==Exalted
]])
QuestCore:RegisterGuide("Title Guides\\Wrath of the Lich King Titles\\Exalted Argent Champion of the Alliance",{
expansion="mists",
mopready=true,
playertitle=50,
},[[
step
Earn the "Exalted Champion of the Exodar" Achievement |achieve 2817/1
|tip Refer to the "Champion of Gnomeregan" guide to accomplish this.
step
Earn the "Exalted Champion of Darnassus" Achievement|achieve 2817/2
|tip Refer to the "Champion of Darnassus" guide to accomplish this.
step
Earn the "Exalted Champion of Ironforge" Achievement|achieve 2817/3
|tip Refer to the "Champion of Ironforge" guide to accomplish this.
step
Earn the "Exalted Champion of Stormwind" Achievement|achieve 2817/4
|tip Refer to the "Champion of Stormwind" guide to accomplish this.
step
Earn the "Exalted Champion of Gnomeregan" Achievement|achieve 2817/5
|tip Refer to the "Champion of Gnomeregan" guide to accomplish this.
step
Earn "The Argent Crusade" Achievement|achieve 2817/6
|tip Refer to the "Argent Cursade" guide to accomplish this.
]])
QuestCore:RegisterGuide("Title Guides\\Cataclysm Titles\\Dungeons & Raids\\Blackwing's Bane",{
expansion="mists",
playertitle=187,
},[[
step
_Inside the Blackwing Descent Heroic Raid:_
kill Nefarian##41376
|tip Heroic mode is more of a DPS race as Nefarian has a huge HP pool.
|tip All adds will deal increased damage.
_"Stolen Power"_
|tip 1 Player (10 Player) or 5 Players (25 Player):
|tip While under the affects of "Dominion", you gain the "Free Your Mind" and "Siphon Power" abilities.
|tip Afflicted will run towards a portal, indicated by a line between in and the player.
|tip The player will die upon reaching it.
|tip Spam "Siphon Power" as much as possible.
|tip DPS should aim to gain as many stacks of the "Siphon Power" buff as possible and break the mind control just before reaching the portal.
|tip Players under the affect of Dominion can't be damaged from Nefarian or healed play team mates.
|tip A player with a slowing affect should hit players affected by Dominion.
|tip Pay attention for Electrocute and break Dominion early if needed.
_"Explosive Cinders"_
|tip 1 Player (10 Player) or 3 Players (25 Player):
|tip If afflicted by this, jump off your pillar away from the group.
|tip Note that this can affect healing and interrupts.
|tip
|tip Adds will take longer to despawn in heroic.
|tip "Shadowblaze Spark" is cast more frequently during phase 3.
|tip Nefarian will land once the first "Chromatic Prototype" is defeated with the 3 minute max duration phase persisting.
Earn the "Heroic: Nefarian" Achievement |achieve 5116
]])
QuestCore:RegisterGuide("Title Guides\\Cataclysm Titles\\Dungeons & Raids\\Defender of a Shattered World",{
expansion="mists",
mopready=true,
playertitle=185,
},[[
step
Earn the "Heroic: Throne of the Tides" Achievement |achieve 5506/1
Earn the "Throne of the Four Winds" Achievement |achieve 5506/2
Earn the "Heroic: Blackrock Caverns" Achievement |achieve 5506/3
Earn the "Heroic: Blackwing Descent" Achievement |achieve 5506/4
Earn the "Heroic: Shadowfang Keep" Achievement |achieve 5506/5
Earn the "Heroic: Deadmines" Achievement |achieve 5506/6
Earn the "Heroic: Lost City of the Tol'vir" Achievement |achieve 5506/7
Earn the "Heroic: Halls of Origination" Achievement |achieve 5506/8
Earn the "Heroic: Grim Batol" Achievement |achieve 5506/9
Earn the "Heroic: The Vortex Pinnacle" Achievement |achieve 5506/10
Earn the "Heroic: The Bastion of Twilight" Achievement |achieve 5506/11
Earn the "Heroic: The Stonecore" Achievement |achieve 5506/12
|tip Refer to the respective guides to accomplish this.
]])
QuestCore:RegisterGuide("Title Guides\\Cataclysm Titles\\Dungeons & Raids\\Destroyer's End",{
expansion="mists",
mopready=true,
playertitle=196,
},[[
step
_Inside the Dragon Soul Raid:_
kill Deathwing##56173
|tip This can be achieved in Normal or Heroic difficulty.
|tip This can be achieved in either 10 or 25 player raid sizes.
Earn the "Destroyer's End" Achievement |achieve 6177
]])
QuestCore:RegisterGuide("Title Guides\\Cataclysm Titles\\Dungeons & Raids\\Dragonslayer",{
expansion="mists",
mopready=true,
playertitle=186,
},[[
step
_Inside of the Heroic: The Bastion of Twilight Raid:_
kill Sinestra##45213
|tip This can be achieved in either 10 or 25 player raid sizes.
Earn the "Heroic: Sinestra" Achievement |achieve 5121
]])
QuestCore:RegisterGuide("Title Guides\\Cataclysm Titles\\Dungeons & Raids\\Firelord",{
expansion="mists",
mopready=true,
playertitle=190,
},[[
step
_Inside the Heroic: Firelands Raid:_
kill Ragnaros##41634
|tip This can be achieved in either 10 or 25 player raid sizes.
Earn the "Heroic: Ragnaros" Achievment |achieve 5803
]])
QuestCore:RegisterGuide("Title Guides\\Cataclysm Titles\\Dungeons & Raids\\Of the Four Winds",{
expansion="mists",
mopready=true,
playertitle=151,
},[[
step
_Inside the Heroic: Throne of the Four Winds Raid:_
kill Al'Akir##46753
|tip This can be achieved in either 10 or 25 player raid sizes.
Earn the "Heroic: Al'Akir" Achievement |achieve 5123
]])
QuestCore:RegisterGuide("Title Guides\\Cataclysm Titles\\Dungeons & Raids\\Savior of Azeroth",{
expansion="mists",
mopready=true,
playertitle=194,
},[[
step
_Inside the Heroic: Dragon Soul Raid:_
kill Deathwing##56173
|tip This can be achieved in either 10 or 25 player raid sizes.
Earn the "Heroic: Madness of Deathwing" Achievement |achieve 6116
]])
QuestCore:RegisterGuide("Title Guides\\Cataclysm Titles\\General\\The Camel-Hoarder",{
expansion="mists",
playertitle=143,
},[[
step
clicknpc Mysterious Camel Figurine##50409
|tip If it's the correct one, you'll be engulf by a whirlwind and transported to Feralas.
|tip Search all of Uldum for these, as they are random spawns.
kill Dormus the Camel-Hoarder##50245 |n
collect 1 Reins of the Grey Riding Camel##63046 |achieve 5767
step
use the Reins of the Grey Riding Camel##63046
Learn the Grey Riding Camel Mount |learnmount 88750
]])
QuestCore:RegisterGuide("Title Guides\\Cataclysm Titles\\Professions\\Archaeology\\Assistant Professor, Associate Professor, and Professor",{
expansion="mists",
mopready=true,
playertitle={148,149,150},
},[[
step
talk Harrison Jones##44238
skillmax Archaeology,75 |goto Stormwind City/0 85.80,25.90
only if Alliance
step
talk Belloc Brightblade##47571
skillmax Archaeology,75 |goto Orgrimmar/1 49.00,70.70
only if Horde
step
_Complete Digsites using the Archaeology Profession:_
|tip They look like small shovel icons on your world map that spawn in random places.
|tip Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
cast Survey##80451
|tip A telescope will appear.
|tip Follow the direction it points in and continue using your Survey ability to eventually find the artifact.
|tip Each dig site has 3 artifacts you can find.
Click the Archaeology Fragments that spawn on the ground
Open your Archaeology profession window |cast Archaeology##78670
Click artifacts to open them, then solve them once you have the required amounts of each
Earn the "I Had It in My Hand" Achievement |achieve 4854
|tip Completing this achievement will earn you the "Assistant Professor" Title.
step
_Complete Digsites using the Archaeology Profession:_
|tip They look like small shovel icons on your world map that spawn in random places.
|tip Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
cast Survey##80451
|tip A telescope will appear.
|tip Follow the direction it points in and continue using your Survey ability to eventually find the artifact.
|tip Each dig site has 3 artifacts you can find.
Click the Archaeology Fragments that spawn on the ground
Open your Archaeology profession window |cast Archaeology##78670
Click artifacts to open them, then solve them once you have the required amounts of each
Earn the "What was Briefly Yours is Now Mine" Achievement |achieve 4855
|tip Completing this achievement will earn you the "Associate Professor" Title.
step
_Complete Digsites using the Archaeology Profession:_
|tip They look like small shovel icons on your world map that spawn in random places.
|tip Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
cast Survey##80451
|tip A telescope will appear.
|tip Follow the direction it points in and continue using your Survey ability to eventually find the artifact.
|tip Each dig site has 3 artifacts you can find.
Click the Archaeology Fragments that spawn on the ground
Open your Archaeology profession window |cast Archaeology##78670
Click artifacts to open them, then solve them once you have the required amounts of each
Earn the "It Belongs in a Museum!" Achievement |achieve 4856
|tip Completing this achievement will earn you the "Professor" Title.
]])
QuestCore:RegisterGuide("Title Guides\\Cataclysm Titles\\Quests\\The Flamebreaker",{
expansion="mists",
playertitle=189,
},[[
step
click the Hero's Call Board##206294
|tip It's a big white stone hanging board with a gold lion head on it.
accept Hero's Call: Mount Hyjal!##27726 |goto Stormwind City/0 62.91,71.53
step
talk Cenarion Emissary Jademoon##15187 |goto Stormwind City/0 82.60,28.22
Select _"Could you please send me to Moonglade, Emissary?"_ |gossip 112850
Teleport to Moonglade |goto Moonglade |noway |c |q 27726
step
talk Emissary Windsong##39865
turnin Hero's Call: Mount Hyjal!##27726 |goto Moonglade/0 45.50,44.90
accept As Hyjal Burns##25316 |goto Moonglade/0 45.50,44.90
step
clicknpc Aronus##39128 |goto Moonglade/0 46.10,45.60
|tip It's a green dragon flying in place in this spot.
You will fly to Mount Hyjal |goto Mount Hyjal/0  |noway |c |q 25316
step
talk Sebelia##40843
home Nordrassil |goto Mount Hyjal/0 63.10,24.10
step
talk Ysera##40289
turnin As Hyjal Burns##25316 |goto Mount Hyjal/0 62.06,24.89
accept Protect the World Tree##25317 |goto Mount Hyjal/0 62.06,24.89
step
talk Anren Shadowseeker##39925
accept The Earth Rises##25460 |goto Mount Hyjal/0 63.98,22.66
step
talk Tholo Whitehoof##40278
accept Inciting the Elements##25370 |goto Mount Hyjal/0 64.06,22.49
stickystart "Kill_Scalding_Rock_Elementals"
step
click Juniper Berries##202754+
|tip They look like small bushes with red berries on them.
collect Juniper Berries##53009+ |n
use the Juniper Berries##53009
|tip Use them on Faerie Dragons.
|tip They look like small blue dragons.
Watch the dialogue
|tip Follow the Faerie Dragons to find Twilight Inciters.
kill 4 Twilight Inciter##39926 |q 25370/1 |goto Mount Hyjal/0 65.71,23.07
step
label "Kill_Scalding_Rock_Elementals"
kill 8 Scalding Rock Elemental##40229 |q 25460/1 |goto Mount Hyjal/0 65.71,23.07
step
talk Tholo Whitehoof##40278
turnin Inciting the Elements##25370 |goto Mount Hyjal/0 64.06,22.49
accept Flames from Above##25574 |goto Mount Hyjal/0 64.06,22.49
step
talk Anren Shadowseeker##39925
turnin The Earth Rises##25460 |goto Mount Hyjal/0 63.98,22.66
step
use Tholo's Horn##55122
Burn the Infiltrators' Encampment |q 25574/1 |goto Mount Hyjal/0 55.80,15.40
step
talk Tholo Whitehoof##40278
turnin Flames from Above##25574 |goto Mount Hyjal/0 64.05,22.49
step
talk Malfurion Stormrage##15362
turnin Protect the World Tree##25317 |goto Mount Hyjal/0 47.73,35.50
accept War on the Twilight's Hammer##25319 |goto Mount Hyjal/0 47.73,35.50
step
talk Windspeaker Tamila##39869
accept The Flameseer's Staff##25472 |goto Mount Hyjal/0 47.65,35.51
stickystart "Kill_Twilight_Flamecallers"
stickystart "Kill_Twilight_Vanquishers"
step
click Charred Staff Fragment##202846+
|tip They look like small white bones.
collect 8 Charred Staff Fragment##54461 |q 25472/1 |goto Mount Hyjal/0 47.35,21.62
step
label "Kill_Twilight_Flamecallers"
kill 4 Twilight Flamecaller##38926 |q 25319/1 |goto Mount Hyjal/0 47.07,26.12
step
label "Kill_Twilight_Vanquishers"
kill 10 Twilight Vanquisher##38913 |q 25319/2 |goto Mount Hyjal/0 47.07,26.12
step
talk Malfurion Stormrage##15362
turnin War on the Twilight's Hammer##25319 |goto Mount Hyjal/0 47.73,35.50
turnin The Flameseer's Staff##25472 |goto Mount Hyjal/0 47.73,35.50
accept Flamebreaker##25323 |goto Mount Hyjal/0 47.73,35.50
step
use the Flameseer's Staff##53107
|tip Use it on Blazebound Elementals.
|tip They look like large fire elementals.
kill 30 Unbound Flame Spirit##33838 |q 25323/1 |goto Mount Hyjal/0 44.50,33.40
|tip They appear after you use the staff on the elementals.
You can find more around [48.34,28.95]
step
talk Malfurion Stormrage##15362
turnin Flamebreaker##25323 |goto Mount Hyjal/0 47.73,35.50
accept The Return of Baron Geddon##25464 |goto Mount Hyjal/0 47.73,35.50
step
use the Flameseer's Staff##54463
|tip Use it on Baron Geddon.
|tip He looks like a large fire elemental that fights around this area.
|tip Run away from Baron Geddon when you see Galrond of the Claw yell in your chat box.
Weaken Baron Geddon #20# Times |q 25464/1 |goto Mount Hyjal/0 43.94,27.32
step
talk Malfurion Stormrage##15362
turnin The Return of Baron Geddon##25464 |goto Mount Hyjal/0 47.73,35.50
step
talk Windspeaker Tamila##39869
accept Emerald Allies##25430 |goto Mount Hyjal/0 47.65,35.51
step
talk Alysra##38917
turnin Emerald Allies##25430 |goto Mount Hyjal/0 48.46,18.97
accept The Captured Scout##25320 |goto Mount Hyjal/0 48.46,18.97
step
talk Scout Larandia##40096
turnin The Captured Scout##25320 |goto Mount Hyjal/0 44.48,18.91
accept Twilight Captivity##25321 |goto Mount Hyjal/0 44.48,18.91
step
kill Twilight Overseer##40123+
collect Twilight Overseer's Key##53139 |q 25321/1 |goto Mount Hyjal/0 44.40,21.04
step
talk Scout Larandia##40096
turnin Twilight Captivity##25321 |goto Mount Hyjal/0 44.48,18.91
accept Return to Alysra##25424 |goto Mount Hyjal/0 44.48,18.91
step
talk Alysra##38917
turnin Return to Alysra##25424 |goto Mount Hyjal/0 48.46,18.97
accept A Prisoner of Interest##25324 |goto Mount Hyjal/0  48.46,18.97
step
Enter the cave |goto Mount Hyjal/0 52.54,17.30 < 15 |walk
talk Captain Saynna Stormrunner##40139
|tip Downstairs inside the cave.
turnin A Prisoner of Interest##25324 |goto Mount Hyjal/0 56.76,18.83
accept Through the Dream##25325 |goto Mount Hyjal/0 56.76,18.83
step
Follow the path back up and leave the cave |goto Mount Hyjal/0 52.54,17.30 < 15 |walk |only if subzone("Hyjal Barrow Dens") and indoors()
Deliver Arch Druid Fandral Staghelm |q 25325/1 |goto Mount Hyjal/0 52.13,17.41
step
talk Alysra##40178
turnin Through the Dream##25325 |goto Mount Hyjal/0 52.20,17.40
accept Return to Nordrassil##25578 |goto Mount Hyjal/0 52.20,17.40
step
talk Ysera##40289
|tip Inside the building.
turnin Return to Nordrassil##25578 |goto Mount Hyjal/0 62.00,24.90
accept The Return of the Ancients##25584 |goto Mount Hyjal/0 62.00,24.90
step
talk Oomla Whitehorn##39429
turnin The Return of the Ancients##25584 |goto Mount Hyjal/0 35.70,19.40
accept Harrying the Hunters##25255 |goto Mount Hyjal/0 35.70,19.40
step
talk Jadi Falaryn##39427
accept End of the Supply Line##25233 |goto Mount Hyjal/0 35.70,19.70
accept In the Rear With the Gear##25234 |goto Mount Hyjal/0 35.70,19.70
stickystart "Kill_Twilight_Hunters"
stickystart "Kill_Twilight_Proveditors"
step
kill Twilight Slavedriver##39438+
|tip They walk along this road with an ogre and multiple slaves.
click Twilight Supplies##202652+
|tip The slaves will drop them after you kill the slavedrivers.
collect 36 Twilight Supplies##52568 |q 25234/1 |goto Mount Hyjal/0 37.75,22.92
step
label "Kill_Twilight_Hunters"
kill 6 Twilight Hunter##39437 |q 25255/1 |goto Mount Hyjal/0 37.75,22.92
step
label "Kill_Twilight_Proveditors"
kill 4 Twilight Proveditor##39436 |q 25233/1 |goto Mount Hyjal/0 37.75,22.92
|tip They look like ogres that walk along this road.
step
talk Jadi Falaryn##39427
turnin End of the Supply Line##25233 |goto Mount Hyjal/0 35.70,19.70
turnin In the Rear With the Gear##25234 |goto Mount Hyjal/0  35.70,19.70
accept The Voice of Goldrinn##25268 |goto Mount Hyjal/0 35.70,19.70
step
talk Oomla Whitehorn##39429
turnin Harrying the Hunters##25255 |goto Mount Hyjal/0 35.70,19.40
step
talk Ian Duran##39433
turnin The Voice of Goldrinn##25268 |goto Mount Hyjal/0 30.10,31.30
accept Goldrinn's Ferocity##25271 |goto Mount Hyjal/0 30.10,31.30
step
kill Lycanthoth Vandal##39445+
|tip They look like worgen.
collect 6 Polluted Incense##52658 |q 25271/1 |goto Mount Hyjal/0 29.30,30.30
step
talk Ian Duran##39433
turnin Goldrinn's Ferocity##25271 |goto Mount Hyjal/0 30.10,31.30
accept Lycanthoth the Corruptor##25273 |goto Mount Hyjal/0 30.10,31.30
step
use Lycanthoth's Incense##52682
|tip Inside the small cave.
kill Lycanthoth##39446 |q 25273/1 |goto Mount Hyjal/0 32.40,37.30
step
talk Spirit of Goldrinn##39627
|tip Inside the small cave.
turnin Lycanthoth the Corruptor##25273 |goto Mount Hyjal/0 32.30,37.00
step
talk Spirit of Goldrinn##39627
accept The Shrine Reclaimed##25280 |goto Mount Hyjal/0 29.60,29.30
step
talk Ian Duran##39433
turnin The Shrine Reclaimed##25280 |goto Mount Hyjal/0 28.20,29.80
accept Cleaning House##25278 |goto Mount Hyjal/0  28.20,29.80
step
talk Rio Duran##39434
accept From the Mouth of Madness##25297 |goto Mount Hyjal/0 28.20,29.90
step
talk Royce Duskwhisper##39435
|tip He walks around this area.
accept The Eye of Twilight##25300 |goto Mount Hyjal/0 28.60,30.20
step
click Bitterblossom##202703
|tip They look like plants with purple flowers on them.
collect Bitterblossom##52727 |q 25297/2 |goto Mount Hyjal/0 28.90,32.20
stickystart "Slay_Minions_Of_Gargol"
step
click Stonebloom##202702+
|tip They look like large peach colored round plants.
collect Stonebloom##52726 |q 25297/1 |goto Mount Hyjal/0 27.60,34.20
step
Click the Eye of Twilight
turnin The Eye of Twilight##25300 |goto Mount Hyjal/0 27.20,35.20
accept Mastering Puppets##25301 |goto Mount Hyjal/0 27.20,35.20
step
click Darkflame Ember##202705
|tip Inside the brazier.
collect Darkflame Ember##52728 |q 25297/3 |goto Mount Hyjal/0 28.40,35.80
step
click Twilight Cauldron##202706
turnin From the Mouth of Madness##25297 |goto Mount Hyjal/0  28.40,36.40
accept Free Your Mind, the Rest Follows##25298 |goto Mount Hyjal/0 28.40,36.40
stickystart "Free_Twilight_Servitors"
step
Enter the cave |goto Mount Hyjal/0  27.00,36.00 < 10 |walk
talk Kristoff Manheim##39797
|tip Inside the cave.
accept Gar'gol's Gotta Go##25328 |goto Mount Hyjal/0 27.20,40.80 |indoors Gar'gol's Hovel
step
click Gar'gol's Personal Treasure Chest##204580
|tip Inside the cave.
collect Rusted Skull Key##52789 |q 25328/1 |goto Mount Hyjal/0 26.50,38.50 |indoors Gar'gol's Hovel
step
click The Twilight Apocrypha##202712
|tip Inside the cave.
turnin Mastering Puppets##25301 |goto Mount Hyjal/0  25.80,41.70
accept Elementary!##25303 |goto Mount Hyjal/0  25.80,41.70
step
clicknpc Crucible of Fire##39730
|tip Inside the cave.
Activate the Crucible of Fire |q 25303/3 |goto Mount Hyjal/0 26.00,41.80 |indoors Gar'gol's Hovel
step
clicknpc Crucible of Earth##39737
|tip Inside the cave.
Activate the Crucible of Earth |q 25303/1 |goto Mount Hyjal/0 25.70,41.70 |indoors Gar'gol's Hovel
step
clicknpc Crucible of Air##39736
|tip Inside the cave.
Activate the Crucible of Air |q 25303/2 |goto Mount Hyjal/0 25.80,41.90 |indoors Gar'gol's Hovel
step
clicknpc Crucible of Water##39738
|tip Inside the cave.
Activate the Crucible of Water |q 25303/4 |goto Mount Hyjal/0 26.00,41.60 |indoors Gar'gol's Hovel
step
click The Twilight Apocrypha##202712
|tip Inside the cave.
turnin Elementary!##25303 |goto Mount Hyjal/0 25.81,41.64
accept Return to Duskwhisper##25312 |goto Mount Hyjal/0 25.81,41.64
step
talk Kristoff Manheim##39797
turnin Gar'gol's Gotta Go##25328 |goto Mount Hyjal/0 27.20,40.80
accept Get Me Outta Here!##25332 |goto Mount Hyjal/0 27.20,40.80
step
Leave the cave |goto Mount Hyjal/0 26.85,36.36 < 15 |walk |only if subzone("Gar'gol's Hovel") and indoors()
Escort Kristoff Out |q 25332/1 |goto Mount Hyjal/0 27.10,36.00
step
label "Free_Twilight_Servitors"
talk Twilight Servitor##39644+
|tip They look like various friendly NPCs.
|tip Inside and outside the cave. |notinsticky
Choose _<Administor the draught.>_
Free #8# Twilight Servitors |q 25298/1 |goto Mount Hyjal/0 26.85,36.35
step
label "Slay_Minions_Of_Gargol"
Kill Hovel enemies around this area
|tip They look like ogres.
|tip Inside and outside the cave. |notinsticky
Slay #8# Minions of Gar'gol |q 25278/1 |goto Mount Hyjal/0 26.85,36.35
'|kill Hovel Brute##39642, Hovel Shadowcaster##39643
step
Leave the cave |goto Mount Hyjal/0 26.85,36.36 < 15 |walk |only if subzone("Gar'gol's Hovel") and indoors()
talk Royce Duskwhisper##39435
|tip He walks around this area.
turnin Return to Duskwhisper##25312 |goto Mount Hyjal/0 28.60,30.20
turnin Get Me Outta Here!##25332 |goto Mount Hyjal/0 28.60,30.20
step
talk Ian Duran##39433
turnin Cleaning House##25278 |goto Mount Hyjal/0 28.20,29.80
accept Sweeping the Shelf##25352 |goto Mount Hyjal/0 28.20,29.80
accept Lightning in a Bottle##25353 |goto Mount Hyjal/0 28.20,29.80
step
talk Rio Duran##39434
turnin Free Your Mind, the Rest Follows##25298 |goto Mount Hyjal/0 28.20,29.90
stickystart "Kill_Howling_Riftdwellers"
stickystart "Kill_Twilight_Stormcallers"
step
click Lightning Channel##202743+
|tip They look like metal poles with lights on top of them.
collect Charged Condenser Jar##52834 |q 25353/1 |goto Mount Hyjal/0  27.40,39.20
step
label "Kill_Howling_Riftdwellers"
kill 5 Howling Riftdweller##39844 |q 25352/2 |goto Mount Hyjal/0 28.17,39.83
|tip They look like elementals.
step
label "Kill_Twilight_Stormcallers"
kill 8 Twilight Stormcaller##39843 |q 25352/1 |goto Mount Hyjal/0 28.17,39.83
|tip They look like humans.
step
use the Totem of Goldrinn##52853
_Next to you:_
talk Spirit of Goldrinn##39627
turnin Lightning in a Bottle##25353
accept Into the Maw!##25618
step
Teleport to the Firelands Forgeworks |condition subzone("Firelands Forgeworks") |goto Mount Hyjal/0 26.09,41.09 |q 25618
|tip Walk into the swirling portal.
step
talk Jordan Olafson##40834
|tip Inside the cave.
turnin Into the Maw!##25618 |goto Mount Hyjal/0 26.30,41.90
accept Forged of Shadow and Flame##25575 |goto Mount Hyjal/0 26.30,41.90
accept Crushing the Cores##25577 |goto Mount Hyjal/0 26.30,41.90
step
talk Yargra Blackscar##40837
|tip Inside the cave.
accept Rage of the Wolf Ancient##25576 |goto Mount Hyjal/0 26.32,41.95
stickystart "Destroy_Twilight_Arms_Crates"
stickystart "Kill_Dark_Iron_Laborers"
step
kill Searing Guardian##40841+
|tip They look like fire elementals.
|tip Inside the cave.
collect Smoldering Core##55123+ |n
use the Smoldering Core##55123+
|tip Use them next to Twilight Anvils.
|tip They look like small grey metal blacksmith anvils.
Destroy #8# Smoldering Cores |q 25577/1 |goto Mount Hyjal/0 28.85,40.68
step
label "Destroy_Twilight_Arms_Crates"
click Twilight Arms Crate##9393+
|tip They look like grey wooden boxes.
Destroy #10# Twilight Arms Crates |q 25575/1 |goto Mount Hyjal/0 28.85,40.68
step
label "Kill_Dark_Iron_Laborers"
kill 12 Dark Iron Laborer##40838 |q 25576/1 |goto Mount Hyjal/0 28.89,40.29
|tip They look like dwarves.
|tip Inside the cave. |notinsticky
step
talk Yargra Blackscar##40837
|tip Inside the cave.
turnin Rage of the Wolf Ancient##25576 |goto Mount Hyjal/0 26.32,41.95
step
talk Jordan Olafson##40834
|tip Inside the cave.
turnin Forged of Shadow and Flame##25575 |goto Mount Hyjal/0 26.30,41.90
turnin Crushing the Cores##25577 |goto Mount Hyjal/0  26.30,41.90
accept Cindermaul, the Portal Master##25599 |goto Mount Hyjal/0 26.30,41.90
stickystart "Collect_Tome_Of_Openings"
step
kill Cindermaul##40844 |q 25599/1 |goto Mount Hyjal/0 30.74,41.70
|tip Inside the cave.
step
label "Collect_Tome_Of_Openings"
click Battered Stone Chest##203089
|tip It appears after you kill Cindermaul.
|tip Inside the cave. |notinsticky
collect Tome of Openings##55136 |q 25599/2 |goto Mount Hyjal/0 30.74,41.70
step
talk Jordan Olafson##40834
|tip Inside the cave.
turnin Cindermaul, the Portal Master##25599 |goto Mount Hyjal/0 26.30,41.90
accept Forgemaster Pyrendius##25600 |goto Mount Hyjal/0  26.30,41.90
step
kill Forgemaster Pyrendius##40845 |q 25600/1 |goto Mount Hyjal/0 31.90,46.27
|tip Click the Portal Runes on the ground to activate them.
|tip They look like brown metal plates.
|tip Lure Forgemaster Pyrendius onto the activated Portal Runes to kill him.
step
talk Jordan Olafson##40834
|tip Inside the cave.
turnin Forgemaster Pyrendius##25600 |goto Mount Hyjal/0 26.30,41.90
accept Return from the Firelands##25611 |goto Mount Hyjal/0 26.30,41.90
step
Return to the Lightning Ledge |condition subzone("Lightning Ledge") |goto Mount Hyjal/0 25.92,40.92 |q 25352
|tip Walk into the swirling portal.
|tip Inside the cave.
step
talk Ian Duran##39433
turnin Sweeping the Shelf##25352 |goto Mount Hyjal/0 28.20,29.80
turnin Return from the Firelands##25611 |goto Mount Hyjal/0 28.20,29.80
step
talk Vision of Ysera##46987
accept Avian's Legacy##27874 |goto Mount Hyjal/0 28.27,29.74
|only if not haveq(25985) or completedq(25985)
step
talk Rio Duran##39434
accept The Fires of Mt. Hyjal##25630 |goto Mount Hyjal/0 28.20,29.90
step
talk Laina Nightsky##39927
turnin The Fires of Mt. Hyjal##25630 |goto Mount Hyjal/0 19.00,40.90
accept Fighting Fire With ... Anything##25381 |goto Mount Hyjal/0 19.00,40.90
accept Disrupting the Rituals##25382 |goto Mount Hyjal/0 19.00,40.90
step
talk Mylune##39930
accept Save the Wee Animals##25385 |goto Mount Hyjal/0 19.20,37.90
step
talk Matoclaw##39928
accept If You're Not Against Us...##25404 |goto Mount Hyjal/0 19.00,37.00
step
talk Tyrus Blackhorn##39933
Select _"Yes, Blackhorn. I've been sent to request your aid, if you are willing."_
Persuade Blackhorn |q 25404/1 |goto Mount Hyjal/0 22.26,44.92
step
talk Tyrus Blackhorn##39933
turnin If You're Not Against Us...##25404 |goto Mount Hyjal/0 22.30,44.90
accept Seeds of Their Demise##25408 |goto Mount Hyjal/0 22.30,44.90
step
kill Wailing Weed##40066+
collect 8 Bileberry##53102 |q 25408/1 |goto Mount Hyjal/0 21.80,43.70
step
talk Tyrus Blackhorn##39933
turnin Seeds of Their Demise##25408 |goto Mount Hyjal/0 22.30,44.90
accept A New Master##25411 |goto Mount Hyjal/0 22.30,44.90
stickystart "Kill_Twilight_Inferno_Lords"
stickystart "Collect_Frightened_Animals"
stickystart "Kill_Raging_Firestorms"
step
kill Twilight Inferno Lord##39974+
use the Bottled Bileberry Brew##53120
|tip Use it on their corpses.
Subjugate a Twilight Inferno Lord |q 25411/1 |goto Mount Hyjal/0 14.32,45.45
step
_Next to you:_
talk Subjugated Inferno Lord##40093
turnin A New Master##25411
accept The Name Never Spoken##25412
step
click Southern Firestone##202763
Examine the Southern Firestone |q 25412/3 |goto Mount Hyjal/0 14.30,45.42
step
click Central Firestone##202764
Examine the Central Firestone |q 25412/2 |goto Mount Hyjal/0 11.64,41.52
step
click Northern Firestone##202765
Examine the Northern Firestone |q 25412/1 |goto Mount Hyjal/0 9.65,36.47
step
label "Kill_Twilight_Inferno_Lords"
kill 6 Twilight Inferno Lord##39974 |q 25382/1 |goto Mount Hyjal/0 13.16,41.88
|tip They look like orcs wearing robes.
step
label "Collect_Frightened_Animals"
clicknpc Terrified Squirrel##39998+
|tip They look like small squirrels running around.
clicknpc Panicked Bunny##39997+
|tip They looke like small rabbits running around.
collect 10 Frightened Animal##53060 |q 25385/1 |goto Mount Hyjal/0 13.16,41.88
step
label "Kill_Raging_Firestorms"
kill 10 Raging Firestorm##39939 |q 25381/1 |goto Mount Hyjal/0 13.16,41.88
|tip They look like armored fire elementals.
step
talk Laina Nightsky##39927
turnin Fighting Fire With ... Anything##25381 |goto Mount Hyjal/0 19.00,40.90
turnin Disrupting the Rituals##25382 |goto Mount Hyjal/0 19.00,40.90
step
talk Mylune##39930
turnin Save the Wee Animals##25385 |goto Mount Hyjal/0 19.20,37.90
accept Oh, Deer!##25392 |goto Mount Hyjal/0 19.20,37.90
step
talk Tyrus Blackhorn##39933
turnin The Name Never Spoken##25412 |goto Mount Hyjal/0 22.30,44.90
accept Black Heart of Flame##25428 |goto Mount Hyjal/0 22.30,44.90
step
use the Charred Branch##53464
kill Thol'embaar##40107
collect Black Heart of Thol'embaar##53454 |q 25428/1 |goto Mount Hyjal/0 12.60,41.21
step
clicknpc Injured Fawn##39999+
|tip They look like tiny deer laying on the ground.
|tip You can do this mounted, and you can fly without losing them.
|tip You can have 3 of them following you at once.
Escort #3# Injured Fawns Home |q 25392/1 |goto Mount Hyjal/0 12.60,41.21
Lead the them to Mylune at [19.22,37.89] |notravel
step
talk Mylune##39930
turnin Oh, Deer!##25392 |goto Mount Hyjal/0 19.20,37.90
step
talk Tyrus Blackhorn##39933
turnin Black Heart of Flame##25428 |goto Mount Hyjal/0 22.30,44.90
step
talk Laina Nightsky##39927
accept Last Stand at Whistling Grove##25940 |goto Mount Hyjal/0 19.00,40.90
step
talk Keeper Taldros##39932
turnin Last Stand at Whistling Grove##25940 |goto Mount Hyjal/0 13.60,32.80
accept The Bears Up There##25462 |goto Mount Hyjal/0 13.60,32.80
step
clicknpc Climbing Tree##40190+
|tip They look like wooden ladders at the base of trees around this area.
|tip Use the Climb Up and Climb Down abilities to move around on the trees.
clicknpc Hyjal Bear Cub##40240+
|tip They look like small bears in the trees.
|tip Use the "Chuck-a-bear" ability on your action bar to throw the cubs.
|tip Aim the yellow arrow at the leather skin trampoline on the ground nearby.
|tip You have to throw them from the top of the trees.
Rescue #6# Hyjal Bear Cubs |q 25462/1 |goto Mount Hyjal/0 14.29,33.05
step
talk Keeper Taldros##39932
|tip Use the "Climb Down" ability on your action bar to climb down from the tree.
turnin The Bears Up There##25462 |goto Mount Hyjal/0 13.60,32.80
accept Smashing Through Ashes##25490 |goto Mount Hyjal/0 13.60,32.80
step
kill 8 Charbringer##40336 |q 25490/1 |goto Mount Hyjal/0 21.60,59.10
|tip They look like nagas.
You can find more around [24.18,60.52]
step
talk Arch Druid Hamuul Runetotem##39858
turnin Smashing Through Ashes##25490 |goto Mount Hyjal/0 27.10,62.60
accept Durable Seeds##25491 |goto Mount Hyjal/0 27.10,62.60
accept Fresh Bait##25493 |goto Mount Hyjal/0 27.10,62.60
step
talk Rayne Feathersong##40331
accept Firebreak##25492 |goto Mount Hyjal/0 27.10,63.00
stickystart "Collect_Hyjal_Seedlings"
stickystart "Kill_Lava_Surgers"
step
kill Core Hound##46910+
|tip They look like large orange and black demon dogs with 2 heads.
|tip They are more uncommon, but you can find more all around this area.
collect 4 Core Hound Entrails##54609 |q 25493/1 |goto Mount Hyjal/0 37.22,57.75
step
label "Collect_Hyjal_Seedlings"
click Scorched Soil##202884+
|tip They look like piles of brown dirt.
collect 10 Hyjal Seedling##54574 |q 25491/1 |goto Mount Hyjal/0 37.22,57.75
step
label "Kill_Lava_Surgers"
kill 10 Lava Surger##46911 |q 25492/1 |goto Mount Hyjal/0 37.22,57.75
|tip They look like rock elementals.
step
talk Arch Druid Hamuul Runetotem##39858
turnin Durable Seeds##25491 |goto Mount Hyjal/0 27.10,62.60
turnin Fresh Bait##25493 |goto Mount Hyjal/0 27.10,62.60
accept Hell's Shells##25507 |goto Mount Hyjal/0 27.10,62.60
step
talk Rayne Feathersong##40331
turnin Firebreak##25492 |goto Mount Hyjal/0 27.10,63.00
accept Prepping the Soil##25502 |goto Mount Hyjal/0 27.10,63.00
step
click Flameward
Activate the Flameward |q 25502/1 |goto Mount Hyjal/0 33.02,64.54
step
Kill the enemies that attack in waves
Defend the Flameward |q 25502/2 |goto Mount Hyjal/0 33.02,64.54
'|kill Ashbearer##46925
step
use the Heap of Core Hound Innards##54744
|tip Use it near Nemesis.
|tip It looks like a huge turtle that walks around this area.
clicknpc Nemesis##40340
|tip Wait until he eats the meat on the ground and becomes friendly.
collect Nemesis Shell Fragment##54745 |q 25507/1 |goto Mount Hyjal/0 39.30,54.10
step
talk Arch Druid Hamuul Runetotem##39858
turnin Hell's Shells##25507 |goto Mount Hyjal/0 27.10,62.60
accept Tortolla Speaks##25510 |goto Mount Hyjal/0 27.10,62.60
step
talk Rayne Feathersong##40331
turnin Prepping the Soil##25502 |goto Mount Hyjal/0 27.10,63.00
step
talk Tortolla##41504
turnin Tortolla Speaks##25510 |goto Mount Hyjal/0 24.70,55.70
accept Breaking the Bonds##25514 |goto Mount Hyjal/0 24.70,55.70
accept Children of Tortolla##25519 |goto Mount Hyjal/0 24.70,55.70
step
click Rod of Subjugation##40545
|tip You will be attacked.
Disable Rod of Subjugation 1 |q 25514/1 |goto Mount Hyjal/0 23.80,56.00
step
click Rod of Subjugation##40545
|tip You will be attacked.
Disable Rod of Subjugation 2 |q 25514/2 |goto Mount Hyjal/0 25.30,54.80
step
talk Tortolla##41504
turnin Breaking the Bonds##25514 |goto Mount Hyjal/0 24.70,55.70
step
kill Deep Corruptor##40561+
|tip They look like octopus people.
|tip Underwater.
Save 6 Tortolla's Eggs |q 25519/1 |goto Mount Hyjal/0 24.40,57.40
step
talk Tortolla##41504
turnin Children of Tortolla##25519 |goto Mount Hyjal/0 24.70,55.70
accept An Ancient Awakens##25520 |goto Mount Hyjal/0 24.70,55.70
step
talk Arch Druid Hamuul Runetotem##39858
turnin An Ancient Awakens##25520 |goto Mount Hyjal/0 27.10,62.60
step
talk Choluna##41005
|tip Inside the building.
turnin Aviana's Legacy##27874 |goto Mount Hyjal/0 44.44,46.23
accept An Offering for Aviana##25663 |goto Mount Hyjal/0 44.44,46.23
step
talk Thisalee Crow##41006
|tip Inside the building.
accept The Wormwing Problem##25655 |goto Mount Hyjal/0 42.17,45.43
accept Scrambling for Eggs##25656 |goto Mount Hyjal/0 42.17,45.43
step
use the Sacred Nectar##55208
Offer the Nectar |q 25663/1 |goto Mount Hyjal/0 40.35,44.29
step
talk Mysterious Winged Spirit##41068
turnin An Offering for Aviana##25663 |goto Mount Hyjal/0 40.30,44.30
accept A Plea From Beyond##25665 |goto Mount Hyjal/0 40.30,44.30
stickystart "Slay_Wormwing_Harpies"
step
click Stolen Hyjal Egg##203143+
|tip They look like large white eggs.
collect 8 Hyjal Egg##55189 |q 25656/1 |goto Mount Hyjal/0 37.45,44.12
You can find more around [32.71,46.85]
step
label "Slay_Wormwing_Harpies"
kill Wormwing Screecher##41027, Wormwing Swifttalon##41028
|tip They look like harpies.
Slay #10# Wormwing Harpies |q 25655/1 |goto Mount Hyjal/0 37.45,44.12
step
talk Thisalee Crow##41006
|tip Inside the building.
turnin The Wormwing Problem##25655 |goto Mount Hyjal/0 42.17,45.43
turnin Scrambling for Eggs##25656 |goto Mount Hyjal/0 42.17,45.43
accept A Bird in Hand##25731 |goto Mount Hyjal/0 42.17,45.43
step
talk Choluna##41005
|tip Inside the building.
turnin A Plea From Beyond##25665 |goto Mount Hyjal/0 44.40,46.20
accept A Prayer and a Wing##25664 |goto Mount Hyjal/0 44.40,46.20
step
click Harpy Signal Fire##7290
kill Marion Wormwing##41112
|tip She will eventually become friendly.
Capture Marion Wormwing |q 25731/1 |goto Mount Hyjal/0 38.33,44.14
step
talk Marion Wormwing##41112
|tip She will be where you defeated her.
Select _"Why are you stealing eggs?"_
Interrogate Marion Wormwing |q 25731/2 |goto Mount Hyjal/0 38.33,44.14
step
use the Enormous Bird Call##55211
|tip It's a huge bird nest sitting on top of this mountain peak.
kill Blaithe##41084
collect Ancient Feather##55210 |q 25664/1 |goto Mount Hyjal/0 35.70,42.30
step
talk Thisalee Crow##41006
|tip Inside the building.
turnin A Bird in Hand##25731 |goto Mount Hyjal/0 42.17,45.43
step
talk Choluna##41005
|tip Inside the building.
turnin A Prayer and a Wing##25664 |goto Mount Hyjal/0 44.40,46.20
step
talk Skylord Omnuron##40997
|tip Upstairs inside the building.
accept Fact-Finding Mission##25740 |goto Mount Hyjal/0 43.50,45.90
step
talk Thisalee Crow##41006
turnin Fact-Finding Mission##25740 |goto Mount Hyjal/0 32.80,70.80
accept Sethria's Brood##25746 |goto Mount Hyjal/0 32.80,70.80
accept A Gap in Their Armor##25758 |goto Mount Hyjal/0 32.80,70.80
stickystart "Collect_Twilight_Armor_Plates"
stickystart "Slay_Sethrias_Minions"
step
click the Codex of Shadows##203207
accept The Codex of Shadows##25763 |goto Mount Hyjal/0 31.30,77.10
step
label "Collect_Twilight_Armor_Plates"
click Twilight Armor Plate##203198+
|tip They look like tan metal plates.
collect 8 Twilight Armor Plate##55809 |q 25758/1 |goto Mount Hyjal/0 30.60,77.30
You can find more around [32.26,90.66]
step
talk Thisalee Crow##41006
turnin Sethria's Brood##25746 |goto Mount Hyjal/0 32.80,70.80
turnin A Gap in Their Armor##25758 |goto Mount Hyjal/0 32.80,70.80
accept Disassembly##25761 |goto Mount Hyjal/0 32.80,70.80
turnin The Codex of Shadows##25763 |goto Mount Hyjal/0 32.80,70.80
accept Egg Hunt##25764 |goto Mount Hyjal/0 32.80,70.80
stickystart "Unveil_And_Defend_Avianas_Egg"
step
use Thisalee's Shiv##55883
|tip Use it on Twilight Juggernauts.
|tip They look like larger dragonkin trapped in a purple spell.
|tip Use it 5 times on each of them to remove their armor.
|tip This will allow you to kill them easier.
kill 3 Twilight Juggernaut##41031 |q 25761/1 |goto Mount Hyjal/0 30.59,78.55
You can find more around [Mount Hyjal/0 32.26,90.66]
step
label "Unveil_And_Defend_Avianas_Egg"
click Shadow Cloak Generator##203208+
|tip They look like spinning metal machines with blue light glowing upward out of them.
|tip You will eventually find Aviana's Egg in one of them.
Kill the enemies that attack in waves
|tip The enemies will attack after you find the egg.
Unveil and Defend Aviana's Egg |q 25764/1 |goto Mount Hyjal/0 30.59,78.55
You can find more around [Mount Hyjal/0 32.26,90.66]
step
label "Slay_Sethrias_Minions"
kill Twilight Dragonkin##41029, Twilight Dragonkin Armorers##41030
|tip They look like dragonkin.
Slay #12# of Sethria's Minions |q 25746/1 |goto Mount Hyjal/0 30.60,77.30
You can find more around [Mount Hyjal/0 32.26,90.66]
step
talk Thisalee Crow##41006
turnin Disassembly##25761 |goto Mount Hyjal/0 32.80,70.80
turnin Egg Hunt##25764 |goto Mount Hyjal/0 32.80,70.80
accept Sethria's Demise##25776 |goto Mount Hyjal/0 32.80,70.80
step
use Thisalee's Signal Rocket##56003
|tip Begin fighting Sethria, don't worry that she's elite.
|tip She will eventually turn into a dragon.
|tip Use the item when she turns into a dragon.
|tip Allies will come to help you fight her.
kill Sethria |q 25776/1 |goto Mount Hyjal/0 35.53,97.96
step
talk Thisalee Crow##41006
turnin Sethria's Demise##25776 |goto Mount Hyjal/0 32.80,70.80
accept Return to the Shrine##25795 |goto Mount Hyjal/0 32.80,70.80
step
talk Choluna##41005
turnin Return to the Shrine##25795 |goto Mount Hyjal/0 44.40,46.20
accept An Ancient Reborn##25807 |goto Mount Hyjal/0 44.40,46.20
step
use Herald's Incense##56016
|tip Inside the building.
Burn Herald's Incense |q 25807/1 |goto Mount Hyjal/0 44.30,48.00
step
talk Aviana##41308
|tip Inside the building.
turnin An Ancient Reborn##25807 |goto Mount Hyjal/0 44.20,47.80
step
talk Morthis Whisperwing##41003
|tip Inside the building.
accept The Hatchery Must Burn##25810 |goto Mount Hyjal/0 44.10,45.90
step
talk Vision of Ysera##47002
|tip Inside the building.
accept The Last Living Lorekeeper##25830 |goto Mount Hyjal/0 43.80,46.00
If you cannot pick up the quest, go here to get it: [Mount Hyjal/0 62.00,24.90]
step
Teleport to the Firelands Hatchery |condition subzone("Firelands Hatchery") |goto Mount Hyjal/0 39.16,58.26 |q 25810
|tip Walk into the swirling portal.
step
talk Farden Talonshrike##40578
|tip Inside the cave.
turnin The Hatchery Must Burn##25810 |goto Mount Hyjal/0 37.20,56.20
accept Flight in the Firelands##25523 |goto Mount Hyjal/0 37.20,56.20
step
Click the Twilight Weapon Rack
|tip It's a wooden stand with some weapons leaning against it.
collect Twilight Firelance##52716 |q 25523 |goto Mount Hyjal/0 37.20,56.10
step
Equip the Twilight Firelance |equipped Twilight Firelance##52716 |q 25523
step
clicknpc Aviana's Guardian##40723
|tip Inside the cave.
Ride Aviana's Guardian |invehicle |goto Mount Hyjal/0 37.38,56.00 |q 25523
step
Visit the Guardian Flag |q 25523/1 |goto Mount Hyjal/0 36.50,53.27
|tip Use the "Flap" ability on your action bar repeatedly to fly.
|tip It looks like a green flag on the floating rock inside the cave.
step
talk Farden Talonshrike##40578
|tip Inside the cave.
|tip Use the "Flap" ability on your action bar repeatedly to fly.
turnin Flight in the Firelands##25523 |goto Mount Hyjal/0 37.20,56.20
accept Wave One##25525 |goto Mount Hyjal/0 37.20,56.20
step
Joust #10# Twilight Knight Riders |q 25525/1 |goto Mount Hyjal/0 36.50,52.40
|tip Use the "Flap" ability on your action bar repeatedly to fly.
|tip They are flying on birds around this area inside the cave.
|tip Get close to them to joust them.
step
talk Farden Talonshrike##40578
|tip Inside the cave.
|tip Use the "Flap" ability on your action bar repeatedly to fly.
turnin Wave One##25525 |goto Mount Hyjal/0 37.20,56.20
accept Wave Two##25544 |goto Mount Hyjal/0 37.20,56.20
step
Joust #10# Twilight Lancers |q 25544/1 |goto Mount Hyjal/0 36.50,52.40
|tip Use the "Flap" ability on your action bar repeatedly to fly.
|tip They are flying on birds inside the cave.
|tip Get close to them to joust them.
step
talk Farden Talonshrike##40578
|tip Inside the cave.
|tip Use the "Flap" ability on your action bar repeatedly to fly.
turnin Wave Two##25544 |goto Mount Hyjal/0 37.20,56.20
accept Egg Wave##25560 |goto Mount Hyjal/0 37.20,56.20
step
Destroy #40# Firelands Eggs |q 25560/1 |goto Mount Hyjal/0 32.75,57.79
|tip They look like blue eggs on this ledge.
|tip Run over them to destroy them.
|tip You can find more on other ledges and islands inside the cave.
step
talk Farden Talonshrike##40578
|tip Inside the cave.
|tip Use the "Flap" ability on your action bar repeatedly to fly.
turnin Egg Wave##25560 |goto Mount Hyjal/0 37.20,56.20
accept Return to Aviana##25832 |goto Mount Hyjal/0 37.20,56.20
step
Equip Your Normal Weapon
Click Here After Equipping Your Normal Weapon |confirm |q 25832
step
Return to the Flamewake |condition subzone("The Flamewake") |goto Mount Hyjal/0 39.12,57.55 |q 25832
|tip Walk into the swirling portal.
|tip Inside the cave.
step
talk Nordu##41381
turnin The Last Living Lorekeeper##25830 |goto Mount Hyjal/0 27.40,55.60
accept Firefight##25842 |goto Mount Hyjal/0 27.40,55.60
step
kill 5 Fiery Tormentor##41396 |q 25842/1 |goto Mount Hyjal/0 27.10,54.50
step
talk Nordu##41381
turnin Firefight##25842 |goto Mount Hyjal/0 27.40,55.60
accept Aessina's Miracle##25372 |goto Mount Hyjal/0 27.40,55.60
step
talk Arch Druid Hamuul Runetotem##39858
turnin Aessina's Miracle##25372 |goto Mount Hyjal/0 19.50,37.80
step
talk Aviana##41308
|tip Inside the building, on the ground floor.
turnin Return to Aviana##25832 |goto Mount Hyjal/0 44.33,47.98
step
Earn the "Ready for Raiding II" Achievement |achieve 5879/1
Earn the "Death From Above" Achievement |achieve 5879/2
Earn the "Fireside Chat" Achievement |achieve 5879/3
Earn the "King of the Spider-Hill" Achievement |achieve 5879/4
Earn the "Infernal Ambassadors" Achievement |achieve 5879/5
Earn the "The Fiery Lords of Sethria's Roost" Achievement |achieve 5879/6
Earn the "The Molten Front Offensive" Achievement |achieve 5879/7
Earn the "Have... Have We Met?" Achievement |achieve 5879/8
Earn the "Gang War" Achievement |achieve 5879/9
Earn the "Legacy of Leyara" Achievement |achieve 5879/10
Earn the "Ludicrous Speed" Achievement |achieve 5879/11
Earn the "Flawless Victory" Achievement |achieve 5879/12
Earn the "Master of the Molten Flow" Achievement |achieve 5879/13
Earn the "And the Meek Shall Inherit Kalimdor" Achievement |achieve 5879/14
]])
