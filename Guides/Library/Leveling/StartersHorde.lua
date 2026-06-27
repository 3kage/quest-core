-- Bundled QuestCore guide
if not QuestCore then return end

if UnitFactionGroup("player")~="Horde" then return end
QuestCore:RegisterGuide("Leveling Guides\\Starter Guides\\Exile's Reach (1-10)",{
description="This guide will assist you in completing the Exile's Reach questline.",
condition_suggested=function() return level >= 1 and level <= 10 and QC.InPhase("exilesreach") end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\Intro & The Waking Shores (Full Zone)",
},[[
step
_On the Ship Deck:_
talk Thrall##166573
accept Warming Up##59926
step
_On the Ship Deck:_
kill Combat Dummy##160737
Destroy a Combat Dummy |q 59926/1
step
_On the Ship Deck:_
talk Thrall##166573
turnin Warming Up##59926
step
_On the Ship Deck:_
talk Grunt Throg##166583
accept Stand Your Ground##59927
step
_On the Ship Deck:_
Watch the dialogue
kill Grunt Throg##166814 |usename Grunt Throg##166583
Spar with Grunt Throg |q 59927/1
step
_On the Ship Deck:_
Watch the dialogue
talk  Grunt Throg##166583
turnin Stand Your Ground##59927
accept Brace for Impact##59928
step
_On the Ship Deck:_
Watch the dialogue
talk Thrall##166827
turnin Brace for Impact##59928
step
Reach the Murloc Hideaway |complete subzone("Murloc Hideaway") |q 59929 |future
step
talk Thrall##166782
accept Murloc Mania##59929 |goto Exile's Reach/0 61.88,82.89
step
kill Murloc Watershaper##150229, Murloc Spearhunter##150228
|tip Loot them.
Recover #6# First Aid Kits from Defeated Murlocs |q 59929/1 |goto Exile's Reach/0 59.96,79.38
step
talk Thrall##166782
turnin Murloc Mania##59929 |goto Exile's Reach/0 61.88,82.89
accept Emergency First Aid##59930 |goto Exile's Reach/0 61.88,82.89
step
clicknpc Bo##166786
Use the First Aid Kit on Bo |q 59930/2 |goto Exile's Reach/0 61.73,83.50
step
clicknpc Mithdran Dawntracker##166791
Use the First Aid Kit on Mithdran Dawntracker |q 59930/3 |goto Exile's Reach/0 61.37,82.60
step
clicknpc Lana Jordan##166796
Use the First Aid Kit on Lana Jordan |q 59930/1 |goto Exile's Reach/0 61.55,82.24
step
talk Thrall##166782
turnin Emergency First Aid##59930 |goto Exile's Reach/0 61.88,82.89
accept Finding the Lost Expedition##59931 |goto Exile's Reach/0 61.88,82.89
step
Travel North to Find Any Expedition Survivors |q 59931/1 |goto Exile's Reach/0 58.36,74.47
step
talk Warlord Breka Grimaxe##166906
turnin Finding the Lost Expedition##59931 |goto Exile's Reach/0 58.39,74.57
accept Cooking Meat##59932 |goto Exile's Reach/0 58.39,74.57
step
kill Coastal Goat##161130, Prickly Porcupine##161131, Coastal Albatross##161133
Collect #5# Raw Meat from Wildlife |q 59932/1 |goto Exile's Reach/0 58.93,72.13
step
click Campfire##339769
Cook the Meat on the Campfire |q 59932/2 |goto Exile's Reach/0 58.32,74.58
step
talk Won'sa##166854
turnin Cooking Meat##59932 |goto Exile's Reach/0 58.36,74.47
step
talk Warlord Breka Grimaxe##166906
accept Enhanced Combat Tactics##59933 |goto Exile's Reach/0 58.39,74.56
|only if Druid
step
_Nearby:_
Watch the dialogue
|tip Follow Warlord Breka Grimaxe.
|tip On your minimap.
kill Warlord Breka Grimaxe##166916 |usename Warlord Breka Grimaxe##166906
|tip Follow her instructions.
Prove Your Abilities Against Warlord Grimaxe |q 59933/1
|only if Druid
step
talk Warlord Breka Grimaxe##166906
|tip Runs to this location.
turnin Enhanced Combat Tactics##59933 |goto Exile's Reach/0 58.39,74.56
|only if Druid
step
talk Won'sa##166854
accept Northbound##59935 |goto Exile's Reach/0 58.36,74.47
|only if Druid
step
talk Mithdran Dawntracker##166996
turnin Northbound##59935 |goto Exile's Reach/0 62.72,69.87
|only if Druid
step
talk Won'sa##175030
accept Northbound##59935 |goto Exile's Reach/0 58.36,74.47
|only if Hunter
step
talk Mithdran Dawntracker##166996
turnin Northbound##59935 |goto Exile's Reach/0 62.72,69.86
accept Taming the Wilds##59937 |goto Exile's Reach/0 62.72,69.86
|only if Hunter
step
Watch the dialogue
Learn Tame Beast from Mithdran |q 59937/1 |goto Exile's Reach/0 62.72,69.86
|only if Hunter
step
Tame Any Wildlife Beast |q 59937/2 |goto Exile's Reach/0 59.46,72.28
|tip Cast {o}Tame Beast{} on any beast enemy.
|only if Hunter
step
talk Mithdran Dawntracker##166996
turnin Taming the Wilds##59937 |goto Exile's Reach/0 62.72,69.86
|only if Hunter
step
talk Warlord Breka Grimaxe##166906
accept Enhanced Combat Tactics##59933 |goto Exile's Reach/0 58.39,74.56
|only if Mage
step
_Nearby:_
Watch the dialogue
|tip Follow Warlord Breka Grimaxe.
|tip On your minimap.
kill Warlord Breka Grimaxe##166916 |usename Warlord Breka Grimaxe##166906
|tip Follow her instructions.
Prove Your Abilities Against Warlord Grimaxe |q 59933/1
|only if Mage
step
talk Warlord Breka Grimaxe##166906
|tip Runs to this location.
turnin Enhanced Combat Tactics##59933 |goto Exile's Reach/0 58.39,74.56
|only if Mage
step
talk Won'sa##175030
accept Northbound##59935 |goto Exile's Reach/0 58.36,74.47
|only if Mage
step
talk Mithdran Dawntracker##166996
turnin Northbound##59935 |goto Exile's Reach/0 62.72,69.87
|only if Mage
step
talk Warlord Breka Grimaxe##166906
accept Enhanced Combat Tactics##59934 |goto Exile's Reach/0 58.39,74.56
|only if Monk
step
_Nearby:_
Watch the dialogue
|tip Follow Warlord Breka Grimaxe.
|tip On your minimap.
kill Warlord Breka Grimaxe##166916 |usename Warlord Breka Grimaxe##166906
|tip Follow her instructions.
Use Tiger Palm #6# Times on Warlord Grimaxe |q 59934/1
Use Blackout Kick #3# Times on Warlord Grimaxe |q 59934/2
|only if Monk
step
talk Warlord Breka Grimaxe##166906
|tip Runs to this location.
turnin Enhanced Combat Tactics##59934 |goto Exile's Reach/0 58.39,74.56
|only if Monk
step
talk Won'sa##175030
accept Northbound##59935 |goto Exile's Reach/0 58.36,74.47
|only if Monk
step
talk Mithdran Dawntracker##166996
turnin Northbound##59935 |goto Exile's Reach/0 62.72,69.87
|only if Monk
step
talk Warlord Breka Grimaxe##166906
accept Enhanced Combat Tactics##59933 |goto Exile's Reach/0 58.39,74.56
|only if Paladin
step
_Nearby:_
Watch the dialogue
|tip Follow Warlord Breka Grimaxe.
|tip On your minimap.
kill Warlord Breka Grimaxe##166916 |usename Warlord Breka Grimaxe##166906
|tip Follow her instructions.
Prove Your Abilities Against Warlord Grimaxe |q 59933/1
|only if Paladin
step
talk Warlord Breka Grimaxe##166906
|tip Runs to this location.
turnin Enhanced Combat Tactics##59933 |goto Exile's Reach/0 58.39,74.56
|only if Paladin
step
talk Won'sa##175030
accept Northbound##59935 |goto Exile's Reach/0 58.36,74.47
|only if Paladin
step
talk Mithdran Dawntracker##166996
turnin Northbound##59935 |goto Exile's Reach/0 62.72,69.87
|only if Paladin
step
talk Warlord Breka Grimaxe##166906
accept Enhanced Combat Tactics##59933 |goto Exile's Reach/0 58.39,74.56
|only if Priest
step
_Nearby:_
Watch the dialogue
|tip Follow Warlord Breka Grimaxe.
|tip On your minimap.
kill Warlord Breka Grimaxe##166916 |usename Warlord Breka Grimaxe##166906
|tip Follow her instructions.
Prove Your Abilities Against Warlord Grimaxe |q 59933/1
|only if Priest
step
talk Warlord Breka Grimaxe##166906
|tip Runs to this location.
turnin Enhanced Combat Tactics##59933 |goto Exile's Reach/0 58.39,74.56
|only if Priest
step
talk Won'sa##175030
accept Northbound##59935 |goto Exile's Reach/0 58.36,74.47
|only if Priest
step
talk Mithdran Dawntracker##166996
turnin Northbound##59935 |goto Exile's Reach/0 62.72,69.87
|only if Priest
step
talk Warlord Breka Grimaxe##166906
accept Enhanced Combat Tactics##59933 |goto Exile's Reach/0 58.39,74.56
|only if Rogue
step
_Nearby:_
Watch the dialogue
|tip Follow Warlord Breka Grimaxe.
|tip On your minimap.
kill Warlord Breka Grimaxe##166916 |usename Warlord Breka Grimaxe##166906
|tip Follow her instructions.
Prove Your Abilities Against Warlord Grimaxe |q 59933/1
|only if Rogue
step
talk Warlord Breka Grimaxe##166906
|tip Runs to this location.
turnin Enhanced Combat Tactics##59933 |goto Exile's Reach/0 58.39,74.56
|only if Rogue
step
talk Won'sa##175030
accept Northbound##59935 |goto Exile's Reach/0 58.36,74.47
|only if Rogue
step
talk Mithdran Dawntracker##166996
turnin Northbound##59935 |goto Exile's Reach/0 62.72,69.87
|only if Rogue
step
talk Warlord Breka Grimaxe##166906
accept Enhanced Combat Tactics##59933 |goto Exile's Reach/0 58.39,74.56
|only if Shaman
step
_Nearby:_
Watch the dialogue
|tip Follow Warlord Breka Grimaxe.
|tip On your minimap.
kill Warlord Breka Grimaxe##166916 |usename Warlord Breka Grimaxe##166906
|tip Follow her instructions.
Prove Your Abilities Against Warlord Grimaxe |q 59933/1
|only if Shaman
step
talk Warlord Breka Grimaxe##166906
|tip Runs to this location.
turnin Enhanced Combat Tactics##59933 |goto Exile's Reach/0 58.39,74.56
|only if Shaman
step
talk Won'sa##175030
accept Northbound##59935 |goto Exile's Reach/0 58.36,74.47
|only if Shaman
step
talk Mithdran Dawntracker##166996
turnin Northbound##59935 |goto Exile's Reach/0 62.72,69.87
|only if Shaman
step
talk Warlord Breka Grimaxe##166906
accept Enhanced Combat Tactics##59933 |goto Exile's Reach/0 58.39,74.56
|only if Warlock
step
_Nearby:_
Watch the dialogue
|tip Follow Warlord Breka Grimaxe.
|tip On your minimap.
kill Warlord Breka Grimaxe##166916 |usename Warlord Breka Grimaxe##166906
|tip Follow her instructions.
Prove Your Abilities Against Warlord Grimaxe |q 59933/1
|only if Warlock
step
talk Warlord Breka Grimaxe##166906
|tip Runs to this location.
turnin Enhanced Combat Tactics##59933 |goto Exile's Reach/0 58.39,74.56
|only if Warlock
step
talk Won'sa##175030
accept Northbound##59935 |goto Exile's Reach/0 58.36,74.47
|only if Warlock
step
talk Mithdran Dawntracker##166996
turnin Northbound##59935 |goto Exile's Reach/0 62.72,69.87
|only if Warlock
step
talk Warlord Breka Grimaxe##166906
accept Enhanced Combat Tactics##59933 |goto Exile's Reach/0 58.39,74.56
|only if Warrior
step
_Nearby:_
Watch the dialogue
|tip Follow Warlord Breka Grimaxe.
|tip On your minimap.
kill Warlord Breka Grimaxe##166916 |usename Warlord Breka Grimaxe##166906
|tip Follow her instructions.
Prove Your Abilities Against Warlord Grimaxe |q 59933/1
|only if Warrior
step
talk Warlord Breka Grimaxe##166906
|tip Runs to this location.
turnin Enhanced Combat Tactics##59933 |goto Exile's Reach/0 58.39,74.56
|only if Warrior
step
talk Won'sa##175030
accept Northbound##59935 |goto Exile's Reach/0 58.36,74.47
|only if Warrior
step
talk Mithdran Dawntracker##166996
turnin Northbound##59935 |goto Exile's Reach/0 62.72,69.87
|only if Warrior
step
talk Mithdran Dawntracker##166996
accept Down with the Quilboar##59938 |goto Exile's Reach/0 62.72,69.86
accept Forbidden Quilboar Necromancy##59939 |goto Exile's Reach/0 62.72,69.86
step
kill Quilboar Warrior##150237, Quilboar Geomancer##150238
Slay #7# Quilboars |q 59939/1 |goto Exile's Reach/0 61.64,62.99
step
kill Geolord Grek'og##151091 |q 59938/1 |goto Exile's Reach/0 58.90,63.02
step
talk Mithdran Dawntracker##167020
turnin Forbidden Quilboar Necromancy##59939 |goto Exile's Reach/0 56.26,59.17
step
talk Cork Fizzlepop##167019
turnin Down with the Quilboar##59938 |goto Exile's Reach/0 56.17,59.12
accept The Choppy Booster Mk. 5##59940 |goto Exile's Reach/0 56.17,59.12
step
Watch the dialogue
clicknpc Choppy Booster Mk 5##167027
Begin Flying with The Choppy Booster Mk. 5 |invehicle |goto Exile's Reach/0 56.05,58.80 |q 59940
step
Watch the dialogue
Use The Choppy Booster Mk. 5 to Scout the Area |q 59940/1 |goto Exile's Reach/0 55.04,54.20 |notravel
step
Watch the dialogue
Return to Cork Fizzlepop |outvehicle |goto Exile's Reach/0 56.07,58.80 |q 59940 |notravel
step
talk Cork Fizzlepop##167019
turnin The Choppy Booster Mk. 5##59940 |goto Exile's Reach/0 56.17,59.12
accept Re-sizing the Situation##59941 |goto Exile's Reach/0 56.17,59.12
step
use the Re-Sizer v9.00.1##178051
|tip Use it on {o}Wandering Boars{}.
Test the Re-Sizer v9.00.1 on #3# Wandering Boars |q 59941/1 |goto Exile's Reach/0 57.00,58.02
'|clicknpc Wandering Boar##156716
step
talk Thrall##167021
turnin Re-sizing the Situation##59941 |goto Exile's Reach/0 56.25,59.04
step
talk Cork Fizzlepop##167019
accept The Re-Deather##59942 |goto Exile's Reach/0 56.17,59.13
step
clicknpc Choppy Booster Mk. 5##167142
Ride The Choppy Booster Mk. 5 |q 59942/1 |goto Exile's Reach/0 56.05,58.80
step
_As You Fly:_
kill 8 Monstrous Cadaver##157091 |q 59942/2
|tip Larger undead enemies.
step
kill Torgok##162817 |q 59942/3 |goto Exile's Reach/0 51.01,52.80
|tip Inside the building.
step
Watch the dialogue
talk Wrathion##167128
turnin The Re-Deather##59942 |goto Exile's Reach/0 52.59,53.35
step
talk Thrall##167212
accept Stocking Up on Supplies##59950 |goto Exile's Reach/0 52.18,55.35
step
talk Provisioner Jin'hake##167213
Purchase Any Item from Provisioner Jin'hake |q 59950/1 |goto Exile's Reach/0 52.46,55.67
step
talk Provisioner Jin'hake##167213
Sell Any Item to Provisioner Jin'hake |q 59950/2 |goto Exile's Reach/0 52.46,55.67
step
talk Thrall##167212
turnin Stocking Up on Supplies##59950 |goto Exile's Reach/0 52.18,55.35
step
talk Grunt Throg##167216
accept A Paladin's Service##59958 |goto Exile's Reach/0 52.03,55.45
|only if Paladin
step
talk Grunt Throg##167216
accept A Priest's End##59961 |goto Exile's Reach/0 52.04,55.44
|only if Priest
step
Look for the Corpses of the First Expedition Recruits |q 59961/1 |goto Exile's Reach/0 56.10,53.69
'|clicknpc Sha'zul##167188
|only if Priest
step
talk Sha'zul##167188
turnin A Priest's End##59961 |goto Exile's Reach/0 56.11,53.70
accept Resurrecting the Recruits##59965 |goto Exile's Reach/0 56.11,53.70
|only if Priest
step
Resurrect the Expedition Recruit |q 59965/1 |goto Exile's Reach/0 56.18,52.99 |count 1 hidden
|tip Cast {o}Resurrection{} on the {o}First Expedition Recruit{}.
'|clicknpc First Expedition Recruit##167592
|only if Priest
step
Resurrect the Expedition Recruit |q 59965/1 |goto Exile's Reach/0 56.25,53.44 |count 2 hidden
|tip Cast {o}Resurrection{} on the {o}First Expedition Recruit{}.
'|clicknpc First Expedition Recruit##167592
|only if Priest
step
Resurrect the Expedition Recruit |q 59965/1 |goto Exile's Reach/0 56.48,53.66 |count 3 hidden
|tip Cast {o}Resurrection{} on the {o}First Expedition Recruit{}.
'|clicknpc First Expedition Recruit##167592
|only if Priest
step
talk Sha'zul##167188
turnin Resurrecting the Recruits##59965 |goto Exile's Reach/0 56.10,53.69
|only if Priest
step
talk Grunt Throg##167216
accept A Rogue's End##59967 |goto Exile's Reach/0 52.03,55.45
|only if Rogue
step
_During the Next Steps:_
Avoid the Elite Bear
|tip Cast {o}Stealth{} to sneak by the {o}elite bear{}.
|tip Walks around.
Click Here to Continue |confirm |q 59967
step
talk Drizza Sidestabber##167184
Select _"I'm in. How do I make this poison?"_ |gossip 52644
Select _"Get three withering hemlocks and make sure the giant bear isn't near me when I do it. Got it."_ |gossip 52645
Find the First Expedition's Rogue |q 59967/1 |goto Exile's Reach/0 45.64,56.12
|only if Rogue
step
click Withering Hemlock##341951
collect Withering Hemlock##174916 |q 59967/2 |goto Exile's Reach/0 44.77,56.43 |count 1 hidden
|only if Rogue
step
click Withering Hemlock##341951
collect Withering Hemlock##174916 |q 59967/2 |goto Exile's Reach/0 45.18,55.69 |count 2 hidden
|only if Rogue
step
click Withering Hemlock##341951
collect Withering Hemlock##174916 |q 59967/2 |goto Exile's Reach/0 45.09,54.67 |count 3 hidden
|only if Rogue
step
talk Drizza Sidestabber##167586
turnin A Rogue's End##59967 |goto Exile's Reach/0 45.65,56.13
accept The Deadliest of Poisons##59968 |goto Exile's Reach/0 45.65,56.13
|only if Rogue
step
Cast Instant Poison |q 59968/1
|only if Rogue
step
kill Gutgruk the Tough##163036 |usename Gutgruk the Tough##163031 |q 59968/2 |goto Exile's Reach/0 48.85,51.51
|tip Walks around.
|tip On your minimap.
|only if Rogue
step
talk Grunt Throg##167216
turnin The Deadliest of Poisons##59968 |goto Exile's Reach/0 52.03,55.44
|only if Rogue
step
talk Ghost Wolf##163329
accept A Shaman's Duty##59002 |goto Exile's Reach/0 52.30,55.65
|only if Shaman
step
click Veil Blossom##342366
collect Veil Blossom##174968 |q 59002/1 |goto Exile's Reach/0 52.12,51.65 |count 1 hidden
|only if Shaman
step
click Veil Blossom##342366
collect Veil Blossom##174968 |q 59002/1 |goto Exile's Reach/0 51.86,51.14 |count 2 hidden
|only if Shaman
step
click Veil Blossom##342366
collect Veil Blossom##174968 |q 59002/1 |goto Exile's Reach/0 52.52,51.01 |count 3 hidden
|only if Shaman
step
click Veil Blossom##342366
collect Veil Blossom##174968 |q 59002/1 |goto Exile's Reach/0 53.21,51.37 |count 4 hidden
|only if Shaman
step
click Campfire
Burn the Blossoms on the Campfire |q 59002/2 |goto Exile's Reach/0 52.24,55.53
|only if Shaman
step
clicknpc Ghost Wolf##163338
Free the Captured Ghost Wolf |q 59002/3 |goto Exile's Reach/0 54.39,58.46 |count 1 hidden
|only if Shaman
step
clicknpc Ghost Wolf##163338
Free the Captured Ghost Wolf |q 59002/3 |goto Exile's Reach/0 55.27,52.80 |count 2 hidden
|only if Shaman
step
clicknpc Ghost Wolf##163338
Free the Captured Ghost Wolf |q 59002/3 |goto Exile's Reach/0 55.40,50.79 |count 3 hidden
|only if Shaman
step
talk Ghost Wolf##163329
turnin A Shaman's Duty##59002 |goto Exile's Reach/0 52.30,55.65
|only if Shaman
step
talk Grunt Throg##167216
accept A Warlock's Bargain##59970 |goto Exile's Reach/0 52.03,55.45
|only if Warlock
step
talk Sprag Buzzboom##167478
Select _"<Rise and retrieve the warlock's grimoire and finish the ritual to summon a voidwalker.>"_ |gossip 52639
Investigate the Dead Warlock's Body |q 59970/1 |goto Exile's Reach/0 52.52,45.86
|only if Warlock
step
click Old Grimoire##350998
Recover the Old Grimoire |q 59970/2 |goto Exile's Reach/0 52.60,45.85
|only if Warlock
step
use the Old Grimoire##174947
Summon the Voidwalker with the Grimoire |q 59970/3 |goto Exile's Reach/0 52.60,45.85
|only if Warlock
step
talk Summoned Voidwalker##163246
turnin A Warlock's Bargain##59970 |goto Exile's Reach/0 52.61,45.44
|only if Warlock
step
talk Grunt Throg##167216
accept A Warrior's End##59971 |goto Exile's Reach/0 52.03,55.45
|only if Warrior
step
talk Hjalmar the Undying##162943
|tip On the bridge.
|tip Walks around.
turnin A Warrior's End##59971 |goto Exile's Reach/0 51.48,47.86
accept Hjalmar's Final Execution##59972 |goto Exile's Reach/0 51.48,47.86
|only if Warrior
step
talk Hjalmar the Undying##162943
|tip On the bridge.
|tip Walks around.
Select _"I'm ready to fight you, Hjalmar. I'll give you your warrior's death with Execute."_ |gossip 51265
kill Hjalmar the Undying##162943
|tip Cast {o}Execute{} for the {o}final blow{}.
Slay Hjalmar the Undying with Execute |q 59972/1 |goto Exile's Reach/0 51.48,47.86
|only if Warrior
step
talk Grunt Throg##167216
turnin Hjalmar's Final Execution##59972 |goto Exile's Reach/0 52.03,55.45
|only if Warrior
step
talk Lana Jordan##167221
accept Westward Bound##59948 |goto Exile's Reach/0 52.90,56.45
step
Watch the dialogue
talk Lana Jordan##167225
turnin Westward Bound##59948 |goto Exile's Reach/0 51.11,59.51
accept Who Lurks in the Pit##59949 |goto Exile's Reach/0 51.11,59.51
step
Run down the ramp and enter the cave |goto Exile's Reach/0 51.03,60.45 < 7 |walk |only if not (subzone("Hrun's Barrow") and indoors())
click Thick Cocoon##339568
|tip Inside the cave.
Rescue the Trapped Expedition Member |q 59949/1 |goto Exile's Reach/0 52.05,60.01 |count 1 hidden
step
click Thick Cocoon##339568
|tip Inside the cave.
Rescue the Trapped Expedition Member |q 59949/1 |goto Exile's Reach/0 50.28,58.69 |count 2 hidden
step
click Thick Cocoon##339568
|tip Inside the cave.
Rescue the Trapped Expedition Member |q 59949/1 |goto Exile's Reach/0 49.69,61.95 |count 3 hidden
step
click Thick Cocoon##339568
|tip Inside the cave.
Rescue the Trapped Expedition Member |q 59949/1 |goto Exile's Reach/0 51.97,60.72 |count 4 hidden
step
click Thick Cocoon##339568
|tip Inside the cave.
Rescue the Trapped Expedition Member |q 59949/1 |goto Exile's Reach/0 50.89,58.10 |count 5 hidden
step
kill Hrun the Exiled##156900
|tip Inside the cave.
Defeat Hrun to Rescue Crenna Earth-Daughter |q 59949/2 |goto Exile's Reach/0 47.41,60.48
step
Watch the dialogue
|tip Inside the cave.
talk Crenna Earth-Daughter##167250
Ride Crenna Earth-Daughter to Escape |q 59949/3 |goto Exile's Reach/0 47.78,60.28
step
talk Thrall##167212
turnin Who Lurks in the Pit##59949 |goto Exile's Reach/0 52.18,55.35
accept Repair Yourself##85679 |goto Exile's Reach/0 52.18,55.35
step
talk Provisioner Jin'hake##167213
Speak With Provisioner Jin'hake to Repair All Items |q 85679/1 |goto Exile's Reach/0 52.46,55.67
step
talk Thrall##167212
turnin Repair Yourself##85679 |goto Exile's Reach/0 52.18,55.35
step
talk Crenna Earth-Daughter##166575
accept A Druid's Form##59951 |goto Exile's Reach/0 52.32,55.43
|only if Druid
step
click Druid Stone
Commune with the Druid Stone |q 59951/1 |goto Exile's Reach/0 45.38,49.24
|only if Druid
step
talk Crenna Earth-Daughter##167473
turnin A Druid's Form##59951 |goto Exile's Reach/0 45.50,49.27
|only if Druid
step
talk Shuja Grimaxe##167219
accept The Harpy Problem##59943 |goto Exile's Reach/0 53.79,52.18
step
talk Lightspawn##157114
accept Freeing the Light##54933 |goto Exile's Reach/0 58.19,50.21
step
click Ritual Pedestal
Disperse the First Necrotic Energy |q 54933/1 |goto Exile's Reach/0 57.44,49.69
step
click Ritual Pedestal
Disperse the Second Necrotic Energy |q 54933/2 |goto Exile's Reach/0 58.47,49.17
step
click Ritual Pedestal
Disperse the Third Necrotic Energy |q 54933/3 |goto Exile's Reach/0 58.99,50.66
step
click Ritual Pedestal
Disperse the Fourth Necrotic Energy |q 54933/4 |goto Exile's Reach/0 57.84,51.19
step
talk Daelya Twilightsbane##167179
Select _"What does the Light wish of me?"_ |gossip 52641
Speak with the Ghost Paladin |q 59958/1 |goto Exile's Reach/0 57.57,52.21
|only if Paladin
step
talk Daelya Twilightsbane##167179
turnin A Paladin's Service##59958 |goto Exile's Reach/0 57.57,52.21
accept The Divine's Shield##60174 |goto Exile's Reach/0 57.57,52.21
|only if Paladin
step
Use Divine Shield |q 60174/1
|tip Cast {o}Divine Shield{}.
|tip {o}HURRY{} in the next step.
|only if Paladin
step
click Necrotic Altar
Destroy the Necrotic Altar |q 60174/2 |goto Exile's Reach/0 57.15,52.66
|only if Paladin
step
talk Daelya Twilightsbane##167179
turnin The Divine's Shield##60174 |goto Exile's Reach/0 57.57,52.21
|only if Paladin
step
Watch the dialogue
talk Lightspawn##157114
turnin Freeing the Light##54933 |goto Exile's Reach/0 58.19,50.21
step
talk Bo##167291
turnin The Harpy Problem##59943 |goto Exile's Reach/0 56.93,46.23
accept Harpy Culling##59945 |goto Exile's Reach/0 56.93,46.23
accept Purge the Totems##59946 |goto Exile's Reach/0 56.93,46.23
step
talk Shuja Grimaxe##167290
accept The Rescue of Herbert Gloomburst##59944 |goto Exile's Reach/0 56.82,46.18
stickystart "Slay_Harpies_And_Cohorts"
step
click Harpy Totem
Burn the Harpy Totem |q 59946/1 |goto Exile's Reach/0 58.21,44.49 |count 1 hidden
step
click Harpy Totem
Burn the Harpy Totem |q 59946/1 |goto Exile's Reach/0 58.85,42.94 |count 2 hidden
step
click Harpy Totem
Burn the Harpy Totem |q 59946/1 |goto Exile's Reach/0 61.23,41.30 |count 3 hidden
step
click Harpy Totem
Burn the Harpy Totem |q 59946/1 |goto Exile's Reach/0 59.00,39.08 |count 4 hidden
step
click Harpy Totem
Burn the Harpy Totem |q 59946/1 |goto Exile's Reach/0 57.17,42.21 |count 5 hidden
step
talk Herbert Gloomburst##167298
Select _"I'll fight the harpies that come. Can you use your magic to break free?"_ |gossip 52949
Kill the enemies that attack in waves
|tip Allies will help you.
kill Bloodbeak##153964
|tip Large bird that flies down.
Rescue Herbert Gloomburst |q 59944/1 |goto Exile's Reach/0 54.29,41.61
step
label "Slay_Harpies_And_Cohorts"
kill Harpy Snatcher##152571, Harpy Boltcaller##152843, Hunting Worg##152998, Harpy Ambusher##155192
Slay #10# Harpies and Cohorts |q 59945/1 |goto Exile's Reach/0 57.17,42.21
step
talk Herbert Gloomburst##167182
turnin The Rescue of Herbert Gloomburst##59944 |goto Exile's Reach/0 56.91,46.14
step
talk Bo##167291
turnin Harpy Culling##59945 |goto Exile's Reach/0 56.94,46.24
turnin Purge the Totems##59946 |goto Exile's Reach/0 56.94,46.24
step
talk Shuja Grimaxe##167290
accept Message to Base##59947 |goto Exile's Reach/0 56.83,46.18
step
talk Thrall##167212
turnin Message to Base##59947 |goto Exile's Reach/0 52.18,55.34
step
talk Mithdran Dawntracker##167215
accept A Hunter's Trap##59952 |goto Exile's Reach/0 52.56,55.43
|only if Hunter
step
talk Herbert Gloomburst##167309
Select _"Herbert, do you have an ice mote I can use?"_ |gossip 52664
Receive an Ice Mote from Herbert Gloomburst |q 59952/1 |goto Exile's Reach/0 52.16,55.48
|only if Hunter
step
click Rusted Chains
collect Rusted Chain##175981 |q 59952/2 |goto Exile's Reach/0 52.24,53.03
|only if Hunter
step
click Old Spring
collect Old Spring##175980 |q 59952/3 |goto Exile's Reach/0 51.83,51.63
|only if Hunter
step
talk Mithdran Dawntracker##167215
turnin A Hunter's Trap##59952 |goto Exile's Reach/0 52.56,55.43
accept Hunting the Stalker##59953 |goto Exile's Reach/0 52.56,55.43
|only if Hunter
step
Watch the dialogue
|tip Cast {o}Freezing Trap{}.
Capture the Stalker |q 59953/1 |goto Exile's Reach/0 52.40,54.36
|only if Hunter
step
Watch the dialogue
talk Mithdran Dawntracker##167215
turnin Hunting the Stalker##59953 |goto Exile's Reach/0 52.56,55.44
accept The Art of Taming##60162 |goto Exile's Reach/0 52.56,55.44
|only if Hunter
step
Temporarily Dismiss Your Current Pet |q 60162/1 |goto Exile's Reach/0 52.56,55.44
|tip Cast {o}Dismiss Pet{}.
|only if Hunter
step
talk Mithdran Dawntracker##167215
Select _"I'm ready to tame my pet, call them out."_ |gossip 52668
Watch the dialogue
|tip Cast {o}Tame Beast{} on the beast nearby.
Speak with Mithdran to Summon and Tame Your New Pet |q 60162/2 |goto Exile's Reach/0 52.56,55.44
|only if Hunter
step
talk Mithdran Dawntracker##167215
Select _"I'd like to stable my pet here."_ |gossip 52666
Speak with Mithdran to Learn About Pet Stables |q 60162/3 |goto Exile's Reach/0 52.56,55.44
|only if Hunter
step
talk Mithdran Dawntracker##167215
turnin The Art of Taming##60162 |goto Exile's Reach/0 52.56,55.44
|only if Hunter
step
talk Herbert Gloomburst##167309
|tip Runs to this location.
accept A Mage's Knowledge##59954 |goto Exile's Reach/0 52.16,55.49
|only if Mage
step
click Herbert's Spellbook##351335
|tip Underwater.
Recover Herbert's Book from the Lake |q 59954/1 |goto Exile's Reach/0 51.95,49.84
|only if Mage
step
talk Herbert Gloomburst##167309
turnin A Mage's Knowledge##59954 |goto Exile's Reach/0 52.16,55.49
|only if Mage
step
Watch the dialogue
talk Herbert Gloomburst##167309
accept The Best Way to Use Sheep##59955 |goto Exile's Reach/0 52.16,55.49
|only if Mage
step
talk Herbert Gloomburst##167309
Select _"I'm ready to practice polymorph."_ |gossip 52665
Speak with Herbert to Begin Sparring |q 59955/1 |goto Exile's Reach/0 52.16,55.49
|only if Mage
step
_Nearby:_
Watch the dialogue
|tip Follow Herbert Gloomburst.
|tip On your minimap.
Practice Polymorph with Throg |q 59955/2
|tip Cast {o}Polymorph{} on {o}Herbert Gloomburst{}.
|tip Attack him after.
'|clicknpc Herbert Gloomburst##167529
|only if Mage
step
talk Herbert Gloomburst##167309
turnin The Best Way to Use Sheep##59955 |goto Exile's Reach/0 52.16,55.49
|only if Mage
step
talk Bo##167308
|tip Runs to this location.
accept A Monk's Focus##59956 |goto Exile's Reach/0 52.03,55.21
|only if Monk
step
talk Bo##167537
|tip Runs to this location.
Select _"I'm ready, let's begin to meditate."_ |gossip 52640
Watch the dialogue
Meditate with Bo |q 59956/1 |goto Exile's Reach/0 52.62,49.49
|only if Monk
step
talk Bo##167537
turnin A Monk's Focus##59956 |goto Exile's Reach/0 52.62,49.49
accept One Last Spar##59957 |goto Exile's Reach/0 52.62,49.49
|only if Monk
step
kill Bo##167537	|usename Bo##167537
|tip Cast {o}Touch of Death{} on him when he's {o}lower health than you{}.
|tip On your minimap.
Use Touch of Death on Bo |q 59957/1 |goto Exile's Reach/0 53.29,49.00
|only if Monk
step
talk Thrall##167212
turnin One Last Spar##59957 |goto Exile's Reach/0 52.18,55.34
|only if Monk
step
talk Thrall##167212
accept To Darkmaul Citadel##59975 |goto Exile's Reach/0 52.17,55.34
step
talk Thrall##167596
|tip Runs to this location.
turnin To Darkmaul Citadel##59975 |goto Exile's Reach/0 48.90,49.52
accept Right Beneath Their Eyes##59978 |goto Exile's Reach/0 48.90,49.52
step
talk Herbert Gloomburst##167598
Select _"I'm ready, transform me into an ogre and I'll sneak into their citadel."_ |gossip 54297
Watch the dialogue
Ask Herbert to Perform Ogre Transformation Spell |q 59978/1 |goto Exile's Reach/0 48.93,49.46
step
Enter Darkmaul Citadel |q 59978/2 |goto Exile's Reach/0 45.66,44.57
step
Find the Ogre Cooking Area |q 59978/3 |goto Exile's Reach/0 45.69,37.57
step
Wave to Gor'groth |q 59978/4 |goto Exile's Reach/0 45.69,37.57
|tip Perform the {o}/wave{} emote. |script DoEmote("WAVE")
step
Reach the Citadel Entrance |q 59978/6 |goto Exile's Reach/0 41.04,32.92
step
Watch the dialogue
talk Thrall##167633
turnin Right Beneath Their Eyes##59978 |goto Exile's Reach/0 40.29,32.46
accept Controlling their Stones##59981 |goto Exile's Reach/0 40.29,32.46
step
talk Breka Grimaxe##167632
accept Like Ogres to the Slaughter##59979 |goto Exile's Reach/0 40.23,32.59
step
talk Shuja Grimaxe##167630
accept Catapult Destruction##59980 |goto Exile's Reach/0 40.29,32.69
stickystart "Slay_Ogres"
step
kill Wug##153582
|tip Inside the building.
Recover Wug's Ward Stone |q 59981/2 |goto Exile's Reach/0 44.16,37.34
step
kill Jugnug##153583
|tip Inside the building.
Recover Jugnug's Ward Stone |q 59981/1 |goto Exile's Reach/0 47.55,34.19
step
click Catapult
Destroy the Catapult |q 59980/1 |goto Exile's Reach/0 47.01,36.55 |count 1 hidden
step
click Catapult
Destroy the Catapult |q 59980/1 |goto Exile's Reach/0 46.04,39.66 |count 2 hidden
step
click Catapult
Destroy the Catapult |q 59980/1 |goto Exile's Reach/0 45.08,41.59 |count 3 hidden
step
click Catapult
Destroy the Catapult |q 59980/1 |goto Exile's Reach/0 43.61,42.80 |count 4 hidden
step
kill Grunk##153581
|tip Inside the building.
Recover Grunk's Ward Stone |q 59981/3 |goto Exile's Reach/0 42.82,40.97
step
label "Slay_Ogres"
kill Ogre Shadowcaster##153242, Ogre Chef##154103, Ogre Brute##153239
Slay #8# Ogres |q 59979/1 |goto Exile's Reach/0 45.75,39.09
step
talk Shuja Grimaxe##167630
turnin Catapult Destruction##59980 |goto Exile's Reach/0 40.30,32.70
step
talk Breka Grimaxe##167632
turnin Like Ogres to the Slaughter##59979 |goto Exile's Reach/0 40.23,32.59
step
click Ogre Runestone
Disable the Rune Holding Warlord Thunderwalker |q 59981/4 |goto Exile's Reach/0 39.96,32.44 |count 1 hidden
step
click Ogre Runestone
Disable the Rune Holding Warlord Thunderwalker |q 59981/4 |goto Exile's Reach/0 39.75,32.07 |count 2 hidden
step
click Ogre Runestone
Disable the Rune Holding Warlord Thunderwalker |q 59981/4 |goto Exile's Reach/0 40.05,31.98 |count 3 hidden
step
Watch the dialogue
talk Warlord Mulgrin Thunderwalker##167183
turnin Controlling their Stones##59981 |goto Exile's Reach/0 39.93,32.15
accept Dungeon: Darkmaul Citadel##59984 |goto Exile's Reach/0 39.93,32.15
step
Enter the Darkmaul Citadel Dungeon |q 59984/1
|tip Use the Group Finder.
step
_Inside the Dungeon:_
|tip Follow Thrall.
kill Kalecgos##156501
|tip Final boss.
Stop Gor'groth's Final Ritual |q 59984/2
'|clicknpc Thrall##245328
step
_Inside the Dungeon:_
talk Kalecgos##156501
Select _"I'm ready to get out of this citadel."_ |gossip 134083
Speak with Kalecgos to Leave Darkmaul Citadel |q 59984/3
step
Watch the dialogue
talk Thrall##167675
turnin Dungeon: Darkmaul Citadel##59984 |goto Exile's Reach/0 39.65,31.98
accept An End to Beginnings##59985 |goto Exile's Reach/0 39.65,31.98
step
talk Kalecgos##244389
Select _"Take me to the Dragon Isles and tell me about what's happening there."_ |gossip 133763
Watch the dialogue
Speak to Kalecgos to Travel to the Dragon Isles |q 59985/1 |goto Exile's Reach/0 39.97,32.23
step
Reach the Waking Shores |complete zone("The Waking Shores") |q 59985
step
talk Kalecgos##238913
turnin An End to Beginnings##59985 |goto The Waking Shores/0 81.22,28.05
accept What's Your Specialty?##90840 |goto The Waking Shores/0 81.22,28.05
step
Activate a Combat Specialization |q 90840/1
|tip Open your {o}Talents & Spellbook{}.
|tip Choose the {o}Specialization{} tab.
step
talk Kalecgos##238913
turnin What's Your Specialty?##90840 |goto The Waking Shores/0 81.22,28.05
accept Home Is Where the Hearth Is##90842 |goto The Waking Shores/0 81.22,28.05
step
Ride Any Mount from Your Mount Collection |q 90842/1
|tip Open your {o}Warband Collections{}.
step
talk Sil'nori Crestshade##187403
Select _"Bind your hearthstone to this inn."_ |gossip 55383
Speak with Sil'nori Crestshade to Get and Bind Your Hearthstone |q 90842/2 |goto The Waking Shores/0 80.40,27.82
step
talk Kalecgos##238913
turnin Home Is Where the Hearth Is##90842 |goto The Waking Shores/0 81.22,28.05
accept Aiding the Dragon Isles##90843 |goto The Waking Shores/0 81.22,28.05
step
talk Naleidea Rivergleam##184841
turnin Aiding the Dragon Isles##90843 |goto The Waking Shores/0 80.62,27.61
]])
QuestCore:RegisterGuide("Leveling Guides\\Starter Guides\\Chromie Time",{
description="This guide will assist you in changing the expansion you will\n"..
"\nlevel up in by speaking with Chromie.\n",
condition_suggested=function() return level >= 10 and level <= 70 end,
startlevel=10.00,
endlevel=70.00,
},[[
step
_Are You Eligible For Chromie Time?_
|tip If you already have {o}another max level character{}, you are {o}eligible{} for Chromie Time.
|tip Otherwise, you must level up in the {o}Dragon Isles (Dragonflight) zones{}.
|tip Chromie Time allows you to {o}choose a different expansion{} to level up to in.
No - Level in Dragonflight Zones	|confirm	|or	|next "Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\Intro & The Waking Shores (Full Zone)"
Yes - Choose a Different Expansion	|confirm	|or	|next "Chromie_Time_Start"
step
label "Chromie_Time_Start"
talk Chromie##167032
Select _"I'd like to return to the present timeline, Chromie."_ |gossip 51903
Return to the Present Timeline |complete not (chromietime() == TBC or chromietime() == WOTLK or chromietime() == CATA or chromietime() == MOP or chromietime() == WOD or chromietime() == LEG or chromietime() == BFA or chromietime() == SHA or chromietime() == DF)  |goto Orgrimmar/1 40.82,80.14
step
talk Chromie##167032
Select _"(Recommended) Select a timeline."_ |gossip 51901
Choose an Expansion |complete false |goto Orgrimmar/1 40.82,80.14 |or
'|complete chromietime() == TBC		|or	|next "Burning_Crusade"
'|complete chromietime() == WOTLK	|or	|next "Wrath_Of_The_Lich_King"
'|complete chromietime() == CATA	|or	|next "The_Cataclysm"
'|complete chromietime() == MOP		|or	|next "Mists_Of_Pandaria"
'|complete chromietime() == WOD		|or	|next "Warlords_Of_Draenor"
'|complete chromietime() == LEG		|or	|next "Legion"
'|complete chromietime() == BFA		|or	|next "Battle_For_Azeroth"
'|complete chromietime() == SHA		|or	|next "Shadowlands"
'|complete chromietime() == DF		|or	|next "Dragonflight"
step
label "Burning_Crusade"
accept Burning Crusade: To Outland!##60123 |or
|accept Onward to Adventure: Outland##60959 |or
|tip You will accept this quest automatically.
step
talk Thrallmar Mage##150131
|tip Downstairs inside the building.
Select _"I must report to the Dark Portal."_ |gossip 50005
Talk to the Thrallmar Mage |q 60123/1 |goto Orgrimmar/1 57.15,90.71
|only if haveq(60123)
step
Go Through the Dark Portal |q 60123/2 |goto Blasted Lands/0 55.01,54.17
|only if haveq(60123)
step
Travel to Hellfire Peninsula |q 60959/1 |goto Hellfire Peninsula/0 87.00,49.00
|only if haveq(60959)
step
_Click the Complete Quest Box:_
turnin Burning Crusade: To Outland!##60123 |only if haveq(60123) or completedq(60123)
turnin Onward to Adventure: Outland##60959 |only if haveq(60959) or completedq(60959)
|next "Leveling Guides\\The Burning Crusade (10-70)\\Hellfire Peninsula (10-70)"
step
label "Wrath_Of_The_Lich_King"
accept Wrath of the Lich King: To Northrend!##60097 |or |only if haveq(60097)
|accept Onward to Adventure: Northrend##60963 |or |only if haveq(60963)
|tip You will accept this quest automatically.
step
_Which Zone Do You Want to Start In?_
|tip It {o}doesn't matter{}, just preference.
Borean Tundra |confirm |next "Borean_Tundra"
Howling Fjord |confirm |next "Howling_Fjord"
step
label "Borean_Tundra"
talk Auctioneer Ralinza##44867
|tip Inside the building.
buy Overcharged Capacitor##39682 |n
|tip This is for a {o}future quest{}.
|tip If you can't get one, skip it.
collect Overcharged Capacitor##39682 |goto Orgrimmar/1 53.97,72.99 |q 11650 |future
step
Take the Zeppelin to Northrend |q 60097/1 |goto Borean Tundra/0 41.62,53.99
|only if haveq(60097)
step
Travel to Northrend |q 60963/1 |goto Borean Tundra/0 41.62,53.99
|only if haveq(60963)
step
_Click the Complete Quest Box:_
turnin Wrath of the Lich King: To Northrend!##60097 |only if haveq(60097) or completedq(60097)
turnin Onward to Adventure: Northrend##60963 |only if haveq(60963) or completedq(60963)
|next "Leveling Guides\\Wrath of the Lich King (10-70)\\Borean Tundra (10-70)"
step
label "Howling_Fjord"
Take the Zeppelin to Northrend |q 60097/1 |goto Borean Tundra/0 41.62,53.99
|only if haveq(60097)
step
Travel to Northrend |q 60963/1 |goto Howling Fjord/0 78.54,28.98
|only if haveq(60963)
step
_Click the Complete Quest Box:_
turnin Wrath of the Lich King: To Northrend!##60097 |only if haveq(60097) or completedq(60097)
turnin Onward to Adventure: Northrend##60963 |only if haveq(60963) or completedq(60963)
|next "Leveling Guides\\Wrath of the Lich King (10-70)\\Howling Fjord (10-70)"
step
label "The_Cataclysm"
accept Onward to Adventure: Kalimdor##60887
|tip You will accept this quest automatically.
step
click Warchief's Command Board
Find the Warchief's Command Board |q 60887/1 |goto Orgrimmar/1 49.67,76.47
step
talk Chromie##172387
turnin Onward to Adventure: Eastern Kingdoms##60891 |goto Orgrimmar/1 49.02,76.46
step
_Choose a Leveling Zone:_
|tip Browse your {o}world map{} for {o}Eastern Kingdoms{} and {o}Kalimdor{}.
|tip Choose {o}any zone{} that fits your character's level, and load the {o}Leveling guide for that zone{} using the guide menu.
|tip Keep doing this until {o}Chromie Time ends{} and you need to go to the new zones.
Click Here to Return to Chromie |confirm |next "Chromie_Time_Start"
step
label "Mists_Of_Pandaria"
accept Mists of Pandaria: To Pandaria!##60126
|tip You will accept this quest automatically.
step
Visit Grommash Hold |q 60126/1 |goto Orgrimmar/1 49.88,75.55
|tip Inside the building.
step
talk General Nazgrim##54870
|tip Inside the building.
turnin Mists of Pandaria: To Pandaria!##60126 |goto Orgrimmar/1 48.67,70.36
accept All Aboard!##31853 |goto Orgrimmar/1 48.67,70.36
step
talk Doras##3310
|tip Up on the plateau above the city.
Select _"I need a flight to Hellscream's Fist."_ |gossip 30402
Secure a Flight to Hellscream's Fist |invehicle |goto Orgrimmar/1 49.66,59.22 |q 31853
step
Fly to Hellscream's Fist |outvehicle |q 31853
step
talk General Nazgrim##55054
|tip On the air ship.
Speak to General Nazgrim on Hellscream's Fist |q 31853/2 |goto Azshara/0 37.88,95.77
step
talk General Nazgrim##55054
|tip On the air ship.
turnin All Aboard!##31853 |goto Azshara/0 37.88,95.77
accept Into the Mists##29690 |goto Azshara/0 37.88,95.77
step
talk General Nazgrim##55054
|tip On the air ship.
Select _"I'm ready to go, General."_ |gossip 41023
Discover Pandaria |q 29690/1 |goto Azshara/0 37.88,95.77
step
talk General Nazgrim##55135
|tip Inside the room on the deck of the air ship.
turnin Into the Mists##29690 |goto The Jade Forest/0 30.79,10.22
|next "Leveling Guides\\Pandaria (10-70)\\The Jade Forest (10-70)"
step
label "Warlords_Of_Draenor"
accept Warlords of Draenor: The Dark Portal##34398
|tip You will accept this quest automatically.
step
talk Vanguard Battlemage##149626
|tip Downstairs inside the building.
Select _"I must help Khadgar. Send me to the Blasted Lands!"_ |gossip 51034
Talk to the Vanguard Battlemage |q 34398/1 |goto Orgrimmar/1 55.82,91.45
|only if haveq(34398)
step
talk Zidormi##141489
Select _"Take me back to the present."_ |gossip 42959
Travel to the Present |complete not QC.InPhase("Old Blasted Lands") |goto Blasted Lands/0 48.16,7.28 |q 34398
step
talk Ameri Windblade##85734
fpath Shattered Landing |goto Blasted Lands/0 72.95,48.64
step
talk Archmage Khadgar##78423
Select _"FOR AZEROTH!"_ |gossip 43231
Speak with Archmage Khadgar |q 34398/2 |goto Blasted Lands/0 54.93,50.41
step
talk Archmage Khadgar##78558
turnin Warlords of Draenor: The Dark Portal##34398 |goto Assault on the Dark Portal/0 54.79,48.27
|next "Leveling Guides\\Draenor (10-70)\\Draenor Intro"
step
label "Legion"
accept Legion: Onward to Adventure: Broken Isles##60970
|tip You will accept this quest automatically.
step
Travel to the Broken Isles |q 60970/1 |goto Azsuna/0 46.82,41.36
step
_Click the Complete Quest Box:_
turnin Legion: Onward to Adventure: Broken Isles##60970
step
|next "Leveling Guides\\Legion (10-70)\\Death Knight\\Death Knight Intro & Artifacts" |only if DeathKnight
|next "Leveling Guides\\Legion (10-70)\\Demon Hunter\\Demon Hunter Intro & Artifacts" |only if DemonHunter
|next "Leveling Guides\\Legion (10-70)\\Druid\\Druid Intro & Artifacts" |only if Druid
|next "Leveling Guides\\Legion (10-70)\\Hunter\\Hunter Intro & Artifacts" |only if Hunter
|next "Leveling Guides\\Legion (10-70)\\Mage\\Mage Intro & Artifacts" |only if Mage
|next "Leveling Guides\\Legion (10-70)\\Monk\\Monk Intro & Artifacts" |only if Monk
|next "Leveling Guides\\Legion (10-70)\\Paladin\\Paladin Intro & Artifacts" |only if Paladin
|next "Leveling Guides\\Legion (10-70)\\Priest\\Priest Intro & Artifacts" |only if Priest
|next "Leveling Guides\\Legion (10-70)\\Rogue\\Rogue Intro & Artifacts" |only if Rogue
|next "Leveling Guides\\Legion (10-70)\\Shaman\\Shaman Intro & Artifacts" |only if Shaman
|next "Leveling Guides\\Legion (10-70)\\Warlock\\Warlock Intro & Artifacts" |only if Warlock
|next "Leveling Guides\\Legion (10-70)\\Warrior\\Warrior Intro & Artifacts" |only if Warrior
step
label "Battle_For_Azeroth"
accept Battle for Azeroth: Mission Statement##51443
|tip You will accept this quest automatically.
step
Speak to Warchief Sylvanas Windrunner in Orgrimmar |q 51443/1 |goto Orgrimmar/1 48.61,71.98
|tip Inside the building.
step
Watch the dialogue
|tip Inside the building.
Meet your Team |q 51443/2 |goto Orgrimmar/1 54.52,78.40
step
talk Nathanos Blightcaller##135205
|tip Inside the building.
turnin Battle for Azeroth: Mission Statement##51443 |goto Orgrimmar/1 54.45,78.42
|next "Leveling Guides\\Battle for Azeroth (10-70)\\Zandalar\\Zuldazar (10-70)"
step
label "Shadowlands"
accept Shadowlands: A Chilling Summons##61874 |goto Orgrimmar/1 51.64,81.09
|tip You will automatically accept this quest.
step
talk Nazgrim##171791
Select _"Tell me what happened."_ |gossip 52727 |noautogossip
Learn About Your Leaders' Fate |q 61874/1 |goto Orgrimmar/1 50.39,76.57 |or
|tip If you {o}already completed{} the Shadowlands intro, you can skip it.
Skip the Shadowlands Intro |complete completedq(59770) |goto Orgrimmar/1 50.39,76.57 |or |next "Skip_Shadowlands_Intro"
step
Watch the dialogue
click Death Gate to Acherus
Take the Death Gate to Acherus |q 61874/2 |goto Orgrimmar/1 48.45,77.25
step
Take the Teleporter to the Frozen Throne |q 61874/3 |goto Icecrown Citadel Intro/0 59.83,21.14
|tip Walk onto the {o}teleport pad nearby{}.
step
talk Highlord Bolvar Fordragon##169076
turnin A Chilling Summons##61874 |goto Icecrown Citadel Intro/2 50.78,53.71
step
label "Skip_Shadowlands_Intro"
|next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
step
label "Dragonflight"
accept The Dragon Isles Await##65435
|tip You will accept this quest automatically.
step
_NOTE:_
Choose How to Level Up
|tip There are {o}two versions{} of the Leveling guides.
|tip {o}Full Zones (Story + Side Quests){} and {o}Story Only{}.
|tip The {o}Full Zone{} guides will {o}easily get you to level 70{}, with extra quests to spare.
|tip The {o}Story Only{} guides {o}may not{} get you to level 70, but then you can use the {o}full zone guides{} to do side quests to reach level 70.
|tip Click the line below to {o}choose how you want to level up{}.
Full Zone (Story + Side Quests) Guides		|confirm	|next "Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\Intro & The Waking Shores (Full Zone)"
Story Only Guides				|confirm	|next "Leveling Guides\\Dragonflight (10-70)\\Story Campaigns\\Intro & The Waking Shores (Story Only)"
]])
QuestCore:RegisterGuide("Leveling Guides\\Starter Guides\\Blood Elf Starter",{
condition_valid=function() return raceclass('BloodElf') end,
condition_valid_msg="Blood Elf only.",
condition_suggested=function() return raceclass('BloodElf') and level <= 5 and not completedq(8338) and not raceclass("DeathKnight") and not QC.InPhase("exilesreach") end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Classic (1-70)\\Eastern Kingdoms\\Eversong Woods (1-70)",
startlevel=1,
endlevel=70,
},[[
step
talk Magistrix Erona##15278
accept Reclaiming Sunstrider Isle##8325 |goto Sunstrider Isle/0 61.03,45.13
step
kill 6 Mana Wyrm##15274 |q 8325/1 |goto Sunstrider Isle/0 56.81,47.91
step
talk Magistrix Erona##15278
turnin Reclaiming Sunstrider Isle##8325 |goto Sunstrider Isle/0 61.03,45.13
accept Unfortunate Measures##8326 |goto Sunstrider Isle/0 61.03,45.13
step
kill Springpaw Cub##15366, Springpaw Lynx##15372
collect 8 Lynx Collar##20797 |q 8326/1 |goto Sunstrider Isle/0 67.11,37.51
You can find more around
[54.49,55.64]
[57.70,65.91]
[66.95,33.60]
[63.78,33.46]
step
talk Magistrix Erona##15278
turnin Unfortunate Measures##8326 |goto Sunstrider Isle/0 61.03,45.13
accept Report to Lanthan Perilon##8327 |goto Sunstrider Isle/0 61.03,45.13
step
talk Well Watcher Solanian##15295
|tip Upstairs inside the building.
accept The Shrine of Dath'Remar##37442 |goto Sunstrider Isle/0 63.96,42.83
accept Solanian's Belongings##37443 |goto Sunstrider Isle/0 63.96,42.83
step
talk Arcanist Ithanas##15296
accept A Fistful of Slivers##37440 |goto Sunstrider Isle/0 61.82,39.34
|only if BloodElf
step
talk Arcanist Helion##15297
accept Thirst Unending##37439 |goto Sunstrider Isle/0 58.47,38.79
|only if BloodElf
step
Unleash the Arcane Torrent |q 37439/1 |goto Sunstrider Isle/0 55.86,43.44
|tip Use your "Arcane Torrent" ability on your action bar on a Mana Wyrm.
|tip Make sure to be within 8 yards of the Wyrm when casting the spell.
|only if BloodElf
step
kill Mana Wyrm##15274+
collect 6 Arcane Sliver##20482 |q 37440/1 |goto Sunstrider Isle/0 50.60,41.32
|only if BloodElf
step
click Shrine of Dath'Remar##180516
Read the Shrine of Dath'Remar |q 37442/1 |goto Sunstrider Isle/0 35.26,40.21
step
click Scroll of Scourge Magic##180511
collect Scroll of Scourge Magic##20471 |q 37443/2 |goto Sunstrider Isle/0 40.44,50.47
step
click Solanian's Scrying Orb##180510
collect Solanian's Scrying Orb##20470 |q 37443/1 |goto Sunstrider Isle/0 52.17,69.41
step
click Solanian's Journal##180512
collect Solanian's Journal##20472 |q 37443/3 |goto Sunstrider Isle/0 60.04,57.13
step
talk Well Watcher Solanian##15295
|tip Upstairs inside the building.
turnin The Shrine of Dath'Remar##37442 |goto Sunstrider Isle/0 63.96,42.83
turnin Solanian's Belongings##37443 |goto Sunstrider Isle/0 63.96,42.83
step
talk Arcanist Ithanas##15296
turnin A Fistful of Slivers##37440 |goto Sunstrider Isle/0 61.82,39.34
|only if BloodElf
step
talk Arcanist Helion##15297
turnin Thirst Unending##37439 |goto Sunstrider Isle/0 58.47,38.79
|only if BloodElf
step
talk Lanthan Perilon##15281
turnin Report to Lanthan Perilon##8327 |goto Sunstrider Isle/0 52.88,49.79
accept Aggression##8334 |goto Sunstrider Isle/0 52.88,49.79
stickystart "Slay_Feral_Tenders"
step
kill 7 Tender##15271 |q 8334/1 |goto Sunstrider Isle/0 43.70,55.05
step
label "Slay_Feral_Tenders"
kill 7 Feral Tender##15294 |q 8334/2 |goto Sunstrider Isle/0 43.70,55.05
step
talk Lanthan Perilon##15281
turnin Aggression##8334 |goto Sunstrider Isle/0 52.88,49.79
accept Felendren the Banished##8335 |goto Sunstrider Isle/0 52.88,49.79
stickystart "Accept_Tainted_Arcane_Sliver"
stickystart "Slay_Arcane_Wraiths"
stickystart "Slay_Tainted_Arcane_Wraiths"
step
kill Felendren the Banished##15367
|tip At the top of the floating structures.
collect Felendren's Head##20799 |q 8335/3 |goto Sunstrider Isle/0 38.93,63.98
step
label "Accept_Tainted_Arcane_Sliver"
kill Tainted Arcane Wraith##15298
collect Tainted Arcane Sliver##20483 |n
accept Tainted Arcane Sliver##8338 |goto Sunstrider Isle/0 38.85,63.92
|tip You will eventually automatically accept this quest after looting.
|only if BloodElf
step
label "Slay_Arcane_Wraiths"
kill 8 Arcane Wraith##15273 |q 8335/1 |goto Sunstrider Isle/0 38.85,63.92
step
label "Slay_Tainted_Arcane_Wraiths"
kill 2 Tainted Arcane Wraith##15298 |q 8335/2 |goto Sunstrider Isle/0 38.85,63.92
step
talk Lanthan Perilon##15281
turnin Felendren the Banished##8335 |goto Sunstrider Isle/0 52.88,49.79
accept Aiding the Outrunners##8347 |goto Sunstrider Isle/0 52.88,49.79
step
talk Arcanist Helion##15297
turnin Tainted Arcane Sliver##8338 |goto Sunstrider Isle/0 58.47,38.79
|only if BloodElf
]])
QuestCore:RegisterGuide("Leveling Guides\\Starter Guides\\Death Knight Starter",{
condition_valid=function() return raceclass('DeathKnight') end,
condition_valid_msg="Death Knight only.",
condition_suggested=function() return raceclass{'Orc','Undead','Tauren','Troll','BloodElf','Goblin'} and raceclass('DeathKnight') and not completedq(13189) and level < 15 and not QC.InPhase("exilesreach") end,
condition_suggested_exclusive=true,
condition_end=function() return completedq(13189) end,
startlevel=8,
endlevel=10,
},[[
step
talk The Lich King##25462
accept In Service Of The Lich King##12593 |goto Plaguelands: The Scarlet Enclave/0 51.34,35.21
step
talk Instructor Razuvious##28357
|tip He walks around this area.
turnin In Service Of The Lich King##12593 |goto Plaguelands: The Scarlet Enclave/0 48.24,28.26
accept The Emblazoned Runeblade##12619 |goto Plaguelands: The Scarlet Enclave/0 48.24,28.26
step
click Battle-worn Sword##190584
collect Battle-worn Sword##38607 |goto Plaguelands: The Scarlet Enclave/0 47.39,30.96 |q 12619
step
use Battle-worn Sword##38607
collect Runebladed Sword##38631 |q 12619/1 |goto Plaguelands: The Scarlet Enclave/0 47.39,31.24
step
talk Instructor Razuvious##28357
|tip He walks around this area.
turnin The Emblazoned Runeblade##12619 |goto Plaguelands: The Scarlet Enclave/0 48.24,28.26
accept Runeforging: Preparation For Battle##12842 |goto Plaguelands: The Scarlet Enclave/0 48.24,28.26
step
cast Runeforging##53428
|tip Use your "Runeforging" ability near the Runeforge.
|tip Open your character's equipment window and engrave your weapon with a rune.
Emblazon Your Weapon |q 12842/1 |goto Plaguelands: The Scarlet Enclave/0 47.39,31.24
step
talk Instructor Razuvious##28357
|tip He walks around this area.
turnin Runeforging: Preparation For Battle##12842 |goto Plaguelands: The Scarlet Enclave/0 48.24,28.26
accept The Endless Hunger##12848 |goto Plaguelands: The Scarlet Enclave/0 48.24,28.26
step
click Acherus Soul Prison##8115
|tip They look like horned skulls on the wall, chaining the prisoners around this area.
Watch the dialogue
kill Unworthy Initiate##29565
Dominate an Unworthy Initiate |q 12848/1 |goto Plaguelands: The Scarlet Enclave/0 48.33,28.98
step
talk Instructor Razuvious##28357
|tip He walks around this area.
turnin The Endless Hunger##12848 |goto Plaguelands: The Scarlet Enclave/0 48.24,28.26
accept The Eye Of Acherus##12636 |goto Plaguelands: The Scarlet Enclave/0 48.24,28.26
step
talk The Lich King##25462
turnin The Eye Of Acherus##12636 |goto Plaguelands: The Scarlet Enclave/0 51.34,35.21
accept Death Comes From On High##12641 |goto Plaguelands: The Scarlet Enclave/0 51.34,35.21
step
click Eye of Acherus Control Mechanism##191609
Take Control of the Eye of Acherus |havebuff The Eye of Acherus##51852 |goto Plaguelands: The Scarlet Enclave/0 52.16,35.18 |q 12641
step
_Go Northeast:_
|tip If you stay floating high enough, the soldiers will not attack you.
|tip Go to the blacksmith building with a floating red arrow above it.
Use the "Siphon of Acherus" ability |petaction 1
|tip Get near the floating red arrow.
Analyze the New Avalon Forge |q 12641/1
step
_Go South:_
|tip If you stay floating high enough, the soldiers will not attack you.
|tip Go to the big fort building with a floating red arrow above it.
Use the "Siphon of Acherus" ability |petaction 1
|tip Get near the floating red arrow.
Analyze the Scarlet Hold |q 12641/3
step
_Go West:_
|tip If you stay floating high enough, the soldiers will not attack you.
|tip Go to the town hall building with a clock tower, with a floating red arrow above it.
Use the "Siphon of Acherus" ability |petaction 1
|tip Get near the floating red arrow.
Analyze the New Avalon Town Hall |q 12641/2
step
_Go South:_
|tip If you stay floating high enough, the soldiers will not attack you.
|tip Go to the small church building with a floating red arrow above it.
Use the "Siphon of Acherus" ability |petaction 1
|tip Get near the floating red arrow.
Analyze the Chapel of the Crimson Flame |q 12641/4
step
Use the "Recall Eye of Acherus" ability |petaction 5
Click here when you return to Ebon Hold |confirm |q 12641
step
talk The Lich King##25462
turnin Death Comes From On High##12641 |goto Plaguelands: The Scarlet Enclave/0 51.34,35.21
accept The Might Of The Scourge##12657 |goto Plaguelands: The Scarlet Enclave/0 51.34,35.21
step
Walk onto the teleport pad |goto Plaguelands: The Scarlet Enclave/0 50.49,33.37
Teleport Upstairs |goto Plaguelands: The Scarlet Enclave/0 50.15,32.54 < 10 |noway |q 12657
step
talk Highlord Darion Mograine##28444
turnin The Might Of The Scourge##12657 |goto Plaguelands: The Scarlet Enclave/0 48.88,29.76
accept Report To Scourge Commander Thalanor##12850 |goto Plaguelands: The Scarlet Enclave/0 48.88,29.76
step
talk Lord Thorval##28472
accept The Power Of Blood, Frost And Unholy##12849 |goto Plaguelands: The Scarlet Enclave/0 47.48,26.56
step
talk Scourge Commander Thalanor##28510
|tip He walks around this area.
turnin Report To Scourge Commander Thalanor##12850 |goto Plaguelands: The Scarlet Enclave/0 51.21,34.90
accept The Scarlet Harvest##12670 |goto Plaguelands: The Scarlet Enclave/0 51.21,34.90
step
clicknpc Scourge Gryphon##29488 |goto Plaguelands: The Scarlet Enclave/0 50.96,36.15
Arrive at Death's Breach |goto Plaguelands: The Scarlet Enclave/0 53.19,31.15 < 10 |noway |q 12670
step
talk Prince Valanar##28377
turnin The Scarlet Harvest##12670 |goto Plaguelands: The Scarlet Enclave/0 52.28,33.96
accept If Chaos Drives, Let Suffering Hold The Reins##12678 |goto Plaguelands: The Scarlet Enclave/0 52.28,33.96
step
talk Salanar the Horseman##28653
|tip He walks around this area.
accept Grand Theft Palomino##12680 |goto Plaguelands: The Scarlet Enclave/0 52.51,34.54
step
talk Olrun the Battlecaller##29047
|tip She flies around this area.
accept Death's Challenge##12733 |goto Plaguelands: The Scarlet Enclave/0 54.63,33.95
step
talk Death Knight Initiate##28406
|tip They are all around this area.
Select _"I challenge you, death knight!"_ |gossip 37188
kill Death Knight Initiate##28392+
Defeat #5# Death Knights in a Duel |q 12733/1 |goto Plaguelands: The Scarlet Enclave/0 53.21,33.54
step
talk Olrun the Battlecaller##29047
|tip She flies around this area.
turnin Death's Challenge##12733 |goto Plaguelands: The Scarlet Enclave/0 54.63,33.95
step
talk Orithos the Sky Darkener##28647
|tip He walks around this area.
accept Tonight We Dine In Havenshire##12679 |goto Plaguelands: The Scarlet Enclave/0 53.42,36.65
stickystart "Slay_Scarlet_Crusaders"
stickystart "Slay_Citizens_Of_Havenshire"
step
click Abandoned Mail##190917
|tip It looks like a roll of parchment on top of the mailbox.
accept Abandoned Mail##12711 |goto Plaguelands: The Scarlet Enclave/0 55.27,46.17
step
label "Slay_Scarlet_Crusaders"
kill Scarlet Captain##28611, Scarlet Peasant##28557, Scarlet Infantryman##28609, Scarlet Medic##28608
Slay #10# Scarlet Crusaders |q 12678/1 |goto Plaguelands: The Scarlet Enclave/0 54.25,44.45
stickystart "Collect_Saronite_Arrows"
step
label "Slay_Citizens_Of_Havenshire"
kill 10 Citizen of Havenshire##28660 |q 12678/2 |goto Plaguelands: The Scarlet Enclave/0 54.25,44.45
step
label "Collect_Saronite_Arrows"
click Saronite Arrow##190691+
|tip They look like yellow and green arrows stuck in the ground around this area.
collect 15 Saronite Arrow##39160 |q 12679/1 |goto Plaguelands: The Scarlet Enclave/0 56.41,50.97
step
click Havenshire Horse
|tip They are all around this area.
|tip Watch out for Stable Master Kitrik, he's elite and will pull you off the horse.
Ride the Havenshire Horse |invehicle |goto Plaguelands: The Scarlet Enclave/0 55.74,43.39 |q 12680
step
Use the "Deliver Stolen Horse" ability next to Salanar the Horseman
|tip He walks around this area.
Successfully Steal the Horse |q 12680/1 |goto Plaguelands: The Scarlet Enclave/0 52.26,34.96
step
talk Salanar the Horseman##28653
|tip He walks around this area.
turnin Grand Theft Palomino##12680 |goto Plaguelands: The Scarlet Enclave/0 52.51,34.54
accept Into the Realm of Shadows##12687 |goto Plaguelands: The Scarlet Enclave/0 52.51,34.54
step
kill Dark Rider of Acherus##28768
|tip They ride around on horses around this area.
clicknpc Acherus Deathcharger##28302
|tip It's the horse they were riding on before you killed them.
Steal an Acherus Deathcharger |invehicle |goto Plaguelands: The Scarlet Enclave/0 55.67,42.41 |q 12687
step
Use the "Horseman's Call" ability
Watch the dialogue
Complete the Horseman's Challenge |q 12687/1 |goto Plaguelands: The Scarlet Enclave/0 50.88,41.74
step
talk Salanar the Horseman##28653
|tip He walks around this area.
turnin Into the Realm of Shadows##12687 |goto Plaguelands: The Scarlet Enclave/0 52.51,34.54
step
talk Prince Valanar##28377
turnin If Chaos Drives, Let Suffering Hold The Reins##12678 |goto Plaguelands: The Scarlet Enclave/0 52.28,33.96
step
talk Orithos the Sky Darkener##28647
|tip He walks around this area.
turnin Tonight We Dine In Havenshire##12679 |goto Plaguelands: The Scarlet Enclave/0 53.42,36.65
step
talk Prince Valanar##28377
accept Gothik the Harvester##12697 |goto Plaguelands: The Scarlet Enclave/0 52.28,33.96
step
talk Gothik the Harvester##28658
turnin Gothik the Harvester##12697 |goto Plaguelands: The Scarlet Enclave/0 54.07,35.03
accept The Gift That Keeps On Giving##12698 |goto Plaguelands: The Scarlet Enclave/0 54.07,35.03
step
Enter the mine |goto Plaguelands: The Scarlet Enclave/0 58.30,30.94 < 5 |walk
use Gift of the Harvester##39253
|tip Use it on Scarlet Miners.
|tip Inside the mine.
|tip Some will turn into Scarlet Ghosts and attack you.
|tip It has a pretty low success rate, just keep trying.
Click Here When 5 Scarlet Ghouls Are Following You |confirm |goto Plaguelands: The Scarlet Enclave/0 59.77,31.37 |q 12698
step
Return #5# Scarlet Ghouls |q 12698/1 |goto Plaguelands: The Scarlet Enclave/0 54.07,35.03
step
talk Gothik the Harvester##28658
turnin The Gift That Keeps On Giving##12698 |goto Plaguelands: The Scarlet Enclave/0 54.07,35.03
accept An Attack Of Opportunity##12700 |goto Plaguelands: The Scarlet Enclave/0 54.07,35.03
step
talk Prince Valanar##28377
turnin An Attack Of Opportunity##12700 |goto Plaguelands: The Scarlet Enclave/0 52.28,33.96
accept Massacre At Light's Point##12701 |goto Plaguelands: The Scarlet Enclave/0 52.28,33.96
step
click Inconspicuous Mine Car##190767
Ride in the Inconspicuous Mine Cart |invehicle |goto Plaguelands: The Scarlet Enclave/0 58.50,33.03 |q 12701
step
Ride to the Scarlet Fleet Ship |goto Plaguelands: The Scarlet Enclave/0 67.81,38.67 < 10 |q 12701
step
click Scarlet Cannon##176216
Mount the Cannon |invehicle |goto Plaguelands: The Scarlet Enclave/0 67.70,39.02 |q 12701
step
kill Scarlet Fleet Defender##28834+
|tip Use the abilities on your action bar.
Slay #100# Scarlet Defenders |q 12701/1 |goto Plaguelands: The Scarlet Enclave/0 65.78,39.79
step
Escape to Death's Breach |goto Plaguelands: The Scarlet Enclave/0 52.57,34.45 < 10 |noway |q 12701
|tip Use the "Skeletal Gryphon Escape" ability on your action bar.
step
talk Prince Valanar##28377
turnin Massacre At Light's Point##12701 |goto Plaguelands: The Scarlet Enclave/0 52.28,33.96
accept Victory At Death's Breach!##12706 |goto Plaguelands: The Scarlet Enclave/0 52.28,33.96
step
clicknpc Scourge Gryphon##29501 |goto Plaguelands: The Scarlet Enclave/0 53.09,32.48
Fly Up to Archerus |goto Plaguelands: The Scarlet Enclave/0 51.11,34.67 < 10 |noway |q 12706
step
talk Highlord Darion Mograine##28444
turnin Victory At Death's Breach!##12706 |goto Plaguelands: The Scarlet Enclave/0 48.87,29.76
accept The Will Of The Lich King##12714 |goto Plaguelands: The Scarlet Enclave/0 48.87,29.76
step
clicknpc Scourge Gryphon##29488 |goto Plaguelands: The Scarlet Enclave/0 50.96,36.15
Arrive at Death's Breach |goto Plaguelands: The Scarlet Enclave/0 53.19,31.15 < 10 |noway |q 12714
step
talk Prince Valanar##28907
turnin The Will Of The Lich King##12714 |goto Plaguelands: The Scarlet Enclave/0 53.47,36.55
accept The Crypt of Remembrance##12715 |goto Plaguelands: The Scarlet Enclave/0 53.47,36.55
step
talk Noth the Plaguebringer##28919
accept The Plaguebringer's Request##12716 |goto Plaguelands: The Scarlet Enclave/0 55.89,52.39
step
talk Prince Keleseth##28911
|tip Downstairs inside the crypt.
turnin The Crypt of Remembrance##12715 |goto Plaguelands: The Scarlet Enclave/0 54.30,57.31
accept Nowhere To Run And Nowhere To Hide##12719 |goto Plaguelands: The Scarlet Enclave/0 54.30,57.31
step
talk Baron Rivendare##28910
|tip Downstairs inside the crypt.
accept Lambs To The Slaughter##12722 |goto Plaguelands: The Scarlet Enclave/0 54.66,57.43
stickystart "Slay_Scarlet_Crusade_Soldiers"
stickystart "Collect_Crusader_Skulls"
stickystart "Slay_Citizens_Of_New_Avalaon"
step
click Empty Cauldron##190937
|tip Downstairs inside the building.
collect Empty Cauldron##39324 |q 12716/1 |goto Plaguelands: The Scarlet Enclave/0 57.86,61.84
step
click Iron Chain##190938
|tip Inside the building.
collect Iron Chain##39326 |q 12716/2 |goto Plaguelands: The Scarlet Enclave/0 62.05,60.24
step
kill Mayor Quimby##28945 |q 12719/1 |goto Plaguelands: The Scarlet Enclave/0 52.24,71.17
|tip Inside the building.
step
click New Avalon Registry##190947
|tip Inside the building.
collect New Avalon Registry##39362 |q 12719/2 |goto Plaguelands: The Scarlet Enclave/0 52.45,71.00
step
label "Slay_Scarlet_Crusade_Soldiers"
kill Scarlet Crusader##28940, Scarlet Marksman##28610, Scarlet Commander##28936, Scarlet Preacher##28939
Slay #10# Scarlet Crusade Soldiers |q 12722/1 |goto Plaguelands: The Scarlet Enclave/0 54.27,70.15
step
label "Collect_Crusader_Skulls"
kill Scarlet Crusader##28940, Scarlet Marksman##28610, Scarlet Commander##28936, Scarlet Preacher##28939
kill Citizen of New Avalon##28942+
|tip Inside and outside the buildings around this area.
collect 10 Crusader Skull##39328 |q 12716/3 |goto Plaguelands: The Scarlet Enclave/0 54.27,70.15
step
label "Slay_Citizens_Of_New_Avalaon"
kill 15 Citizen of New Avalon##28942 |q 12722/2 |goto Plaguelands: The Scarlet Enclave/0 54.27,70.15
|tip Inside and outside the buildings around this area.
step
talk Prince Keleseth##28911
|tip Downstairs inside the crypt.
turnin Nowhere To Run And Nowhere To Hide##12719 |goto Plaguelands: The Scarlet Enclave/0 54.30,57.31
accept How To Win Friends And Influence Enemies##12720 |goto Plaguelands: The Scarlet Enclave/0 54.30,57.31
step
talk Baron Rivendare##28910
|tip Downstairs inside the crypt.
turnin Lambs To The Slaughter##12722 |goto Plaguelands: The Scarlet Enclave/0 54.66,57.43
step
talk Noth the Plaguebringer##28919
turnin The Plaguebringer's Request##12716 |goto Plaguelands: The Scarlet Enclave/0 55.89,52.39
accept Noth's Special Brew##12717 |goto Plaguelands: The Scarlet Enclave/0 55.89,52.39
step
click Plague Cauldron##190936
turnin Noth's Special Brew##12717 |goto Plaguelands: The Scarlet Enclave/0 56.15,51.98
step
use Ornate Jeweled Box##39418
collect Keleseth's Persuader##39371 |q 12720 |only if Frost
collect Keleseth's Persuader##142274 |q 12720 |only if Blood or Unholy
step
Equip Keleseth's Persuaders |equipped Keleseth's Persuader##39371 |q 12720 |only if Frost
Equip Keleseth's Persuader |equipped Keleseth's Persuader##142274 |q 12720 |only if Blood or Unholy
|tip Equip the two Keleseth's Persuaders in your bag. |only if Frost
|tip Equip the Keleseth's Persuader in your bag. |only if Blood or Unholy
step
kill Scarlet Crusader##28940, Scarlet Marksman##28610, Scarlet Commander##28936, Scarlet Preacher##28939
|tip Open the Ornate Jewelry Box and equip Keleseth's Persuader.
|tip Try not to kill them too fast, and stop attacking them when they start talking.
|tip Eventually one of the enemies will give you information.
Watch the dialogue
Reveal the "Crimson Dawn" |q 12720/1 |goto Plaguelands: The Scarlet Enclave/0 57.60,66.63
step
Equip Your Normal Weapon
Click Here After Equipping Your Normal Weapon |confirm |c |q 12720
step
talk Prince Keleseth##28911
|tip Downstairs inside the crypt.
turnin How To Win Friends And Influence Enemies##12720 |goto Plaguelands: The Scarlet Enclave/0 54.30,57.31
accept Behind Scarlet Lines##12723 |goto Plaguelands: The Scarlet Enclave/0 54.30,57.31
step
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin Behind Scarlet Lines##12723 |goto Plaguelands: The Scarlet Enclave/0 56.26,79.84
accept The Path Of The Righteous Crusader##12724 |goto Plaguelands: The Scarlet Enclave/0 56.26,79.84
step
talk Thassarian##28913
|tip Upstairs inside the building.
accept Brothers In Death##12725 |goto Plaguelands: The Scarlet Enclave/0 56.27,80.15
step
talk Koltira Deathweaver##28912
|tip Downstairs in the building.
turnin Brothers In Death##12725 |goto Plaguelands: The Scarlet Enclave/0 62.96,67.85
accept Bloody Breakout##12727 |goto Plaguelands: The Scarlet Enclave/0 62.96,67.85
step
Kill the enemies that attack in waves
kill High Inquisitor Valroth##29001
|tip Stay inside the bubble Koltira Deathweaver forms.
|tip It reduces spell damage done to you, so you'll live.
click High Inquisitor Valroth's Remains##191092
|tip It will be wherever you ended up killing High Inquisitor Valroth.
collect Valroth's Head##39510 |q 12727/1 |goto Plaguelands: The Scarlet Enclave/0 62.91,68.10
step
click New Avalon Patrol Schedule##191084
|tip Upstairs inside the building.
collect New Avalon Patrol Schedule##39504 |q 12724/1 |goto Plaguelands: The Scarlet Enclave/0 62.99,68.31
step
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin The Path Of The Righteous Crusader##12724 |goto Plaguelands: The Scarlet Enclave/0 56.26,79.84
step
talk Thassarian##28913
|tip Upstairs inside the building.
turnin Bloody Breakout##12727 |goto Plaguelands: The Scarlet Enclave/0 56.27,80.15
accept A Cry For Vengeance!##12738 |goto Plaguelands: The Scarlet Enclave/0 56.27,80.15
step
talk Knight Commander Plaguefist##29053
|tip He walks around this area.
turnin A Cry For Vengeance!##12738 |goto Plaguelands: The Scarlet Enclave/0 53.04,81.84
accept A Special Surprise##12742 |goto Plaguelands: The Scarlet Enclave/0 53.04,81.84 |only if Human
accept A Special Surprise##12743 |goto Plaguelands: The Scarlet Enclave/0 53.04,81.84 |only if NightElf
accept A Special Surprise##12744 |goto Plaguelands: The Scarlet Enclave/0 53.04,81.84 |only if Dwarf
accept A Special Surprise##12745 |goto Plaguelands: The Scarlet Enclave/0 53.04,81.84 |only if Gnome
accept A Special Surprise##12746 |goto Plaguelands: The Scarlet Enclave/0 53.04,81.84 |only if Draenei
accept A Special Surprise##28649 |goto Plaguelands: The Scarlet Enclave/0 53.04,81.84 |only if Worgen
accept A Special Surprise##12739 |goto Plaguelands: The Scarlet Enclave/0 53.04,81.84 |only if Tauren
accept A Special Surprise##12747 |goto Plaguelands: The Scarlet Enclave/0 53.04,81.84 |only if BloodElf
accept A Special Surprise##12748 |goto Plaguelands: The Scarlet Enclave/0 53.04,81.84 |only if Orc
accept A Special Surprise##12749 |goto Plaguelands: The Scarlet Enclave/0 53.04,81.84 |only if Troll
accept A Special Surprise##12750 |goto Plaguelands: The Scarlet Enclave/0 53.04,81.84 |only if Scourge
accept A Special Surprise##28650 |goto Plaguelands: The Scarlet Enclave/0 53.04,81.84 |only if Goblin
step
Watch the dialogue
kill Valok the Righteous##29070 |q 12746/1 |goto Plaguelands: The Scarlet Enclave/0 54.55,83.42
|tip Inside the building.
|only if Draenei
step
Watch the dialogue
kill Yazmina Oakenthorn##29065 |q 12743/1 |goto Plaguelands: The Scarlet Enclave/0 54.25,83.92
|tip Inside the building.
|only if NightElf
step
Watch the dialogue
kill Goby Blastenheimer##29068 |q 12745/1 |goto Plaguelands: The Scarlet Enclave/0 53.93,83.82
|tip Inside the building.
|only if Gnome
step
Watch the dialogue
kill Ellen Stanbridge##29061 |q 12742/1 |goto Plaguelands: The Scarlet Enclave/0 53.53,83.79
|tip Inside the building.
|only if Human
step
Watch the dialogue
kill Donovan Pulfrost##29067 |q 12744/1 |goto Plaguelands: The Scarlet Enclave/0 54.02,83.27
|tip Inside the building.
|only if Dwarf
step
Watch the dialogue
kill Lord Harford##49355 |q 28649/1 |goto Plaguelands: The Scarlet Enclave/0 54.14,83.26
|tip Inside the building.
|only if Worgen
step
Watch the dialogue
kill Malar Bravehorn##29032 |q 12739/1 |goto Plaguelands: The Scarlet Enclave/0 54.51,83.87
|tip Inside the building.
|only if Tauren
step
Watch the dialogue
kill Lady Eonys##29074 |q 12747/1 |goto Plaguelands: The Scarlet Enclave/0 54.28,83.28
|tip Inside the building.
|only if BloodElf
step
Watch the dialogue
kill Kug Ironjaw##29072 |q 12748/1 |goto Plaguelands: The Scarlet Enclave/0 53.77,83.26
|tip Inside the building.
|only if Orc
step
Watch the dialogue
kill Iggy Darktusk##29073 |q 12749/1 |goto Plaguelands: The Scarlet Enclave/0 53.80,83.78
|tip Inside the building.
|only if Troll
step
Watch the dialogue
kill Antoine Brack##29071 |q 12750/1 |goto Plaguelands: The Scarlet Enclave/0 53.53,83.30
|tip Inside the building.
|only if Scourge
step
Watch the dialogue
kill Gally Lumpstain##49356 |q 28650/1 |goto Plaguelands: The Scarlet Enclave/0 54.12,83.77
|tip Inside the building.
|only if Goblin
step
talk Knight Commander Plaguefist##29053
|tip He walks around this area.
turnin A Special Surprise##12742 |goto Plaguelands: The Scarlet Enclave/0 53.04,81.84 |only if Human
turnin A Special Surprise##12743 |goto Plaguelands: The Scarlet Enclave/0 53.04,81.84 |only if NightElf
turnin A Special Surprise##12744 |goto Plaguelands: The Scarlet Enclave/0 53.04,81.84 |only if Dwarf
turnin A Special Surprise##12745 |goto Plaguelands: The Scarlet Enclave/0 53.04,81.84 |only if Gnome
turnin A Special Surprise##12746 |goto Plaguelands: The Scarlet Enclave/0 53.04,81.84 |only if Draenei
turnin A Special Surprise##28649 |goto Plaguelands: The Scarlet Enclave/0 53.04,81.84 |only if Worgen
turnin A Special Surprise##12739 |goto Plaguelands: The Scarlet Enclave/0 53.04,81.84 |only if Tauren
turnin A Special Surprise##12747 |goto Plaguelands: The Scarlet Enclave/0 53.04,81.84 |only if BloodElf
turnin A Special Surprise##12748 |goto Plaguelands: The Scarlet Enclave/0 53.04,81.84 |only if Orc
turnin A Special Surprise##12749 |goto Plaguelands: The Scarlet Enclave/0 53.04,81.84 |only if Troll
turnin A Special Surprise##12750 |goto Plaguelands: The Scarlet Enclave/0 53.04,81.84 |only if Scourge
turnin A Special Surprise##28650 |goto Plaguelands: The Scarlet Enclave/0 53.04,81.84 |only if Goblin
accept A Sort Of Homecoming##12751 |goto Plaguelands: The Scarlet Enclave/0 53.04,81.84
step
talk Thassarian##28913
|tip Upstairs inside the building.
turnin A Sort Of Homecoming##12751 |goto Plaguelands: The Scarlet Enclave/0 56.27,80.15
step
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
accept Ambush At The Overlook##12754 |goto Plaguelands: The Scarlet Enclave/0 56.26,79.84
stickystart "Collect_Scarlet_Couriers_Message"
step
use Makeshift Cover##39645
kill Scarlet Courier##29076
collect Scarlet Courier's Belongings##39646 |q 12754/1 |goto Plaguelands: The Scarlet Enclave/0 59.92,78.25
step
label "Collect_Scarlet_Couriers_Message"
kill Scarlet Courier##29076
collect Scarlet Courier's Message##39647 |q 12754/2 |goto Plaguelands: The Scarlet Enclave/0 59.92,78.25
step
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin Ambush At The Overlook##12754 |goto Plaguelands: The Scarlet Enclave/0 56.26,79.84
accept A Meeting With Fate##12755 |goto Plaguelands: The Scarlet Enclave/0 56.26,79.84
step
talk High General Abbendis##29077
turnin A Meeting With Fate##12755 |goto Plaguelands: The Scarlet Enclave/0 65.65,83.82
accept The Scarlet Onslaught Emerges##12756 |goto Plaguelands: The Scarlet Enclave/0 65.65,83.82
step
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin The Scarlet Onslaught Emerges##12756 |goto Plaguelands: The Scarlet Enclave/0 56.26,79.84
accept Scarlet Armies Approach...##12757 |goto Plaguelands: The Scarlet Enclave/0 56.26,79.84
step
click Portal to Acherus##8046 |goto Plaguelands: The Scarlet Enclave/0 56.18,80.05
|tip Upstairs inside the building.
Teleport to Acherus |goto Plaguelands: The Scarlet Enclave/0 50.18,32.61 < 5 |noway |q 12757
step
talk Highlord Darion Mograine##28444
turnin Scarlet Armies Approach...##12757 |goto Plaguelands: The Scarlet Enclave/0 48.89,29.77
accept The Scarlet Apocalypse##12778 |goto Plaguelands: The Scarlet Enclave/0 48.89,29.77
step
clicknpc Scourge Gryphon##29488 |goto Plaguelands: The Scarlet Enclave/0 52.10,35.05
Arrive at Death's Breach |goto Plaguelands: The Scarlet Enclave/0 53.20,31.14 < 5 |noway |q 12778
step
talk The Lich King##29110
turnin The Scarlet Apocalypse##12778 |goto Plaguelands: The Scarlet Enclave/0 53.57,36.85
accept An End To All Things...##12779 |goto Plaguelands: The Scarlet Enclave/0 53.57,36.85
step
use Horn of the Frostbrood##39700
Summon a Dragon to Ride |invehicle |q 12779
stickystart "Destroy_Scarlet_Ballistas"
step
kill 150 Scarlet Soldier##4286 |q 12779/1 |goto Plaguelands: The Scarlet Enclave/0 55.90,61.84
|tip Use the abilities on your action bar.
step
label "Destroy_Scarlet_Ballistas"
Destroy #10# Scarlet Ballistas |q 12779/2 |goto Plaguelands: The Scarlet Enclave/0 57.03,60.81
|tip They look like big wooden crossbow machines around this area.
|tip Use the abilities on your action bar.
step
Return to Death's Breach |goto Plaguelands: The Scarlet Enclave/0 52.75,38.13 < 30 |q 12779
step
Click the yellow arrow on your action bar |outvehicle |goto Plaguelands: The Scarlet Enclave/0 52.75,38.13 |q 12779
step
talk The Lich King##29110
turnin An End To All Things...##12779 |goto Plaguelands: The Scarlet Enclave/0 53.57,36.85
accept The Lich King's Command##12800 |goto Plaguelands: The Scarlet Enclave/0 53.57,36.85
step
Enter the tunnel |goto Plaguelands: The Scarlet Enclave/0 49.13,28.35 < 15 |only if walking
talk Scourge Commander Thalanor##31082
|tip He walks around this area.
turnin The Lich King's Command##12800 |goto Plaguelands: The Scarlet Enclave/0 33.99,30.36
accept The Light of Dawn##12801 |goto Plaguelands: The Scarlet Enclave/0 33.99,30.36
step
talk Highlord Darion Mograine##29173
|tip If he's not here, then the battle has already started.
|tip You may be able to join the battle.  Skip to the next step, try to do it, and see if it works.
|tip If you're unable to join the battle, skip back to this step and wait for Highlord Darion Mograine to respawn.
Select _"I am ready, Highlord. Let the siege of Light's Hope begin!"_ |gossip 36227
|tip If he's here, but you can't choose this dialogue, that just means someone else already did it.
|tip Now you just need to wait for the battle to start.
|tip The battle starts 5 minutes after someone initiates this dialogue with him.
Click Here When the Battle Begins |confirm |goto Plaguelands: The Scarlet Enclave/0 34.44,31.10 |q 12801
step
Kill enemies around this area
|tip Follow your allies into battle.
Watch the dialogue
Uncover The Light of Dawn |q 12801/1 |goto Plaguelands: The Scarlet Enclave/0 38.79,38.34
step
talk Highlord Darion Mograine##29173
turnin The Light of Dawn##12801 |goto Plaguelands: The Scarlet Enclave/0 39.11,39.16
accept Taking Back Acherus##13165 |goto Plaguelands: The Scarlet Enclave/0 39.11,39.16
step
Use your Death Gate spell |cast Death Gate##50977
|tip Click the purple Death Gate portal that appears nearby.
Travel to Ebon Hold |goto Eastern Plaguelands/0 83.72,50.03 < 10 |noway |q 13165
step
talk Highlord Darion Mograine##29173
turnin Taking Back Acherus##13165 |goto Eastern Plaguelands/0 83.44,49.46
accept The Battle For The Ebon Hold##13166 |goto Eastern Plaguelands/0 83.44,49.46
step
Walk onto the teleport pad |goto Eastern Plaguelands/0 83.19,48.90
Teleport Downstairs |goto Eastern Plaguelands/0 82.68,47.79 < 10 |noway |q 13166
stickystart "Slay_Scourge"
step
kill Patchwerk##31099 |q 13166/1 |goto Eastern Plaguelands/0 81.99,46.37 |notravel
step
label "Slay_Scourge"
kill Terrifying Abomination##31098, Val'kyr Battle-maiden##31095, Scourge Necromancer##31096, Patchwerk##31099
Slay #10# Scourge |q 13166/2 |goto Eastern Plaguelands/0 82.35,47.13 |notravel
step
Walk onto the teleport pad |goto Eastern Plaguelands/0 83.28,49.12
Teleport Upstairs |goto Eastern Plaguelands/0 83.28,49.12 < 10 |noway |q 13166
step
talk Highlord Darion Mograine##31084
turnin The Battle For The Ebon Hold##13166 |goto Eastern Plaguelands/0 83.44,49.46
accept Saurfang's Blessing##13189 |goto Eastern Plaguelands/0 83.44,49.46
step
clicknpc Portal to Orgrimmar##103191 |goto Eastern Plaguelands/0 84.55,50.46
Teleport to Orgrimmar |goto Durotar/0 45.60,13.50 < 1000 |c |noway |q 13189
step
talk High Overlord Saurfang##14720
|tip Inside the building.
turnin Saurfang's Blessing##13189 |goto Orgrimmar/1 48.52,70.72
]])
QuestCore:RegisterGuide("Leveling Guides\\Starter Guides\\Goblin Starter",{
condition_suggested=function() return raceclass('Goblin') and level <= 13 and not completedq(25267) and not raceclass("DeathKnight") and not QC.InPhase("exilesreach") end,
condition_suggested_exclusive=true,
condition_end=function() return completedq(25267) or raceclass("DeathKnight") end,
condition_valid=function() return raceclass('Goblin')  end,
condition_valid_msg="Goblin only.",
next="Leveling Guides\\Classic (1-70)\\Kalimdor\\Northern Barrens (5-70)",
startlevel=1,
endlevel=10,
},[[
step
talk Sassy Hardwrench##34668
|tip Inside the building.
accept Taking Care of Business##14138 |goto Kezan/0 56.42,76.95
step
talk Foreman Dampwick##36471
turnin Taking Care of Business##14138 |goto Kezan/0 60.14,74.56
accept Trouble in the Mines##14075 |goto Kezan/0 60.14,74.56
accept Good Help is Hard to Find##14069 |goto Kezan/0 60.14,74.56
step
clicknpc Defiant Troll##34830+
|tip They look like trolls who are not working around this area.
Select _"Time is money! Get back to work!"_ |gossip 132915
Adjust #8# Attitudes |q 14069/1 |goto Kezan/0 69.15,81.75
step
kill 6 Tunneling Worm##34865 |q 14075/1 |goto Kezan/7 58.94,52.44
|tip Inside the mine.
step
talk Foreman Dampwick##36471
turnin Trouble in the Mines##14075 |goto Kezan/0 60.14,74.56
turnin Good Help is Hard to Find##14069 |goto Kezan/0 60.14,74.56
accept Kaja'Cola##25473 |goto Kezan/0 60.14,74.56
step
talk Sassy Hardwrench##34668
|tip Inside the building.
turnin Kaja'Cola##25473 |goto Kezan/0 56.42,76.95
accept Megs in Marketing##28349 |goto Kezan/0 56.42,76.95
step
talk Megs Dreadshredder##34874
turnin Megs in Marketing##28349 |goto Kezan/0 58.30,76.44
accept It's All in the Image##90869 |goto Kezan/0 58.30,76.44
step
talk Sassy Hardwrench##34668
|tip Inside the building.
Select _"I'll take Chip Endale."_ |gossip 133855 |noautogossip
Select _"I'll take Candy Cane."_ |gossip 133854 |noautogossip
|tip Choose the option you prefer.
Select a "Marketing Partner" |q 90869/1 |goto Kezan/0 56.42,76.95
step
talk Megs Dreadshredder##34874
turnin It's All in the Image##90869 |goto Kezan/0 58.30,76.44
accept Cruising##14071 |goto Kezan/0 58.30,76.44
step
use Keys to the Hotrod##46856
Enter the Hot Rod |invehicle |q 14071
step
Pick Up Izzy |q 14071/2 |goto Kezan/0 58.16,86.20
step
Pick Up Gobber |q 14071/4 |goto Kezan/0 59.92,49.73
step
Pick Up Ace |q 14071/3 |goto Kezan/0 47.96,37.73
step
talk Megs Dreadshredder##34874
turnin Rolling with my Homies##14071 |goto Kezan/0 58.31,76.45
accept Report for Tryouts##24567 |goto Kezan/0 58.31,76.45
step
talk Sassy Hardwrench##34668
|tip Inside the building.
accept Do it Yourself##14070 |goto Kezan/0 56.42,76.95
step
talk Candy Cane##35053
|tip Inside the building.
accept Off to the Bank##26712 |goto Kezan/0 56.31,77.11
|only if _G['UnitSex']("player")==2
step
talk Chip Endale##35054
|tip Inside the building.
accept Off to the Bank##26711 |goto Kezan/0 56.31,76.77
|only if _G['UnitSex']("player")==3
step
use Keys to the Hotrod##46856
Enter the Hot Rod |invehicle |q 24567
step
talk Coach Crosscheck##37106
turnin Report for Tryouts##24567 |goto Kezan/0 48.82,57.57
accept The Replacements##24488 |goto Kezan/0 48.82,57.57
step
click Replacement Parts##201603
|tip They look like yellow and silver metal crates on the ground around this area.
|tip You can do this while in your Hot Rod.
collect 6 Replacement Parts##49752 |q 24488/1 |goto Kezan/0 48.97,60.22
step
talk Coach Crosscheck##38738
turnin The Replacements##24488 |goto Kezan/0 48.82,57.57
accept Necessary Roughness##24502 |goto Kezan/0 48.82,57.57
step
clicknpc Bilgewater Buccaneer##48526
Take Control of a Bilgewater Buccaneer |invehicle |goto Kezan/0 47.70,57.75 |q 24502
step
Footbomb #8# Steamwheedle Sharks |q 24502/2 |goto Kezan/0 47.70,57.75
|tip Use the "Throw Footbomb" ability on your action bar on Steamwheedle Sharks.
|tip They look like shredders walking toward you on the footbomb field.
step
Click the Complete Quest Box:
turnin Necessary Roughness##24502
accept Fourth and Goal##24503
step
Kick a Footbomb Through the Smokestacks |q 24503/1
|tip Use the "Kick Footbomb" ability on your action bar.
|tip Aim through the 2 tall gray chimney smokestacks.
|tip The smokestacks look like 2 tall metal chimneys on top of a building with a green roof.
step
talk Coach Crosscheck##38738
turnin Fourth and Goal##24503 |goto Kezan/0 48.82,57.57
accept Give Sassy the Good News##24520 |goto Kezan/0 48.82,57.57
step
kill Bruno Flameretardant##34835
Beat Down Bruno Flameretardant |q 14070/1 |goto Kezan/0 45.25,74.72
step
kill Sudsy Magee##34878
Beat Down Sudsy Magee |q 14070/4 |goto Kezan/0 41.64,81.92
step
kill Jack the Hammer##34877
Beat Down Jack the Hammer |q 14070/3 |goto Kezan/0 35.05,77.84
step
kill Frankie Gearslipper##34876
Beat Down Frankie Gearslipper |q 14070/2 |goto Kezan/0 36.84,69.93
step
talk FBoK Bank Teller##35120
|tip Inside the building.
turnin Off to the Bank##26712 |goto Kezan/0 30.11,71.92 |only if _G['UnitSex']("player")==2
turnin Off to the Bank##26711 |goto Kezan/0 30.11,71.92 |only if _G['UnitSex']("player")==3
accept The New You##14109 |goto Kezan/0 30.11,71.92 |or |only if _G['UnitSex']("player")==2
accept The New You##14110 |goto Kezan/0 30.11,71.92 |or |only if _G['UnitSex']("player")==3
step
talk Szabo##35128
Select _"Szabo, I need a hip, new outfit for the party I'm throwing!"_
collect Hip New Outfit##47046 |q 14109/2 |goto Kezan/0 37.64,55.46 |only if _G['UnitSex']("player")==2
collect Hip New Outfit##47046 |q 14110/2 |goto Kezan/0 37.64,55.46 |only if _G['UnitSex']("player")==3
step
talk Gappy Silvertooth##35126
Select _"Set me up with the phattest, shiniest bling you got!"_
collect Shiny Bling##47045 |q 14109/1 |goto Kezan/0 34.88,45.73 |only if _G['UnitSex']("player")==2
collect Shiny Bling##47045 |q 14110/1 |goto Kezan/0 34.88,45.73 |only if _G['UnitSex']("player")==3
step
talk Missa Spekkies##35130
Select _"I need some cool shades.  What will two stacks of macaroons get me?"_
collect Cool Shades##47047 |q 14109/3 |goto Kezan/0 40.43,45.77 |only if _G['UnitSex']("player")==2
collect Cool Shades##47047 |q 14110/3 |goto Kezan/0 40.43,45.77 |only if _G['UnitSex']("player")==3
step
talk Sassy Hardwrench##34668
|tip Inside the building.
turnin Give Sassy the Good News##24520 |goto Kezan/0 56.42,76.95
turnin Do It Yourself##14070 |goto Kezan/0 56.42,76.95
step
talk Candy Cane##39426
|tip Inside the building.
turnin The New You##14109 |goto Kezan/0 56.31,77.11
|only if _G['UnitSex']("player")==2
step
talk Chip Endale##35054
|tip Inside the building.
turnin The New You##14110 |goto Kezan/0 56.31,76.77
|only if _G['UnitSex']("player")==3
step
talk Candy Cane##39426
accept Life of the Party##14113 |goto Kezan/0 56.31,77.11
|only if _G['UnitSex']("player")==2
step
talk Chip Endale##35054
accept Life of the Party##14153 |goto Kezan/0 56.31,76.77
|only if _G['UnitSex']("player")==3
step
Use the "Bubbly" ability on your action bar
|tip Use it next to goblins that are drinking.
Use the "Bucket" ability on your action bar
|tip Use it next to goblins that look dazed.
Use the "Dance" ability on your action bar
|tip Use it next to goblins that are dancing.
Use the "Fireworks" ability on your action bar
|tip Use it next to goblins that are holding orange fireworks.
Use the "Hors D'oeuvres" ability on your action bar
|tip Use it next to goblins that are eating.
Entertain #10# Partygoers |q 14113/1 |goto Kezan/0 59.32,80.77 |only if _G['UnitSex']("player")==2
Entertain #10# Partygoers |q 14153/1 |goto Kezan/0 59.32,80.77 |only if _G['UnitSex']("player")==3
step
talk Sassy Hardwrench##34668
|tip Inside the building.
turnin Life of the Party##14113 |goto Kezan/0 56.42,76.95 |only if _G['UnitSex']("player")==2
turnin Life of the Party##14153 |goto Kezan/0 56.42,76.95 |only if _G['UnitSex']("player")==3
accept Pirate Party Crashers##14115
step
kill 12 Pirate Party Crasher##35200+ |q 14115/1 |goto Kezan/0 59.91,81.89
step
talk Sassy Hardwrench##34668
|tip Inside the building.
turnin Pirate Party Crashers##14115 |goto Kezan/0 56.42,76.95
accept The Uninvited Guest##14116 |goto Kezan/0 56.42,76.95
step
talk Trade Prince Gallywix##39582
|tip Upstairs inside the building.
turnin The Uninvited Guest##14116 |goto Kezan/0 56.71,76.94
accept A Bazillion Macaroons?!##14120 |goto Kezan/0 56.71,76.94
step
talk Sassy Hardwrench##34668
turnin A Bazillion Macaroons?!##14120 |goto Kezan/0 59.61,77.04
accept The Great Bank Heist##14122 |goto Kezan/0 59.61,77.04
step
talk Slinky Sharpshiv##36729
|tip She walks around this area.
accept Waltz Right In##14123 |goto Kezan/0 58.98,76.77
step
talk Megs Dreadshredder##34874
accept Robbing Hoods##14121 |goto Kezan/0 60.00,78.17
step
talk Foreman Dampwick##36471
accept Liberating the Kaja'mite##14124 |goto Kezan/0 62.96,77.81
step
use Kablooey Bombs##48768
|tip Use it on Kaja'mite Deposits.
|tip They look like green mining nodes around this area.
click Kaja'mite Chunk##195492+
|tip They appear on the ground.
collect 12 Kaja'mite Chunk##48766 |q 14124/1 |goto Kezan/0 69.53,86.02
step
talk Foreman Dampwick##36471
turnin Liberating the Kaja'mite##14124 |goto Kezan/0 62.96,77.81
step
use Keys to the Hotrod##46856
Enter the Hot Rod |invehicle |q 14121
step
Run Over Hired Looters with your Hot Rod
|tip They look like pirates throwing explosives in the streets around this area.
collect 12 Stolen Loot##47530 |q 14121/1 |goto Kezan/0 40.68,52.33
step
clicknpc First Bank of Kezan Vault##35486
|tip Inside the building.
Access the First Bank of Kezan Vault |q 14122/1 |goto Kezan/0 30.19,71.23
step
Use the abilities on your action bar
|tip Use them in the correct order when it tells you to.
|tip Just match the icons that come up on-screen with your skill icons on your action bar.
collect Personal Riches##46858 |q 14122/2 |goto Kezan/0 30.19,71.23
step
Reach This Location |goto Kezan/0 23.71,40.18 < 10 |q 14123
|tip You will become disguised automatically.
|tip Avoid the Keensnout Potbellies in this area, they will remove your Mook Disguise.
step
click The Ultimate Bomb##195518
|tip It looks like a huge red spiked bomb inside the building.
collect The Ultimate Bomb##48941 |q 14123/3 |goto Kezan/0 19.93,30.66
|tip Avoid the Keensnout Potbellies in this area, they will remove your Mook Disguise.
step
click The Goblin Lisa##195516
|tip It looks like a painting of a goblin inside the building.
collect The Goblin Lisa##48939 |q 14123/2 |goto Kezan/0 12.85,35.18
|tip Avoid the Keensnout Potbellies in this area, they will remove your Mook Disguise.
step
click Maldy's Falcon##195515
|tip It looks like a stone bird statue upstairs inside the building.
collect Maldy's Falcon##48937 |q 14123/1 |goto Kezan/0 16.70,46.35
|tip Avoid the Keensnout Potbellies in this area, they will remove your Mook Disguise.
step
talk Slinky Sharpshiv##36729
|tip She walks around this area.
turnin Waltz Right In##14123 |goto Kezan/0 58.98,76.77
step
talk Sassy Hardwrench##34668
turnin The Great Bank Heist##14122 |goto Kezan/0 59.61,77.04
step
talk Megs Dreadshredder##34874
turnin Robbing Hoods##14121 |goto Kezan/0 60.02,78.15
step
talk Sassy Hardwrench##34668
accept 447##14125 |goto Kezan/0 59.61,77.04
step
click Defective Generator##201735
|tip It looks like a huge electric coil inside the building.
Overload the Defective Generator |q 14125/1 |goto Kezan/0 56.07,76.64
step
click Leaky Stove##201733
|tip It looks like a gray metal furnace inside the building.
Activate the Leaky Stove |q 14125/2 |goto Kezan/0 56.05,74.68
step
click Flammable Bed##201734
|tip It looks like a red bed upstairs inside the building.
Drop a Cigar on the Flammable Bed |q 14125/3 |goto Kezan/0 56.62,75.02
step
click Gasbot Control Panel##356
Set the KTC Headquarters Ablaze with Gasbot |q 14125/4 |goto Kezan/0 59.36,76.81
step
talk Claims Adjuster##37602
turnin 447##14125 |goto Kezan/0 59.59,76.63
step
talk Sassy Hardwrench##34668
accept Life Savings##14126 |goto Kezan/0 59.60,77.05
step
talk Sassy Hardwrench##34668 |goto Kezan/0 59.61,77.04
Select _"Okay, Sassy, I'm ready to go."_ |gossip 39894
Ride with Sassy |goto Kezan/0 59.61,77.04 > 30 |noway |q 14126
step
Travel to Gallywix's Yacht |goto Kezan/0 21.38,13.24 < 10 |q 14126
step
talk Trade Prince Gallywix##39582
turnin Life Savings##14126 |goto Kezan/0 20.84,13.71
step
Watch the dialogue
talk Doc Zapnozzle##36608
accept Don't Go Into the Light!##14239 |goto The Lost Isles/0 24.60,77.94
step
talk Geargrinder Gizmo##36600
|tip You will be offered one of these two quests.
accept Goblin Escape Pods##14001 |goto The Lost Isles/0 24.65,77.94 |or
accept Goblin Escape Pods##14474 |goto The Lost Isles/0 24.65,77.94 |or
step
click Goblin Escape Pod##195188+
|tip They look like red barrels floating in the water around this area.
Rescue #6# Goblin Survivors |q 14001/1 |goto The Lost Isles/0 25.12,79.73
|only if haveq(14001)
step
click Goblin Escape Pod##195188+
|tip They look like red barrels floating in the water around this area.
Rescue #6# Goblin Survivors |q 14474/1 |goto The Lost Isles/0 25.12,79.73
|only if haveq(14474)
step
talk Sassy Hardwrench##35650
turnin Goblin Escape Pods##14001 |goto The Lost Isles/0 27.88,75.54 |only if haveq(14001) or completedq(14001)
turnin Goblin Escape Pods##14474 |goto The Lost Isles/0 27.88,75.54 |only if haveq(14474) or completedq(14474)
accept Get Our Stuff Back!##14014 |goto The Lost Isles/0 27.88,75.54
step
talk Grimy Greasefingers##36496
home Shipwreck Shore |goto The Lost Isles/0 28.01,75.79 |q 14014
step
talk Bamm Megabomb##35758
accept Monkey Business##14019 |goto The Lost Isles/0 27.94,74.43
step
talk Maxx Avalanche##35786
accept It's Our Problem Now##14473 |goto The Lost Isles/0 27.85,74.29
stickystart "Slay_Teraptor_Hatchlings"
stickystart "Collect_Crates_Of_Tools"
step
clicknpc Bomb-Throwing Monkey##34699+
|tip They look like small gray monkeys on the ground around this area.
use Nitro-Potassium Bananas##49028
|tip Use it on Bomb-Throwing Monkeys around this area.
Feed #10# Bomb-Throwing Monkeys |q 14019/1 |goto The Lost Isles/0 28.19,72.85
step
label "Slay_Teraptor_Hatchlings"
kill 6 Teraptor Hatchling##36740 |q 14473/1 |goto The Lost Isles/0 28.05,72.06
step
label "Collect_Crates_Of_Tools"
click Crate of Tools##195201+
|tip They look like small yellow and silver metal crates on the ground around this area.
collect 8 Crate of Tools##46828 |q 14014/1 |goto The Lost Isles/0 28.39,72.00
step
talk Maxx Avalanche##35786
turnin It's Our Problem Now##14473 |goto The Lost Isles/0 27.85,74.29
step
talk Bamm Megabomb##35758
turnin Monkey Business##14019 |goto The Lost Isles/0 27.95,74.42
step
talk Sassy Hardwrench##35650
turnin Get Our Stuff Back!##14014 |goto The Lost Isles/0 27.88,75.54
accept Help Wanted##14248 |goto The Lost Isles/0 27.88,75.54
step
talk Foreman Dampwick##35769
turnin Help Wanted##14248 |goto The Lost Isles/0 31.27,79.26
accept Miner Troubles##14021 |goto The Lost Isles/0 31.27,79.26
accept Capturing the Unknown##14031 |goto The Lost Isles/0 31.27,79.26
stickystart "Make_Kajamite_Ore_Success"
step
use KTC Snapflash##49887
|tip Inside the cave.
Capture Cave Painting 1 |q 14031/1 |goto The Lost Isles/1 51.68,71.19
step
use KTC Snapflash##49887
|tip Inside the cave.
Capture Cave Painting 2 |q 14031/2 |goto The Lost Isles/1 62.49,70.03
step
use KTC Snapflash##49887
|tip Inside the cave.
Capture Cave Painting 3 |q 14031/3 |goto The Lost Isles/1 86.82,44.36
step
use KTC Snapflash##49887
|tip Inside the cave.
Capture the Pygmy Altar |q 14031/4 |goto The Lost Isles/1 44.82,25.20
step
label "Make_Kajamite_Ore_Success"
Escort the Frightened Miner
|tip Stay close to him and protect him from enemies.
|tip Inside the cave.
Make the Kaja'mite Ore Mining a Success |q 14021/1 |goto The Lost Isles/1 50.84,16.88
step
talk Dead Orc Scout##35837
|tip Inside the cave.
accept Orcs Can Write?##14233 |goto The Lost Isles/1 41.50,25.47
step
talk Foreman Dampwick##35769
turnin Miner Troubles##14021 |goto The Lost Isles/0 31.27,79.26
step
talk Sassy Hardwrench##35650
turnin Capturing the Unknown##14031 |goto The Lost Isles/0 27.88,75.54
turnin Orcs Can Write?##14233 |goto The Lost Isles/0 27.88,75.54
accept The Enemy of My Enemy##14234 |goto The Lost Isles/0 27.88,75.54
step
talk Aggra##35875
turnin The Enemy of My Enemy##14234 |goto The Lost Isles/0 37.63,78.03
accept The Vicious Vale##14235 |goto The Lost Isles/0 37.63,78.03
step
talk Kilag Gorefang##35893
turnin The Vicious Vale##14235 |goto The Lost Isles/0 35.43,75.71
accept Weed Whacker##14236 |goto The Lost Isles/0 35.43,75.71
step
use Weed Whacker##49108
Become a Weed Whacker |havebuff Weed Whacker##68211 |q 14236
step
Mow Down #100# Deadly Jungle Plants |q 14236/1 |goto The Lost Isles/0 34.62,73.67
step
talk Kilag Gorefang##35893
turnin Weed Whacker##14236 |goto The Lost Isles/0 35.44,75.70
accept Back to Aggra##14303 |goto The Lost Isles/0 35.44,75.70
step
talk Aggra##35875
turnin Back to Aggra##14303 |goto The Lost Isles/0 37.63,78.04
accept Forward Movement##14237 |goto The Lost Isles/0 37.63,78.04
step
talk Kilag Gorefang##35893
turnin Forward Movement##14237 |goto The Lost Isles/0 34.62,66.85
accept Infrared = Infradead##14238 |goto The Lost Isles/0 34.62,66.85
step
use Infrared Heat Focals##49611
Wear the Infrared Heat Focals |havebuff Infrared Heat Focals##69303 |q 14238
step
kill 10 SI:7 Assassin##36092 |q 14238/1 |goto The Lost Isles/0 31.87,65.71
|tip They will appear on your minimap as red dots.
step
talk Kilag Gorefang##35917
turnin Infrared = Infradead##14238 |goto The Lost Isles/0 34.61,66.85
accept To the Cliffs##14240 |goto The Lost Isles/0 34.61,66.85
step
Travel to Scout Brax |goto The Lost Isles/0 25.34,59.85 < 10 |q 14240
step
talk Scout Brax##36112
turnin To the Cliffs##14240 |goto The Lost Isles/0 25.29,59.84
accept Get to the Gyrochoppa!##14241 |goto The Lost Isles/0 25.29,59.84
step
kill SI:7 Operative##36103+
collect Gyrochoppa Keys##49424 |q 14241/1 |goto The Lost Isles/0 24.56,64.40
step
clicknpc Gyrochoppa##36127
turnin Get to the Gyrochoppa!##14241 |goto The Lost Isles/0 23.23,67.52
accept Precious Cargo##14242 |goto The Lost Isles/0 23.23,67.52
step
Fly to the Ship |goto The Lost Isles/0 12.87,63.44 < 10 |q 14242
step
talk Thrall##36161
|tip Downstairs in the ship.
Locate the Precious Cargo |q 14242/1 |goto The Lost Isles/0 11.80,62.75
step
talk Thrall##36161
|tip Downstairs in the ship.
turnin Precious Cargo##14242 |goto The Lost Isles/0 11.80,62.75
accept Meet Me Up Top##14326 |goto The Lost Isles/0 11.80,62.75
step
talk Thrall##36161
|tip On the deck of the ship.
turnin Meet Me Up Top##14326 |goto The Lost Isles/0 12.41,63.12
accept Warchief's Revenge##14243 |goto The Lost Isles/0 12.41,63.12
step
kill 50 Alliance Sailor##36176 |q 14243/1 |goto The Lost Isles/0 12.84,61.62
|tip Use the "Lightning Strike" ability on your action bar.
|tip They are in the water below you as you fly around in the tornado.
step
talk Thrall##36188
turnin Warchief's Revenge##14243 |goto The Lost Isles/0 35.92,66.72
accept Farewell, For Now##14445 |goto The Lost Isles/0 35.92,66.72
step
talk Sassy Hardwrench##36425
turnin Farewell, For Now##14445 |goto The Lost Isles/0 36.03,67.53
accept Up, Up & Away!##14244 |goto The Lost Isles/0 36.03,67.53
step
click Rocket Sling##196439
Select _"Up, Up & Away!"_ |gossip 37854
Survive the Rocket Sling Trip |q 14244/1 |goto The Lost Isles/0 36.29,66.59
step
talk Foreman Dampwick##36470
turnin Up, Up & Away!##14244 |goto The Lost Isles/0 44.54,64.36
accept It's a Town-In-A-Box##14245 |goto The Lost Isles/0 44.54,64.36
step
click Town-In-A-Box Plunger##9277
|tip On top of the big pile of explosives.
Set Off the Town-In-A-Box |q 14245/1 |goto The Lost Isles/0 45.49,65.36
step
talk Foreman Dampwick##36471
turnin It's a Town-In-A-Box##14245 |goto The Lost Isles/0 45.36,64.74
accept Hobart Needs You##27139 |goto The Lost Isles/0 45.36,64.74
step
talk Hobart Grapplehammer##38120
turnin Hobart Needs You##27139 |goto The Lost Isles/0 45.34,65.22
accept Cluster Cluck##24671 |goto The Lost Isles/0 45.34,65.22
step
clicknpc Wild Clucker##38111+
|tip They look like little robotic chickens walking around this area.
Capture #10# Wild Cluckers |q 24671/1 |goto The Lost Isles/0 46.09,64.42
step
talk Hobart Grapplehammer##38120
turnin Cluster Cluck##24671 |goto The Lost Isles/0 45.34,65.22
step
talk Bamm Megabomb##38122
accept Trading Up##24741 |goto The Lost Isles/0 45.25,64.85
step
use Wild Clucker Eggs##50232
|tip Use it near Raptor Traps.
|tip They look like big spiked metal traps on the ground around this area.
|tip Make sure Spiny Raptors are nearby when you use it.
|tip Don't kill the Spiny Raptors by attacking them.
click Raptor Egg##201974+
|tip They appear under the Raptor Traps when you catch a Spiny Raptor.
collect 5 Spiny Raptor Egg##50239 |q 24741/1 |goto The Lost Isles/0 49.43,69.11
step
talk Bamm Megabomb##38122
turnin Trading Up##24741 |goto The Lost Isles/0 45.25,64.85
step
talk Hobart Grapplehammer##38120
accept The Biggest Egg Ever##24744 |goto The Lost Isles/0 45.34,65.21
step
kill Mechachicken##38224
|tip It's a big robot chicken that walks around this area.
click The Biggest Egg Ever##201977
|tip It appears after you kill the Mechachicken.
collect The Biggest Egg Ever##50261 |q 24744/1 |goto The Lost Isles/0 45.41,56.08
step
talk Hobart Grapplehammer##38120
turnin The Biggest Egg Ever##24744 |goto The Lost Isles/0 45.34,65.22
accept Who's Top of the Food Chain Now?##24816 |goto The Lost Isles/0 45.34,65.22
step
kill Ravenous Lurker##36681+
|tip Underwater.
|tip Avoid "The Hammer" elite shark while killing Ravenous Lurkers.
collect 6 Shark Parts##50381 |q 24816/1 |goto The Lost Isles/0 42.25,63.45
step
talk Assistant Greely##39199
turnin Who's Top of the Food Chain Now?##24816 |goto The Lost Isles/0 45.27,65.56
accept A Goblin in Shark's Clothing##24817 |goto The Lost Isles/0 45.27,65.56
step
click Mechashark X-Steam Controller##202108
Use the Mechashark X-Steam Controller |q 24817/1 |goto The Lost Isles/0 43.63,65.09
step
kill The Hammer##36682 |q 24817/2 |goto The Lost Isles/0 42.10,66.30
|tip Use the abilities on your action bar.
step
talk Hobart Grapplehammer##38120
turnin A Goblin in Shark's Clothing##24817 |goto The Lost Isles/0 45.34,65.21
accept Invasion Imminent!##24856 |goto The Lost Isles/0 45.34,65.21
step
talk Megs Dreadshredder##38432
turnin Invasion Imminent!##24856 |goto The Lost Isles/0 52.20,73.15
accept Bilgewater Cartel Represent##24858 |goto The Lost Isles/0 52.20,73.15
step
talk Brett "Coins" McQuid##38381
accept Naga Hide##24859 |goto The Lost Isles/0 52.20,73.22
stickystart "Replace_Naga_Banners"
step
kill Vashj'elan Warrior##38359, Vashj'elan Siren##38360
collect 5 Intact Naga Hide##50437 |q 24859/1 |goto The Lost Isles/0 54.14,79.24
step
label "Replace_Naga_Banners"
click Naga Banner##246389+
|tip They look like purple flags hanging from golden rods around this area.
Replace #10# Naga Banners |q 24858/1 |goto The Lost Isles/0 54.14,79.24
step
talk Brett "Coins" McQuid##38381
turnin Naga Hide##24859 |goto The Lost Isles/0 52.20,73.22
step
talk Megs Dreadshredder##38432
turnin Bilgewater Cartel Represent##24858 |goto The Lost Isles/0 52.20,73.14
accept Irresistible Pool Pony##24864 |goto The Lost Isles/0 52.20,73.14
step
use Irresistible Pool Pony##50602
Ride the Irresistible Pool Pony |havebuff Irresistible Pool Pony##71914 |goto The Lost Isles/0 58.09,80.33 |q 24864
step
talk Naga Hatchling##44589
|tip They look like tiny naga swimming underwater around this area.
Lure #12# Naga Hatchlings |q 24864/1 |goto The Lost Isles/0 59.87,83.59
step
talk Megs Dreadshredder##38432
turnin Irresistible Pool Pony##24864 |goto The Lost Isles/0 52.20,73.14
accept Surrender or Else!##24868 |goto The Lost Isles/0 52.20,73.14
step
kill Faceless of the Deep##38448
|tip Follow Ace as he runs with the Naga Hatchlings.
Deal with the Leader of the Naga |q 24868/1 |goto The Lost Isles/0 54.17,91.28
step
talk Megs Dreadshredder##38432
turnin Surrender or Else!##24868 |goto The Lost Isles/0 52.20,73.14
accept Get Back to Town##24897 |goto The Lost Isles/0 52.20,73.14
step
talk Sassy Hardwrench##38387
turnin Get Back to Town##24897 |goto The Lost Isles/0 45.18,64.91
accept Town-In-A-Box: Under Attack##24901 |goto The Lost Isles/0 45.18,64.91
step
clicknpc B.C. Eliminator##38526
Mount the Turret |invehicle |goto The Lost Isles/0 45.69,64.94 |q 24901
step
Defeat #30# Oomlot Warriors |q 24901/1 |goto The Lost Isles/0 46.82,65.32
|tip Use the "Fire Cannon" ability on your action bar.
step
talk Sassy Hardwrench##38869
turnin Town-In-A-Box: Under Attack##24901 |goto The Lost Isles/0 45.18,64.91
accept Oomlot Village##24924 |goto The Lost Isles/0 45.18,64.91
step
talk Izzy##38647
turnin Oomlot Village##24924 |goto The Lost Isles/0 56.57,71.96
accept Free the Captives##24925 |goto The Lost Isles/0 56.57,71.96
accept Send a Message##24929 |goto The Lost Isles/0 56.57,71.96
stickystart "Free_Goblin_Captives"
step
kill Yngwie##38696 |q 24929/1 |goto The Lost Isles/0 62.92,68.53
step
label "Free_Goblin_Captives"
kill Oomlot Shaman##38644+
|tip Only kill the Oomlot Shamans that are casting a green spell on Goblin Captives.
Free #5# Goblin Captives |q 24925/1 |goto The Lost Isles/0 60.92,70.46
step
talk Izzy##38647
turnin Free the Captives##24925 |goto The Lost Isles/0 56.57,71.96
turnin Send a Message##24929 |goto The Lost Isles/0 56.57,71.96
accept Oomlot Dealt With##24937 |goto The Lost Isles/0 56.57,71.96
step
talk Sassy Hardwrench##38387
turnin Oomlot Dealt With##24937 |goto The Lost Isles/0 45.17,64.90
accept Up the Volcano##24940 |goto The Lost Isles/0 45.17,64.90
step
talk Coach Crosscheck##38738
turnin Up the Volcano##24940 |goto The Lost Isles/0 51.79,47.11
accept Zombies vs. Super Booster Rocket Boots##24942 |goto The Lost Isles/0 51.79,47.11
step
talk Foreman Dampwick##36471
accept Three Little Pygmies##24945 |goto The Lost Isles/0 51.86,47.20
step
talk Assistant Greely##39199
accept Rockin' Powder##24946 |goto The Lost Isles/0 51.72,47.39
step
use Super Booster Rocket Boot##52013
Wear the Super Booster Rocket Boots |havebuff Super Booster Rocket Boots##72887 |q 24946
stickystart "Collect_Rockin_Powder"
stickystart "Slay_Goblin_Zombies"
step
kill Gaahl##38808 |q 24945/1 |goto The Lost Isles/0 59.60,40.19
step
kill Malmo##38809 |q 24945/2 |goto The Lost Isles/0 58.78,47.20
step
kill Teloch##38810 |q 24945/3 |goto The Lost Isles/0 63.62,52.77
step
label "Collect_Rockin_Powder"
click Rockin' Powder##202351+
|tip They look like brown piles of dirt on the ground around this area.
collect 5 Rockin' Powder##52024 |q 24946/1 |goto The Lost Isles/0 59.37,43.76
step
label "Slay_Goblin_Zombies"
use Super Booster Rocket Boots##52013
|tip Use it near Goblin Zombies around this area.
kill 50 Goblin Zombie##38816+ |q 24942/1 |goto The Lost Isles/0 57.99,45.28
step
talk Coach Crosscheck##38738
turnin Zombies vs. Super Booster Rocket Boots##24942 |goto The Lost Isles/0 51.79,47.11
step
talk Foreman Dampwick##36471
turnin Three Little Pygmies##24945 |goto The Lost Isles/0 51.85,47.19
step
talk Assistant Greely##38124
turnin Rockin' Powder##24946 |goto The Lost Isles/0 51.73,47.38
step
talk Coach Crosscheck##38738
accept Rocket Boot Boost##24952 |goto The Lost Isles/0 51.79,47.11
step
use Rockin' Powder Infused Rocket Boots##52032
Use the Rockin' Powder Infused Rocket Boots |q 24952/1 |goto The Lost Isles/0 51.80,47.10
step
talk Hobart Grapplehammer##38120
turnin Rocket Boot Boost##24952 |goto The Lost Isles/0 68.93,46.44
accept Children of a Turtle God##24954 |goto The Lost Isles/0 68.93,46.44
step
kill Child of Volcanoth##38845+
collect 10 Fire Gland##52035 |q 24954/1 |goto The Lost Isles/0 68.06,43.97
step
talk Hobart Grapplehammer##38120
turnin Children of a Turtle God##24954 |goto The Lost Isles/0 68.93,46.44
accept Volcanoth!##24958 |goto The Lost Isles/0 68.93,46.44
step
clicknpc Volcanoth##38855
use Bootzooka##52043
|tip Use it on Volcanoth repeatedly.
|tip Inside the cave.
kill Volcanoth##38855 |q 24958/1 |goto The Lost Isles/2 55.69,36.16
|tip Take cover behind the rock on the left when Volcanoth casts "Volcanic Breath".
step
talk Sassy Hardwrench##38928
|tip Inside the cave.
turnin Volcanoth!##24958 |goto The Lost Isles/2 62.70,49.84
accept Old Friends##25023 |goto The Lost Isles/2 62.70,49.84
step
Watch the dialogue
Fly to Warchief's Lookout |goto The Lost Isles/0 37.62,43.06 < 10 |q 25023 |notravel
step
talk Thrall##38935
turnin Old Friends##25023 |goto The Lost Isles/0 36.79,43.13
accept Repel the Paratroopers##25024 |goto The Lost Isles/0 36.79,43.13
step
talk Aggra##39065
accept The Heads of the SI:7##25093 |goto The Lost Isles/0 36.26,43.37
step
talk Sassy Hardwrench##38387
accept Mine Disposal, the Goblin Way##25058 |goto The Lost Isles/0 37.36,41.91
stickystart "Slay_Alliance_Paratroopers"
stickystart "Detonate_Land_Mines"
step
kill Commander Arrington##39141
collect Commander Arrington's Head##52346 |q 25093/1 |goto The Lost Isles/0 32.29,42.87
step
kill Alexi Silenthowl##39143
collect Alexi Silenthowl's Head##52349 |q 25093/3 |goto The Lost Isles/0 30.80,33.93
step
kill Darkblade Cyn##39142
collect Darkblade Cyn's Head##52347 |q 25093/2 |goto The Lost Isles/0 33.43,27.87
step
label "Slay_Alliance_Paratroopers"
kill 15 Alliance Paratrooper##39069+ |q 25024/1 |goto The Lost Isles/0 33.24,39.61
step
label "Detonate_Land_Mines"
use Satchel of Grenades##52280
|tip Use it on land mines.
|tip They look like silver objects on the ground around this area.
Detonate #10# Land Mines |q 25058/1 |goto The Lost Isles/0 33.24,39.61
step
talk Thrall##38935
turnin Repel the Paratroopers##25024 |goto The Lost Isles/0 36.79,43.13
step
talk Aggra##39065
turnin The Heads of the SI:7##25093 |goto The Lost Isles/0 36.27,43.37
step
talk Sassy Hardwrench##38387
turnin Mine Disposal, the Goblin Way##25058 |goto The Lost Isles/0 37.35,41.92
accept The Pride of Kezan##25066 |goto The Lost Isles/0 37.35,41.92
step
talk Sassy Hardwrench##38869
Select _"Get me up into the skies, Sassy!"_ |gossip 35981
Pilot the Airplane |invehicle |c |q 25066 |goto The Lost Isles/0 37.35,41.92
step
Kill Gnomeregan Stealth Fighters
|tip The look like airplanes flying around in the sky around this area.
|tip Use your abilities on your action bar.
Shoot Down #10# Gnomeregan Stealth Fighters |q 25066/1 |goto The Lost Isles/0 31.53,36.54
step
Click the yellow arrow on your action bar |outvehicle |goto The Lost Isles/0 37.39,42.08 |q 25066 |notravel
|tip You will drop out of the airplane without a parachute, so make sure you are close to the ground.
step
talk Sassy Hardwrench##38387
turnin The Pride of Kezan##25066 |goto The Lost Isles/0 37.36,41.92
accept The Warchief Wants You##25098 |goto The Lost Isles/0 37.36,41.92
step
talk Thrall##38935
turnin The Warchief Wants You##25098 |goto The Lost Isles/0 36.79,43.13
accept Borrow Bastia##25099 |goto The Lost Isles/0 36.79,43.13
step
talk Kilag Gorefang##35893
turnin Borrow Bastia##25099 |goto The Lost Isles/0 33.79,38.78
accept Let's Ride##25100 |goto The Lost Isles/0 33.79,38.78
step
Travel to Slinky Sharpshiv |goto The Lost Isles/0 53.67,34.81 < 10 |q 25100
step
talk Slinky Sharpshiv##38517
turnin Let's Ride##25100 |goto The Lost Isles/0 53.72,34.93
accept The Gallywix Labor Mine##25109 |goto The Lost Isles/0 53.72,34.93
step
talk Assistant Greely##38124
|tip Downstairs inside the cave.
turnin The Gallywix Labor Mine##25109 |goto The Lost Isles/0 53.16,36.54
accept Kaja'Cola Gives You IDEAS! (TM)##25110 |goto The Lost Isles/0 53.16,36.54
step
click Kaja'Cola Zero-One##229285
|tip Downstairs inside the cave.
|tip They look like soda cans around this area.
|tip They can also drop off Brute Overseers.
collect Kaja'Cola Zero-One##52483 |q 25110/1 |goto The Lost Isles/0 54.80,36.02
step
talk Assistant Greely##38124
|tip Inside the cave.
turnin Kaja'Cola Gives You IDEAS! (TM)##25110 |goto The Lost Isles/0 53.16,36.54
step
_Next to you:_
talk Assistant Greely##39199
accept Morale Boost##25122
accept Throw It On the Ground!##25123
stickystart "Kill_Blastshadow"
step
click Kaja'Cola Zero-One##229285
|tip Downstairs inside the cave.
|tip They look like soda cans around this area.
|tip They can also drop off Brute Overseers.
collect Kaja'Cola Zero-One##52484 |goto The Lost Isles/0 54.64,36.09 |n
use Kaja'Cola Zero-One##52484
|tip Use it on Kezan Citizens and Goblin Survivors.
|tip They look like goblins mining throughout the cave.
Free #6# Other Goblin's Minds |q 25122/4
'|clicknpc Goblin Survivor##38409
'|clicknpc Kezan Citizen##38745
step
label "Kill_Blastshadow"
kill Blastshadow the Brutemaster##39194
|tip He walks around this area with a succubus.
|tip The succubis dies when Blastshadow does.
click Blastshadow's Soulstone##202574
|tip It's a dark purple orb that floats above his corpse.
|tip He respawns quickly.
collect Blastshadow's Soulstone##52481 |goto The Lost Isles/0 55.57,32.13 |q 25123
step
clicknpc Blastshadow the Brutemaster##39194
use Blastshadow's Soulstone##52481
|tip Use it on Blastshadow the Brutemaster's corpse.
Destroy Blastshadow's Soulstone |q 25123/1 |goto The Lost Isles/0 55.57,32.13
step
_Next to you:_
talk Assistant Greely##39199
turnin Throw It On the Ground!##25123
step
collect Kaja'Cola Zero-One##52484 |n
clicknpc Izzy##38647
|tip Downstairs inside the cave.
use Kaja'Cola Zero-One##52484
Free Izzy's Mind |q 25122/2 |goto The Lost Isles/0 57.01,35.03
step
collect Kaja'Cola Zero-One##52484 |n
clicknpc Ace##38441
|tip Downstairs inside the cave.
use Kaja'Cola Zero-One##52484
Free Ace's Mind |q 25122/1 |goto The Lost Isles/0 56.99,37.15
step
collect Kaja'Cola Zero-One##52484 |n
clicknpc Gobber##38746
|tip Downstairs inside the cave.
use Kaja'Cola Zero-One##52484
Free Gobber's Mind |q 25122/3 |goto The Lost Isles/0 57.04,32.15
step
_Next to you:_
talk Assistant Greely##39199
turnin Morale Boost##25122
accept Light at the End of the Tunnel##25125
step
Leave the mine |goto The Lost Isles/0 56.58,28.43 < 15 |walk
clicknpc Mine Cart##39341
turnin Light at the End of the Tunnel##25125 |goto The Lost Isles/0 56.29,27.32
accept Wild Mine Cart Ride##25184 |goto The Lost Isles/0 56.29,27.32
step
Travel to Bilgewater Lumber Yard |goto The Lost Isles/0 54.26,17.10 < 10 |q 25184
step
talk Assistant Greely##38124
turnin Wild Mine Cart Ride##25184 |goto The Lost Isles/0 54.39,16.94
accept Shredder Shutdown##25200 |goto The Lost Isles/0 54.39,16.94
step
talk Coach Crosscheck##38738
accept The Ultimate Footbomb Uniform##25201 |goto The Lost Isles/0 54.44,16.93
stickystart "Collect_Spare_Shredder_Parts"
step
kill 8 Steamwheedle Shark##39354 |q 25200/1 |goto The Lost Isles/0 54.13,20.33
step
label "Collect_Spare_Shredder_Parts"
click Spare Shredder Parts##202608+
|tip They look like inactive shredders around this area.
collect 8 Spare Shredder Parts##52530 |q 25201/1 |goto The Lost Isles/0 54.13,20.33
step
talk Assistant Greely##38124
turnin Shredder Shutdown##25200 |goto The Lost Isles/0 54.39,16.94
step
talk Coach Crosscheck##38738
turnin The Ultimate Footbomb Uniform##25201 |goto The Lost Isles/0 54.44,16.93
step
talk Assistant Greely##38124
accept Release the Valves##25204 |goto The Lost Isles/0 54.39,16.94
step
talk Ace##38441
accept What Kind of Name is Chip, Anyway?##25203 |goto The Lost Isles/0 54.16,17.20
|only if _G['UnitSex']("player")==2
step
talk Izzy##38647
accept The Fastest Way to His Heart##25202 |goto The Lost Isles/0 53.99,16.99
|only if _G['UnitSex']("player")==3
step
click Valve #1##202609
|tip It looks like a red wheel with steam flowing out of it on the side of the wall.
Release Valve #1 |q 25204/1 |goto The Lost Isles/0 50.72,13.80
step
click Valve #3##202611
|tip It looks like a red wheel with steam flowing out of it on the side of the wall.
Release Valve #3 |q 25204/3 |goto The Lost Isles/0 50.52,13.12
step
click Valve #2##202610
|tip It looks like a red wheel with steam flowing out of it on the side of the wall.
Release Valve #2 |q 25204/2 |goto The Lost Isles/0 50.18,11.75
step
click Valve #4##202612
|tip It looks like a red wheel with steam flowing out of it on the side of the wall.
Release Valve #4 |q 25204/4 |goto The Lost Isles/0 49.87,12.71
step
kill Chip Endale##39363 |q 25203/1 |goto The Lost Isles/0 49.86,13.89
|only if haveq(25203)
step
kill Chip Endale##39363
collect Still-Beating Heart##52531 |q 25202/1 |goto The Lost Isles/0 49.86,13.89
|only if haveq(25202)
step
click Platform Control Panel##202613
turnin Release the Valves##25204 |goto The Lost Isles/0 51.41,13.11
accept Good-bye, Sweet Oil##25207 |goto The Lost Isles/0 51.41,13.11
step
click Big Red Button##339
Destroy the KTC Oil Platform |q 25207/1 |goto The Lost Isles/0 51.41,13.11
step
talk Assistant Greely##38124
turnin Good-bye, Sweet Oil##25207 |goto The Lost Isles/0 54.39,16.94
step
talk Ace##38441
turnin What Kind of Name is Chip, Anyway?##25203 |goto The Lost Isles/0 54.16,17.20
|only if haveq(25203)
step
talk Izzy##38647
turnin The Fastest Way to His Heart##25202 |goto The Lost Isles/0 54.00,16.98
|only if haveq(25202)
step
talk Assistant Greely##38124
accept The Slave Pits##25213 |goto The Lost Isles/0 54.39,16.94
step
Travel to Sassy Hardwrench |goto The Lost Isles/0 43.95,25.37 < 10 |q 25213
step
talk Sassy Hardwrench##38869
turnin The Slave Pits##25213 |goto The Lost Isles/0 43.63,25.31
accept She Loves Me, She Loves Me NOT!##25243 |goto The Lost Isles/0 43.63,25.31 |only if _G['UnitSex']("player")==2
accept What Kind of Name is Candy, Anyway?##25244 |goto The Lost Isles/0 43.63,25.31 |only if _G['UnitSex']("player")==3
step
talk Hobart Grapplehammer##38120
accept Escape Velocity##25214 |goto The Lost Isles/0 43.85,25.29
stickystart "Launch_Cages"
step
kill Candy Cane##39426
collect Fickle Heart##52559 |q 25243/1 |goto The Lost Isles/0 39.68,27.16
|only if haveq(25243)
step
kill Candy Cane##39426 |q 25244/1 |goto The Lost Isles/0 39.68,27.16
|only if haveq(25244)
step
label "Launch_Cages"
clicknpc Captured Goblin##39456+
|tip They look like wooden cages around this area.
Launch #8# Cages |q 25214/1 |goto The Lost Isles/0 40.22,26.24
step
talk Hobart Grapplehammer##38120
turnin Escape Velocity##25214 |goto The Lost Isles/0 43.85,25.29
step
talk Sassy Hardwrench##38869
turnin She Loves Me, She Loves Me NOT!##25243 |goto The Lost Isles/0 43.63,25.31 |only if haveq(25243)
turnin What Kind of Name is Candy, Anyway?##25244 |goto The Lost Isles/0 43.63,25.31 |only if haveq(25244)
accept Final Confrontation##25251 |goto The Lost Isles/0 43.63,25.31
step
clicknpc Ultimate Footbomb Uniform##39592
Pilot the Ultimate Footbomb Uniform |q 25251/1 |goto The Lost Isles/0 43.85,25.18
step
kill Trade Prince Gallywix##39582
|tip Use the abilities on your action bar.
|tip Stand behind Trade Prince Gallywix when you are fighting him.
Deal with Trade Prince Gallywix |q 25251/2 |goto The Lost Isles/0 43.50,20.00
step
Click the yellow arrow on your action bar |outvehicle |goto The Lost Isles/0 43.69,25.25 |q 25251
|tip Run to this location first, since you run faster in the shredder.
step
talk Sassy Hardwrench##38869
turnin Final Confrontation##25251 |goto The Lost Isles/0 43.63,25.32
accept Victory!##25265 |goto The Lost Isles/0 43.63,25.32
step
Travel to Thrall |goto The Lost Isles/0 42.08,17.47 < 10 |q 25265
step
talk Thrall##38935
turnin Victory!##25265 |goto The Lost Isles/0 42.15,17.37
accept Warchief's Emissary##25266 |goto The Lost Isles/0 42.15,17.37
step
talk Sassy Hardwrench##38869 |goto The Lost Isles/0 42.58,16.37
Select _"Sassy, let's set sail for Orgrimmar before the island blows for good!"_ |gossip 38101
Leave the Lost Isles |goto Durotar |noway |q 25266
step
talk Darkspear Loyalist##86884
turnin Warchief's Emissary##25266 |goto Durotar/0 57.65,9.77
accept Message for Saurfang##25267 |goto Durotar/0 57.65,9.77
step
Travel to Orgrimmar |goto Orgrimmar/1 50.39,76.97 < 10 |q 25267
step
talk High Overlord Saurfang##14720
|tip Inside the building.
turnin Message for Saurfang##25267 |goto Orgrimmar/1 48.52,70.72
step
talk Eitrigg##3144
|tip Inside the building.
accept Missing Reports##26803 |goto Orgrimmar/1 49.22,72.29
accept Report to the Labor Captain##25275 |goto Orgrimmar/1 49.22,72.29
step
talk Doras##3310
turnin Missing Reports##26803 |goto Orgrimmar/1 49.66,59.22
accept Flight to Razor Hill##26804 |goto Orgrimmar/1 49.66,59.22
step
talk Gar'Thok##3139
|tip Upstairs inside the building.
turnin Flight to Razor Hill##26804 |goto Durotar/0 51.95,43.50
accept Reports to Orgrimmar##26806 |goto Durotar/0 51.95,43.50
step
talk Burok##41140
turnin Reports to Orgrimmar##26806 |goto Durotar/0 53.10,43.58
]])
QuestCore:RegisterGuide("Leveling Guides\\Starter Guides\\Orc Starter",{
condition_valid=function() return raceclass('Orc') end,
condition_valid_msg="Orc only.",
condition_suggested=function() return raceclass('Orc') and level <= 5 and not completedq(25132) and not raceclass("DeathKnight") and not QC.InPhase("exilesreach") end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Classic (1-70)\\Kalimdor\\Durotar (1-70)",
startlevel=1,
endlevel=70,
},[[
step
talk Kaltunk##10176
accept Your Place In The World##25152 |goto Valley of Trials/0 45.18,68.40
step
talk Gornek##3143
turnin Your Place In The World##25152 |goto Valley of Trials/0 44.93,66.42
accept Cutting Teeth##25126 |goto Valley of Trials/0 44.93,66.42
step
kill 6 Mottled Boar##3098 |q 25126/1 |goto Valley of Trials/0 51.98,54.41
step
talk Gornek##3143
turnin Cutting Teeth##25126 |goto Valley of Trials/0 44.93,66.42
accept Invaders in Our Home##25172 |goto Valley of Trials/0 44.93,66.42
step
kill 7 Northwatch Scout##39317 |q 25172/1 |goto Valley of Trials/0 47.86,75.23
|tip They are stealthed around this area.
step
talk Gornek##3143
turnin Invaders in Our Home##25172 |goto Valley of Trials/0 44.93,66.42
accept Sting of the Scorpid##25127 |goto Valley of Trials/0 44.93,66.42
step
talk Galgar##9796
accept Galgar's Cactus Apple Surprise##25136 |goto Valley of Trials/0 42.97,62.43
stickystart "Collect_Cactus_Apples"
step
kill Scorpid Worker##3124+
collect 8 Scorpid Worker Tail##4862 |q 25127/1 |goto Valley of Trials/0 49.42,44.59
step
label "Collect_Cactus_Apples"
click Cactus Apple##171938+
|tip They look like smaller cacti with red balls on them around this area.
collect 6 Cactus Apple##11583 |q 25136/1 |goto Valley of Trials/0 49.42,44.59
step
talk Hana'zua##3287
accept Sarkoth##25129 |goto Valley of Trials/0 34.62,44.20
step
kill Sarkoth##3281
|tip It's a bigger, darker scorpion that walks around this area.
collect Sarkoth's Mangled Claw##4905 |q 25129/1 |goto Valley of Trials/0 34.13,62.70
step
talk Hana'zua##3287
turnin Sarkoth##25129 |goto Valley of Trials/0 34.62,44.20
accept Back to the Den##25130 |goto Valley of Trials/0 34.62,44.20
step
talk Gornek##3143
turnin Sting of the Scorpid##25127 |goto Valley of Trials/0 44.93,66.42
turnin Back to the Den##25130 |goto Valley of Trials/0 44.93,66.42
step
talk Galgar##9796
turnin Galgar's Cactus Apple Surprise##25136 |goto Valley of Trials/0 42.97,62.43
step
talk Zureetha Fargaze##3145
accept Vile Familiars##25131 |goto Valley of Trials/0 45.82,63.44
step
talk Foreman Thazz'ril##11378
accept Lazy Peons##37446 |goto Valley of Trials/0 46.16,63.26
stickystart "Slay_Vile_Familiars"
step
clicknpc Lazy Peon##10556+
|tip You can find them all around this area, and along the mountainside.
use Foreman's Blackjack##16114
|tip Use it on Lazy Peons around this area.
|tip You may have to stand next to them and wait for them to go to sleep, if they are all chopping trees, but it doesn't take too long.
Waken #4# Peons |q 37446/1 |goto Valley of Trials/0 54.26,56.93
step
label "Slay_Vile_Familiars"
kill 8 Vile Familiar##3101 |q 25131/1 |goto Valley of Trials/0 55.05,26.82
step
talk Foreman Thazz'ril##11378
turnin Lazy Peons##37446 |goto Valley of Trials/0 46.14,63.28
step
talk Zureetha Fargaze##3145
turnin Vile Familiars##25131 |goto Valley of Trials/0 45.82,63.44
accept Burning Blade Medallion##25132 |goto Valley of Trials/0 45.82,63.44
step
talk Foreman Thazz'ril##11378
accept Thazz'ril's Pick##25135 |goto Valley of Trials/0 46.14,63.28
stickystart "Kill_Felstalkers"
step
click Thazz'ril's Pick##178087
|tip Inside the cave.
collect Thazz'ril's Pick##16332 |q 25135/1 |goto Durotar/8 40.73,52.56
step
kill Yarrog Baneshadow##3183
|tip Inside the cave.
collect Burning Blade Medallion##4859 |q 25132/2 |goto Durotar/8 14.91,46.66
step
label "Kill_Felstalkers"
kill 5 Felstalker##3102 |q 25132/1 |goto Durotar/8 45.30,60.62
|tip Inside the cave.
step
talk Foreman Thazz'ril##11378
turnin Thazz'ril's Pick##25135 |goto Valley of Trials/0 46.16,63.29
step
talk Zureetha Fargaze##3145
turnin Burning Blade Medallion##25132 |goto Valley of Trials/0 45.82,63.44
accept Report to Sen'jin Village##25133 |goto Valley of Trials/0 45.82,63.44
]])
QuestCore:RegisterGuide("Leveling Guides\\Starter Guides\\Tauren Starter",{
condition_valid=function() return raceclass('Tauren') end,
condition_valid_msg="Tauren only.",
condition_suggested=function() return raceclass('Tauren') and level <= 4 and not completedq(23733) and not raceclass("DeathKnight") and not QC.InPhase("exilesreach") end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Classic (1-70)\\Kalimdor\\Mulgore (1-70)",
startlevel=1,
endlevel=4,
},[[
step
talk Chief Hawkwind##2981
accept The First Step##14449 |goto Camp Narache/0 27.73,28.30
step
talk Grull Hawkwind##2980
turnin The First Step##14449 |goto Camp Narache/0 39.44,37.24
accept Rite of Strength##14452 |goto Camp Narache/0 39.44,37.24
step
kill 6 Bristleback Invader##36943 |q 14452/1 |goto Camp Narache/0 46.56,42.64
step
talk Grull Hawkwind##2980
turnin Rite of Strength##14452 |goto Camp Narache/0 39.44,37.24
accept Our Tribe, Imprisoned##24852 |goto Camp Narache/0 39.44,37.24
step
click Quilboar Cage##201577+
|tip They look like yellow wooden cages around this area.
Free #4# Braves |q 24852/1 |goto Camp Narache/0 49.39,35.36
step
talk Grull Hawkwind##2980
turnin Our Tribe, Imprisoned##24852 |goto Camp Narache/0 39.44,37.24
accept Go to Adana##14458 |goto Camp Narache/0 39.44,37.24
step
talk Adana Thunderhorn##36694
turnin Go to Adana##14458 |goto Camp Narache/0 30.92,50.57
accept Rite of Courage##14456 |goto Camp Narache/0 30.92,50.57
accept Stop the Thorncallers##14455 |goto Camp Narache/0 30.92,50.57
stickystart "Slay_Bristleback_Thorncallers"
step
kill Bristleback Gun Thief##36708+
collect 7 Stolen Rifle##49535 |q 14456/1 |goto Camp Narache/0 34.94,61.75
step
label "Slay_Bristleback_Thorncallers"
kill 7 Bristleback Thorncaller##36697 |q 14455/1 |goto Camp Narache/0 34.83,69.85
step
talk Adana Thunderhorn##36694
turnin Rite of Courage##14456 |goto Camp Narache/0 30.92,50.57
turnin Stop the Thorncallers##14455 |goto Camp Narache/0 30.92,50.57
accept The Battleboars##14459 |goto Camp Narache/0 30.92,50.57
accept Feed of Evil##14461 |goto Camp Narache/0 30.92,50.57
stickystart "Slay_Armored_Battleboars"
step
use Adana's Torch##49539
|tip Use it next to the trough.
|tip It looks like a wooden bathtub full of pink meat.
Burn the First Trough |q 14461/1 |goto Camp Narache/0 26.38,66.29
step
use Adana's Torch##49539
|tip Use it next to the trough.
|tip It looks like a wooden bathtub full of pink meat.
Burn the Second Trough |q 14461/2 |goto Camp Narache/0 25.16,69.16
step
use Adana's Torch##49539
|tip Use it next to the trough.
|tip It looks like a wooden bathtub full of pink meat.
Burn the Third Trough |q 14461/3 |goto Camp Narache/0 28.22,70.42
step
label "Slay_Armored_Battleboars"
kill 10 Armored Battleboar##36696 |q 14459/1 |goto Camp Narache/0 26.94,69.16
step
talk Adana Thunderhorn##36694
turnin The Battleboars##14459 |goto Camp Narache/0 30.92,50.57
turnin Feed of Evil##14461 |goto Camp Narache/0 30.92,50.57
accept Rite of Honor##14460 |goto Camp Narache/0 30.92,50.57
step
kill Chief Squealer Thornmantle##36712
collect Mane of Thornmantle##50473 |q 14460/1 |goto Camp Narache/0 15.27,46.71
step
talk Chief Hawkwind##2981
turnin Rite of Honor##14460 |goto Camp Narache/0 27.73,28.29
accept Last Rites, First Rites##24861 |goto Camp Narache/0 27.73,28.29
step
use Water Pitcher##50465
Place the Offering |q 24861/1 |goto Camp Narache/0 27.60,27.77
step
talk Chief Hawkwind##2981
turnin Last Rites, First Rites##24861 |goto Camp Narache/0 27.73,28.29
accept Rites of the Earthmother##23733 |goto Camp Narache/0 27.73,28.29
step
talk Dyami Windsoar##36803
turnin Rites of the Earthmother##23733 |goto Camp Narache/0 15.60,30.31
accept Rite of the Winds##24215 |goto Camp Narache/0 15.60,30.31
step
use Water of Vision##49652 |goto Camp Narache/0 15.42,30.30
Drink the Water of Vision |goto Camp Narache/0 15.42,30.30 > 30 |noway |q 24215
step
Fly to Bloodhoof Village |goto Mulgore/0 47.82,59.87 < 10 |notravel |q 24215
step
talk Ahmo Thunderhorn##36644
turnin Rite of the Winds##24215 |goto Mulgore/0 47.66,59.59
]])
QuestCore:RegisterGuide("Leveling Guides\\Starter Guides\\Troll Starter",{
condition_valid=function() return raceclass('Troll') end,
condition_valid_msg="Troll only.",
condition_suggested=function() return raceclass('Troll') and level <= 5 and not completedq(24814) and not raceclass("DeathKnight") and not QC.InPhase("exilesreach") end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Classic (1-70)\\Kalimdor\\Durotar (1-70)",
startlevel=1,
endlevel=70,
},[[
step
talk Jin'thala##37951
accept The Rise of the Darkspear##31159 |goto Echo Isles/0 42.82,53.44 |only if Troll Monk
accept The Rise of the Darkspear##24776 |goto Echo Isles/0 42.82,53.44 |only if Troll Hunter
accept The Rise of the Darkspear##24607 |goto Echo Isles/0 42.82,53.44 |only if Troll Warrior
accept The Rise of the Darkspear##24770 |goto Echo Isles/0 42.82,53.44 |only if Troll Rogue
accept The Rise of the Darkspear##24782 |goto Echo Isles/0 42.82,53.44 |only if Troll Priest
accept The Rise of the Darkspear##24764 |goto Echo Isles/0 42.82,53.44 |only if Troll Druid
accept The Rise of the Darkspear##26272 |goto Echo Isles/0 42.82,53.44 |only if Troll Warlock
accept The Rise of the Darkspear##24750 |goto Echo Isles/0 42.82,53.44 |only if Troll Mage
accept The Rise of the Darkspear##24758 |goto Echo Isles/0 42.82,53.44 |only if Troll Shaman
step
talk Nekali##38242
turnin The Rise of the Darkspear##24758 |goto Echo Isles/0 50.07,52.75
accept The Basics: Hitting Things##24759 |goto Echo Isles/0 50.07,52.75
|only if Troll Shaman
step
talk Soratha##38246
turnin The Rise of the Darkspear##24750 |goto Echo Isles/0 59.68,52.06
accept The Basics: Hitting Things##24751 |goto Echo Isles/0 59.68,52.06
|only if Troll Mage
step
talk Voldreka##42618
turnin The Rise of the Darkspear##26272 |goto Echo Isles/0 50.04,49.94
accept The Basics: Hitting Things##26273 |goto Echo Isles/0 50.04,49.94
|only if Troll Warlock
step
talk Zen'tabra##38243
turnin The Rise of the Darkspear##24764 |goto Echo Isles/0 58.06,54.03
accept The Basics: Hitting Things##24765 |goto Echo Isles/0 58.06,54.03
|only if Troll Druid
step
talk Tunari##38245
turnin The Rise of the Darkspear##24782 |goto Echo Isles/0 58.04,49.26
accept The Basics: Hitting Things##24783 |goto Echo Isles/0 58.04,49.26
|only if Troll Priest
step
talk Legati##38244
turnin The Rise of the Darkspear##24770 |goto Echo Isles/0 52.89,49.90
accept The Basics: Hitting Things##24771 |goto Echo Isles/0 52.89,49.90
|only if Troll Rogue
step
talk Ortezza##38247
turnin The Rise of the Darkspear##24776 |goto Echo Isles/0 56.36,50.08
accept The Basics: Hitting Things##24777 |goto Echo Isles/0 56.36,50.08
|only if Troll Hunter
step
talk Nortet##38037
turnin The Rise of the Darkspear##24607 |goto Echo Isles/0 52.56,53.66
accept The Basics: Hitting Things##24639 |goto Echo Isles/0 52.56,53.66
|only if Troll Warrior
step
talk Zabrax##63310
turnin The Rise of the Darkspear##31159 |goto Echo Isles/0 52.57,51.85
accept The Basics: Hitting Things##31158 |goto Echo Isles/0 52.57,51.85
|only if Troll Monk
step
kill 6 Tiki Target##38038 |q 24759/1 |goto Echo Isles/0 49.83,54.17
|only if Troll Shaman
step
kill 6 Tiki Target##38038 |q 24771/1 |goto Echo Isles/0 52.53,48.93
|only if Troll Rogue
step
kill 6 Tiki Target##38038 |q 24639/1 |goto Echo Isles/0 53.11,53.34
|only if Troll Warrior
step
kill 6 Tiki Target##38038 |q 26273/1 |goto Echo Isles/0 50.47,48.84
|only if Troll Warlock
step
kill 6 Tiki Target##38038 |q 24751/1 |goto Echo Isles/0 60.83,53.01
|only if Troll Mage
step
kill 6 Tiki Target##38038 |q 24777/1 |goto Echo Isles/0 56.64,49.84
|only if Troll Hunter
step
kill 6 Tiki Target##38038 |q 24765/1 |goto Echo Isles/0 58.76,53.89
|only if Troll Druid
step
kill 6 Tiki Target##38038 |q 24783/1 |goto Echo Isles/0 58.29,47.98
|only if Troll Priest
step
kill 6 Tiki Target##38038 |q 31158/1 |goto Echo Isles/0 52.82,50.83
|only if Troll Monk
step
talk Nekali##38242
turnin The Basics: Hitting Things##24759 |goto Echo Isles/0 50.07,52.75
accept A Rough Start##24761 |goto Echo Isles/0 50.07,52.75
|only if Troll Shaman
step
talk Soratha##38246
turnin The Basics: Hitting Things##24751 |goto Echo Isles/0 59.68,52.06
accept A Rough Start##24753 |goto Echo Isles/0 59.68,52.06
|only if Troll Mage
step
talk Voldreka##42618
turnin The Basics: Hitting Things##26273 |goto Echo Isles/0 50.04,49.94
accept A Rough Start##26275 |goto Echo Isles/0 50.04,49.94
|only if Troll Warlock
step
talk Zen'tabra##38243
turnin The Basics: Hitting Things##24765 |goto Echo Isles/0 58.06,54.03
accept A Rough Start##24767 |goto Echo Isles/0 58.06,54.03
|only if Troll Druid
step
talk Tunari##38245
turnin The Basics: Hitting Things##24783 |goto Echo Isles/0 58.04,49.26
accept A Rough Start##24785 |goto Echo Isles/0 58.04,49.26
|only if Troll Priest
step
talk Legati##38244
turnin The Basics: Hitting Things##24771 |goto Echo Isles/0 52.89,49.90
accept A Rough Start##24773 |goto Echo Isles/0 52.89,49.90
|only if Troll Rogue
step
talk Ortezza##38247
turnin The Basics: Hitting Things##24777 |goto Echo Isles/0 56.36,50.08
accept A Rough Start##24779 |goto Echo Isles/0 56.36,50.08
|only if Troll Hunter
step
talk Nortet##38037
turnin The Basics: Hitting Things##24639 |goto Echo Isles/0 52.56,53.66
accept A Rough Start##24641 |goto Echo Isles/0 52.56,53.66
|only if Troll Warrior
step
talk Zabrax##63310
turnin The Basics: Hitting Things##31158 |goto Echo Isles/0 52.57,51.85
accept A Rough Start##31160 |goto Echo Isles/0 52.57,51.85
|only if Troll Monk
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 24767/1 |goto Echo Isles/0 57.17,43.26
|only if Troll Druid
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 24785/1 |goto Echo Isles/0 57.17,43.26
|only if Troll Priest
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 24753/1 |goto Echo Isles/0 57.17,43.26
|only if Troll Mage
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 24779/1 |goto Echo Isles/0 57.17,43.26
|only if Troll Hunter
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 24761/1 |goto Echo Isles/0 47.99,49.85
|only if Troll Shaman
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 24641/1 |goto Echo Isles/0 47.99,49.85
|only if Troll Warrior
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 26275/1 |goto Echo Isles/0 47.99,49.85
|only if Troll Warlock
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 24773/1 |goto Echo Isles/0 47.99,49.85
|only if Troll Rogue
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 31160/1 |goto Echo Isles/0 47.99,49.85
|only if Troll Monk
step
talk Nekali##38242
turnin A Rough Start##24761 |goto Echo Isles/0 50.07,52.75
accept Proving Pit##24762 |goto Echo Isles/0 50.07,52.75
|only if Troll Shaman
step
talk Soratha##38246
turnin A Rough Start##24753 |goto Echo Isles/0 59.68,52.06
accept Proving Pit##24754 |goto Echo Isles/0 59.68,52.06
|only if Troll Mage
step
talk Voldreka##42618
turnin A Rough Start##26275 |goto Echo Isles/0 50.04,49.94
accept Proving Pit##26276 |goto Echo Isles/0 50.04,49.94
|only if Troll Warlock
step
talk Zen'tabra##38243
turnin A Rough Start##24767 |goto Echo Isles/0 58.06,54.03
accept Proving Pit##24768 |goto Echo Isles/0 58.06,54.03
|only if Troll Druid
step
talk Tunari##38245
turnin A Rough Start##24785 |goto Echo Isles/0 58.04,49.26
accept Proving Pit##24786 |goto Echo Isles/0 58.04,49.26
|only if Troll Priest
step
talk Legati##38244
turnin A Rough Start##24773 |goto Echo Isles/0 52.89,49.90
accept Proving Pit##24774 |goto Echo Isles/0 52.89,49.90
|only if Troll Rogue
step
talk Ortezza##38247
turnin A Rough Start##24779 |goto Echo Isles/0 56.36,50.08
accept Proving Pit##24780 |goto Echo Isles/0 56.36,50.08
|only if Troll Hunter
step
talk Nortet##38037
turnin A Rough Start##24641 |goto Echo Isles/0 52.56,53.66
accept Proving Pit##24642 |goto Echo Isles/0 52.56,53.66
|only if Troll Warrior
step
talk Zabrax##63310
turnin A Rough Start##31160 |goto Echo Isles/0 52.57,51.85
accept Proving Pit##31161 |goto Echo Isles/0 52.57,51.85
|only if Troll Monk
step
talk Darkspear Jailor##39062
Select _"I'm ready to face my challenge."_ |gossip 37137
Speak to the Darkspear Jailor |q 24754/1 |goto Echo Isles/0 57.49,52.66
|only if Troll Mage
step
kill Captive Spitescale Scout##38142+ |q 24754/2 |goto Echo Isles/0 57.28,51.82
|only if Troll Mage
step
talk Darkspear Jailor##39062
Select _"I'm ready to face my challenge."_ |gossip 37137
Speak to the Darkspear Jailor |q 24768/1 |goto Echo Isles/0 57.49,52.66
|only if Troll Druid
step
kill Captive Spitescale Scout##38142+ |q 24768/2 |goto Echo Isles/0 57.28,51.82
|only if Troll Druid
step
talk Darkspear Jailor##39062
Select _"I'm ready to face my challenge."_ |gossip 37137
Speak to the Darkspear Jailor |q 24786/1 |goto Echo Isles/0 57.49,52.66
|only if Troll Priest
step
kill Captive Spitescale Scout##38142+ |q 24786/2 |goto Echo Isles/0 57.28,51.82
|only if Troll Priest
step
talk Darkspear Jailor##39062
Select _"I'm ready to face my challenge."_ |gossip 37137
Speak to the Darkspear Jailor |q 24780/1 |goto Echo Isles/0 57.49,52.66
|only if Troll Hunter
step
kill Captive Spitescale Scout##38142+ |q 24780/2 |goto Echo Isles/0 57.28,51.82
|only if Troll Hunter
step
talk Darkspear Jailor##39062
Select _"I'm ready to face my challenge."_ |gossip 37137
Speak to the Darkspear Jailor |q 24774/1 |goto Echo Isles/0 57.49,52.66
|only if Troll Rogue
step
kill Captive Spitescale Scout##38142+ |q 24774/2 |goto Echo Isles/0 57.28,51.82
|only if Troll Rogue
step
talk Darkspear Jailor##39062
Select _"I'm ready to face my challenge."_ |gossip 37137
Speak to the Darkspear Jailor |q 24642/1 |goto Echo Isles/0 57.49,52.66
|only if Troll Warrior
step
kill Captive Spitescale Scout##38142+ |q 24642/2 |goto Echo Isles/0 57.28,51.82
|only if Troll Warrior
step
talk Darkspear Jailor##39062
Select _"I'm ready to face my challenge."_ |gossip 37137
Speak to the Darkspear Jailor |q 26276/1 |goto Echo Isles/0 57.49,52.66
|only if Troll Warlock
step
kill Captive Spitescale Scout##38142+ |q 26276/2 |goto Echo Isles/0 57.28,51.82
|only if Troll Warlock
step
talk Darkspear Jailor##39062
Select _"I'm ready to face my challenge."_ |gossip 37137
Speak to the Darkspear Jailor |q 24762/1 |goto Echo Isles/0 57.49,52.66
|only if Troll Shaman
step
kill Captive Spitescale Scout##38142+ |q 24762/2 |goto Echo Isles/0 57.28,51.82
|only if Troll Shaman
step
talk Darkspear Jailor##39062
Select _"I'm ready to face my challenge."_ |gossip 37137
Speak to the Darkspear Jailor |q 31161/1 |goto Echo Isles/0 57.49,52.66
|only if Troll Monk
step
kill Captive Spitescale Scout##38142+ |q 31161/2 |goto Echo Isles/0 57.28,51.82
|only if Troll Monk
step
talk Nekali##38242
turnin Proving Pit##24762 |goto Echo Isles/0 50.07,52.75
|only if Troll Shaman
step
talk Soratha##38246
turnin Proving Pit##24754 |goto Echo Isles/0 59.68,52.06
|only if Troll Mage
step
talk Voldreka##42618
turnin Proving Pit##26276 |goto Echo Isles/0 50.04,49.94
|only if Troll Warlock
step
talk Zen'tabra##38243
turnin Proving Pit##24768 |goto Echo Isles/0 58.06,54.03
|only if Troll Druid
step
talk Tunari##38245
turnin Proving Pit##24786 |goto Echo Isles/0 58.04,49.26
|only if Troll Priest
step
talk Legati##38244
turnin Proving Pit##24774 |goto Echo Isles/0 52.89,49.90
|only if Troll Rogue
step
talk Ortezza##38247
turnin Proving Pit##24780 |goto Echo Isles/0 56.36,50.08
|only if Troll Hunter
step
talk Nortet##38037
turnin Proving Pit##24642 |goto Echo Isles/0 52.56,53.66
|only if Troll Warrior
step
talk Zabrax##63310
turnin Proving Pit##31161 |goto Echo Isles/0 52.57,51.85
|only if Troll Monk
step
talk Vol'jin##38966
|tip Inside the building.
turnin More Than Expected##24781 |goto Echo Isles/0 61.55,65.85 |only if Troll Hunter
turnin More Than Expected##24643 |goto Echo Isles/0 61.55,65.85 |only if Troll Warrior
turnin More Than Expected##24775 |goto Echo Isles/0 61.55,65.85 |only if Troll Rogue
turnin More Than Expected##24787 |goto Echo Isles/0 61.55,65.85 |only if Troll Priest
turnin More Than Expected##24769 |goto Echo Isles/0 61.55,65.85 |only if Troll Druid
turnin More Than Expected##26277 |goto Echo Isles/0 61.55,65.85 |only if Troll Warlock
turnin More Than Expected##24755 |goto Echo Isles/0 61.55,65.85 |only if Troll Mage
turnin More Than Expected##24763 |goto Echo Isles/0 61.55,65.85 |only if Troll Shaman
turnin More Than Expected##31163 |goto Echo Isles/0 61.55,65.85 |only if Troll Monk
accept Moraya##25064 |goto Echo Isles/0 61.55,65.85
step
talk Tora'jin##39007
accept Crab Fishin'##25037 |goto Echo Isles/0 60.54,62.90
step
kill Pygmy Surf Crawler##39004+
collect 5 Fresh Crawler Meat##52080 |q 25037/1 |goto Echo Isles/0 67.35,56.04
step
talk Tora'jin##39007
turnin Crab Fishin'##25037 |goto Echo Isles/0 60.54,62.90
step
talk Moraya##38005
turnin Moraya##25064 |goto Echo Isles/0 56.85,63.69
accept A Troll's Truest Companion##24622 |goto Echo Isles/0 56.85,63.69
step
talk Kijara##37969
|tip She walks around this area.
turnin A Troll's Truest Companion##24622 |goto Echo Isles/0 45.57,85.10
accept Saving the Young##24623 |goto Echo Isles/0 45.57,85.10
step
talk Tegashi##37987
accept Mercy for the Lost##24624 |goto Echo Isles/0 45.70,85.02
accept Consort of the Sea Witch##24625 |goto Echo Isles/0 45.70,85.02
stickystart "Slay_Corrupted_Bloodtalons"
stickystart "Rescue_Bloodtalon_Hatchlings"
step
kill Naj'tess##39072
|tip He walks around this area.
collect Naj'tess' Orb of Corruption##50018 |q 24625/1 |goto Echo Isles/0 36.54,69.14
step
label "Slay_Corrupted_Bloodtalons"
kill 8 Corrupted Bloodtalon##37961+ |q 24624/1 |goto Echo Isles/0 38.55,68.82
step
label "Rescue_Bloodtalon_Hatchlings"
use Bloodtalon Whistle##52283
|tip Use it near Lost Bloodtalon Hatchlings.
|tip They look like tiny red raptors around this area.
Rescue #12# Bloodtalon Hatchlings |q 24623/1 |goto Echo Isles/0 38.37,72.89
step
talk Kijara##37969
|tip She walks around this area.
turnin Saving the Young##24623 |goto Echo Isles/0 45.57,85.10
step
talk Tegashi##37987
turnin Mercy for the Lost##24624 |goto Echo Isles/0 45.70,85.00
turnin Consort of the Sea Witch##24625 |goto Echo Isles/0 45.70,85.00
step
talk Kijara##37969
|tip She walks around this area.
accept Young and Vicious##24626 |goto Echo Isles/0 45.57,85.10
step
clicknpc Swiftclaw##38002
use Bloodtalon Lasso##50053
|tip Use it on Swiftclaw.
|tip Swiftclaw is a dark colored raptor that runs really fast around this area.
Capture Swiftclaw |q 24626/1 |goto Echo Isles/0 41.85,86.25
step
_While Riding Swiftclaw:_
Return Swiftclaw to the Raptor Pens |q 24626/2 |goto Echo Isles/0 52.57,65.46
step
talk Moraya##38005
turnin Young and Vicious##24626 |goto Echo Isles/0 56.85,63.69
step
talk Tortunga##38440
accept Breaking the Line##25035 |goto Echo Isles/0 58.95,66.82
step
talk Jornun##38989 |goto Echo Isles/0 59.06,66.91
Select _"Yes. Do you have a raptor that can take me there?"_ |gossip 36849
Secure a Ride to Spitescale Cove |goto Echo Isles/0 59.06,66.91 > 30 |noway |q 25035
step
Ride the Raptor to Spitescale Cove |goto Echo Isles/0 58.69,23.42 < 10 |q 25035
step
talk Morakki##38442
turnin Breaking the Line##25035 |goto Echo Isles/0 58.90,23.09
accept No More Mercy##24812 |goto Echo Isles/0 58.90,23.09
accept Territorial Fetish##24813 |goto Echo Isles/0 58.90,23.09
stickystart "Place_Territorial_Fetishes"
step
kill Spitescale Wavethrasher##38300, Spitescale Siren##38301
|tip Inside this cave.
|tip Stay near the entrance of the cave, if you can.
Slay #12# Spitescale Naga |q 24812/1 |goto Echo Isles/9 65.19,64.10
step
label "Place_Territorial_Fetishes"
use Territorial Fetish##52065
|tip Use it next to Spitescale Flags.
|tip They look like red penant flags on blue-ish tridents stuck in the ground all around inside this cave.
|tip Stay near the entrance of the cave, if you can.
Place #8# Territorial Fetishes |q 24813/1 |goto Echo Isles/9 66.25,58.46
step
talk Morakki##38442
turnin No More Mercy##24812 |goto Echo Isles/0 58.91,23.06
turnin Territorial Fetish##24813 |goto Echo Isles/0 58.91,23.06
accept An Ancient Enemy##24814 |goto Echo Isles/0 58.91,23.06
step
talk Vol'jin##10540
Speak with Vol'jin at Spitescale Cove |q 24814/1 |goto Echo Isles/0 62.23,18.01
step
talk Vol'jin##10540 |goto Echo Isles/0 62.23,18.01
Select _"I am ready, Vol'jin."_ |gossip 37400
Follow Your Allies into Battle |goto Echo Isles/0 61.44,16.88 < 7 |noway |q 24814
|tip Follow Vol'jin and Vanira as they walk.
step
Watch the dialogue
kill Zar'jira##38306 |q 24814/2 |goto Echo Isles/0 60.41,15.35
|tip Click the 3 braziers behind Zar'jira when the message displays on the screen telling you to stamp them out.
step
Watch the dialogue
talk Vanira##39027 |goto Echo Isles/0 60.26,15.80
Select _"Take me back to Darkspear Hold if you would, Vanira."_ |gossip 37251
Return to Darkspear Hold |goto Echo Isles/0 59.53,63.24 < 10 |noway |q 24814
step
talk Vol'jin##38966
|tip Inside the building.
turnin An Ancient Enemy##24814 |goto Echo Isles/0 61.55,65.85
accept Sen'jin Village##25073 |goto Echo Isles/0 61.55,65.85
]])
QuestCore:RegisterGuide("Leveling Guides\\Starter Guides\\Undead Starter",{
condition_valid=function() return raceclass('Scourge') end,
condition_valid_msg="Scourge only.",
condition_suggested=function() return raceclass('Scourge') and level <= 10 and not completedq(25012) and not raceclass("DeathKnight") and not QC.InPhase("exilesreach") end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Classic (1-70)\\Eastern Kingdoms\\Silverpine Forest (5-70)",
startlevel=1,
endlevel=10,
},[[
step
talk Agatha##49044
accept Fresh out of the Grave##24959 |goto Deathknell/0 40.51,78.53
|only if Scourge
step
talk Undertaker Mordo##1568
turnin Fresh out of the Grave##24959 |goto Deathknell/0 43.44,79.93
accept The Shadow Grave##28608 |goto Deathknell/0 43.44,79.93
|only if Scourge
step
Enter the crypt |goto Deathknell/0 44.47,84.15 < 10 |walk
click Thick Embalming Fluid##207255
|tip Green globe.
|tip Downstairs inside the crypt.
collect Thick Embalming Fluid##64582 |q 28608/1 |goto Deathknell/0 41.82,82.76
step
click Corpse-Stitching Twine##207256
|tip Red spool of thread.
|tip Downstairs inside the crypt.
collect Corpse-Stitching Twine##64581 |q 28608/2 |goto Deathknell/0 41.74,82.88
|only if Scourge
step
talk Undertaker Mordo##1568
turnin The Shadow Grave##28608 |goto Deathknell/0 43.44,79.93
accept Those That Couldn't Be Saved##26799 |goto Deathknell/0 43.44,79.93
|only if Scourge
step
talk Caretaker Caice##2307
accept The Wakening##24960 |goto Deathknell/0 45.93,80.46
|only if Scourge
stickystart "Slay_Mindless_Zombies"
step
talk Valdred Moray##49231
Select _"Don't you remember? You died."_
Speak with Valdred Moray |q 24960/3 |goto Deathknell/0 40.70,72.97
|only if Scourge
step
talk Lilian Voss##38895
Select _"I'm not an abomination, I'm simply undead. I just want to speak with you."_
Speak with Lilian Voss |q 24960/1 |goto Deathknell/0 44.22,70.61
|only if Scourge
step
talk Marshal Redpath##49230
Select _"I'm not here to fight. I've only been asked to speak with you."_
Speak with Marshal Redpath |q 24960/2 |goto Deathknell/0 46.55,71.11
|only if Scourge
step
label "Slay_Mindless_Zombies"
kill 6 Mindless Zombie##1501 |q 26799/1 |goto Deathknell/0 45.08,74.54
|only if Scourge
step
talk Undertaker Mordo##1568
turnin Those That Couldn't Be Saved##26799 |goto Deathknell/0 43.44,79.93
|only if Scourge
step
talk Caretaker Caice##2307
turnin The Wakening##24960 |goto Deathknell/0 45.93,80.46
accept Beyond the Graves##25089 |goto Deathknell/0 45.93,80.46
|only if Scourge
step
talk Deathguard Saltain##1740
|tip He walks around this area.
turnin Beyond the Graves##25089 |goto Deathknell/0 49.95,56.33
accept Recruitment##26800 |goto Deathknell/0 49.95,56.33
|only if Scourge
step
talk Shadow Priest Sarvis##1569
|tip Inside the building.
accept Scourge on our Perimeter##26801 |goto Deathknell/0 46.62,58.81
stickystart "Gather_Scarlet_Corpses"
step
kill Rattlecage Skeleton##1890, Wretched Ghoul##1502
Slay #8# Deathknell Scourge |q 26801/1 |goto Deathknell/0 53.80,45.07
step
label "Gather_Scarlet_Corpses"
clicknpc Scarlet Corpse##49340+
|tip They look like dead humans in red outfits laying on the ground around this area.
Gather #6# Scarlet Corpses |q 26800/1 |goto Deathknell/0 52.22,50.26
step
talk Deathguard Saltain##1740
|tip He walks around this area.
turnin Recruitment##26800 |goto Deathknell/0 49.95,56.33
|only if Scourge
step
talk Shadow Priest Sarvis##1569
|tip Inside the building.
turnin Scourge on our Perimeter##26801 |goto Deathknell/0 46.62,58.81
accept Novice Elreth##28651 |goto Deathknell/0 46.62,58.81
step
talk Novice Elreth##1661
|tip Inside the building.
turnin Novice Elreth##28651 |goto Deathknell/0 46.73,58.20
accept The Truth of the Grave##24961 |goto Deathknell/0 46.73,58.20
step
talk Lilian Voss##38910
|tip Inside the building.
Select _"You're not hideous, Lilian... you're one of us. Here, look in this mirror, see for yourself."_ |gossip 38950
|tip If she's not on the ground floor, she can also be found on the upper level of the building at the same location.
Show Lilian Her Reflection |q 24961/1 |goto Deathknell/0 54.35,56.97
step
talk Novice Elreth##1661
|tip Inside the building.
turnin The Truth of the Grave##24961 |goto Deathknell/0 46.73,58.20
accept The Executor In the Field##28672 |goto Deathknell/0 46.73,58.20
step
talk Executor Arren##1570
turnin The Executor In the Field##28672 |goto Deathknell/0 55.48,37.79
accept The Damned##26802 |goto Deathknell/0 55.48,37.79
stickystart "Collect_Duskbat_Wings"
step
kill Ragged Scavenger##1509, Young Scavenger##1508
collect 4 Scavenger Paw##3265 |q 26802/1 |goto Deathknell/0 67.70,24.59
step
label "Collect_Duskbat_Wings"
kill Mangy Duskbat##1513, Duskbat##1512
collect 4 Duskbat Wing##3264 |q 26802/2 |goto Deathknell/0 55.36,33.33
step
talk Executor Arren##1570
turnin The Damned##26802 |goto Deathknell/0 55.48,37.79
accept Night Web's Hollow##24973 |goto Deathknell/0 55.48,37.79
step
kill 8 Young Night Web Spider##1504 |q 24973/1 |goto Deathknell/0 35.50,28.87
step
kill 5 Night Web Spider##1505 |q 24973/2 |goto Deathknell/12 59.78,59.13
|tip Inside the mine.
step
talk Executor Arren##1570
turnin Night Web's Hollow##24973 |goto Deathknell/0 55.48,37.79
accept No Better Than the Zombies##24970 |goto Deathknell/0 55.48,37.79
step
talk Darnell##49425
turnin No Better Than the Zombies##24970 |goto Deathknell/0 67.03,42.37
accept Assault on the Rotbrain Encampment##24971 |goto Deathknell/0 67.03,42.37
stickystart "Slay_Rotbrain_Undead"
step
kill Marshal Redpath##49424 |q 24971/1 |goto Deathknell/0 70.06,69.72
step
label "Slay_Rotbrain_Undead"
kill Rotbrain Magus##49423, Rotbrain Berserker##49422
Slay #8# Rotbrain Undead |q 24971/2 |goto Deathknell/0 74.54,69.12
step
talk Shadow Priest Sarvis##1569
|tip Inside the building.
turnin Assault on the Rotbrain Encampment##24971 |goto Deathknell/0 46.62,58.81
accept Vital Intelligence##24972 |goto Deathknell/0 46.62,58.81
step
talk Deathguard Simmer##1519
|tip Inside the building.
turnin Vital Intelligence##24972 |goto Tirisfal Glades/0 44.75,53.68
accept Reaping the Reapers##24978 |goto Tirisfal Glades/0 44.75,53.68
step
talk Apothecary Johaan##1518
|tip Inside the building.
accept Fields of Grief##24975 |goto Tirisfal Glades/0 44.62,53.79
step
talk Sedrick Calston##38925
|tip Upstairs inside the building.
accept Ever So Lonely##24974 |goto Tirisfal Glades/0 44.75,53.65
stickystart "Collect_Tirisfal_Pumpkins"
step
kill Tirisfal Farmhand##1935, Tirisfal Farmer##1934
Slay #10# Tirisfal Farmers |q 24978/1 |goto Tirisfal Glades/0 37.60,51.22
step
label "Collect_Tirisfal_Pumpkins"
click Tirisfal Pumpkin##375+
|tip They look like large orange pumpkins on the ground around this area.
collect 10 Tirisfal Pumpkin##2846 |q 24975/1 |goto Tirisfal Glades/0 37.60,51.22
step
kill Vile Fin Murloc##1541, Vile Fin Muckdweller##1545
use Murloc Leash##52059
|tip Use it on a Vile Fin murloc when they are weak.
Capture a Vile Fin |q 24974/1 |goto Tirisfal Glades/0 35.58,43.54
step
talk Deathguard Simmer##1519
|tip Inside the building.
turnin Reaping the Reapers##24978 |goto Tirisfal Glades/0 44.75,53.68
accept The Scarlet Palisade##24980 |goto Tirisfal Glades/0 44.75,53.68
step
talk Apothecary Johaan##1518
|tip Inside the building.
turnin Fields of Grief##24975 |goto Tirisfal Glades/0 44.62,53.79
accept Variety is the Spice of Death##24976 |goto Tirisfal Glades/0 44.62,53.79
step
Return the Vile Fin |q 24974/2 |goto Tirisfal Glades/0 44.75,53.65
|tip Upstairs inside the building.
|tip The murloc has to get close to the bed.
step
talk Sedrick Calston##38925
|tip Upstairs inside the building.
turnin Ever So Lonely##24974 |goto Tirisfal Glades/0 44.75,53.65
step
click Marrowpetal Stalk##202422+
|tip They look like red plants underwater around this area.
collect 4 Marrowpetal##52067 |q 24976/1 |goto Tirisfal Glades/0 49.02,54.26
step
click Xavren's Thorn##202421+
|tip They look like small yellow plants on the hills around this area.
collect 4 Xavren's Thorn##52066 |q 24976/2 |goto Tirisfal Glades/0 39.66,36.89
step
clicknpc Briny Sea Cucumber##38933+
|tip They look like small pink and yellow grubs underwater around this area.
collect 8 Briny Sea Creature##52068 |q 24976/3 |goto Tirisfal Glades/0 35.38,39.72
stickystart "Slay_Scarlet_Warriors"
step
kill Scarlet Warrior##1535+
collect A Scarlet Letter##52079 |n
accept A Scarlet Letter##24979 |goto Tirisfal Glades/0 33.00,48.24
|tip You will eventually automatically accept this quest after looting.
step
talk Lilian Voss##38999
|tip At the top of the tower.
Select _"I'm here to rescue you."_ |gossip 38511
Select _"Why did the Scarlet Crusade put you in a cage? They usually kill the undead on sight."_ |gossip 38022
Select _"Your father?"_ |gossip 38512
Watch the dialogue
Find the Scarlet Prisoner |q 24979/1 |goto Tirisfal Glades/0 31.67,46.33
step
label "Slay_Scarlet_Warriors"
kill 10 Scarlet Warrior##1535 |q 24980/1 |goto Tirisfal Glades/0 33.00,48.24
step
talk Deathguard Simmer##1519
|tip Inside the building.
turnin The Scarlet Palisade##24980 |goto Tirisfal Glades/0 44.75,53.68
turnin A Scarlet Letter##24979 |goto Tirisfal Glades/0 44.75,53.68
step
talk Apothecary Johaan##1518
|tip Inside the building.
turnin Variety is the Spice of Death##24976 |goto Tirisfal Glades/0 44.62,53.79
accept Johaan's Experiment##24977 |goto Tirisfal Glades/0 44.62,53.79
step
talk Captured Scarlet Zealot##1931
turnin Johaan's Experiment##24977 |goto Tirisfal Glades/0 44.70,52.62
step
talk Gordo##10666
|tip He walks around this area.
accept Gordo's Task##25038 |goto Tirisfal Glades/0 44.16,53.84
step
clicknpc Gloom Weed##175566+
|tip They look like wilted green and purple plants underwater around this area.
collect 3 Gloom Weed##12737 |q 25038/1 |goto Tirisfal Glades/0 49.37,54.75
step
talk Deathguard Dillinger##1496
accept A Putrid Task##25090 |goto Tirisfal Glades/0 52.55,54.81
accept The New Forsaken##24982 |goto Tirisfal Glades/0 52.55,54.81
step
Kill enemies around this area
collect 7 Putrid Claw##2855 |q 25090/1 |goto Tirisfal Glades/0 53.32,48.92
step
talk Deathguard Dillinger##1496
turnin A Putrid Task##25090 |goto Tirisfal Glades/0 52.54,54.82
step
talk Anette Williams##43124
fpath Brill |goto Tirisfal Glades/0 58.84,51.94
step
talk Deathguard Morris##1745
accept Supplying Brill##6321 |goto Tirisfal Glades/0 60.13,52.40
|only if Scourge
step
talk Junior Apothecary Holland##10665
|tip He walks around inside the building, on both floors.
turnin Gordo's Task##25038 |goto Tirisfal Glades/0 60.07,52.81
accept Darkhound Pounding##24990 |goto Tirisfal Glades/0 60.07,52.81
step
talk Executor Zygand##1515
accept A Thorn in our Side##24981 |goto Tirisfal Glades/0 60.54,51.86
step
talk Innkeeper Renee##5688
|tip Inside the building.
home Brill |goto Tirisfal Glades/0 60.87,51.50 |q 24981
step
talk Magistrate Sevren##1499
|tip He walks around upstairs inside the building.
turnin The New Forsaken##24982 |goto Tirisfal Glades/0 60.99,50.57
accept Forsaken Duties##24983 |goto Tirisfal Glades/0 60.99,50.57
stickystart "Collect_Darkhound_Blood"
step
kill Cursed Darkhound##1548+
|tip A Worgen will appear and give you a quest when you kill a Cursed Darkhound.
|tip Be careful not to kill the Cursed Darkhounds too fast.
accept Escaped From Gilneas##24992 |goto Tirisfal Glades/0 58.12,60.74
|tip You will eventually accept this quest automatically.
step
label "Collect_Darkhound_Blood"
kill Cursed Darkhound##1548+
collect 5 Darkhound Blood##2858 |q 24990/1 |goto Tirisfal Glades/0 58.12,60.74
stickystart "Slay_Scarlet_Missionaries"
stickystart "Collect_Urgent_Scarlet_Memorandum"
step
kill 3 Scarlet Zealot##1537 |q 24981/1 |goto Tirisfal Glades/0 51.47,67.69
step
label "Slay_Scarlet_Missionaries"
kill 3 Scarlet Missionary##1536 |q 24981/2 |goto Tirisfal Glades/0 51.47,67.69
step
label "Collect_Urgent_Scarlet_Memorandum"
kill Scarlet Missionary##1536, Scarlet Zealot##1537, Captain Perrine##1662
collect Urgent Scarlet Memorandum##52077 |q 24981/3 |goto Tirisfal Glades/0 51.47,67.69
step
talk Executor Zygand##1515
turnin A Thorn in our Side##24981 |goto Tirisfal Glades/0 60.54,51.87
turnin Escaped From Gilneas##24992 |goto Tirisfal Glades/0 60.54,51.87
accept Annihilate the Worgen##24993 |goto Tirisfal Glades/0 60.54,51.87
step
talk Junior Apothecary Holland##10665
|tip He walks around inside the building, on both floors.
turnin Darkhound Pounding##24990 |goto Tirisfal Glades/0 60.07,52.81
accept Holland's Experiment##24996 |goto Tirisfal Glades/0 60.07,52.81
step
talk Captured Mountaineer##2211
|tip Upstairs inside the building.
turnin Holland's Experiment##24996 |goto Tirisfal Glades/0 60.04,52.87
step
talk Junior Apothecary Holland##10665
|tip He walks around inside the building, on both floors.
accept Garren's Haunt##24991 |goto Tirisfal Glades/0 60.07,52.81
step
talk Anette Williams##43124
turnin Supplying Brill##6321 |goto Tirisfal Glades/0 58.84,51.94
accept Ride to the Undercity##6323 |goto Tirisfal Glades/0 58.84,51.94
|only if Scourge
step
talk Gordon Wendham##4556
turnin Ride to the Undercity##6323 |goto Undercity/0 61.47,41.81
accept Michael Garrett##6322 |goto Undercity/0 61.47,41.81
|only if Scourge
step
talk Michael Garrett##4551
turnin Michael Garrett##6322 |goto Undercity/0 63.26,48.57
accept Return to Morris##6324 |goto Undercity/0 63.26,48.57
|only if Scourge
step
talk Deathguard Morris##1745
turnin Return to Morris##6324 |goto Tirisfal Glades/0 60.13,52.40
|only if Scourge
step
kill 5 Worgen Infiltrator##38949 |q 24993/1 |goto Tirisfal Glades/0 60.14,51.89
|tip They walk around stealthed around this area.
|tip Look for little puffs of dust moving along the ground to spot them easily.
step
talk Executor Zygand##1515
turnin Annihilate the Worgen##24993 |goto Tirisfal Glades/0 60.54,51.87
step
talk Deathguard Linnea##1495
turnin Forsaken Duties##24983 |goto Tirisfal Glades/0 65.49,60.26
step
talk Gretchen Dedmar##1521
accept The Chill of Death##24988 |goto Tirisfal Glades/0 65.25,60.42
step
kill Greater Duskbat##1553+
collect 5 Duskbat Pelt##2876 |q 24988/1 |goto Tirisfal Glades/0 65.64,57.02
step
talk Gretchen Dedmar##1521
turnin The Chill of Death##24988 |goto Tirisfal Glades/0 65.25,60.42
step
talk Deathguard Linnea##1495
accept Return to the Magistrate##24989 |goto Tirisfal Glades/0 65.49,60.26
step
talk Magistrate Sevren##1499
|tip He walks around upstairs inside the building.
turnin Return to the Magistrate##24989 |goto Tirisfal Glades/0 60.99,50.57
step
talk Apothecary Jerrod##38977
turnin Garren's Haunt##24991 |goto Tirisfal Glades/0 61.65,34.55
accept Doom Weed##24994 |goto Tirisfal Glades/0 61.65,34.55
step
talk Apprentice Crispin##38978
accept Graverobbers##24997 |goto Tirisfal Glades/0 61.61,34.39
stickystart "Collect_Doom_Weed"
stickystart "Slay_Rot_Hide_Mongrels"
stickystart "Collect_Embalming_Ichor"
step
kill 8 Rot Hide Graverobber##1941 |q 24997/1 |goto Tirisfal Glades/0 55.18,42.38
step
label "Collect_Doom_Weed"
click Doom Weed##176753+
|tip They look like small green and purple plants on the ground around this area.
collect 10 Doom Weed##13702 |q 24994/1 |goto Tirisfal Glades/0 56.83,39.52
step
label "Slay_Rot_Hide_Mongrels"
kill 5 Rot Hide Mongrel##1675 |q 24997/2 |goto Tirisfal Glades/0 57.64,34.87
step
label "Collect_Embalming_Ichor"
kill Rot Hide Gnoll##1674, Rot Hide Mongrel##1675, Rot Hide Graverobber##1941
collect 6 Embalming Ichor##2834 |q 24997/3 |goto Tirisfal Glades/0 57.36,39.34
step
talk Apothecary Jerrod##38977
turnin Doom Weed##24994 |goto Tirisfal Glades/0 61.65,34.55
accept Off the Scales##24995 |goto Tirisfal Glades/0 61.65,34.55
step
talk Apprentice Crispin##38978
turnin Graverobbers##24997 |goto Tirisfal Glades/0 61.61,34.39
accept Maggot Eye##24998 |goto Tirisfal Glades/0 61.61,34.39
accept Planting the Seed of Fear##24999 |goto Tirisfal Glades/0 61.61,34.39
step
kill Maggot Eye##1753
|tip Inside the building.
collect Maggot Eye's Paw##3635 |q 24998/1 |goto Tirisfal Glades/0 58.66,30.74
stickystart "Collect_Vile_Fin_Scales"
step
Frighten #12# Vile Fin Tadpoles |q 24999/1 |goto Tirisfal Glades/0 59.76,27.74
|tip Run next to Vile Fin Tadpoles to frighten them.
|tip Keep chasing them when they run away.
You can find more around [65.01,28.62]
step
label "Collect_Vile_Fin_Scales"
kill Vile Fin Murloc##1541, Vile Fin Muckdweller##1545
collect 5 Vile Fin Scale##2859 |q 24995/1 |goto Tirisfal Glades/0 61.20,27.42
step
talk Apprentice Crispin##38978
turnin Maggot Eye##24998 |goto Tirisfal Glades/0 61.61,34.39
turnin Planting the Seed of Fear##24999 |goto Tirisfal Glades/0 61.61,34.39
step
talk Apothecary Jerrod##38977
turnin Off the Scales##24995 |goto Tirisfal Glades/0 61.65,34.56
accept Head for the Mills##25031 |goto Tirisfal Glades/0 61.65,34.56
step
talk Coleman Farthing##1500
turnin Head for the Mills##25031 |goto Tirisfal Glades/0 54.59,29.90
accept The Family Crypt##25003 |goto Tirisfal Glades/0 54.59,29.90
stickystart "Slay_Rotting_Ancestors"
step
kill 8 Wailing Ancestor##1534 |q 25003/1 |goto Tirisfal Glades/0 52.08,29.69
step
label "Slay_Rotting_Ancestors"
kill 8 Rotting Ancestor##1530 |q 25003/2 |goto Tirisfal Glades/0 52.08,29.69
step
talk Coleman Farthing##1500
turnin The Family Crypt##25003 |goto Tirisfal Glades/0 54.59,29.90
accept The Mills Overrun##25004 |goto Tirisfal Glades/0 54.59,29.90
accept Deaths in the Family##25029 |goto Tirisfal Glades/0 54.59,29.90
stickystart "Collect_Notched_Ribs"
stickystart "Collect_Blackened_Skulls"
step
kill Thurman Agamand##1656
|tip He walks around this area.
collect Thurman's Remains##2830 |q 25029/3 |goto Tirisfal Glades/0 46.04,30.22
step
kill Gregor Agamand##1654
|tip He walks around this area.
collect Gregor's Remains##2829 |q 25029/2 |goto Tirisfal Glades/0 45.63,29.58
step
kill Devlin Agamand##1657
collect Devlin's Remains##2831 |q 25029/4 |goto Tirisfal Glades/0 48.95,33.92
step
kill Nissa Agamand##1655
|tip Inside the building.
|tip She can either be upstairs or downstairs.
collect Nissa's Remains##2828 |q 25029/1 |goto Tirisfal Glades/0 49.67,36.15
step
label "Collect_Notched_Ribs"
kill Cracked Skull Soldier##1523+
collect 5 Notched Rib##3162 |q 25004/1 |goto Tirisfal Glades/0 46.62,31.46
step
label "Collect_Blackened_Skulls"
kill Darkeye Bonecaster##1522+
collect 3 Blackened Skull##3163 |q 25004/2 |goto Tirisfal Glades/0 46.62,31.46
step
talk Coleman Farthing##1500
turnin The Mills Overrun##25004 |goto Tirisfal Glades/0 54.59,29.90
turnin Deaths in the Family##25029 |goto Tirisfal Glades/0 54.59,29.90
accept Speak with Sevren##25005 |goto Tirisfal Glades/0 54.59,29.90
step
talk Magistrate Sevren##1499
|tip He walks around upstairs inside the building.
turnin Speak with Sevren##25005 |goto Tirisfal Glades/0 60.99,50.57
accept The Grasp Weakens##25006 |goto Tirisfal Glades/0 60.99,50.57
step
talk Shadow Priestess Malia##39117 |goto Tirisfal Glades/0 62.03,52.95
|tip Inside the building.
Select _"I am ready."_ |gossip 38526
Follow Her Upstairs |goto Tirisfal Glades/0 62.03,53.25 < 5 |noway |q 25006
step
Watch the dialogue
kill Spirit of Devlin Agamand##38980
|tip Upstairs inside the building.
Complete the Procedure |q 25006/1 |goto Tirisfal Glades/0 62.08,52.79
step
Enter the building |goto Tirisfal Glades/0 60.82,51.86 < 5 |walk
Run up the stairs |goto Tirisfal Glades/0 61.11,51.21 < 5 |walk
talk Magistrate Sevren##1499
|tip He walks around upstairs inside the building.
turnin The Grasp Weakens##25006 |goto Tirisfal Glades/0 60.99,50.57
accept East... Always to the East##25007 |goto Tirisfal Glades/0 60.99,50.57
step
talk High Executor Derrington##10837
turnin East... Always to the East##25007 |goto Tirisfal Glades/0 83.26,68.99
accept At War With The Scarlet Crusade##25009 |goto Tirisfal Glades/0 83.26,68.99
step
talk Apothecary Dithers##11057
accept Grisly Grizzlies##25056 |goto Tirisfal Glades/0 83.28,69.23
step
talk Timothy Cunningham##37915
fpath The Bulwark |goto Tirisfal Glades/0 83.57,69.94
step
talk Provisioner Elda##46271
home The Bulwark |goto Tirisfal Glades/0 83.08,72.00 |q 25009
step
kill Plagued Bruin##39049+
collect 5 Plagued Bruin Hide##52270 |q 25056/1 |goto Tirisfal Glades/0 77.73,66.45
stickystart "Slay_Scarlet_Friars"
step
kill 3 Scarlet Zealot##1537 |q 25009/1 |goto Tirisfal Glades/0 79.81,56.11
step
label "Slay_Scarlet_Friars"
kill 4 Scarlet Friar##1538 |q 25009/2 |goto Tirisfal Glades/0 79.81,56.11
step
talk Apothecary Dithers##11057
turnin Grisly Grizzlies##25056 |goto Tirisfal Glades/0 83.28,69.23
accept A Little Oomph##25013 |goto Tirisfal Glades/0 83.28,69.23
step
talk High Executor Derrington##10837
turnin At War With The Scarlet Crusade##25009 |goto Tirisfal Glades/0 83.26,68.99
accept A Deadly New Ally##25010 |goto Tirisfal Glades/0 83.26,68.99
step
kill Vicious Night Web Spider##1555+
collect 4 Vicious Night Web Spider Venom##2872 |q 25013/1 |goto Tirisfal Glades/0 85.74,52.56
step
talk Lieutenant Sanders##13158
|tip He's hanging upside down from a chain.
turnin A Deadly New Ally##25010 |goto Tirisfal Glades/0 87.50,43.30
accept A Daughter's Embrace##25046 |goto Tirisfal Glades/0 87.50,43.30
step
Watch the dialogue
|tip Inside of the tower.
Accomplish Lillian's Mission |q 25046/1 |goto Tirisfal Glades/0 79.49,25.35
step
talk High Executor Derrington##10837
turnin A Daughter's Embrace##25046 |goto Tirisfal Glades/0 83.26,68.99
accept To Bigger and Better Things##25011 |goto Tirisfal Glades/0 83.26,68.99
step
talk Apothecary Dithers##11057
turnin A Little Oomph##25013 |goto Tirisfal Glades/0 83.28,69.23
step
talk Timothy Cunningham##37915
turnin To Bigger and Better Things##25011 |goto Tirisfal Glades/0 83.57,69.94
accept Take to the Skies##25012 |goto Tirisfal Glades/0 83.57,69.94
step
talk Timothy Cunningham##37915 |goto Tirisfal Glades/0 83.57,69.94
Select _"I'll take that flight to Brill now."_ |gossip 37627
Take a Flight to Brill |goto Tirisfal Glades/0 58.89,51.94 < 10 |noway |q 25012
step
talk Executor Zygand##1515
turnin Take to the Skies##25012 |goto Tirisfal Glades/0 60.53,51.87
accept Warchief's Command: Silverpine Forest!##26964 |goto Tirisfal Glades/0 60.53,51.87
]])
QuestCore:RegisterGuide("Leveling Guides\\Starter Guides\\Demon Hunter Starter",{
description="This guide will walk you through completing the introductory Demon Hunter quests.",
condition_valid=function() return raceclass('DemonHunter') and level >= 8 end,
condition_valid_msg="You must be a Demon Hunter and at least level 8 to complete this guide!",
condition_suggested=function() return raceclass('DemonHunter') and level >= 8 end,
condition_suggested_exclusive=true,
startlevel=8.00,
},[[
step
Watch the dialogue
talk Kayn Sunfury##93011
accept The Invasion Begins##40077 |goto Mardum, the Shattered Abyss C/0 22.08,55.83
step
kill kill Foul Felstalker##98482, Hellish Imp##98483, Imp Mother##98497, Mo'arg Brute##98484, Wrath Warrior##98486
Slay #15# Demons |q 40077/1 |goto Mardum, the Shattered Abyss C/0 26.30,63.05
step
click Legion Banner##250560
Change the Legion Banner |q 40077/2 |goto Mardum, the Shattered Abyss C/0 28.66,62.92
step
talk Kayn Sunfury##98229
turnin The Invasion Begins##40077 |goto Mardum, the Shattered Abyss C/0 28.60,63.06
accept Enter the Illidari: Ashtongue##40378 |goto Mardum, the Shattered Abyss C/0 28.60,63.06
step
click Legion Gateway Activator##241757
Summon the Ashtongue Forces |q 40378/1 |goto Mardum, the Shattered Abyss C/0 31.57,61.89
step
Watch the dialogue
clicknpc Felsaber##101518
Accept Illidan's Gift |q 40378/2 |goto Mardum, the Shattered Abyss C/0 31.53,62.37
step
Find Allari to the Southeast |q 40378/3 |goto Mardum, the Shattered Abyss C/0 32.18,69.63
step
talk Allari the Souleater##94410
turnin Enter the Illidari: Ashtongue##40378 |goto Mardum, the Shattered Abyss C/0 33.94,70.05
accept Set Them Free##38759 |goto Mardum, the Shattered Abyss C/0 33.94,70.05
accept Eye On the Prize##39049 |goto Mardum, the Shattered Abyss C/0 33.94,70.05
step
talk Sevis Brightflame##100982
accept Enter the Illidari: Coilskar##40379 |goto Mardum, the Shattered Abyss C/0 33.94,69.96
step
kill Anguish Jailer##95226+
collect Soulwrought Key##128227 |q 38759/1 |goto Mardum, the Shattered Abyss C/0 38.29,73.76
step
clicknpc Jailer Cage##103381
Free Cyana Nightglaive |q 38759/3 |goto Mardum, the Shattered Abyss C/0 39.34,71.72
step
clicknpc Jailer Cage##103381
Free Belath Dawnblade |q 38759/2 |goto Mardum, the Shattered Abyss C/0 41.73,73.22
step
kill Inquisitor Baleful##93105
Slay Inquisitor Baleful & Take His Power |q 39049/1 |goto Mardum, the Shattered Abyss C/0 42.64,79.34
step
talk Ashtongue Mystic##99914
Select _"Mystic, thank you for your sacrifice."_ |gossip 45047
Sacrifice the Soul |q 40379/1 |goto Mardum, the Shattered Abyss C/0 43.44,72.69
step
click Legion Gateway Activator##241757
Summon the Coilskar Forces |q 40379/2 |goto Mardum, the Shattered Abyss C/0 43.79,72.04
step
clicknpc Jailer Cage##103381
Free Mannethrel Darkstar |q 38759/5 |goto Mardum, the Shattered Abyss C/0 41.57,66.68
step
clicknpc Jailer Cage##103381
|tip Inside the small cave.
Free Izal Whitemoon |q 38759/4 |goto Mardum, the Shattered Abyss C/0 38.62,67.90
step
talk Jace Darkweaver##93759
turnin Set Them Free##38759 |goto Mardum, the Shattered Abyss C/0 38.80,60.64
turnin Eye On the Prize##39049 |goto Mardum, the Shattered Abyss C/0 38.80,60.64
turnin Enter the Illidari: Coilskar##40379 |goto Mardum, the Shattered Abyss C/0 38.80,60.64
accept Meeting With the Queen##39050 |goto Mardum, the Shattered Abyss C/0 38.80,60.64
step
click Nether Crucible##243335
Complete the Ritual |q 39050/1 |goto Mardum, the Shattered Abyss C/0 38.75,60.52
step
talk Jace Darkweaver##93759
turnin Meeting With the Queen##39050 |goto Mardum, the Shattered Abyss C/0 38.80,60.64
accept Enter the Illidari: Shivarra##38765 |goto Mardum, the Shattered Abyss C/0 38.80,60.64
accept Before We're Overrun##38766 |goto Mardum, the Shattered Abyss C/0 38.80,60.64
step
clicknpc Spire Stabilizer##6477+
|tip They look like {o}large green floating crystals nearby{}.
kill Doom Commander Beliash##93221
Slay Beliash & Take His Power |q 38766/1 |goto Mardum, the Shattered Abyss C/0 35.16,39.57
step
talk Sevis Brightflame##99915
Select _"Sevis, I need to sacrifice you in order to power the final gateway."_ |gossip 45048
Select _"I'm certain, Sevis. I need to sacrifice you to power the gateway."_ |gossip 45101
Make the Sacrifice |q 38765/1 |goto Mardum, the Shattered Abyss C/0 39.69,39.47
step
click Legion Gateway Activator##241757
Summon the Shivarra Forces |q 38765/2 |goto Mardum, the Shattered Abyss C/0 40.36,38.42
step
talk Kayn Sunfury##93127
turnin Enter the Illidari: Shivarra##38765 |goto Mardum, the Shattered Abyss C/0 60.51,44.75
turnin Before We're Overrun##38766 |goto Mardum, the Shattered Abyss C/0 60.51,44.75
accept Orders for Your Captains##38813 |goto Mardum, the Shattered Abyss C/0 60.51,44.75
step
talk Lady S'theno##93693
Select _"Milady, you will take your naga north. Disrupt the ritual the demons are performing at their Soul Engine."_ |gossip 44410
Brief Lady Lady S'theno |q 38813/2 |goto Mardum, the Shattered Abyss C/0 59.24,46.13
step
talk Matron Mother Malevolence##94435
Select _"Matron Mother, I need you to take your shivan across the gap to the Forge of Corruption. Make them suffer."_ |gossip 44865
Brief Matron Mother Malevolence |q 38813/3 |goto Mardum, the Shattered Abyss C/0 60.98,46.97
step
talk Battlelord Gaardoun##90247
Select _"Battlelord, your forces will assault The Doom Fortress to the southeast. Stop the mass of their demons from attacking us."_ |gossip 42930
Brief Battlelord Gaardoun |q 38813/1 |goto Mardum, the Shattered Abyss C/0 62.18,46.29
step
talk Kayn Sunfury##93127
turnin Orders for Your Captains##38813 |goto Mardum, the Shattered Abyss C/0 60.51,44.75
accept Give Me Sight Beyond Sight##39262 |goto Mardum, the Shattered Abyss C/0 60.51,44.75
step
talk Jace Darkweaver##96436
Select _"Yes, Jace, I will use my spectral sight to look into the cave."_ |gossip 45064
Speak with Jace Darkweaver |q 39262/1 |goto Mardum, the Shattered Abyss C/0 64.05,52.29
step
Face the Cave & Use Spectral Sight |q 39262/2 |goto Mardum, the Shattered Abyss C/0 63.86,53.13
|tip Use your {o}Spectral Sight{} ability.
|tip Look toward the {o}wall of boulders{}.
step
talk Jace Darkweaver##96436
turnin Give Me Sight Beyond Sight##39262 |goto Mardum, the Shattered Abyss C/0 64.05,52.29
accept Hidden No More##39495 |goto Mardum, the Shattered Abyss C/0 64.05,52.29
step
kill Fel Lord Caza##96441
|tip Upstairs inside the cave.
Slay Caza & Take His Power |q 39495/1 |goto Mardum, the Shattered Abyss C/1 60.93,62.58
step
Leave the cave |goto Mardum, the Shattered Abyss C/0 63.76,53.61 < 15 |walk |only if subzone("Cryptic Hollow") and indoors()
talk Kayn Sunfury##93127
turnin Hidden No More##39495 |goto Mardum, the Shattered Abyss C/0 60.51,44.76
accept Stop the Bombardment##38727 |goto Mardum, the Shattered Abyss C/0 60.51,44.76
step
talk Cyana Nightglaive##96420
accept Their Numbers Are Legion##38819 |goto Mardum, the Shattered Abyss C/0 60.54,44.87
step
talk Allari the Souleater##96655
accept Into the Foul Creche##38725 |goto Mardum, the Shattered Abyss C/0 60.52,44.67
stickystart "Complete_The_War_Progress"
step
click Illidari Banner##243968
Watch the dialogue
Destroy the Doom Fortress Devastator |q 38727/1 |goto Mardum, the Shattered Abyss C/0 69.28,48.78
step
click Illidari Banner##243968
Watch the dialogue
Destroy the Forge of Corruption Devastator |q 38727/2 |goto Mardum, the Shattered Abyss C/0 75.01,41.09
step
talk Kor'vas Bloodthorn##98711
turnin Into the Foul Creche##38725 |goto Mardum, the Shattered Abyss C/0 73.16,33.82
accept The Imp Mother's Tome##40222 |goto Mardum, the Shattered Abyss C/0 73.16,33.82
stickystop "Complete_The_War_Progress"
step
Enter the cave |goto Mardum, the Shattered Abyss C/0 73.84,31.80 < 15 |walk
kill Prolifica##98986
|tip Inside the cave.
collect Tome of Fel Secrets##129957 |q 40222/1 |goto Mardum, the Shattered Abyss C/0 77.12,27.69
stickystart "Complete_The_War_Progress"
step
Leave the cave |goto Mardum, the Shattered Abyss C/0 73.84,31.80 < 15 |walk |only if subzone("Foul Creche") and indoors()
click Illidari Banner##243968
Watch the dialogue
Destroy the Soul Engine Devastator |q 38727/3 |goto Mardum, the Shattered Abyss C/0 66.40,30.40
step
label "Complete_The_War_Progress"
kill Doom Slayer##93716, Fel Weaver##97706, Fiendish Creeper##99759, Fury Champion##97034, Hulking Forgefiend##96402, King Voras##97059, Queen's Centurion##96277, Burning Soulstalker##96278, Volatile Minion##96280, Vile Soulmaster##102724, Mardum Executioner##96279, Soul Fragment##101753, Vile Soulmaster##97014, General Volroth##97370
clicknpc Doom Fortress Stabilizer##101947+
|tip They look like {o}large green floating crystals{}.
|tip They can also have {o}different names{}.
clicknpc Demon Hunter##100543, clicknpc Demon Hunter##100545
|tip They look like {o}NPCs laying with red tear drops above them{}.
Complete the War Progress |q 38819/1 |goto Mardum, the Shattered Abyss C/0 65.73,28.83
step
talk Kayn Sunfury##93127
turnin Stop the Bombardment##38727 |goto Mardum, the Shattered Abyss C/0 60.51,44.75
turnin Their Numbers Are Legion##38819 |goto Mardum, the Shattered Abyss C/0 60.51,44.75
step
talk Kor'vas Bloodthorn##99045
turnin The Imp Mother's Tome##40222 |goto Mardum, the Shattered Abyss C/0 60.51,44.83
accept Fel Secrets##40051 |goto Mardum, the Shattered Abyss C/0 60.51,44.83
step
click Tome of Fel Secrets##245112
Choose Between Havoc & Vengeance |q 40051/1 |goto Mardum, the Shattered Abyss C/0 60.54,44.77
step
talk Kayn Sunfury##93127
turnin Fel Secrets##40051 |goto Mardum, the Shattered Abyss C/0 60.51,44.75 |oncomplete QC:QuestRewardConfirm()
step
talk Kayn Sunfury##93127
accept Cry Havoc and Let Slip the Illidari!##39516 |goto Mardum, the Shattered Abyss C/0 60.51,44.75
|only if Havoc Demonhunter
step
talk Kayn Sunfury##93127
accept Vengeance Will Be Mine!##39515 |goto Mardum, the Shattered Abyss C/0 60.51,44.75
|only if Vengeance Demonhunter
step
talk Cyana Nightglaive##96420
Select _"Listen closely, Cyana. This is what I learned from the Tome of Fel Secrets."_ |gossip 44440 |only if Havoc Demonhunter
Select _"Listen closely, Cyana. This is what I learned from the Tome of Fel Secrets."_ |gossip 44441 |only if Vengeance Demonhunter
Teach Cyana |q 39515/2 |goto Mardum, the Shattered Abyss C/0 60.55,44.86 |only if haveq(39515) or completedq(39515)
Teach Cyana |q 39516/2 |goto Mardum, the Shattered Abyss C/0 60.55,44.86 |only if haveq(39516) or completedq(39516)
step
talk Kor'vas Bloodthorn##99045
Select _"Are you ready to learn the Legion's secrets, Kor'vas?"_ |gossip 44442 |only if Havoc Demonhunter
Select _"Are you ready to learn the Legion's secrets, Kor'vas?"_ |gossip 44443 |only if Vengeance Demonhunter
Teach Kor'vas |q 39515/4 |goto Mardum, the Shattered Abyss C/0 60.51,44.82 |only if haveq(39515) or completedq(39515)
Teach Kor'vas |q 39516/4 |goto Mardum, the Shattered Abyss C/0 60.51,44.82 |only if haveq(39516) or completedq(39516)
step
talk Kayn Sunfury##93127
Select _"Kayn, I will teach you what I've learned of the demonic mysteries."_ |gossip 44408 |only if Havoc Demonhunter
Select _"Kayn, I will teach you what I've learned of the demonic mysteries."_ |gossip 44409 |only if Vengeance Demonhunter
Teach Kayn |q 39515/3 |goto Mardum, the Shattered Abyss C/0 60.51,44.75 |only if haveq(39515) or completedq(39515)
Teach Kayn |q 39516/3 |goto Mardum, the Shattered Abyss C/0 60.51,44.75 |only if haveq(39516) or completedq(39516)
step
talk Allari the Souleater##96655
Select _"Allari, these are the secrets I've uncovered."_ |gossip 44405 |only if Havoc Demonhunter
Select _"Allari, these are the secrets I've uncovered."_ |gossip 44406 |only if Vengeance Demonhunter
Teach Allari |q 39515/1 |goto Mardum, the Shattered Abyss C/0 60.52,44.66 |only if haveq(39515) or completedq(39515)
Teach Allari |q 39516/1 |goto Mardum, the Shattered Abyss C/0 60.52,44.66 |only if haveq(39516) or completedq(39516)
step
talk Mannethrel Darkstar##96652
Select _"Mannethrel, prepare yourself. I am going to fill you with the power of the Legion's secrets."_ |gossip 44661 |only if Havoc Demonhunter
Select _"Mannethrel, prepare yourself. I am going to fill you with the power of the Legion's secrets."_ |gossip 44662 |only if Vengeance Demonhunter
Teach Mannethrel |q 39515/5 |goto Mardum, the Shattered Abyss C/0 60.26,44.59 |only if haveq(39515) or completedq(39515)
Teach Mannethrel |q 39516/5 |goto Mardum, the Shattered Abyss C/0 60.26,44.59 |only if haveq(39516) or completedq(39516)
step
talk Kayn Sunfury##93127
turnin Cry Havoc and Let Slip the Illidari!##39516 |or |goto Mardum, the Shattered Abyss C/0 60.51,44.75 |only if haveq(39516) or completedq(39516)
turnin Vengeance Will Be Mine!##39515 |or |goto Mardum, the Shattered Abyss C/0 60.51,44.75 |only if haveq(39515) or completedq(39515)
accept On Felbat Wings##39663 |goto Mardum, the Shattered Abyss C/0 60.51,44.75
step
talk Izal Whitemoon##96653
Select _"Whitemoon, I'll be taking one of your felbats. We're going to get what we came here for."_ |gossip 44646
Ride to the Fel Hammer |q 39663/1 |goto Mardum, the Shattered Abyss C/0 62.52,44.90
step
Begin Riding to the Fel Hammer |invehicle |goto Mardum, the Shattered Abyss C/0 62.52,44.90 |q 39663
step
Ride to the Fel Hammer |outvehicle |goto Mardum, the Shattered Abyss C/0 69.94,44.39 |q 39663 |notravel
step
talk Cyana Nightglaive##97297
turnin On Felbat Wings##39663 |goto Mardum, the Shattered Abyss C/0 69.93,44.23
accept The Keystone##38728 |goto Mardum, the Shattered Abyss C/0 69.93,44.23
step
kill Brood Queen Tyranna##93802
|tip Inside the building.
collect Sargerite Keystone##124672 |q 38728/1 |goto Mardum, the Shattered Abyss C/0 69.87,40.53
step
Find the Way Downstairs |q 38728/2 |goto Mardum, the Shattered Abyss C/0 71.02,41.76
step
talk Kayn Sunfury##97303
|tip Downstairs inside the building.
turnin The Keystone##38728 |goto Mardum, the Shattered Abyss C/0 69.86,37.89
step
Watch the dialogue
talk Kayn Sunfury##97303
|tip Downstairs inside the building.
accept Return to the Black Temple##38729 |goto Mardum, the Shattered Abyss C/0 69.86,37.89
step
click Sargerite Keystone##251314
|tip Downstairs inside the building.
Activate the Sargerite Keystone |q 38729/1 |goto Mardum, the Shattered Abyss C/0 69.85,37.80
step
click Fel Portal##244466
|tip Downstairs inside the building.
turnin Return to the Black Temple##38729 |goto Mardum, the Shattered Abyss C/0 69.85,37.51
step
talk Maiev Shadowsong##92718
accept Breaking Out##38672 |goto Vault of the Wardens/1 80.06,36.57
step
clicknpc Altruis's Cell##103655
Free Altruis |q 38672/1 |goto Vault of the Wardens/1 78.59,38.29
step
clicknpc Kayn's Cell##103658
Free Kayn |q 38672/2 |goto Vault of the Wardens/1 78.56,34.93
step
Watch the dialogue
Wait for Altruis and Kayn |complete readyq(38672) or completedq(38672) |goto Vault of the Wardens/1 77.93,35.59
step
click Lever##211284
turnin Breaking Out##38672 |goto Vault of the Wardens/1 77.93,35.59
step
talk Kayn Sunfury##92980
accept Rise of the Illidari##38690 |goto Vault of the Wardens/1 74.47,35.97
step
talk Altruis the Sufferer##92986
accept Fel Infusion##38689 |goto Vault of the Wardens/1 74.40,37.16
stickystart "Regain_Fel_Energy"
step
click Warden Cells##244588+
|tip They look {o}green glass cases along the walls{}.
|tip The {o}clickable ones{} will have a {o}slight yellow glowing border{} around them.
Free #8# Imprisoned Illidari |q 38690/1 |goto Vault of the Wardens/1 69.11,36.51
step
label "Regain_Fel_Energy"
kill kill Fel Shocktrooper##92776, Savage Felstalker##92782
Regain #100# Fel Energy |q 38689/1 |goto Vault of the Wardens/1 69.11,36.51
step
talk Altruis the Sufferer##92986
turnin Fel Infusion##38689 |goto Vault of the Wardens/1 49.67,49.34
step
talk Kayn Sunfury##96665
turnin Rise of the Illidari##38690 |goto Vault of the Wardens/1 49.18,49.44
step
talk Maiev Shadowsong##92718
accept Stop Gul'dan!##40253 |goto Vault of the Wardens/1 49.46,49.75 |or
|accept Stop Gul'dan!##38723 |or
step
kill Crusher##66724
kill Sledge##92990
|tip A {o}Brutal Attacks buff{} switches between them.
|tip The buff {o}increases their damage{}.
|tip {o}Fight{} the one who {o}doesn't have the buff{}.
Slay Crusher & Sledge & Take Their Power |q 40253/2 |goto Vault of the Wardens/1 49.90,77.60 |only if haveq(40253) or completedq(40253)
Slay Crusher & Sledge & Take Their Power |q 38723/2 |goto Vault of the Wardens/1 49.90,77.60 |only if haveq(38723) or completedq(38723)
step
talk Kayn Sunfury##96665
turnin Stop Gul'dan!##40253 |goto Vault of the Wardens/1 50.80,72.80 |only if haveq(40253) or completedq(40253)
turnin Stop Gul'dan!##38723 |goto Vault of the Wardens/1 50.80,72.80 |only if haveq(38723) or completedq(38723)
accept Grand Theft Felbat##39682 |goto Vault of the Wardens/1 50.80,72.80
step
clicknpc Vampiric Felbat##96659
|tip Follow the {o}winding path up{}.
Begin Riding the Vampiric Felbat to the Upper Vault |invehicle |goto Vault of the Wardens/1 48.47,20.16 |q 39682
step
Ride a Vampiric Felbat to the Upper Vault |q 39682/1
step
talk Kor'vas Bloodthorn##97643
turnin Grand Theft Felbat##39682 |goto Vault of the Wardens/2 41.34,47.35
accept Frozen in Time##39685 |goto Vault of the Wardens/2 41.34,47.35
accept Beam Me Up##39684 |goto Vault of the Wardens/2 41.34,47.35
step
talk Allari the Souleater##96675
accept Forged in Fire##40254 |goto Vault of the Wardens/2 41.12,47.16 |or
|accept Forged in Fire##39683 |or
step
kill Immolanth##96682
Slay Immolanth & Take His Power |q 40254/1 |goto Vault of the Wardens/2 46.79,17.11 |only if haveq(40254) or completedq(40254)
Slay Immolanth & Take His Power |q 39683/1 |goto Vault of the Wardens/2 46.79,17.11 |only if haveq(39683) or completedq(39683)
step
click Reflective Mirror##244449
|tip {o}Avoid{} the stuff on the ground.
Rotate the Mirror |q 39684/1 |goto Vault of the Wardens/2 70.62,49.58
step
clicknpc Countermeasures##99240
Activate the Eastern Countermeasure |q 39685/1 |goto Vault of the Wardens/2 50.11,78.10
step
clicknpc Countermeasures##99240
Activate the Southern Countermeasure |q 39685/2 |goto Vault of the Wardens/2 46.85,84.26
step
clicknpc Countermeasures##99240
Activate the Western Countermeasure |q 39685/3 |goto Vault of the Wardens/2 43.41,78.25
step
talk Allari the Souleater##96675
turnin Frozen in Time##39685 |goto Vault of the Wardens/2 41.12,47.17
turnin Beam Me Up##39684 |goto Vault of the Wardens/2 41.12,47.17
turnin Forged in Fire##40254 |goto Vault of the Wardens/2 41.12,47.17 |only if haveq(40254) or completedq(40254)
turnin Forged in Fire##39683 |goto Vault of the Wardens/2 41.12,47.17 |only if haveq(39683) or completedq(39683)
accept All The Way Up##39686 |goto Vault of the Wardens/2 41.12,47.17
step
Ascend to the Hall of Judgement |q 39686/1 |goto Vault of the Wardens/2 46.73,48.24
|tip {o}Wait for the elevator{} to come down, then ride it up.
step
talk Kor'vas Bloodthorn##97644
turnin All The Way Up##39686 |goto Vault of the Wardens/3 24.43,55.82
accept A New Direction##40373 |goto Vault of the Wardens/3 24.43,55.82
step
click Pool of Judgement
View the Pool of Judgement |q 40373/1 |goto Vault of the Wardens/3 24.40,53.08
step
talk Kor'vas Bloodthorn##97644
Select _"Will it be Kayn or Altruis?"_ |gossip 44913
|tip {o}Choose{} to side with {o}Kayn Sunfury{} or {o}Altruis the Sufferer{}.
|tip Choose {o}whichever you agree with{}, it doesn't matter.
Choose Between Kayn and Altruis |q 40373/2 |goto Vault of the Wardens/3 24.43,55.82
step
talk Kor'vas Bloodthorn##97644
turnin A New Direction##40373 |goto Vault of the Wardens/3 24.43,55.82
accept Between Us and Freedom##39688 |goto Vault of the Wardens/3 24.43,55.82 |or
|accept Between Us and Freedom##39694 |or
|accept Between Us and Freedom##40255 |or
|accept Between Us and Freedom##40256 |or
step
kill Bastillax##96783
Slay Bastillax & Take His Power |q 39688/1 |goto Vault of the Wardens/3 50.38,77.52 |only if haveq(39688) or completedq(39688)
Slay Bastillax & Take His Power |q 39694/1 |goto Vault of the Wardens/3 50.38,77.52 |only if haveq(39694) or completedq(39694)
Slay Bastillax & Take His Power |q 40255/1 |goto Vault of the Wardens/3 50.38,77.52 |only if haveq(40255) or completedq(40255)
Slay Bastillax & Take His Power |q 40256/1 |goto Vault of the Wardens/3 50.38,77.52 |only if haveq(40256) or completedq(40256)
step
talk Kayn Sunfury##96666
|tip {o}Altruis the Sufferer{} may be here instead.
|tip It depends who {o}you chose{} to side with.
turnin Between Us and Freedom##39688 |goto Vault of the Wardens/3 84.12,82.84 |only if haveq(39688) or completedq(39688)
turnin Between Us and Freedom##39694 |goto Vault of the Wardens/3 84.12,82.84 |only if haveq(39694) or completedq(39694)
turnin Between Us and Freedom##40255 |goto Vault of the Wardens/3 84.12,82.84 |only if haveq(40255) or completedq(40255)
turnin Between Us and Freedom##40256 |goto Vault of the Wardens/3 84.12,82.84 |only if haveq(40256) or completedq(40256)
|talk Altruis the Sufferer##96669
step
talk Archmage Khadgar##97978
accept Illidari, We Are Leaving##39690 |goto Vault of the Wardens/3 85.98,84.32 |or
|accept Illidari, We Are Leaving##39689 |or
step
talk Archmage Khadgar##97978
turnin Illidari, We Are Leaving##39690 |goto Vault of the Wardens/3 85.98,84.32 |only if haveq(39690) or completedq(39690)
turnin Illidari, We Are Leaving##39689 |goto Vault of the Wardens/3 85.98,84.32 |only if haveq(39689) or completedq(39689)
step
talk Archmage Khadgar##97296
accept Audience with the Warchief##40976 |goto Orgrimmar/1 52.53,88.16
step
talk High Overlord Saurfang##100636
Select _"Take me inside Grommash Hold."_ |gossip 45115
Report to Saurfang |q 40976/1 |goto Orgrimmar/1 50.04,75.97
step
Learn the Fate of the Horde |q 40976/2
step
talk Allari the Souleater##100873
turnin Audience with the Warchief##40976 |goto Durotar/0 45.81,15.11
accept Second Sight##40982 |goto Durotar/0 45.81,15.11
step
Use Spectral Sight |q 40982/1 |goto Durotar/0 45.90,15.29
|tip Use your {o}Spectral Sight{} ability.
step
talk Allari the Souleater##100873
turnin Second Sight##40982 |goto Durotar/0 45.81,15.11
accept Demons Among Them##40983 |goto Durotar/0 45.84,15.16
step
talk Lady Sylvanas Windrunner##100866
Select _"This cannot wait. There are demons among your ranks. Let me show you."_ |gossip 44962
Warn Warchief Sylvanas |q 40983/1 |goto Durotar/0 45.71,15.87
step
kill Felblade Assassin##101100, Felblade Assassin##101146, Shard of Hate##101104
Slay #12# Demons |q 40983/2 |goto Durotar/0 45.94,14.70
step
talk Lady Sylvanas Windrunner##100866
turnin Demons Among Them##40983 |goto Durotar/0 45.68,15.92
accept A Weapon of the Horde##41002 |goto Durotar/0 45.68,15.92
step
talk Elthyn Da'rai##95234
|tip She walks around this area.
|tip Up on the platfeau above the city.
turnin A Weapon of the Horde##41002 |goto Orgrimmar/1 52.91,56.51
step
talk Khadgar's Upgraded Servant##114562
|tip It appears next to you.
accept In the Blink of an Eye##44663 |goto Orgrimmar/1 52.91,56.51 |or
|accept In the Blink of an Eye##44184 |goto Orgrimmar/1 52.91,56.51 |or
step
talk Kirin Tor Emissary##149616
|tip Inside the building.
Select _"The Kirin Tor requires my aid. Send me to Dalaran!"_ |gossip 51032
Talk to the Kirin Tor Emissary to Teleport You to Dalaran |q 44663/1 |goto Orgrimmar/1 58.25,90.00 |only if haveq(44663) or completedq(44663)
Talk to the Kirin Tor Emissary to Teleport You to Dalaran |q 44184/1 |goto Orgrimmar/1 58.25,90.00 |only if haveq(44184) or completedq(44184)
step
talk Archmage Khadgar##113986
|tip Inside the building.
Select _"I am ready, begin the teleportation of Dalaran to the Broken Isles."_ |gossip 45530
Witness Dalaran's Teleportation |q 44663/2 |goto Deadwind Pass/21 49.83,48.28 |only if haveq(44663) or completedq(44663)
Witness Dalaran's Teleportation |q 44184/2 |goto Deadwind Pass/21 49.83,48.28 |only if haveq(44184) or completedq(44184)
step
talk Emissary Auldbridge##111109
turnin In the Blink of an Eye##44663 |goto Dalaran L/10 57.57,45.75 |only if haveq(44663) or completedq(44663)
turnin In the Blink of an Eye##44184 |goto Dalaran L/10 57.57,45.75 |only if haveq(44184) or completedq(44184)
|next Leveling Guides\\Starter Guides\\Chromie Time
]])
QuestCore:RegisterGuide("Leveling Guides\\Starter Guides\\Highmountain Tauren Starter",{
condition_valid=function() return raceclass('HighmountainTauren') and not raceclass('DeathKnight') end,
condition_valid_msg="Highmountain Tauren only.",
condition_suggested=function() return raceclass('HighmountainTauren') and level < 10.50 and not completedq(50319) and not raceclass('DeathKnight') end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Starter Guides\\Chromie Time",
startlevel=10,
endlevel=11,
},[[
step
talk Mayla Highmountain##93826
|tip Downstairs inside the building.
accept For the Horde##49773 |goto Thunder Totem/6 54.81,63.23
step
talk Ambassador Blackguard##133407
turnin For the Horde##49773 |goto Orgrimmar/1 39.40,79.56
accept Stranger in a Strange Land##50319 |goto Orgrimmar/1 39.40,79.56
step
talk Chromie##167032
Talk to Chromie |q 50319/1 |goto Orgrimmar/1 40.82,80.15
step
talk Halian Shlavahawk##131201
turnin Stranger in a Strange Land##50319 |goto Orgrimmar/1 40.78,80.39
|next Leveling Guides\\Starter Guides\\Chromie Time
]])
QuestCore:RegisterGuide("Leveling Guides\\Starter Guides\\Mag'har Orc Starter",{
condition_valid=function() return raceclass('MagharOrc') and not raceclass('DeathKnight') end,
condition_valid_msg="Mag'har Orc only.",
condition_suggested=function() return raceclass('MagharOrc') and level < 10.50 and not completedq(53502) and not raceclass('DeathKnight') end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Starter Guides\\Chromie Time",
startlevel=10,
endlevel=11,
},[[
step
talk Overlord Geya'rah##143845
accept For the Horde##51485 |goto Orgrimmar/1 70.45,44.52
step
talk Ambassador Blackguard##133407
turnin For the Horde##51485 |goto Orgrimmar/1 39.40,79.56
accept Stranger in a Strange Land##53502 |goto Orgrimmar/1 39.40,79.56
step
talk Chromie##167032
Talk to Chromie |q 53502/1 |goto Orgrimmar/1 40.82,80.15
step
talk Limbflayer Lasha##143979
turnin Stranger in a Strange Land##53502 |goto Orgrimmar/1 40.78,80.39
|next Leveling Guides\\Starter Guides\\Chromie Time
]])
QuestCore:RegisterGuide("Leveling Guides\\Starter Guides\\Nightborne Starter",{
condition_valid=function() return raceclass('Nightborne') and not raceclass('DeathKnight') end,
condition_valid_msg="Nightborne only.",
condition_suggested=function() return raceclass('Nightborne') and level < 10.50 and not completedq(50303) and not raceclass('DeathKnight') end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Starter Guides\\Chromie Time",
startlevel=10,
endlevel=11,
},[[
step
talk First Arcanist Thalyssra##131326
accept For the Horde##49933 |goto Suramar/0 59.33,85.53
step
talk Ambassador Blackguard##133407
turnin For the Horde##49933 |goto Orgrimmar/1 39.40,79.56
accept Stranger in a Strange Land##50303 |goto Orgrimmar/1 39.40,79.56
step
talk Chromie##167032
Talk to Chromie |q 50303/1 |goto Orgrimmar/1 40.82,80.15
step
talk Melitier Vahlouran##131328
turnin Stranger in a Strange Land##50303 |goto Orgrimmar/1 40.78,80.39
|next Leveling Guides\\Starter Guides\\Chromie Time
]])
QuestCore:RegisterGuide("Leveling Guides\\Starter Guides\\Vulpera Starter",{
condition_valid=function() return raceclass('Vulpera') and not raceclass('DeathKnight') end,
condition_valid_msg="Vulpera only.",
condition_suggested=function() return raceclass('Vulpera') and level == 10 and not completedq(58124) and not raceclass('DeathKnight') end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Starter Guides\\Chromie Time",
startlevel=10,
endlevel=11,
},[[
step
talk Nilsa##160452
accept For the Horde##58122 |goto Orgrimmar/1 64.64,46.51
step
talk Ambassador Blackguard##133407
turnin For the Horde##58122 |goto Orgrimmar/1 39.40,79.56
accept Stranger in a Strange Land##58124 |goto Orgrimmar/1 39.40,79.56
step
talk Chromie##167032
Talk to Chromie |q 58124/1 |goto Orgrimmar/1 40.82,80.15
step
talk Nilsa##160452
turnin Stranger in a Strange Land##58124 |goto Orgrimmar/1 40.78,80.39
|next Leveling Guides\\Starter Guides\\Chromie Time
]])
QuestCore:RegisterGuide("Leveling Guides\\Starter Guides\\Zandalari Troll Starter",{
condition_valid=function() return raceclass('ZandalariTroll') and not raceclass('DeathKnight') end,
condition_valid_msg="Zandalari Troll only.",
condition_suggested=function() return raceclass('ZandalariTroll') and level < 10.50 and not completedq(55138) and not raceclass('DeathKnight') end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Starter Guides\\Chromie Time",
startlevel=10,
endlevel=11,
},[[
step
talk Queen Talanji##146335
accept For the Horde##55137 |goto Dazar'alor/0 49.93,46.60
step
click Portal to Orgrimmar
Take the Portal to Orgrimmar |q 55137/1 |goto Dazar'alor/0 49.94,43.85
step
talk Ambassador Blackguard##133407
turnin For the Horde##55137 |goto Orgrimmar/1 39.40,79.56
accept Stranger in a Strange Land##55138 |goto Orgrimmar/1 39.40,79.56
step
talk Chromie##167032
Talk to Chromie |q 55138/1 |goto Orgrimmar/1 40.82,80.15
step
talk Natal'hakata##150909
turnin Stranger in a Strange Land##55138 |goto Orgrimmar/1 40.78,80.39
|next Leveling Guides\\Starter Guides\\Chromie Time
]])
QuestCore:RegisterGuide("Leveling Guides\\Starter Guides\\Allied Race Death Knight Starter",{
description="This guide will walk you through completing the brief introduction for Pandaren and Allied Race Death Knights.",
condition_suggested=function() return raceclass{'pandaren','highmountaintauren','zandalaritroll','nightborne','magharorc','vulpera'} and raceclass('DeathKnight') and level < 10.50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass{'pandaren','highmountaintauren','zandalaritroll','nightborne','magharorc','vulpera'} and raceclass('DeathKnight') and level < 10.50 end,
condition_valid_msg="You must be a Pandaren or Allied Race Death Knight to complete this guide!",
condition_end=function() return completedq(58903) end,
},[[
step
talk The Lich King##163016
accept Death's Power Grows##58877 |goto The Frozen Throne/0 49.51,90.71
step
Swear Fealty |q 58877/1 |goto The Frozen Throne/0 49.51,90.71
|tip Use the {o}Swear Fealty{} ability.
|tip It appears as a button on the screen.
step
talk The Lich King##163016
turnin Death's Power Grows##58877 |goto The Frozen Throne/0 49.51,90.71
accept Defender of Azeroth##58903 |goto The Frozen Throne/0 49.51,90.71
step
talk Highlord Darion Mograine##161709
Select _"Reporting for duty."_ |gossip 51183
Speak with Highlord Darion Mograine |q 58903/1 |goto The Frozen Throne/0 50.70,71.16
step
click Death Gate
Use the Death Gate |q 58903/3 |goto The Frozen Throne/0 49.97,38.80
step
talk Chromie##167032
Talk to Chromie |q 58903/4 |goto Orgrimmar/1 40.82,80.16
step
_Click the Complete Quest Box:_
turnin Defender of Azeroth##58903
|next Leveling Guides\\Starter Guides\\Chromie Time
]])
QuestCore:RegisterGuide("Leveling Guides\\Starter Guides\\Non-Evoker Dracthyr Starter",{
condition_valid=function() return (raceclass('Dracthyr') and not raceclass('Evoker')) and not raceclass('DeathKnight') end,
condition_valid_msg="Dracthyr only.",
condition_suggested=function() return (raceclass('Dracthyr') and not raceclass('Evoker')) and level < 10.50 and not completedq(50305) and not raceclass('DeathKnight') end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Starter Guides\\Chromie Time",
startlevel=10,
endlevel=11,
},[[
step
talk Scalecommander Emberthal##229075
accept Shaking the Dust Off##84423 |goto The War Creche/1 43.02,89.43
accept Forward, To Adventure!##84424 |goto The War Creche/1 43.01,89.49
step
click Portal to Orgrimmar
Use the Portal to Go to Chromie |q 84424/3 |goto The War Creche/1 43.80,81.13
step
talk Chromie##167032
turnin Forward, To Adventure!##84424 |goto Orgrimmar/1 40.82,80.17
|next "Leveling Guides\\Starter Guides\\Chromie Time"
]])
QuestCore:RegisterGuide("Leveling Guides\\Allied Races\\Highmountain Tauren Race Unlock",{
description="This guide will walk you through unlocking the new Highmountain Tauren allied race.",
condition_suggested=function() return achieved(10059) and not achieved(12245) end,
},[[
step
Reach Level 40 |ding 40
|tip You must be level 40 to start allied race quests.
step
talk Ji Firepaw##133523
|tip Inside the building.
accept The Call for Allies##49930 |goto Orgrimmar/1 37.77,81.17
step
talk Ji Firepaw##133523
|tip Inside the building.
turnin The Call for Allies##49930 |goto Orgrimmar/1 37.78,81.15
accept A Choice of Allies##50242 |goto Orgrimmar/1 37.78,81.15
step
click Vulpera
|tip Inside the building.
Learn About the Vulpera |q 50242/5 |goto Orgrimmar/1 37.96,81.72
step
click Zandalari Troll
|tip Inside the building.
Learn About the Zandalari Trolls |q 50242/4 |goto Orgrimmar/1 37.77,81.69
step
click Highmountain Tauren
|tip Inside the building.
Learn About the Highmountain Tauren |q 50242/1 |goto Orgrimmar/1 37.57,81.57
step
click Nightborne
|tip Inside the building.
Learn About the Nightborne |q 50242/2 |goto Orgrimmar/1 37.44,81.38
step
click Mag'har Orc
|tip Inside the building.
Learn About the Mag'har Orcs |q 50242/3 |goto Orgrimmar/1 37.41,81.11
step
talk Ji Firepaw##133523
|tip Inside the building.
turnin A Choice of Allies##50242 |goto Orgrimmar/1 37.76,81.17
accept A Feast for Our Kin##48066 |goto Orgrimmar/1 37.76,81.17
step
talk Baine Bloodhoof##93844
|tip Inside the building.
turnin A Feast for Our Kin##48066 |goto Thunder Bluff/0 61.65,52.10
step
Watch the dialogue
|tip Inside the building.
talk Baine Bloodhoof##129914
accept Shadow Over Thunder Bluff##48067 |goto Thunder Bluff/0 61.52,51.75
stickystart "Kill_Shadows_Of_Uul"
step
kill 4 Dark Tendril##125136 |q 48067/1 |goto Thunder Bluff/0 50.25,43.35
step
label "Kill_Shadows_Of_Uul"
kill 12 Shadow of Uul##125141 |q 48067/2 |goto Thunder Bluff/0 50.25,43.35
step
_Next to you:_
talk Baine Bloodhoof
turnin Shadow Over Thunder Bluff##48067
accept Dark Forces##49756
'|talk Baine Bloodhoof##130773
step
kill Qy'telek##130726 |q 49756/1 |goto Thunder Bluff/0 40.36,57.32
|tip He walks around this area.
step
_Next to you:_
talk Baine Bloodhoof
turnin Dark Forces##49756
accept Return to Highmountain##48079
'|talk Baine Bloodhoof##130773
step
Ride the elevator down |goto Thunder Totem/0 49.33,46.15 < 10 |walk
talk Mayla Highmountain##108434
|tip Downstairs inside the building.
turnin Return to Highmountain##48079 |goto Thunder Totem/6 68.82,71.21
step
talk Spiritwalker Graysky##105085
|tip Downstairs inside the building.
accept Dark Tales##41884 |goto Thunder Totem/6 68.38,72.97
step
talk Spiritwalker Graysky##125454
|tip Inside the building.
turnin Dark Tales##41884 |goto Highmountain/0 38.51,69.10
accept Walking in Their Footsteps##41764 |goto Highmountain/0 38.51,69.10
step
click Water of Vision##248865
|tip Inside the building.
Use the Water of Vision |q 41764/1 |goto Highmountain/0 38.53,69.17
stickystart "Kill_Shadows_Of_Uul_125141"
step
kill 8 Shadow Lurker##105069 |q 41764/2 |goto Highmountain/0 41.49,72.58
|tip Use the abilities on your action bar.
|tip Inside and outside the cave.
step
label "Kill_Shadows_Of_Uul_125141"
kill 15 Shadow of Uul##125141 |q 41764/3 |goto Highmountain/0 41.49,72.58
|tip Use the abilities on your action bar. |notinsticky
|tip Inside and outside the cave. |notinsticky
step
click Bitestone Ward
|tip Upstairs inside the cave.
|tip Use the {o}Rockfall{} ability to jump on the rocks to reach the upper floor.
Place the Bitestone Ward |q 41764/4 |goto Highmountain/0 46.16,73.66
step
talk Spiritwalker Graysky##125454
|tip Inside the building.
turnin Walking in Their Footsteps##41764 |goto Highmountain/0 38.51,69.10
accept Shadow of the Sepulcher##48185 |goto Highmountain/0 38.51,69.10
step
talk Spiritwalker Graysky##125459
|tip Inside the building.
turnin Shadow of the Sepulcher##48185 |goto Highmountain/0 57.01,46.21
accept Minions of the Darkness##41799 |goto Highmountain/0 57.01,46.21
step
click Water of Vision##248865
|tip Inside the building.
Use the Water of Vision |q 41799/1 |goto Highmountain/0 57.05,46.16
step
kill 12 Dark Spirit##104872 |q 41799/2 |goto Highmountain/0 55.98,45.52
|tip Use the abilities on your action bar.
step
kill 6 Shadowy Tendril##130418 |q 41799/3 |goto Highmountain/0 55.10,44.22
|tip Inside the cave.
|tip Use the abilities on your action bar.
step
kill Shadow of the Darkness##132090 |q 41799/4 |goto Highmountain/0 55.36,40.85
|tip Inside the cave.
|tip Use the abilities on your action bar.
step
click Sepulcher Ward
|tip Inside the cave.
Place the Sepulcher Ward |q 41799/5 |goto Highmountain/0 54.74,40.62
step
talk Spiritwalker Graysky##125459
|tip Inside the building.
turnin Minions of the Darkness##41799 |goto Highmountain/0 57.01,46.21
accept Huln's Mountain##48190 |goto Highmountain/0 57.01,46.21
step
talk Spiritwalker Graysky##125466
turnin Huln's Mountain##48190 |goto Highmountain/0 53.32,64.01
accept Servants of the Darkness##41800 |goto Highmountain/0 53.32,64.01
step
clicknpc Spiritwalker Graysky##125829
Use the Water of Vision |q 41800/1 |goto Highmountain/0 53.32,64.01
step
kill 10 Necrodark Defiler##104888 |q 41800/2 |goto Highmountain/0 53.16,66.45
step
kill Necrogg the Darkspeaker##104890 |q 41800/3 |goto Highmountain/0 52.45,68.18
|tip He patrols up and down the hill
step
click Snowmane Ward##3365
|tip Inside the building.
Place the Snowmane Ward |q 41800/4 |goto Highmountain/0 53.33,69.48
step
talk Spiritwalker Graysky##125466
turnin Servants of the Darkness##41800 |goto Highmountain/0 53.32,64.01
accept How Fares Ebonhorn?##48434 |goto Highmountain/0 53.32,64.01
step
Ride the elevator down |goto Thunder Totem/0 49.33,46.15 < 10 |walk
talk Spiritwalker Ebonhorn##124252
|tip Downstairs inside the building.
turnin How Fares Ebonhorn?##48434 |goto Thunder Totem/6 67.77,71.40
step
talk Mayla Highmountain##108434
|tip Downstairs inside the building.
accept Curse of the Necrodark##41815 |goto Thunder Totem/6 68.72,71.03
step
talk Baine Bloodhoof##130423
|tip On top of the mountain.
turnin Curse of the Necrodark##41815 |goto Highmountain/0 56.49,89.23
accept Ice and Shadow##41840 |goto Highmountain/0 56.49,89.23
step
talk Jale Rivermane##97662
|tip On top of the mountain.
accept Whispers of the Darkness##41882 |goto Highmountain/0 56.46,89.33
stickystart "Collect_Shadowice_Shards"
step
clicknpc Highmountain Protector##132212+
|tip They look like {o}Tauren{}.
|tip On top of the mountain.
Free #6# Highmountain Protectors |q 41882/1 |goto Highmountain/0 57.32,91.02
'|clicknpc Highmountain Protector##132216
step
label "Collect_Shadowice_Shards"
kill Frozen Mist##104979, Necrodark Greysworn##104565, Dark Tendril##130425, Necrodark Defiler##104888
|tip On top of the mountain. |notinsticky
collect 20 Shadowice Shard##136400 |q 41840/1 |goto Highmountain/0 57.32,91.02
step
talk Spiritwalker Ebonhorn##105213
|tip On top of the mountain.
turnin Whispers of the Darkness##41882 |goto Highmountain/0 57.55,92.34
turnin Ice and Shadow##41840 |goto Highmountain/0 57.55,92.34
accept The Final Ward##41841 |goto Highmountain/0 57.55,92.34
step
click Summit Ward
|tip Inside the cave.
Place the Summit Ward |q 41841/1 |goto Highmountain/0 56.49,91.44
step
talk Spiritwalker Ebonhorn##105213
|tip Inside the cave.
turnin The Final Ward##41841 |goto Highmountain/0 56.81,92.02
accept The Darkness##48403 |goto Highmountain/0 56.81,92.02
step
kill Uul'gyneth##126001 |q 48403/1 |goto Highmountain/0 57.94,90.83
|tip On top of the mountain.
step
talk Mayla Highmountain##104997
|tip On top of the mountain.
turnin The Darkness##48403 |goto Highmountain/0 56.66,92.71
step
talk Baine Bloodhoof##126134
|tip On top of the mountain.
accept Together We Are the Horde!##48433 |goto Highmountain/0 56.70,92.76
step
talk Ji Firepaw##133523
|tip Inside the building.
turnin Together We Are the Horde!##48433 |goto Orgrimmar/1 37.77,81.16
]])
QuestCore:RegisterGuide("Leveling Guides\\Allied Races\\Mag'har Orc Race Unlock",{
description="To unlock the new Mag'har Orc allied race, you will need to earn exalted reputation with The Honorbound and complete the Horde War Campaign.",
condition_suggested=function() return achieved(12509) and not achieved(12518) end,
condition_end=function() return achieved(12518) end,
},[[
step
Reach Level 40 |ding 40
|tip You must be level 40 to start allied race quests.
step
talk Ji Firepaw##133523
|tip Inside the building.
accept The Call for Allies##49930 |goto Orgrimmar/1 37.77,81.17
step
talk Ji Firepaw##133523
|tip Inside the building.
turnin The Call for Allies##49930 |goto Orgrimmar/1 37.78,81.15
accept A Choice of Allies##50242 |goto Orgrimmar/1 37.78,81.15
step
click Vulpera
|tip Inside the building.
Learn About the Vulpera |q 50242/5 |goto Orgrimmar/1 37.96,81.72
step
click Zandalari Troll
|tip Inside the building.
Learn About the Zandalari Trolls |q 50242/4 |goto Orgrimmar/1 37.77,81.69
step
click Highmountain Tauren
|tip Inside the building.
Learn About the Highmountain Tauren |q 50242/1 |goto Orgrimmar/1 37.57,81.57
step
click Nightborne
|tip Inside the building.
Learn About the Nightborne |q 50242/2 |goto Orgrimmar/1 37.44,81.38
step
click Mag'har Orc
|tip Inside the building.
Learn About the Mag'har Orcs |q 50242/3 |goto Orgrimmar/1 37.41,81.11
step
talk Ji Firepaw##133523
|tip Inside the building.
turnin A Choice of Allies##50242 |goto Orgrimmar/1 37.76,81.17
accept Vision of Time##53466 |goto Orgrimmar/1 37.76,81.17
step
click Portal to Zuldazar
|tip Inside the building.
|tip In the portal room.
Teleport to Zuldazar |complete zone("Zuldazar") |goto Orgrimmar/1 58.54,91.30 |q 53466
step
talk Chief Telemancer Oculeth##131443
|tip Inside the building.
|tip At the top of the temple.
turnin Vision of Time##53466 |goto Dazar'alor/1 67.15,73.79
accept Caverns of Time##53467 |goto Dazar'alor/1 67.15,73.79
step
talk Anachronos##15192
|tip Downstairs inside the Caverns of Time cave.
turnin Caverns of Time##53467 |goto Tanaris/18 41.78,49.91
accept Echo of Gul'dan##53354 |goto Tanaris/18 41.78,49.91
step
click Time Rift
Watch the dialogue
kill Echo of Gul'dan##143505 |q 53354/1 |goto Blasted Lands/0 54.43,50.45
step
talk Anachronos##143692
turnin Echo of Gul'dan##53354 |goto Blasted Lands/0 54.39,50.09
accept Echo of Warlord Zaela##53353 |goto Blasted Lands/0 54.39,50.09
step
Enter the building |goto Kun-Lai Summit/0 68.61,45.99 < 20 |walk
click Time Rift
|tip Inside the building.
Watch the dialogue
kill Echo of Warlord Zaela##143504 |q 53353/1 |goto Kun-Lai Summit/0 68.81,43.69
step
talk Anachronos##143692
|tip Inside the building.
turnin Echo of Warlord Zaela##53353 |goto Kun-Lai Summit/0 68.90,43.97
accept Echo of Garrosh Hellscream##53355 |goto Kun-Lai Summit/0 68.90,43.97
step
talk Anachronos##144225
Select _"I am ready to seek the Echo of Garrosh."_ |gossip 49251
|tip You will be teleported away.
Meet Anachronos Outside Orgrimmar |q 53355/1 |goto Durotar/0 40.80,16.36
step
_Inside the Inner Sanctum Raid:_
click Time Rift
|tip {o}Jump down next to the yellow dragon{}, into the big room below.
|tip It will appear on your {o}minimap{} as a {o}yellow dot{}.
Watch the dialogue
kill Echo of Garrosh Hellscream##143425 |q 53355/2
step
Leave The Inner Sanctum |complete zone("Durotar") |q 53355
|tip {o}Right-click{} your {o}character portrait{}.
|tip Choose {o}Leave Instance Group{}.
step
click Portal to Zuldazar
|tip Inside the building.
|tip In the portal room.
Teleport to Zuldazar |complete zone("Zuldazar") |goto Orgrimmar/1 58.54,91.30 |q 53355
step
talk Chief Telemancer Oculeth##131443
|tip Inside the building.
|tip At the top of the temple.
turnin Echo of Garrosh Hellscream##53355 |goto Dazar'alor/1 67.15,73.79
step
talk Eitrigg##126066
|tip Inside the building.
|tip At the top of the temple.
accept Restoring Old Bonds##52942 |goto Dazar'alor/1 70.60,69.21
step
talk Chief Telemancer Oculeth##131443
|tip Inside the building.
|tip At the top of the temple.
Select _"I am ready to go to Draenor."_ |gossip 48137
Speak with Oculeth to go to Draenor |q 52942/1 |goto Dazar'alor/1 67.15,73.79
step
Travel to Gorgrond |goto Gorgrond Maghar Scenario/0 41.13,53.19 < 20 |noway |c |q 52942
step
Watch the dialogue
|tip Follow {o}Eitrigg{}.
|tip You will be captured and taken away.
Click Here After You Are Captured |confirm |goto Gorgrond Maghar Scenario/0 41.59,53.38 |q 52942
'|clicknpc Eitrigg##142422
step
Watch the dialogue
Meet the Overlord |q 52942/2 |goto Gorgrond Maghar Scenario/0 44.88,52.97 |notravel
step
talk Eitrigg##142422
turnin Restoring Old Bonds##52942 |goto Gorgrond Maghar Scenario/0 44.94,53.12
accept Calling Out the Clans##52943 |goto Gorgrond Maghar Scenario/0 44.94,53.12
step
click Blackrock Banner
Salute the Blackrock Clan |q 52943/1 |goto Gorgrond Maghar Scenario/0 45.16,52.66
step
click Warsong Banner
Salute the Warsong Clan |q 52943/2 |goto Gorgrond Maghar Scenario/0 45.48,51.95
step
click Frostwolf Banner
Salute the Frostwolf Clan |q 52943/3 |goto Gorgrond Maghar Scenario/0 44.82,52.00
step
talk Overlord Geya'rah##142109
|tip She walks to this location.
turnin Calling Out the Clans##52943 |goto Gorgrond Maghar Scenario/0 45.14,52.13
step
Watch the dialogue
talk Grommash Hellscream##142275
accept Bonds Forged Through Battle##52945 |goto Gorgrond Maghar Scenario/0 45.26,52.09
step
kill Kor'gall Agitator##143971, Kor'gall Defector##141074
|tip Inside and outside the cave.
|tip The {o}next step{} is {o}inside the cave{}.
Slay #10# Kor'gall Defectors |q 52945/1 |goto Gorgrond Maghar Scenario/0 38.58,67.38
step
Follow the path inside the cave |goto Gorgrond Maghar Scenario/0 36.79,68.07 < 15 |walk
Watch the dialogue
|tip Inside the cave.
kill Kor'gall Greatson of Kor'gal##140949 |q 52945/2 |goto Gorgrond Maghar Scenario/0 36.48,70.05
step
_Next to you:_
talk Overlord Geya'rah##137837
turnin Bonds Forged Through Battle##52945
accept Tyranny of the Light##52955
step
Watch the dialogue
Begin the Tryanny of the Light Scenario |scenariostart Tyranny of the Light##1575 |q 52955
step
Leave the cave |goto Gorgrond Maghar Scenario/0 38.55,67.39 < 20 |walk |only if subzone("Throne of Kor'gall") and indoors()
Accompany Geya'rah to Beastwatch |scenariostage 1 |goto Gorgrond Maghar Scenario/0 43.89,69.45 |q 52955
step
kill Lightbound Warpriest##141169, Lightbound Vigilant##141166, Lightbound Sharpshooter##141170, Lightbound Bulwark##141171, Lightbound Battlemage##141172
clicknpc Lightbound Battery##141179+
|tip They look like {o}white and gold artillery machines{}.
|tip They will appear on your {o}minimap{} as {o}yellow dots{}.
Defend Beastwatch Against the Lightbound Assault |scenariostage 2 |goto Gorgrond Maghar Scenario/0 45.69,76.14 |q 52955
step
Look for Exarch Orelis in Evermorn Hold |scenariostage 3 |goto Gorgrond Maghar Scenario/0 45.50,78.57 |q 52955
step
Watch the dialogue
kill Exarch Orelis##142511 |scenariostage 4 |goto Gorgrond Maghar Scenario/0 45.27,80.34 |q 52955
'|kill Exarch Orelis##141174
step
Meet with Grommash |scenariostage 5 |goto Gorgrond Maghar Scenario/0 44.55,71.38 |q 52955
step
Watch the dialogue
Await Orders from the Warchief |scenariostage 6 |goto Gorgrond Maghar Scenario/0 44.55,71.38 |q 52955
step
click Mag'har Turret
|tip At the top of the tower.
Kill enemies around this area
|tip They are on the ground nearby.
|tip Use the abilities on your action bar.
Defeat the Lightbound Soldiers |scenariostage 7 |goto Gorgrond Maghar Scenario/0 43.63,71.43 |q 52955
step
Watch the dialogue
Return to the Warchief and Await Further Orders |scenariostage 8 |goto Gorgrond Maghar Scenario/0 44.55,71.37 |q 52955
step
Watch the dialogue
Escape from Draenor |scenarioend |goto Gorgrond Maghar Scenario/0 44.55,71.37 |q 52955
step
Return to Durotar |complete zone("Durotar") |q 52955
step
talk Overlord Geya'rah##143845
turnin Tyranny of the Light##52955 |goto Durotar/0 41.25,16.77
accept The Uncorrupted##51479 |goto Durotar/0 41.25,16.77
step
talk Ji Firepaw##133523
|tip Inside the building.
turnin The Uncorrupted##51479 |goto Orgrimmar/1 37.78,81.15
]])
QuestCore:RegisterGuide("Leveling Guides\\Allied Races\\Nightborne Race Unlock",{
description="This guide will walk you through unlocking the new Nightborne allied race.",
condition_suggested=function() return achieved(11340) and not achieved(12244) end,
},[[
step
Reach Level 40 |ding 40
|tip You must be level 40 to start allied race quests.
step
talk Ji Firepaw##133523
|tip Inside the building.
accept The Call for Allies##49930 |goto Orgrimmar/1 37.77,81.17
step
talk Ji Firepaw##133523
|tip Inside the building.
turnin The Call for Allies##49930 |goto Orgrimmar/1 37.78,81.15
accept A Choice of Allies##50242 |goto Orgrimmar/1 37.78,81.15
step
click Vulpera
|tip Inside the building.
Learn About the Vulpera |q 50242/5 |goto Orgrimmar/1 37.96,81.72
step
click Zandalari Troll
|tip Inside the building.
Learn About the Zandalari Trolls |q 50242/4 |goto Orgrimmar/1 37.77,81.69
step
click Highmountain Tauren
|tip Inside the building.
Learn About the Highmountain Tauren |q 50242/1 |goto Orgrimmar/1 37.57,81.57
step
click Nightborne
|tip Inside the building.
Learn About the Nightborne |q 50242/2 |goto Orgrimmar/1 37.44,81.38
step
click Mag'har Orc
|tip Inside the building.
Learn About the Mag'har Orcs |q 50242/3 |goto Orgrimmar/1 37.41,81.11
step
talk Ji Firepaw##133523
|tip Inside the building.
turnin A Choice of Allies##50242 |goto Orgrimmar/1 37.76,81.17
accept Thalyssra's Estate##49973 |goto Orgrimmar/1 37.76,81.17
step
talk Lady Liadrin##131478
turnin Thalyssra's Estate##49973 |goto Suramar/0 65.88,63.72
accept Silvermoon City##49613 |goto Suramar/0 65.88,63.72
step
talk Lady Liadrin##130133
|tip Inside the building.
turnin Silvermoon City##49613 |goto Silvermoon City/0 58.12,19.88
accept Remember the Sunwell##49354 |goto Silvermoon City/0 58.12,19.88
step
click Portal to the Sunwell
|tip Inside the building.
Enter the Scenario |scenariostart Remember the Sunwell##1443 |goto Silvermoon City/0 53.95,19.49 |q 49354
step
Meet with Liadrin |scenariogoal Meet with Liadrin.##1/38106 |goto Shrine of the Eclipse/1 61.10,71.48 |q 49354
step
Watch the dialogue
|tip Follow {o}First Arcanist Thalyssra{}.
Walk with Thalyssra |scenariogoal Walk with Thalyssra##2/38160 |goto Shrine of the Eclipse/1 50.74,65.27 |q 49354
'|clicknpc First Arcanist Thalyssra##129023
step
Kill enemies around this area
Defeat the Void Attacker |scenariogoal Defeat the Sunwell Guardians##3/38161 |goto Shrine of the Eclipse/1 50.74,65.27 |q 49354
'|kill Creeping Void##126489, Void Effusion##130139, Void Fragment##126538
step
kill Aruun the Darkener##129659 |scenariogoal Aruun the Darkener slain##4/38162 |goto Shrine of the Eclipse/1 48.69,66.06 |q 49354
step
Watch the dialogue
Close the Void Rift |scenariogoal Void rift closed##5/38519 |goto Shrine of the Eclipse/1 50.26,65.38 |q 49354
step
Leave the Sunwell |scenariogoal Leave the Sunwell##6/38163 |goto Shrine of the Eclipse/1 61.98,67.33 |q 49354
step
click Silvermoon Translocator
Return to Silvermoon City |complete zone("Silvermoon City") |goto Shrine of the Eclipse/1 61.98,67.33 |q 49354
step
talk Lady Liadrin##130133
|tip Inside the building.
turnin Remember the Sunwell##49354 |goto Silvermoon City/0 58.45,19.09
accept The Nightborne##49614 |goto Silvermoon City/0 58.45,19.09
step
click Portal to Orgrimmar
|tip Inside the building.
Return to Orgrimmar |complete zone("Orgrimmar") |goto Silvermoon City/0 58.53,18.67 |q 49614
step
talk Ji Firepaw##133523
|tip Inside the building.
turnin The Nightborne##49614 |goto Orgrimmar/1 37.77,81.16
]])
QuestCore:RegisterGuide("Leveling Guides\\Allied Races\\Vulpera Race Unlock",{
description="To unlock the new Vulpera allied race, you will need to earn the \"Secrets in the Sands\" achievement.",
keywords={"8.30","N'zoth","Nzoth","Corruption"},
condition_suggested=function() return achieved(12478) and not achieved(13206) end,
condition_end=function() return achieved(13206) end,
},[[
step
Reach Level 40 |ding 40
|tip You must be level 40 to start allied race quests.
step
talk Ji Firepaw##133523
|tip Inside the building.
accept The Call for Allies##49930 |goto Orgrimmar/1 37.77,81.17
step
talk Ji Firepaw##133523
|tip Inside the building.
turnin The Call for Allies##49930 |goto Orgrimmar/1 37.78,81.15
accept A Choice of Allies##50242 |goto Orgrimmar/1 37.78,81.15
step
click Vulpera
|tip Inside the building.
Learn About the Vulpera |q 50242/5 |goto Orgrimmar/1 37.96,81.72
step
click Zandalari Troll
|tip Inside the building.
Learn About the Zandalari Trolls |q 50242/4 |goto Orgrimmar/1 37.77,81.69
step
click Highmountain Tauren
|tip Inside the building.
Learn About the Highmountain Tauren |q 50242/1 |goto Orgrimmar/1 37.57,81.57
step
click Nightborne
|tip Inside the building.
Learn About the Nightborne |q 50242/2 |goto Orgrimmar/1 37.44,81.38
step
click Mag'har Orc
|tip Inside the building.
Learn About the Mag'har Orcs |q 50242/3 |goto Orgrimmar/1 37.41,81.11
step
talk Ji Firepaw##133523
|tip Inside the building.
turnin A Choice of Allies##50242 |goto Orgrimmar/1 37.76,81.17
accept Guests at Grommash Hold##53870 |goto Orgrimmar/1 37.76,81.17
step
talk Kiro##145416
|tip Inside the building.
turnin Guests at Grommash Hold##53870 |goto Orgrimmar/1 48.90,72.76
accept A Declaration of Intent##53889 |goto Orgrimmar/1 48.90,72.76
step
Watch the dialogue
|tip Inside the building.
Witness Kiro's Declaration |q 53889/1 |goto Orgrimmar/1 48.90,72.76
step
talk Kiro##145416
|tip He walks to this location.
|tip Inside the building.
turnin A Declaration of Intent##53889 |goto Orgrimmar/1 48.90,72.76
accept New Allies, New Problems##53890 |goto Orgrimmar/1 48.90,72.76
step
talk Commander Dresh##145532
|tip Inside the building.
Select _"Why have you come here?"_ |gossip 50949
Question Commander Dresh |q 53890/1 |goto Orgrimmar/1 48.21,71.74
step
talk First Arcanist Thalyssra##145531
|tip Inside the building.
Select _"Why have you come here?"_ |gossip 50948
Question First Arcanist Thalyssra |q 53890/3 |goto Orgrimmar/1 48.65,71.27
step
talk Bladeguard Sonji##145533
|tip Inside the building.
Select _"Why have you come here?"_ |gossip 50947
Question Bladeguard Sonji |q 53890/2 |goto Orgrimmar/1 48.68,71.63
step
talk Kiro##145416
|tip Inside the building.
turnin New Allies, New Problems##53890 |goto Orgrimmar/1 48.90,72.76
accept No Problem Too Small##53891 |goto Orgrimmar/1 48.90,72.76
step
talk Kiro##145641
turnin No Problem Too Small##53891 |goto Twilight Highlands/0 44.11,73.48
accept Where Are the Workers?##53892 |goto Twilight Highlands/0 44.11,73.48
step
Follow Kiro |q 53892/1 |goto Twilight Highlands/0 46.82,66.23
step
Watch the dialogue
|tip Inside the building.
Investigate the Peon Hideout |q 53892/2 |goto Twilight Highlands/0 46.13,65.63
step
talk Crushblow Peon##145717+
|tip Inside the building.
Select _"Why aren't you working?"_				- The NPCs all have different ids, and offer different gossip
Question #3# Peons |q 53892/3 |goto Twilight Highlands/0 46.04,65.56
'|talk Crushblow Peon##145721, Crushblow Peon##145725, Crushblow Peon##145724, Crushblow Peon##145720, Crushblow Peon##145657, Crushblow Peon##145719, Crushblow Peon##145717, Crushblow Peon##145658, Crushblow Peon##145727, Crushblow Peon##145722, Crushblow Peon##145723
step
talk Kiro##145641
turnin Where Are the Workers?##53892 |goto Twilight Highlands/0 46.81,66.22
accept A Little Goodwill##53893 |goto Twilight Highlands/0 46.81,66.22
accept Worthwhile Repairs##53894 |goto Twilight Highlands/0 46.81,66.22
accept Peon Promotions!##53895 |goto Twilight Highlands/0 46.81,66.22
step
talk Crushblow Peon##145717
|tip Inside the building.
Select _"Job well done. You've been promoted to Peon, Rank 2."_
Promote the Peon |q 53895/1 |goto Twilight Highlands/0 46.09,65.64 |count 1
'|talk Crushblow Peon##145721, Crushblow Peon##145725, Crushblow Peon##145724, Crushblow Peon##145720, Crushblow Peon##145657, Crushblow Peon##145719, Crushblow Peon##145717, Crushblow Peon##145658, Crushblow Peon##145727, Crushblow Peon##145722, Crushblow Peon##145723
step
talk Crushblow Peon##145717
|tip Inside the building.
Select _"Good work. You've been promoted to Senior Peon."_
Promote the Peon |q 53895/1 |goto Twilight Highlands/0 46.09,65.56 |count 2
'|talk Crushblow Peon##145721, Crushblow Peon##145725, Crushblow Peon##145724, Crushblow Peon##145720, Crushblow Peon##145657, Crushblow Peon##145719, Crushblow Peon##145717, Crushblow Peon##145658, Crushblow Peon##145727, Crushblow Peon##145722, Crushblow Peon##145723
step
talk Crushblow Peon##145717
|tip Inside the building.
Select _"Congratulations! You've been promoted to Lead Peon."_
Promote the Peon |q 53895/1 |goto Twilight Highlands/0 46.12,65.53 |count 3
'|talk Crushblow Peon##145721, Crushblow Peon##145725, Crushblow Peon##145724, Crushblow Peon##145720, Crushblow Peon##145657, Crushblow Peon##145719, Crushblow Peon##145717, Crushblow Peon##145658, Crushblow Peon##145727, Crushblow Peon##145722, Crushblow Peon##145723
stickystart "Collect_Clucker_Tidbits"
stickystart "Collect_Saber_Flanks"
step
click Twilight Ore##307836+
|tip They look like {o}grey mining veins{}.
collect 15 Twilight Ore##164927 |q 53894/1 |goto Twilight Highlands/0 47.83,70.53
step
label "Collect_Clucker_Tidbits"
use the Enlarging Totem##171356
|tip Use it near {o}Highlands Cluckers{}.
|tip They look like {o}tiny birds{}.
kill Highlands Clucker##157590+
collect 100 Clucker Tidbits##171358 |q 53893/3 |goto Twilight Highlands/0 46.98,69.32
stickystart "Collect_Worg_Meat"
step
label "Collect_Saber_Flanks"
use the Enlarging Totem##171356
|tip Use it near {o}Twilight Prowlers{}.
|tip They look like {o}large purple cats{}.
kill Twilight Prowler##145736+
collect 100 Saber Flank##164926 |q 53893/1 |goto Twilight Highlands/0 46.98,69.32
step
label "Collect_Worg_Meat"
use the Enlarging Totem##171356
|tip Use it near {o}Highland Worgs{}.
|tip They look like {o}black wolves{}.
kill Highland Worg##157589+
collect 100 Worg Meat##171357 |q 53893/2 |goto Twilight Highlands/0 51.41,68.36
step
talk Kiro##145641
turnin A Little Goodwill##53893 |goto Twilight Highlands/0 46.81,66.22
turnin Worthwhile Repairs##53894 |goto Twilight Highlands/0 46.81,66.22
turnin Peon Promotions!##53895 |goto Twilight Highlands/0 46.81,66.22
accept A Party in Your Honor##53897 |goto Twilight Highlands/0 46.81,66.22
step
talk Foreman Magrok##145651
|tip Inside the building.
Select _"The Horde are throwing a party in your honor."_ |gossip 49582
Invite Foreman Magrok |q 53897/1 |goto Twilight Highlands/0 45.92,65.50
step
talk Kiro##145641
turnin A Party in Your Honor##53897 |goto Twilight Highlands/0 45.05,76.24
accept Strength and Honor##53898 |goto Twilight Highlands/0 45.05,76.24
step
talk Foreman Magrok##145978
Select _"I challenge you to battle!"_ |gossip 49581
Confront Foreman Magrok |q 53898/1 |goto Twilight Highlands/0 45.66,76.42
step
kill Foreman Magrok##145978
Defeat Foreman Magrok |q 53898/2 |goto Twilight Highlands/0 45.66,76.42
step
talk Kiro##145641
turnin Strength and Honor##53898 |goto Twilight Highlands/0 45.05,76.24
accept Job's Done##54026 |goto Twilight Highlands/0 45.05,76.24
step
talk Commander Dresh##145532
|tip Inside the building.
turnin Job's Done##54026 |goto Orgrimmar/1 48.21,71.73
step
talk Kiro##146261
|tip Inside the building.
accept On the Outskirts##53899 |goto Orgrimmar/1 49.02,73.67
step
click Portal to Zuldazar
|tip Inside the building.
|tip In the portal room.
Teleport to Zuldazar |complete zone("Zuldazar") |goto Orgrimmar/1 58.54,91.30 |q 53899
step
talk Nisha##145980
turnin On the Outskirts##53899 |goto Zuldazar/0 74.86,63.03
accept We'll Use Their Weapons##53900 |goto Zuldazar/0 74.86,63.03
accept Explosions Always Work##53901 |goto Zuldazar/0 74.86,63.03
accept Destroying the Source##58087 |goto Zuldazar/0 74.86,63.03
stickystart "Collect_Nazeshi_Weaponry"
step
click Nazeshi Powercell
Destroy the Nazeshi Powercell |q 58087/1 |goto Zuldazar/0 77.12,63.83 |count 1
step
click Nazeshi Powercell
Destroy the Nazeshi Powercell |q 58087/1 |goto Zuldazar/0 75.73,64.88 |count 2
step
click Nazeshi Powercell
Destroy the Nazeshi Powercell |q 58087/1 |goto Zuldazar/0 76.62,66.52 |count 3
step
click Volatile Explosives+
|tip They look like {o}yellow bundles of dynamite{} on {o}harpoon launchers{}.
Place #8# Explosives |q 53901/1 |goto Zuldazar/0 74.72,67.55
step
Detonate the Explosives |q 53901/2
|tip Use the {o}Detonate{} ability.
|tip It appears as a button on the screen.
step
label "Collect_Nazeshi_Weaponry"
Kill enemies around this area
|tip They look like {o}naga{}.
Collect #10# Nazeshi Weaponry |q 53900/1 |goto Zuldazar/0 75.42,65.05
'|kill Nazeshi Tempest-Wielder##128604, Nazeshi Overseer##128632, Nazeshi Overseer##128632
step
talk Nisha##145980
turnin We'll Use Their Weapons##53900 |goto Zuldazar/0 74.86,63.03
turnin Explosions Always Work##53901 |goto Zuldazar/0 74.86,63.03
turnin Destroying the Source##58087 |goto Zuldazar/0 74.86,63.03
accept Taking Out the Tidecaller##53902 |goto Zuldazar/0 74.86,63.03
step
kill Tidecaller Nezara##157734 |q 53902/1 |goto Zuldazar/0 77.19,65.36
step
_Next to you:_
talk Nisha
turnin Taking Out the Tidecaller##53902
accept Threat Contained##54027
'|talk Nisha##158672
step
talk Bladeguard Sonji##145533
|tip Inside the building.
turnin Threat Contained##54027 |goto Orgrimmar/1 48.67,71.62
step
talk Kiro##146261
|tip Inside the building.
accept Meet with Meerah##53903 |goto Orgrimmar/1 49.02,73.67
step
talk Meerah##146264
turnin Meet with Meerah##53903 |goto Suramar/0 58.93,55.08
accept The Vintner's Assistants##53904 |goto Suramar/0 58.93,55.08
step
talk Boss Mida##146277
|tip Inside the building.
Select _"What are you tasked with?"_ |gossip 50800
Speak to Boss Mida |q 53904/2 |goto Suramar/0 60.69,56.37
step
talk Micah Broadhoof##146276
|tip Inside the building.
Select _"What are you tasked with?"_ |gossip 50796
Speak to Micah Broadhoof |q 53904/1 |goto Suramar/0 61.22,55.15
step
talk Nomi##146273
Select _"What are you tasked with?"_ |gossip 50792
Speak to Nomi |q 53904/3 |goto Suramar/0 62.42,57.64
step
talk Meerah##146264
turnin The Vintner's Assistants##53904 |goto Suramar/0 58.93,55.08
accept Playing to Their Strengths##53905 |goto Suramar/0 58.93,55.08
step
talk Boss Mida##146277
|tip Inside the building.
Select _"You should be obtaining ingredients."_ |gossip 50801
Assign Boss Mida |q 53905/2 |goto Suramar/0 60.69,56.37
step
talk Micah Broadhoof##146276
|tip Inside the building.
Select _"You should be stomping fruit."_ |gossip 50798
Assign Micah Broadhoof |q 53905/1 |goto Suramar/0 61.22,55.15
step
talk Nomi##146273
Select _"You should be creating the recipe."_ |gossip 50793
Assign Nomi |q 53905/3 |goto Suramar/0 62.42,57.64
step
talk Vintner Iltheux##146270
|tip Inside the building.
Select _"We've made some adjustments to your production pipeline."_ |gossip 50791
Inform Vintner Iltheux |q 53905/4 |goto Suramar/0 58.79,55.42
step
talk Meerah##146264
|tip Inside the building.
turnin Playing to Their Strengths##53905 |goto Suramar/0 58.80,55.53
step
talk Vintner Iltheux##146270
|tip Inside the building.
Select _"We've made some adjustments to your production pipeline."_ |gossip 50791
Inform Vintner Iltheux |q 53905/4 |goto Suramar/0 58.78,55.42
step
talk Meerah##157668
|tip Inside the building.
turnin Playing to Their Strengths##53905 |goto Suramar/0 58.80,55.54
accept A Particular Process##54036 |goto Suramar/0 58.80,55.54
step
talk Nomi##146301
|tip Inside the building.
turnin A Particular Process##54036 |goto Suramar/0 60.60,56.22
accept Fermented for the Horde##53906 |goto Suramar/0 60.60,56.22
step
talk Boss Mida##146305
|tip Inside the building.
buy 10 Fermented Firebloom##165013 |q 53906/2 |goto Suramar/0 61.37,55.36
step
kill Tattered Silkwing##146321+
collect 20 Silkwing Fibers##165012 |q 53906/1 |goto Suramar/0 62.75,56.82
step
talk Nomi##146301
|tip Inside the building.
turnin Fermented for the Horde##53906 |goto Suramar/0 60.60,56.22
accept Sip and Savor##53907 |goto Suramar/0 60.60,56.22
step
click Nightborne Vat##310243
|tip Inside the building.
collect Nomi's Wine##165014 |q 53907/1 |goto Suramar/0 60.60,56.36
step
talk Vintner Iltheux##146270
|tip Inside the building.
Select  _"<Give Vintner Iltheux the sample of Nomi's Wine.>"_ |gossip 50790
Watch the dialogue
Deliver the Sample to Vintner Iltheux |q 53907/2 |goto Suramar/0 58.79,55.42
step
talk Meerah##157685
|tip Inside the building.
turnin Sip and Savor##53907 |goto Suramar/0 58.80,55.53
accept Awaiting Our Arrival##53908 |goto Suramar/0 58.80,55.53
step
talk Baine Bloodhoof##145424
|tip Inside the building.
turnin Awaiting Our Arrival##53908 |goto Orgrimmar/1 48.30,71.07
accept New Allies Among Us##57448 |goto Orgrimmar/1 48.30,71.07
step
Watch the dialogue
|tip Inside the building.
Witness Baine Welcome the Vulpera to the Horde |q 57448/1 |goto Orgrimmar/1 48.30,71.07
step
talk Kiro##157693
|tip Inside the building.
turnin New Allies Among Us##57448 |goto Orgrimmar/1 48.44,71.50
]])
QuestCore:RegisterGuide("Leveling Guides\\Allied Races\\Zandalari Troll Race Unlock",{
description="To unlock the new Zandalari Troll allied race, you will need to earn the \"Zandalar Forever!\" "..
"and \"Tides of Vengeance\" achievements.",
condition_suggested=function() return (achieved(13466) and achieved(12479)) and not achieved(13161) end,
condition_end=function() return achieved(13161) end,
},[[
step
Reach Level 40 |ding 40
|tip You must be level 40 to start allied race quests.
step
talk Ji Firepaw##133523
|tip Inside the building.
accept The Call for Allies##49930 |goto Orgrimmar/1 37.77,81.17
step
talk Ji Firepaw##133523
|tip Inside the building.
turnin The Call for Allies##49930 |goto Orgrimmar/1 37.78,81.15
accept A Choice of Allies##50242 |goto Orgrimmar/1 37.78,81.15
step
click Vulpera
|tip Inside the building.
Learn About the Vulpera |q 50242/5 |goto Orgrimmar/1 37.96,81.72
step
click Zandalari Troll
|tip Inside the building.
Learn About the Zandalari Trolls |q 50242/4 |goto Orgrimmar/1 37.77,81.69
step
click Highmountain Tauren
|tip Inside the building.
Learn About the Highmountain Tauren |q 50242/1 |goto Orgrimmar/1 37.57,81.57
step
click Nightborne
|tip Inside the building.
Learn About the Nightborne |q 50242/2 |goto Orgrimmar/1 37.44,81.38
step
click Mag'har Orc
|tip Inside the building.
Learn About the Mag'har Orcs |q 50242/3 |goto Orgrimmar/1 37.41,81.11
step
talk Ji Firepaw##133523
|tip Inside the building.
turnin A Choice of Allies##50242 |goto Orgrimmar/1 37.76,81.17
accept A Royal Occasion##53831 |goto Orgrimmar/1 37.76,81.17
step
click Portal to Zuldazar
|tip Inside the building.
|tip In the portal room.
Teleport to Zuldazar |complete zone("Zuldazar") |goto Orgrimmar/1 58.54,91.30 |q 53831
step
Meet the Zandalari Emissary |q 53831/2 |goto Dazar'alor/1 48.62,22.02
|tip Inside the building.
|tip At the top of the temple.
step
talk Natal'hakata##145414
|tip Inside the building.
|tip At the top of the temple.
turnin A Royal Occasion##53831 |goto Dazar'alor/1 48.62,22.02
accept A Queen's Entourage##53823 |goto Dazar'alor/1 48.62,22.02
step
talk Princess Talanji##145359
turnin A Queen's Entourage##53823 |goto Dazar'alor/0 42.59,22.81
step
talk High Prelate Rata##148096
accept The Rite of Kings and Queens##53824 |goto Dazar'alor/0 42.58,22.54
step
clicknpc Ceremonial Warbeast##146033
Ride the Ceremonial Warbeast |q 53824/1 |goto Dazar'alor/0 42.48,23.26
step
Watch the dialogue
Ride in Procession with Talanji |q 53824/2 |goto Dazar'alor/0 39.85,12.64 |notravel
step
talk High Prelate Rata##148096
turnin The Rite of Kings and Queens##53824 |goto Dazar'alor/0 40.28,12.23
step
Watch the dialogue
talk Zolani##145360
|tip She runs to this location.
accept The Instigator Among Us##53826 |goto Dazar'alor/0 40.27,12.45
accept Quelling the Masses##54419 |goto Dazar'alor/0 40.27,12.45
stickystart "Subdue_Rioters"
step
kill Enforcer Malzon##147777 |q 53826/1 |goto Dazar'alor/0 37.31,10.45
step
label "Subdue_Rioters"
kill Rioting Speaker##147779+
talk Rioting Zocalo Drudge##147781
Select _"I am not your enemy. Let me help you."_ |gossip 51134
Subdue #12# Rioters |q 54419/1 |goto Dazar'alor/0 36.51,15.18
step
talk Princess Talanji##145359
turnin The Instigator Among Us##53826 |goto Dazar'alor/0 40.51,11.91
turnin Quelling the Masses##54419 |goto Dazar'alor/0 40.51,11.91
accept Talanji's Mercy##54301 |goto Dazar'alor/0 40.51,11.91
step
talk Zolani##145360
accept Breaking the Faith##54300 |goto Dazar'alor/0 40.50,12.42
step
talk High Prelate Rata##148096
accept Heresy!##54925 |goto Dazar'alor/0 40.18,11.91
stickystart "Evacuate_Innocent_Bystanders"
stickystart "Subdue_Angered_Faithful"
step
kill Prelate Kaj'ra##147452 |q 54925/1 |goto Dazar'alor/0 50.81,13.36
|tip She walks around this area.
step
label "Evacuate_Innocent_Bystanders"
click Various Trolls
|tip They look like {o}various neutral trolls{}.
Evacuate #10# Innocent Bystanders |q 54301/1 |goto Dazar'alor/0 51.17,9.60
'|clicknpc Priest of Akunda##147916, Pa'kura Priest##147911, Raptari Druid##147913, Rawajo##147902, Priest of Kimbul##147919, Torcalin Cleric##147918, Balina##147920, Makalla##147921, Priest of Hethiss##147915, Tonai##147908
step
label "Subdue_Angered_Faithful"
kill Furious Raptari Druid##147901, Irate Pa'kura Priest##147900, Incensed Rastari Prelate##147905
Subdue #12# Angered Faithful |q 54300/1 |goto Dazar'alor/0 51.17,9.60
step
talk Zolani##145360
turnin Breaking the Faith##54300 |goto Dazar'alor/0 40.42,11.95
step
talk High Prelate Rata##148096
turnin Heresy!##54925 |goto Dazar'alor/0 40.49,11.85
step
talk Princess Talanji##145359
turnin Talanji's Mercy##54301 |goto Dazar'alor/0 40.56,11.97
accept The New Zanchuli Council##53825 |goto Dazar'alor/0 40.56,11.97
step
Enter the building |goto Dazar'alor/0 41.15,10.96 < 15 |walk
Run up the stairs |goto Dazar'alor/4 45.89,39.15 < 10 |walk
Meet the New Zanchuli Council |q 53825/1 |goto Dazar'alor/3 64.46,34.29
|tip Upstairs inside the building.
step
talk Wardruid Loti##145361
|tip Upstairs inside the building.
Greet Wardruid Loti |q 53825/2 |goto Dazar'alor/3 63.00,24.46
step
talk Lashk##146030
|tip Upstairs inside the building.
Greet Lashk |q 53825/3 |goto Dazar'alor/3 64.47,26.44
step
talk Jo'nok Bulwark of Torcali##146124
|tip Upstairs inside the building.
Greet Jo'nok |q 53825/4 |goto Dazar'alor/3 66.91,31.57
step
talk General Rakera##145366
|tip Upstairs inside the building.
Greet General Rakera |q 53825/5 |goto Dazar'alor/3 68.30,34.03
step
talk Hexlord Raal##145362
|tip Upstairs inside the building.
Greet Hexlord Raal |q 53825/6 |goto Dazar'alor/3 69.68,35.93
step
Watch the dialogue
|tip Upstairs inside the building.
talk Princess Talanji##145359
turnin The New Zanchuli Council##53825 |goto Dazar'alor/3 60.43,38.75
accept The Council Has Spoken##53827 |goto Dazar'alor/3 60.43,38.75
step
Watch the dialogue
|tip Upstairs inside the building.
Give the Zanchuli Blessing |q 53827/1 |goto Dazar'alor/3 60.30,38.76
step
Kill the enemies that attack in waves
|tip Upstairs inside the building.
Survive the Ambush |q 53827/2 |goto Dazar'alor/3 60.30,38.76
step
kill Samara##146164 |q 53827/3 |goto Dazar'alor/3 64.59,32.90
|tip Upstairs inside the building.
step
Watch the dialogue
|tip Upstairs inside the building.
talk Princess Talanji##145359
turnin The Council Has Spoken##53827 |goto Dazar'alor/3 60.46,38.77
accept Gaze of the Loa##53828 |goto Dazar'alor/3 60.46,38.77
step
Follow Talanji |q 53828/1 |goto Dazar'alor/0 44.58,14.37
|tip Follow {o}Princess Talanji{} as she runs.
|tip She eventually runs to this location outside the building.
'|clicknpc Princess Talanji##145359
step
talk Princess Talanji##146263
turnin Gaze of the Loa##53828 |goto Dazar'alor/0 44.58,14.37
step
talk Krag'wa the Huge##146208
accept Gaze of the Loa: Krag'wa##54031 |goto Dazar'alor/0 44.20,14.94
step
talk Krag'wa the Huge##146208
Select _"I am ready."_ |gossip 50726
Speak to Krag'wa |q 54031/1 |goto Dazar'alor/0 44.20,14.94
step
Watch the dialogue
|tip The large {o}frogs{} will {o}chase you{}.
|tip They only {o}attack dirctly in front of themselves{}, so you can {o}side step{} their attacks.
|tip Run around this {o}pillar{}, then {o}side step their attacks{}, or {o}break their line of sight{} by moving {o}around a corner{} of the pillar.
Complete Krag'wa's Trial |q 54031/2 |goto Dazar'alor/0 44.92,15.31
step
Watch the dialogue
talk Krag'wa the Huge##146208
turnin Gaze of the Loa: Krag'wa##54031 |goto Dazar'alor/0 44.20,14.93
accept Gaze of the Loa: Gonk##54033 |goto Dazar'alor/0 44.20,14.93
step
Follow Talanji |q 54033/1 |goto Dazar'alor/0 46.33,12.25
|tip Follow {o}Princess Talanji{} as she runs.
|tip She eventually runs to this location.
'|clicknpc Princess Talanji##146263
step
talk Gonk##146214
Select _"As you wish."_ |gossip 49737
Speak to Gonk |q 54033/2 |goto Dazar'alor/0 46.53,12.01
step
Watch the dialogue
talk Gonk##146214
turnin Gaze of the Loa: Gonk##54033 |goto Dazar'alor/0 46.51,12.03
accept Gaze of the Loa: Pa'ku##54032 |goto Dazar'alor/0 46.51,12.03
step
Follow Talanji |q 54032/1 |goto Dazar'alor/0 44.72,9.10
|tip Follow {o}Princess Talanji{} as she runs.
|tip She eventually runs to this location.
'|clicknpc Princess Talanji##146263
step
talk Pa'ku##146209
Select _"I am ready."_ |gossip 49738
Speak to Pa'ku |q 54032/2 |goto Dazar'alor/0 44.60,8.92
step
Complete Pa'ku's Trial |q 54032/3 |goto Dazar'alor/0 44.60,8.92
|tip Run up the stairs.
|tip Dodge the {o}tornadoes{}.
step
talk Pa'ku##146209
turnin Gaze of the Loa: Pa'ku##54032 |goto Dazar'alor/0 44.59,8.90
accept Gaze of the Loa: Bwonsamdi##54034 |goto Dazar'alor/0 44.59,8.90
step
Watch the dialogue
Follow Talanji |q 54034/1 |goto Dazar'alor/0 43.64,7.42
'|clicknpc Princess Talanji##146263
step
talk Bwonsamdi##146215
Select _"Yes."_ |gossip 49619
Watch the dialogue
Speak to Bwonsamdi |q 54034/2 |goto Dazar'alor/0 43.28,6.88
step
Watch the dialogue
talk Princess Talanji##145359
|tip She walks to this location.
turnin Gaze of the Loa: Bwonsamdi##54034 |goto Dazar'alor/0 42.72,8.74
accept Queen of the Zandalari##53830 |goto Dazar'alor/0 42.72,8.74
step
talk Princess Talanji##145359
Select _"Yes."_ |gossip 50321
Watch the dialogue
Witness Talanji's Address |q 53830/1 |goto Dazar'alor/0 42.72,8.74
step
talk Queen Talanji##146335
turnin Queen of the Zandalari##53830 |goto Dazar'alor/0 42.41,9.22
accept Allegiance of the Zandalari##53719 |goto Dazar'alor/0 42.41,9.22
step
talk Lady Sylvanas Windrunner##145374
Select _"Queen Talanji asked to speak with you."_ |gossip 49741
Extend Talanji's Invitation |q 53719/1 |goto Dazar'alor/0 41.42,10.63
step
Attend the Meeting |q 53719/2 |goto Dazar'alor/0 49.92,46.27
|tip At the top of the temple.
step
Watch the dialogue
|tip At the top of the temple.
talk Lady Sylvanas Windrunner##145374
turnin Allegiance of the Zandalari##53719 |goto Dazar'alor/0 49.93,46.27
]])
QuestCore:RegisterGuide("Leveling Guides\\Starter Guides\\Haranir Starter",{
next="Leveling Guides\\Starter Guides\\Chromie Time",
startlevel=10,
endlevel=11,
},[[
step
talk Hagar##245090
|tip Inside the building.
accept Initiation Day##90957 |goto Harandar/0 34.81,24.94
step
kill 6 Invasive Drifter##245118 |q 90957/1 |goto Harandar/0 36.11,25.64
step
talk Dalnir##245102
turnin Initiation Day##90957 |goto Harandar/0 35.26,23.34
accept Roots Above All##90958 |goto Harandar/0 35.26,23.34
step
clicknpc Pesky Sludger##245117+
|tip White creatures.
click Invasive Fungi+
|tip Clusters of mushrooms.
click Withered Plant##246277+
|tip Large bushy plants.
|tip Run away when you click and kill the enemy that spawns.
Remove Pests |q 90958/1 |goto Harandar/0 35.88,25.31
step
click Axe
Investigate the Mysterious Voice |q 90958/2 |goto Harandar/0 36.64,25.14
step
talk Dalnir##245102
turnin Roots Above All##90958 |goto Harandar/0 35.26,23.34
step
talk Orweyna##245879
accept Traditional Duties##90959 |goto Harandar/0 35.29,23.51
step
Watch the dialogue
Meet Dalnir at the Den of Remembrance |q 90959/1 |goto Harandar/0 35.29,23.51
step
Find the Outsider |q 90959/2 |goto Harandar/0 35.46,27.32
step
kill Vicious Saptor##245114
Rescue the Outsider |q 90959/3 |goto Harandar/0 35.65,27.81
step
talk Galtra Bloodcleave##246353
Select _"<Tell Galtra to head to the Den of Remembrance for help.>"_ |gossip 134367
Direct the Outsider to Safety |q 90959/4 |goto Harandar/0 35.61,27.95
step
talk Orweyna##245881
turnin Traditional Duties##90959 |goto Harandar/0 34.01,26.93
step
talk Hagar##245096
accept My Story, My Legacy##90960 |goto Harandar/0 34.02,26.90
step
click Legacy Stone of True Self
|tip Inside the cave.
Inspect the Legacy Stone of True Self |q 90960/1 |goto Harandar/0 33.61,28.25
step
talk Forgotten Song##246456
|tip Inside the cave.
Select _"<Reach out and touch the song.>"_ |gossip 134378
Watch the dialogue
Conclude the Vision of True Self |q 90960/2 |goto Harandar/0 33.61,28.24
step
click Legacy Stone of True Calling
|tip Inside the cave.
Watch the dialogue
Inspect the Legacy Stone of True Calling |q 90960/3 |goto Harandar/0 33.26,27.39
step
Watch the dialogue
|tip Inside the cave.
Conclude the Vision of True Calling |q 90960/4 |goto Harandar/0 33.26,27.39
step
click Legacy Stone of the Goddess Guidance
|tip Inside the cave.
clicknpc Forgotten Song##246456
|tip It spawns after clicking the Legacy Stone.
Watch the dialogue
Inspect the Legacy Stone of the Goddess Guidance |q 90960/5 |goto Harandar/0 32.37,27.36
step
talk Hagar##245097
|tip Inside the cave.
Select _"<Tell Hagar of the visions.>"_ |gossip 134388
Talk to Hagar |q 90960/6 |goto Harandar/0 31.91,27.39
step
click Legacy Stone
|tip Inside the cave.
Paint the Legacy Stone |q 90960/7 |goto Harandar/0 31.86,27.50
step
talk Hagar##245097
|tip Inside the cave.
turnin My Story, My Legacy##90960 |goto Harandar/0 31.91,27.39
accept Stranger in a New Land##90961 |goto Harandar/0 31.91,27.39
step
talk Hagar##245097
|tip Inside the cave.
Select _"My journey is my own."_ |gossip 134394
Talk to Hagar About the Ceremony |q 90961/1 |goto Harandar/0 31.91,27.39
step
click Rootway to Orgrimmar
|tip Inside the cave.
Enter the Rootway |q 90961/2 |goto Harandar/0 31.80,27.37
step
talk Ambassador Blackguard##133407
turnin Stranger in a New Land##90961 |goto Orgrimmar/1 39.40,79.55
accept Choose a Path##94444 |goto Orgrimmar/1 39.40,79.55
step
talk Chromie##167032
Talk to Chromie |q 94444/1 |goto Orgrimmar/1 40.81,80.16
step
talk Envoy Ir'ayi##257671
turnin Choose a Path##94444 |goto Orgrimmar/1 40.13,79.33
|next Leveling Guides\\Starter Guides\\Chromie Time
]])
QuestCore:RegisterGuide("Leveling Guides\\Boosted Characters\\Boosted Character Death Knight Intro",{
description="This guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('DeathKnight') end,
condition_valid_msg="You must be a Death Knight to complete this guide!",
startlevel=50.00,
},[[
step
_On the Deck of the Airship:_
talk Warlord Zakgra##105317
Select _"I'm ready to begin."_
Talk to Warlord Zakgra |scenariostage 1/31011 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Dazar'alor/1 48.67,70.47 < 1000 |c |noway |or |next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Cast Raise Dead |scenariogoal 2/30662
step
_On the Deck of the Airship:_
Watch the dialogue
Use Outbreak on the Target Dummy |scenariogoal 3/30663
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Festering Strike ability on the Target Dummy
|tip It appears on your action bar.
Use Festering Strike on the Target Dummy |scenariogoal 4/30664
step
_On the Deck of the Airship:_
Watch the dialogue
Use Festering Strike then Scourge Strike on the Target Dummy |scenariogoal 5/30665
step
_On the Deck of the Airship:_
Watch the dialogue
Use Death Coil on the Target Dummy |scenariogoal 6/30666
|tip Use your other abilities to generate Runic Power.
step
_On the Deck of the Airship:_
Use your abilities on the Target Dummy
Use Outbreak |scenariogoal 7/30663
Use Festering Strike |scenariogoal 7/30664
Use Scourge Strike |scenariogoal 7/30665
Use Death Coil |scenariogoal 7/30666
step
_On the Deck of the Airship:_
Watch the dialogue
Use Death Strike |scenariogoal Use Death Strike##8/31703
step
_On the Deck of the Airship:_
Watch the dialogue
Use Death Grip |scenariogoal 9/30667
step
_On the Deck of the Airship:_
Watch the dialogue
Use Army of the Dead |scenariogoal 10/31018
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 11/30919
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Soldiers |scenariogoal 12/30919
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 13
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Wind Rider##112565
|tip At the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##61874
step
talk Nazgrim##171791
Select _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 61874/1 |goto Dazar'alor/1 50.37,76.55
|next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
]])
QuestCore:RegisterGuide("Leveling Guides\\Boosted Characters\\Boosted Character Demon Hunter Intro",{
description="This guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('DemonHunter') end,
condition_valid_msg="You must be a Demon Hunter to complete this guide!",
startlevel=50.00,
},[[
step
_On the Deck of the Airship:_
talk Warlord Zakgra##105317
Select _"I'm ready to begin."_
Talk to Warlord Zakgra |scenariogoal 1/31011 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Dazar'alor/1 48.67,70.47 < 1000 |c |noway |or |next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Cast Fel Rush |scenariogoal 2/38303
step
_On the Deck of the Airship:_
Watch the dialogue
Use Demon's Bite on the Target Dummy #3# Times |scenariogoal 3/38304
step
_On the Deck of the Airship:_
Watch the dialogue
Use Chaos Strike on the Target Dummy |scenariogoal 4/38305
|tip Use Demon's Bite to build fury.
step
_On the Deck of the Airship:_
Watch the dialogue
Use Eye Beam on the Target Dummy |scenariogoal 5/38308
|tip Use Demon's Bite to build fury.
step
_On the Deck of the Airship:_
Use Demon's Bite |scenariogoal 6/38304
Use Eye Beam |scenariogoal 6/38308
Use Chaos Strike |scenariogoal 6/38305
|tip Use Demon's Bite to build fury.
step
_On the Deck of the Airship:_
kill Arcane Construct##101738+
Use Blade Dance to Destroy the Constructs |scenariogoal 7/38307
|tip Use Demon's Bite to build fury.
step
_On the Deck of the Airship:_
kill Arcane Construct##101738+
Destroy the Arcane Constructs |scenariogoal 7/29840
|tip Use Demon's Bite to build fury.
|tip Then use Blade Dance and Eye Beam to destroy the Arcane Constructs.
step
_On the Deck of the Airship:_
Watch the dialogue
Use Metamorphasis |scenariogoal 8/38306
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 9/30919
|tip Use Demon's Bite to build fury.
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
Defeat Both Attackers |scenariogoal 10/30919
|tip Use Demon's Bite to build fury.
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariogoal 11/0
|tip Use Demon's Bite to build fury.
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Wind Rider##112565
|tip At the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##61874
step
talk Nazgrim##171791
Select _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 61874/1 |goto Dazar'alor/1 50.37,76.55
|next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
]])
QuestCore:RegisterGuide("Leveling Guides\\Boosted Characters\\Boosted Character Druid Intro",{
description="This guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Druid') end,
condition_valid_msg="You must be a Druid to complete this guide!",
startlevel=50.00,
},[[
step
_On the Deck of the Airship:_
talk Warlord Zakgra##105317
Select _"I'm ready to begin."_
Talk to Warlord Zakgra |scenariogoal 1/31011 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Dazar'alor/1 48.67,70.47 < 1000 |c |noway |or |next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Cast Moonkin Form |scenariogoal 2/32840
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Moonfire on the Target Dummy |scenariogoal 3/32841
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Sunfire on the Target Dummy |scenariogoal 3/32842
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Wrath on the Target Dummy |scenariogoal 4/32843
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Starsurge on the Target Dummy |scenariogoal 5/32844
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Starfire on the Target Dummy |scenariogoal 6/32845
|only if Balance
step
_On the Deck of the Airship:_
kill Arcane Construct##101738+
Destroy the Arcane Constructs |scenariogoal 6/29840
|only if Balance
step
_On the Deck of the Airship:_
Cast Moonfire |scenariogoal 7/32841
Cast Sunfire |scenariogoal 7/32842
Cast Wrath |scenariogoal 7/32843
Cast Starsurge |scenariogoal 7/32844
Cast Starfire |scenariogoal 7/32845
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
Use Regrowth to Heal Yourself |scenariogoal 8/30432
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Entangling Roots |scenariogoal 9/32846
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 10/30919
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Soldiers |scenariogoal 11/30919
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 11
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
Use Cat Form to Shapeshift into a Cat |scenariogoal 2/30425
|only if Feral
step
_On the Deck of the Airship:_
Watch the dialogue
Use Prowl to Enter Stealth |scenariogoal 3/30426
|only if Feral
step
_On the Deck of the Airship:_
Watch the dialogue
Use Rake on the Target Dummy |scenariogoal 4/30428
|only if Feral
step
_On the Deck of the Airship:_
Watch the dialogue
Use Shred on the Target Dummy |scenariogoal 5/30427
|only if Feral
step
_On the Deck of the Airship:_
Watch the dialogue
Use Ferocious Bite with Combo Points on the Target Dummy |scenariogoal 6/30430
|only if Feral
step
_On the Deck of the Airship:_
Watch the dialogue
Use Rip with Combo Points on the Target Dummy |scenariogoal 7/30429
|only if Feral
step
_On the Deck of the Airship:_
Use Rake |scenariogoal 8/30428
Use Shred |scenariogoal Use Shred##8/30427
Use Ferocious Bite |scenariogoal 8/30430
Use Rip |scenariogoal 8/30429
|only if Feral
step
_On the Deck of the Airship:_
Watch the dialogue
Use Dash to Move Faster in Cat Form |scenariogoal 9/30431
|only if Feral
step
_On the Deck of the Airship:_
Watch the dialogue
Use Regrowth to Heal Yourself |scenariogoal 10/30432
|only if Feral
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 11/30919
|only if Feral
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Soldiers |scenariostage 12
|only if Feral
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 13
|only if Feral
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Wind Rider##112565
|tip At the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##61874
step
talk Nazgrim##171791
Select _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 61874/1 |goto Dazar'alor/1 50.37,76.55
|next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
]])
QuestCore:RegisterGuide("Leveling Guides\\Boosted Characters\\Boosted Character Hunter Intro",{
description="This guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a Hunter to complete this guide!",
startlevel=50.00,
},[[
step
_On the Deck of the Airship:_
talk Warlord Zakgra##105317
Select _"I'm ready to begin."_
Talk to Warlord Zakgra |scenariogoal 1/31011 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Dazar'alor/1 48.67,70.47 < 1000 |c |noway |or |next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Use Call Pet |scenariogoal 2/29828
|only if BeastMastery
step
_On the Deck of the Airship:_
Watch the dialogue
Use Kill Command to Command your Pet to Attack the Target Dummy |scenariogoal 3/29829
|only if BeastMastery
step
_On the Deck of the Airship:_
Watch the dialogue
Use Barbed Shot on the Target Dummy |scenariogoal 4/40240
|only if BeastMastery
step
_On the Deck of the Airship:_
Watch the dialogue
Use Cobra Shot on the Target Dummy |scenariogoal 5/29831
|only if BeastMastery
step
_On the Deck of the Airship:_
Watch the dialogue
Use Bestial Wrath |scenariogoal 6/29832
|only if BeastMastery
step
_On the Deck of the Airship:_
Use Kill Command |scenariogoal 7/29829
Use Barbed Shot |scenariogoal 7/40240
Use Cobra Shot |scenariogoal 7/29831
Use Beastial Wrath |scenariogoal 7/29832
|only if BeastMastery
step
_On the Deck of the Airship:_
Watch the dialogue
Use Multi-Shot on the Arcane Constructs |scenariogoal 8/29839
|only if BeastMastery
step
_On the Deck of the Airship:_
kill Arcane Construct##101738+
Destroy the Arcane Constructs |scenariogoal 8/29840
|only if BeastMastery
step
_On the Deck of the Airship:_
Watch the dialogue
Use Feign Death |scenariogoal 9/29835
|only if BeastMastery
step
_On the Deck of the Airship:_
Watch the dialogue
kill Horde Grunt##112000
Defeat the Attacker |scenariogoal 10/30919
|only if BeastMastery
step
_On the Deck of the Airship:_
Watch the dialogue
kill Horde Grunt##112000+
|tip Two of them will attack you.
Defeat Both Attackers |scenariogoal 11/30919
|only if BeastMastery
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 12
|only if BeastMastery
step
_On the Deck of the Airship:_
Watch the dialogue
Use Call Pet |scenariogoal 2/29828
|only if Survival
step
_On the Deck of the Airship:_
Watch the dialogue
Use Harpoon on the Target Dummy |scenariogoal 3/34617
|only if Survival
step
_On the Deck of the Airship:_
Watch the dialogue
Use Raptor Strike on the Target Dummy |scenariogoal 4/34622
|only if Survival
step
_On the Deck of the Airship:_
Watch the dialogue
Use Kill Command on the Target Dummy |scenariogoal 5/40249
|only if Survival
step
_On the Deck of the Airship:_
Watch the dialogue
Use Serpent Sting on the Target Dummy |scenariogoal 6/40243
|only if Survival
step
_On the Deck of the Airship:_
Watch the dialogue
Use Wildfire Bomb on the Target Dummy |scenariogoal 7/40244
|only if Survival
step
_On the Deck of the Airship:_
Use Wildfire Bomb on the Target Dummy |scenariogoal 8/40244
Use Kill Command on the Target Dummy |scenariogoal 8/40249
Use Serpent Sting on the Target Dummy |scenariogoal 8/40243
Use Raptor Strike on the Target Dummy |scenariogoal 8/34622
|only if Survival
step
_On the Deck of the Airship:_
Watch the dialogue
Use Feign Death |scenariogoal 9/29835
|only if Survival
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Attacker |scenariogoal 10/30919
|only if Survival
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Attackers |scenariogoal 11/30919
|only if Survival
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 12
|only if Survival
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Wind Rider##112565
|tip At the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##61874
step
talk Nazgrim##171791
Select _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 61874/1 |goto Dazar'alor/1 50.37,76.55
|next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
]])
QuestCore:RegisterGuide("Leveling Guides\\Boosted Characters\\Boosted Character Mage Intro",{
description="This guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Mage') end,
condition_valid_msg="You must be a Mage to complete this guide!",
startlevel=10.00,
},[[
step
_On the Deck of the Airship:_
talk Warlord Zakgra##105317
Select _"I'm ready to begin."_
Talk to Warlord Zakgra |scenariogoal 1/31011 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Dazar'alor/1 48.67,70.47 < 1000 |c |noway |or |next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Cast Summon Water Elemental |scenariogoal 2/29591
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Frostbolt on the Target Dummy |scenariogoal 3/30560
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Ice Lance on the Target Dummy |scenariogoal 4/30561
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Ice Lance with Fingers of Frost |scenariogoal 5/30614
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Flurry while under the Effects of Brainfreeze |scenariogoal 6/34628
step
_On the Deck of the Airship:_
Cast Frostbolt |scenariogoal 7/30560
Cast Ice Lance |scenariogoal 7/30561
Cast Flurry |scenariogoal 7/34687
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Blink |scenariogoal 8/29248
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Frost Nova to Freeze the Enemy |scenariogoal 9/30623
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Blizzard on the Arcane Constructs |scenariogoal 10/30622
step
_On the Deck of the Airship:_
kill Arcane Construct##101738+
Destroy the Arcane Constructs |scenariogoal 10/29840
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 11/30919
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Soldiers |scenariogoal 12/30919
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 13
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Wind Rider##112565
|tip At the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##61874
step
talk Nazgrim##171791
Select _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 61874/1 |goto Dazar'alor/1 50.37,76.55
|next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
]])
QuestCore:RegisterGuide("Leveling Guides\\Boosted Characters\\Boosted Character Monk Intro",{
description="This guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Monk') end,
condition_valid_msg="You must be a Monk to complete this guide!",
startlevel=50.00,
},[[
step
_On the Deck of the Airship:_
talk Warlord Zakgra##105317
Select _"I'm ready to begin."_
Talk to Warlord Zakgra |scenariogoal 1/31011 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Dazar'alor/1 48.67,70.47 < 1000 |c |noway |or |next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Use Tiger Palm on the Target Dummy |scenariogoal 2/30392
step
_On the Deck of the Airship:_
Watch the dialogue
Use Rising Sun Kick on the Target Dummy |scenariogoal 3/30393
step
_On the Deck of the Airship:_
Watch the dialogue
Use Blackout Kick on the Target Dummy |scenariogoal 4/30395
step
_On the Deck of the Airship:_
Watch the dialogue
Use Fists of Fury on the Target Dummy |scenariogoal 5/30396
step
_On the Deck of the Airship:_
Use Tiger Palm |scenariogoal 6/30392
Use Rising Sun Kick |scenariogoal 6/30393
Use Blackout Kick |scenariogoal 6/30395
Use Fists of Fury |scenariogoal 6/30396
step
_On the Deck of the Airship:_
Watch the dialogue
Use Roll |scenariogoal 7/30397
step
_On the Deck of the Airship:_
Watch the dialogue
Use Vivify to Heal Yourself |scenariogoal 8/40572
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 9/30919
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Soldiers |scenariogoal 10/30919
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 11
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Wind Rider##112565
|tip At the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##61874
step
talk Nazgrim##171791
Select _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 61874/1 |goto Dazar'alor/1 50.37,76.55
|next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
]])
QuestCore:RegisterGuide("Leveling Guides\\Boosted Characters\\Boosted Character Paladin Intro",{
description="This guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Paladin') end,
condition_valid_msg="You must be a Paladin to complete this guide!",
startlevel=50.00,
},[[
step
_On the Deck of the Airship:_
talk Warlord Zakgra##105317
Select _"I'm ready to begin."_
Talk to Warlord Zakgra |scenariogoal 1/31011 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Dazar'alor/1 48.67,70.47 < 1000 |c |noway |or |next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Use Judgement on the Target Dummy |scenariogoal 2/29793
step
_On the Deck of the Airship:_
Watch the dialogue
Use Blade of Justice on the Target Dummy |scenariogoal 3/29773
step
_On the Deck of the Airship:_
Watch the dialogue
Use Crusader Strike on the Target Dummy |scenariogoal 4/29769
step
_On the Deck of the Airship:_
Watch the dialogue
Use Templar's Verdict on the Target Dummy |scenariogoal 5/29770
step
_On the Deck of the Airship:_
Use Judgement |scenariogoal 6/29793
Use Blade of Justice |scenariogoal 6/29773
Use Crusader Strike |scenariogoal 6/29769
Use Templar's Verdict |scenariogoal 6/29770
step
_On the Deck of the Airship:_
Watch the dialogue
Earn 3 Holy Power and then Use Divine Storm |scenariogoal 7/32067
step
_On the Deck of the Airship:_
kill Arcane Construct##101738+
Destroy the Arcane Constructs |scenariogoal 7/29840
step
_On the Deck of the Airship:_
Watch the dialogue
Use Divine Shield |scenariogoal 8/29771
step
_On the Deck of the Airship:_
Watch the dialogue
Allow Fireball to be Cast on You |scenariogoal 8/29797
step
_On the Deck of the Airship:_
Watch the dialogue
Use Flash of Light to Heal Yourself |scenariogoal 9/29772
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 10/30919
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Soldiers |scenariogoal 11/30919
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 12
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Wind Rider##112565
|tip At the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##61874
step
talk Nazgrim##171791
Select _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 61874/1 |goto Dazar'alor/1 50.37,76.55
|next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
]])
QuestCore:RegisterGuide("Leveling Guides\\Boosted Characters\\Boosted Character Priest Intro",{
description="This guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Priest') end,
condition_valid_msg="You must be a Priest to complete this guide!",
startlevel=50.00,
},[[
step
_On the Deck of the Airship:_
talk Warlord Zakgra##105317
Select _"I'm ready to begin."_
Talk to Warlord Zakgra |scenariogoal 1/31011 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Dazar'alor/1 48.67,70.47 < 1000 |c |noway |or |next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Cast Shadow Word: Pain on the Target Dummy |scenariogoal 2/30502
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Penance on the Target Dummy |scenariogoal 3/30503
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Smite on the Target Dummy |scenariogoal 4/30504
step
_On the Deck of the Airship:_
Cast Shadow Word: Pain |scenariogoal 5/30502
Cast Penance |scenariogoal 5/30503
Cast Smite |scenariogoal 5/30504
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Psychic Scream to Fear the Enemies Around You |scenariogoal 6/30520
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Power Word: Shield on Yourself |scenariogoal 7/34732
step
_On the Deck of the Airship:_
Watch the dialogue
Allow Fireball to be Cast on You |scenariogoal 7/29797
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Power Word: Shield on Yourself |scenariogoal 8/34732
step
_On the Deck of the Airship:_
Heal Yourself Through Atonement |scenariogoal 8/40714
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 9/30919
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Soldiers |scenariogoal 10/30919
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 11
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Wind Rider##112565
|tip At the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##61874
step
talk Nazgrim##171791
Select _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 61874/1 |goto Dazar'alor/1 50.37,76.55
|next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
]])
QuestCore:RegisterGuide("Leveling Guides\\Boosted Characters\\Boosted Character Rogue Intro",{
description="This guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Rogue') end,
condition_valid_msg="You must be a Rogue to complete this guide!",
startlevel=50.00,
},[[
step
_On the Deck of the Airship:_
talk Warlord Zakgra##105317
Select _"I'm ready to begin."_
Talk to Warlord Zakgra |scenariogoal 1/31011 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Dazar'alor/1 48.67,70.47 < 1000 |c |noway |or |next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Use Deadly Poison |scenariogoal 2/30644
step
_On the Deck of the Airship:_
Watch the dialogue
Use Stealth |scenariogoal 3/29617
step
_On the Deck of the Airship:_
Watch the dialogue
Use Garrote on the Target Dummy |scenariogoal 4/30645
step
_On the Deck of the Airship:_
Watch the dialogue
Use Mutilate on the Target Dummy |scenariogoal 5/30646
step
_On the Deck of the Airship:_
Watch the dialogue
Use Rupture on the Target Dummy |scenariogoal 6/30647
step
_On the Deck of the Airship:_
Watch the dialogue
Use Envenom on the Target Dummy |scenariogoal 7/30648
step
_On the Deck of the Airship:_
Use Garrote |scenariogoal 8/30645
Use Mutilate |scenariogoal 8/30646
Use Rupture |scenariogoal 8/30647
Use Envenom |scenariogoal 8/30648
step
_On the Deck of the Airship:_
Watch the dialogue
Use Vanish |scenariogoal 9/29646
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 10/30919
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Soldiers |scenariogoal 11/30919
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 12
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Wind Rider##112565
|tip At the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##61874
step
talk Nazgrim##171791
Select _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 61874/1 |goto Dazar'alor/1 50.37,76.55
|next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
]])
QuestCore:RegisterGuide("Leveling Guides\\Boosted Characters\\Boosted Character Shaman Intro",{
description="This guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Shaman') end,
condition_valid_msg="You must be a Shaman to complete this guide!",
startlevel=10.00,
},[[
step
_On the Deck of the Airship:_
talk Warlord Zakgra##105317
Select _"I'm ready to begin."_
Talk to Warlord Zakgra |scenariogoal 1/31011 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Dazar'alor/1 48.67,70.47 < 1000 |c |noway |or |next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Cast Flame Shock on the Target Dummy |scenariogoal 2/29959
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Lava Burst on the Target Dummy |scenariogoal 3/29960
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Lightning Bolt on the Target Dummy |scenariogoal 4/29961
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Earth Shock on the Target Dummy |scenariogoal 5/29962
|only if Elemental
step
_On the Deck of the Airship:_
Cast Flame Shock |scenariogoal 6/29959
Cast Lava Burst |scenariogoal 6/29960
Cast Lightning Bolt |scenariogoal 6/29961
Cast Earth Shock |scenariogoal 6/29962
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Hex on the Soldier |scenariogoal 7/29963
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Chain Lightning on the Arcane Constructs |scenariogoal 8/29964
|only if Elemental
step
_On the Deck of the Airship:_
kill Arcane Construct##101738+
Destroy the Arcane Constructs |scenariogoal 8/29840
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Healing Surge to Heal Yourself |scenariogoal 9/32737
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Fire Elemental |scenariogoal 10/31313
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 11/30919
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Attackers |scenariogoal 12/30919
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 13
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Flametongue on the Target Dummy |scenariogoal 2/32847
|only if Enhancement
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Rockbiter on the Target Dummy |scenariogoal 3/32848
|only if Enhancement
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Lava Lash on the Target Dummy |scenariogoal 4/32849
|only if Enhancement
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Stormstrike on the Target Dummy |scenariogoal 5/32850
|only if Enhancement
step
_On the Deck of the Airship:_
Cast Lava Lash |scenariogoal 6/32849
Cast Flametongue |scenariogoal 6/32847
Cast Rockbiter |scenariogoal 6/32848
Cast Stormstrike |scenariogoal 6/32850
|only if Enhancement
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Hex on the Attacker |scenariogoal 7/29963
|only if Enhancement
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Healing Surge to Heal Yourself |scenariogoal 8/29965
|only if Enhancement
step
_On the Deck of the Airship:_
Watch the dialogue
Use Feral Spirit |scenariogoal 9/32851
|only if Enhancement
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 10/30919
|only if Enhancement
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Attackers |scenariogoal 11/30919
|only if Enhancement
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 13
|only if Enhancement
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Wind Rider##112565
|tip At the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##61874
step
talk Nazgrim##171791
Select _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 61874/1 |goto Dazar'alor/1 50.37,76.55
|next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
]])
QuestCore:RegisterGuide("Leveling Guides\\Boosted Characters\\Boosted Character Warlock Intro",{
description="This guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Warlock') end,
condition_valid_msg="You must be a Warlock to complete this guide!",
startlevel=10.00,
},[[
step
_On the Deck of the Airship:_
talk Warlord Zakgra##105317
Select _"I'm ready to begin."_
Talk to Warlord Zakgra |scenariostage 1 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Dazar'alor/1 48.67,70.47 < 1000 |c |noway |or |next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Cast Summon Voidwalker |scenariogoal 2/29810
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Agony on the Target Dummy |scenariogoal 3/29811
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Corruption on the Target Dummy |scenariogoal 4/29812
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Shadow Bolt on the Target Dummy |scenariogoal 5/40241
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Unstable Affliction on the Target Dummy |scenariogoal 6/29814
step
_On the Deck of the Airship:_
Cast Agony |scenariogoal 7/29811
Cast Corruption |scenariogoal 7/29812
Cast Unstable Affliction |scenariogoal 7/29814
Cast Shadow Bolt |scenariogoal 7/40241
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Drain Life on the Target Dummy |scenariogoal 8/40242
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Fear on the Soldier |scenariogoal 9/29815
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Attacker |scenariogoal 10/30919
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Attackers |scenariogoal 11/30919
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 12
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Wind Rider##112565
|tip At the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##61874
step
talk Nazgrim##171791
Select _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 61874/1 |goto Dazar'alor/1 50.37,76.55
|next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
]])
QuestCore:RegisterGuide("Leveling Guides\\Boosted Characters\\Boosted Character Warrior Intro",{
description="This guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Warrior') end,
condition_valid_msg="You must be a Warrior to complete this guide!",
startlevel=10.00,
},[[
step
_On the Deck of the Airship:_
talk Warlord Zakgra##105317
Select _"I'm ready to begin."_
Talk to Warlord Zakgra |scenariostage 1 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Dazar'alor/1 48.67,70.47 < 1000 |c |noway |or |next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Use Charge on the Target Dummy |scenariogoal 2/30115
step
_On the Deck of the Airship:_
Watch the dialogue
Use Mortal Strike on the Target Dummy |scenariogoal 3/30116
step
_On the Deck of the Airship:_
Watch the dialogue
Use Slam on the Target Dummy |scenariogoal 4/30117
step
_On the Deck of the Airship:_
Watch the dialogue
Use Overpower on the Target Dummy |scenariogoal 5/40181
step
_On the Deck of the Airship:_
Use Overpower |scenariogoal 6/40181
Use Mortal Strike |scenariogoal 6/30116
Use Slam |scenariogoal 6/30117
step
_On the Deck of the Airship:_
Watch the dialogue
kill Arcane Construct##101738+
Kill an Arcane Construct and then Use Victory Rush on the Others |scenariogoal 7/30119
step
_On the Deck of the Airship:_
Watch the dialogue
Use Whirlwind on the Arcane Constructs |scenariogoal 8/30120
step
_On the Deck of the Airship:_
kill Arcane Construct##101738+
Destroy the Arcane Constructs |scenariogoal 8/29840
step
_On the Deck of the Airship:_
Watch the dialogue
Use Heroic Leap |scenariogoal 9/30121
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 10/30919
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Soldiers |scenariogoal 11/30919
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 12
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Wind Rider##112565
|tip At the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##61874
step
talk Nazgrim##171791
Select _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 61874/1 |goto Dazar'alor/1 50.37,76.55
|next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
]])--@@TRIALEND
