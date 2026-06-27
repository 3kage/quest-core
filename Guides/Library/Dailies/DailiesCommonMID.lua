-- Bundled QuestCore guide
if not QuestCore then return end

QuestCore:RegisterGuide("Daily Guides\\Midnight\\World Quests\\Eversong Woods World Quests",{
description="This guide will assist you in completing world quests in Eversong Woods.",
condition_valid=function() return achieved(42045) end,
condition_valid_msg="You must complete the \"Midnight\" achievement on your account by completing the 5 story campaigns and reaching level 90 on a single character to unlock world quests.",
startlevel=80,
worldquestzone={2395,2393},
patch='120000',
},[[
step
label "Choose_World_Quest"
#include "MID_Choose_World_Quests"
step
label quest-92143
kill Daggerspine Infuser##247966, Daggerspine Myrmidon##247551
|tip Naga.
|tip Click {o}female Infuser naga{} to siphon them.
clicknpc Captured Mana Wyrm##247569+
|tip Small flying fish.
click Arcane Cannister+
|tip Metal and glass containers.
Gather Arcana |q 92143/1 |goto Eversong Woods M/0 36.41,65.95 |future
|next "MID_World_Quest_Emissaries"
step
label quest-92150
kill Displaced Lynx##237400, Erratic Light Wyrm##237399
|tip Click {o}Lynxes{} after fighting.
|tip Large cats.
Help Fairbreeze |q 92150/1 |goto Eversong Woods M/0 45.66,45.89 |future
|tip Use the {o}Shoo Hawkstrider{} button ability near {o}Displaced Hawkstriders{}.
|tip Large walking birds.
|next "MID_World_Quest_Emissaries"
step
label quest-92152
kill Light Wyrm##237408, Lightbloom Ent##240644, Lightbloom Hydra##237414, Lightbloom Lasher##237395, Lightbloom Petalwing##237402, Lightfed Growth##246523
Slay Lightbloom Creatures |q 92152/1 |goto Eversong Woods M/0 42.68,55.59 |future
|next "MID_World_Quest_Emissaries"
step
label quest-92122
clicknpc Emberstrike##249794
|tip Up on the platform.
Mount Emberstrike |q 92122/1 |goto Eversong Woods M/0 39.46,45.07 |future
step
_As You Fly:_
Disrupt the Smuggling Operations |q 92122/2 |future
|tip Bomb enemies and wooden crates.
|next "MID_World_Quest_Emissaries"
stickystart "Slay_Mana_Wyrms_92141"
step
label quest-92141
kill Invasive Lynx##246580, Encroaching Lynx##246365
|tip Cougars.
collect 6 Lynx Collar##258966 |q 92141/1 |goto Eversong Woods M/0 40.76,15.58 |future
step
label "Slay_Mana_Wyrms_92141"
kill Arcane Wyrmling##255148, Arcane Wyrm##249959
|tip Blue floating fish.
Slay #10# Mana Wyrms |q 92141/2 |goto Eversong Woods M/0 40.76,15.58 |future
|next "MID_World_Quest_Emissaries"
step
label quest-92195
Ring the Dinner Bell for #15# Brightwing Butterflies |q 92195/1 |goto Eversong Woods M/0 63.58,29.35 |future
|tip Large butterflies inside rings.
|tip Fly through them.
|next "MID_World_Quest_Emissaries"
step
label quest-92146
kill Infused Seedling##239866, Incubating Lasher##251645, Lightfrenzied Lasher##236557, Lightbloat Trampler##236552, Bloom Propagator##236367, Bloom Dominator##236369, Lucent Hookbeak##244533, Overfester Hydra##240129
click Various Objects
Suppress the Lightbloom |q 92146/1 |goto Eversong Woods M/0 54.47,60.41 |future
|next "MID_World_Quest_Emissaries"
stickystart "Slay_Cultists_92149"
step
label quest-92149
click Various Objects
Destroy the Camp |q 92149/2 |goto Eversong Woods M/0 43.23,85.89 |future
step
label "Slay_Cultists_92149"
kill Dark Caller##242979, Darkness Evoker##242976, Death Caster##242978, Twilight Bruiser##242982, Twilight Death-Dealer##242980
Slay #10# Cultists |q 92149/1 |goto Eversong Woods M/0 43.23,85.89 |future
|next "MID_World_Quest_Emissaries"
step
label quest-92121
kill Enclave Lurker##247603, Watchful Striker##247630
click Various Objects
Clear the Pests Out |q 92121/1 |goto Eversong Woods M/0 59.48,68.38 |future
|next "MID_World_Quest_Emissaries"
step
label quest-92160
clicknpc Unruly Hawkstrider Fledgling##251163
Capture #15# Unruly Hatchlings |q 92160/1 |goto Eversong Woods M/0 56.65,35.37 |future
|next "MID_World_Quest_Emissaries"
step
label quest-92560
kill Lu'ashal##244762 |q 92560/1 |goto Eversong Woods M/0 45.28,60.01 |future
_EVERYONE_ |grouprole EVERYONE
|tip Avoid Radiant Embers that erupt from fissures after Raidant Flare. |grouprole EVERYONE
|tip Avoid standing in targeted areas on the ground. |grouprole EVERYONE
|tip Stay spread out to avoid splash damage from Dawncrazed Halo. |grouprole EVERYONE
|tip Avoid standing in front of Dawnfire Breath. |grouprole EVERYONE
_HEALER_ |grouprole HEALER
|tip Radiant Flare deals damage to the entire raid. |grouprole HEALER
|next "MID_World_Quest_Emissaries"
step
label quest-92138
click Flyer Crate
Pick Up Flyers |q 92138/1 |goto Eversong Woods M/0 41.10,18.83 |future
step
use Recruitment Fliers##250440
|tip On Prospective Students.
|tip Blood elves in robes.
Recruit #8# People |q 92138/2 |goto Eversong Woods M/0 41.03,16.82 |future
|next "MID_World_Quest_Emissaries"
step
label quest-92153
kill Twilight Blade##242970, Twilight Shadecaster##242971, Heavy Caster##242972, Shadeling##242973
Slay #15# Twilight Shadecasters |q 92153/1 |goto Eversong Woods M/0 43.8,68.6 |future
|next "MID_World_Quest_Emissaries"
stickystart "Slay_Amani_Defectors_92144"
step
label quest-92144
click Various Objects
Destroy #10# Supplies and Armaments |q 92144/2 |goto Eversong Woods M/0 62.85,49.86 |future
step
label "Slay_Amani_Defectors_92144"
kill Amani Defector##236372, Amani Defector##252525, Renegade Enforcer##236374, Renegade Watcher##237344
Slay #10# Amani Defectors |q 92144/1 |goto Eversong Woods M/0 62.85,49.86 |future
|next "MID_World_Quest_Emissaries"
step
label quest-92105
click Cataloger's Carpet
Ride the Cataloger's Carpet |q 92105/1 |goto Silvermoon City M/0 32.41,68.13 |future
step
_While Flying:_
Take Pictures of Wildlife |q 92105/2 |future
|tip Point the light at NPCs.
|tip Use the abilities.
|next "MID_World_Quest_Emissaries"
step
label quest-91601
kill Lost Theldrin##246516, Irradiant Thornmaw##240644, Light Wyrm##237408, Lightbloom Hydra##237414, Lightbloom Petalwing##237402, Lightfed Growth##246523
Defeat Enemies to Lure Out Your Prey Target |q 91601/1 |goto Eversong Woods M/0 43.15,56.19 |future
|next "MID_World_Quest_Emissaries"
step
label quest-91590
click Empowering Foci
|tip Avoid the red rings around the Summoned Guards.
Destroy #5# Empowering Foci |q 91590/1 |goto Eversong Woods M/0 39.07,72.34 |future
|next "MID_World_Quest_Emissaries"
step
label quest-91594
Chase your Prey |q 91594/1 |goto Eversong Woods M/0 60.06,71.86 |future
|tip Use the ability on your screen near the defector to chase it.
|tip Run over speed boosts and dropped orbs while chasing the defector.
|tip Avoid mobs and purple patches dropped on the ground.
|next "MID_World_Quest_Emissaries"
stickystart "Kill_Vilebranch_Stalkers_92139"
step
label quest-92139
click Vilebranch Altar+
|tip On your minimap.
Destroy #6# Vilebranch Altars |q 92139/1 |goto Eversong Woods M/0 60.38,81.63 |future
step
label "Kill_Vilebranch_Stalkers_92139"
kill 8 Vilebranch Stalker##249965 |q 92139/2 |goto Eversong Woods M/0 60.70,81.43 |future
|tip Hidden.
|tip Altars reveal them.
|next "MID_World_Quest_Emissaries"
stickystart "Kill_Ornery_Winebats"
step
label quest-92145
talk Vehn Sorrelstride##249436
Select _"Magister Rommath is looking for a new wine. Do you have something I could taste?"_ |gossip 136160
Sample the Wine |q 92145/2 |goto Eversong Woods M/0 39.25,61.10 |count 1 hidden |future
step
talk Nara Fadebranch##249437
Select _"Magister Rommath is looking for a new wine. Do you have something I could taste?"_ |gossip 136159
Sample the Wine |q 92145/2 |goto Eversong Woods M/0 39.59,60.56 |count 2 hidden |future
step
talk Quarelestra##251408
Select _"Magister Rommath is looking for a new wine. Do you have something I could taste?"_ |gossip 136154
Sample the Wine |q 92145/2 |goto Eversong Woods M/0 39.81,60.91 |count 3 hidden |future
step
label "Kill_Ornery_Winebats"
kill 10 Ornery Winebat##251339 |q 92145/1 |goto Eversong Woods M/0 39.83,60.52 |future
step
talk Razia##252656
|tip Inside the building.
Select _"Nara's Essence of Butterfly."_ |gossip 136248
Select the Wine |q 92145/3 |goto Eversong Woods M/0 41.23,61.18 |future
|next "MID_World_Quest_Emissaries"
stickystart "Slay_Invading_Wildlife_92364"
step
label quest-92364
clicknpc Wandering Leaftender##238516+
|tip Smaller walking trees.
Empower #8# Wandering Leaftenders |q 92364/2 |goto Eversong Woods M/0 51.95,75.18 |future
step
label "Slay_Invading_Wildlife_92364"
kill Agitated Wyrm##238087, Territorial Dragonhawk##238089
Slay #8# Invading Wildlife |q 92364/1 |goto Eversong Woods M/0 51.23,76.79 |future
|next "MID_World_Quest_Emissaries"
step
label quest-92120
click Training Rod of Polymorph
Borrow the Training Rod of Polymorph |q 92120/1 |goto Silvermoon City M/0 36.24,56.12 |future
stickystart "Polymorph_Or_Dispel_Students_92120"
step
click Tome of Polymorph+
|tip Red books.
collect 4 Tome of Polymorph##258965 |q 92120/3 |goto Silvermoon City M/0 34.94,54.36 |future
step
label "Polymorph_Or_Dispel_Students_92120"
clicknpc Polymorphed Student##253634, Silvermoon Student##253635
|tip Beasts and Blood Elves.
Polymorph or Dispel #8# Students |q 92120/2 |goto Silvermoon City M/0 34.94,54.36 |future
|next "MID_World_Quest_Emissaries"
stickystart "Slay_Lightbloom_Creatures_92140"
step
label quest-92140
click Encroaching Roots##570619+
|tip Groups of yellow roots.
|tip On your minimap.
Destroy #4# Encroaching Roots |q 92140/2 |goto Eversong Woods M/0 60.97,57.60 |future
step
label "Slay_Lightbloom_Creatures_92140"
kill Invasive Shinesipper##237500, Lash'ra Mistcaller##237479, Lash'ra Thornguard##237478, Lightfrenzy Demolisher##237634, Lightfrenzy Devourer##237633, Lightfrenzy Shinesipper##240577, Lightfrenzy Tyrannosaptor##237635, Lightmad Saptor##237496
Slay #8# Lightbloom Creatures |q 92140/1 |goto Eversong Woods M/0 60.97,57.60 |future
|next "MID_World_Quest_Emissaries"
step
label "MID_World_Quest_Emissaries"
#include "MID_World_Quest_Emissaries"
]])
QuestCore:RegisterGuide("Daily Guides\\Midnight\\World Quests\\Harandar World Quests",{
description="This guide will assist you in completing world quests in the Harandar.",
condition_valid=function() return achieved(42045) end,
condition_valid_msg="You must complete the \"Midnight\" achievement on your account by completing the 5 story campaigns and reaching level 90 on a single character to unlock world quests.",
startlevel=80,
worldquestzone={2413,2480},
patch='120000',
},[[
step
label "Choose_World_Quest"
#include "MID_Choose_World_Quests"
step
label quest-92582
kill Wandering Stalker##248890+
|tip In the water.
collect 8 Verdant Stalker Sludge##252649 |q 92582/1 |goto Harandar/0 42.09,33.84 |future
step
Tend the Roots |q 92582/2 |goto Harandar/0 42.53,33.75 |future
|tip Use the {o}Flourishing Hope{} button ability.
|next "MID_World_Quest_Emissaries"
step
label quest-92119
click Encroaching Bitterbloom+
|tip Large yellow flowers.
Burn #10# Bitterblooms |q 92119/1 |goto Harandar/0 33.07,64.31 |future
|next "MID_World_Quest_Emissaries"
step
label quest-92085
clicknpc Swift Grimlynx##251627
Mount the Swift Grymlinx |q 92085/1 |goto Harandar/0 52.90,52.25
step
kill 20 Scurrying Vermin##251606 |q 92085/2 |goto Harandar/0 51.29,53.87
|tip Insects.
|tip Run through them.
|next "MID_World_Quest_Emissaries"
step
label quest-93053
click Dried Acorn+
|tip Brown pine cones.
Remove #8# Dried Acorns |q 93053/1 |goto Harandar/0 51.53,53.17 |future
|next "MID_World_Quest_Emissaries"
step
label quest-91555
clicknpc Weary Defender##247648+
|tip Kneeling friendly humanoids.
Reinvigorate #6# Weary Defenders |q 91555/1 |goto Harandar/0 58.13,52.38 |future
|next "MID_World_Quest_Emissaries"
step
label quest-91490
Douse #18# Smoldering Fires |q 91490/1 |goto Harandar/0 35.71,36.92 |future
|tip Fly next to fires.
|next "MID_World_Quest_Emissaries"
step
label quest-91785
kill Lightbloomed Spore##248556, Lightbloomed Spore##248683
|tip Yellow orbs.
Slay #20# Lightbloom Spores |q 91785/1 |goto Harandar/0 38.09,70.29 |future
|next "MID_World_Quest_Emissaries"
step
label quest-92583
kill Battling Moldstalker##243772, Battling Mycomancer##243771, Battling Rotseeker##243773, Battling Sporecaller##243774, Kragthar##243779, Malgar the Uprooter##248986, Opportunistic Sporeglider##243780
Fight in the Grudge Pit |q 92583/1 |goto Harandar/0 71.56,65.93 |future
|next "MID_World_Quest_Emissaries"
step
label quest-93046
click Petalwing Nest+
|tip Large bird nests.
|tip On your minimap.
Find #4# of Orweyna's Belongings |q 93046/1 |goto Harandar/0 32.63,85.95 |future
|next "MID_World_Quest_Emissaries"
step
label quest-91927
clicknpc Escaping Ooze##249055+
|tip Small blue blobs.
Boot #6# Escaping Oozes |q 91927/1 |goto Harandar/0 62.61,56.32 |future
|next "MID_World_Quest_Emissaries"
step
label quest-91937
click Bo'ke
Ride Bo'ke |q 91937/1 |goto Harandar/0 62.68,48.88 |future
step
_While Riding:_
Take Pictures of Wildlife |q 91937/2 |future
|tip Point the light at creatures.
|tip Use the abilities.
|next "MID_World_Quest_Emissaries"
step
label quest-92184
clicknpc Frightened Potadpole##250255+
Capture #8# Potadpoles |q 92184/1 |goto Harandar/0 68.86,39.58 |future
step
click Release Potadpole
Release the Potadpoles |q 92184/2 |goto Harandar/0 70.75,38.82 |future
|next "MID_World_Quest_Emissaries"
step
label quest-91596
Chase your Prey |q 91596/1 |goto Harandar/0 51.88,33.28 |future
|tip Use the ability on your screen near the defector to chase it.
|tip Run over speed boosts and dropped orbs while chasing the defector.
|tip Avoid mobs and blue patches dropped on the ground.
|next "MID_World_Quest_Emissaries"
step
label quest-91582
kill Deenit##245735, Kazat##237655, Lattice Crawler##245659, Lattice Elder Root##237692, Lattice Grovewarden##237640, Lattice Mistcaller##237161, Lattice Sap Weaver##237641, Lattice Thornguard##237642, Makoot##237693, Petalchomper##237711, Pilfering Petalwing##237709
Prune the Blooming Lattice |q 91582/1 |goto Harandar/0 55.21,29.16 |future
|next "MID_World_Quest_Emissaries"
step
label quest-92162
click Ancient Visionstone
|tip Underground.
Activate the Mural |q 92162/1 |goto Harandar/0 37.57,47.70 |future
step
label "Sate_Your_Hunger_92162"
Sate Your Hunger |q 92162/2 |goto Harandar/0 36.34,45.78 |future
|tip Jump into the {o}flying insects{}.
|tip Click the {o}Visionstone{} again if you lose the disguise.
|only if haveq(92162) and hasbuff(1251530)
step
click Ancient Visionstone
|tip Underground.
Enter the Vision Walk |havebuff Vision Walk##1251530 |goto Harandar/0 37.57,47.70 |future |next "Sate_Your_Hunger_92162"
|only if haveq(92162)
step
|next "MID_World_Quest_Emissaries"
step
label quest-93071
kill Decanimated Blightbringer##246780, Decanimated Rotling##246783, Decanimated Rotseeker##246782
|tip Mushroom people.
Slay #15# Decanimated Blightbringers |q 93071/1 |goto Harandar/0 45.64,68.14 |future
|next "MID_World_Quest_Emissaries"
step
label quest-92063
talk Nu'lan##251172
Select _"<Offer your aid as a witness and a guide.>"_ |gossip 135646
Talk to Nu'lan |q 92063/1 |goto Harandar/0 70.76,38.90 |future
step
kill Dri'hara##251525
|tip Use the {o}Hunter's Bravery{} button ability.
Slay Dri'hara |q 92063/2 |goto Harandar/0 70.09,36.98 |future
step
kill Toa'mara##251305
|tip Use the {o}Hunter's Bravery{} button ability.
Slay Toa'mara |q 92063/3 |goto Harandar/0 70.83,34.22 |future
step
kill Kham'dur##251544
|tip Use the {o}Hunter's Bravery{} button ability.
Slay Kham'dur |q 92063/4 |goto Harandar/0 72.65,34.70 |future
|next "MID_World_Quest_Emissaries"
step
label quest-93013
clicknpc Haranir Petalwing##241799
Ride the Haranir Petalwing |q 93013/1 |goto Harandar/0 33.27,75.88 |future
step
_As You Fly:_
kill enemies
Defeat the Lightbloom Rutaani |q 93013/2 |future
|next "MID_World_Quest_Emissaries"
stickystart "Collect_Savory_Saptor_Slices_92086"
stickystart "Collect_Sweet_Beetle_Wings_92086"
stickystart "Collect_Drifter_Jelly_92086"
step
label quest-92086
click Rich Loamy Soil+
|tip Piles of dirt.
collect 2 Rich Loamy Soil##252257 |q 92086/4 |goto Harandar/0 41.28,24.49 |future
step
label "Collect_Savory_Saptor_Slices_92086"
kill Salivating Saptor##249285+
|tip Plant raptors.
collect 4 Savory Saptor Slice##252234 |q 92086/1 |goto Harandar/0 41.28,24.49 |future
step
label "Collect_Sweet_Beetle_Wings_92086"
kill Peckish Beetle##248127+
|tip Flying insects.
collect 4 Sweet Beetle Wings##252246 |q 92086/2 |goto Harandar/0 41.28,24.49 |future
step
label "Collect_Drifter_Jelly_92086"
kill Delectable Root Drifter##240113+
|tip Flying jellyfish.
collect 4 Drifter Jelly##252259 |q 92086/3 |goto Harandar/0 41.28,24.49 |future
|next "MID_World_Quest_Emissaries"
stickystart "Remove_Invasive_Fungi_92062"
step
label quest-92062
click Withered Plant+
|tip Plants with yellow flowers.
|tip Run away from them.
|tip You will be attacked.
Remove #6# Withered Plants |q 92062/1 |goto Harandar/0 35.52,24.75 |future
step
label "Remove_Invasive_Fungi_92062"
click Invasive Fungi+
|tip Clusters of red mushrooms.
Remove #8# Invasive Fungi |q 92062/2 |goto Harandar/0 35.52,24.75 |future
|next "MID_World_Quest_Emissaries"
step
label quest-92034
kill Thorm'belan##249776 |q 92034/1 |goto Harandar/0 38.89,66.52 |future
_EVERYONE_ |grouprole EVERYONE
|tip Intercept Scintillating Shard to avoid raid-wide damage. |grouprole EVERYONE
|tip Run away when targeted by tendrils. |grouprole EVERYONE
|tip Avoid standing near Radiant Motes. |grouprole EVERYONE
_TANK_ |grouprole TANK
|tip Rending Claw leaves a bleed for 12 seconds. |grouprole TANK
|next "MID_World_Quest_Emissaries"
stickystart "Collect_Phytogenic_Poison_Parts_91981"
step
label quest-91981
click Healing Waters of Ahl'ua+
|tip Blue tornados.
|tip In the water.
collect 4 Healing Waters of Ahl'ua##243196 |q 91981/1 |goto Harandar/0 42.17,56.43 |future
step
label "Collect_Phytogenic_Poison_Parts_91981"
kill Ahl'ua Bull##244376, Ahl'ua Chloroceros##244371, Lethal Lasher##244344, Lethal Lashling##244340, Poisonous Firefly##244363, Potatotoad Brute##244349, Toxic Potatotoadling##244326, Toxic Potatotoad##244325, Wetland Terror##244338
collect 6 Phytogenic Poison Part##243598 |q 91981/2 |goto Harandar/0 42.17,56.43 |future
|next "MID_World_Quest_Emissaries"
step
label "MID_World_Quest_Emissaries"
#include "MID_World_Quest_Emissaries"
]])
QuestCore:RegisterGuide("Daily Guides\\Midnight\\World Quests\\Voidstorm World Quests",{
description="This guide will assist you in completing world quests in the Voidstorm.",
condition_valid=function() return achieved(42045) end,
condition_valid_msg="You must complete the \"Midnight\" achievement on your account by completing the 5 story campaigns and reaching level 90 on a single character to unlock world quests.",
startlevel=80,
worldquestzone={2405,2479,2444},
patch='120000',
},[[
step
label "Choose_World_Quest"
#include "MID_Choose_World_Quests"
step
label quest-92566
talk Complacent Voidwalker##252328+
|tip On your minimap.
Select _"Let's spar!"_ |gossip 136045
kill Complacent Voidwalker##252328+
Train #12# Complacent Voidwalkers |q 92566/1 |goto Slayers Rise/0 73.68,75.11 |future
|next "MID_World_Quest_Emissaries"
step
label quest-92731
talk Decimus##243907
Select _"I am ready to begin!"_ |gossip 136350
Speak with Decimus to Begin |q 92731/1 |goto Voidstorm/0 51.20,68.45 |future
step
Watch the dialogue
|tip Follow the instructions.
|tip Click the objects.
Forge the Blade |q 92731/2 |goto Voidstorm/0 51.27,68.66 |future
|next "MID_World_Quest_Emissaries"
step
label quest-94425
talk Scout Adaephus##257703
|tip Up on the platform.
Select _"<Accept the scout's Umbral Cloak.>"_ |gossip 137746
Speak to Scout Adaephus |q 94425/1 |goto Voidstorm/0 49.08,59.84 |future
stickystart "Slay_Elite_Voidspire_Forces_94425"
step
click Summoning Pylon+
|tip On your minimap.
Shatter #8# Summoning Pylons |q 94425/3 |goto Voidstorm/0 49.81,58.19 |future
More around [Voidstorm/0 53.80,52.14]
step
label "Slay_Elite_Voidspire_Forces_94425"
kill Brinkfeaster##256605, Celestial Behemoth##256598, Living Shadow##256600, Shadowguard Artificer##256611, Shadowguard Crusher##256615, Shadowguard Voidtamer##256612, Stronghold Ascendant##256597, Stronghold Enforcer##256603, Stronghold Slayer##256596, Supreme Ultradon##256607, Terrace Watcher##256614, Voidspire Harrower##256595, Voidspire Obliterator##256591, Voltaic Trigore##256606
|tip Use the {o}Umbral Cloak{} button ability.
|tip Attack them while stealthed.
Slay #8# Elite Voidspire Forces |q 94425/2 |goto Voidstorm/0 49.81,58.19 |future
More around [Voidstorm/0 53.80,52.14]
|next "MID_World_Quest_Emissaries"
step
label quest-93577
click Cataloger's Disc
Ride the Cataloger's Disc |q 93577/1 |goto Voidstorm/0 36.02,49.02 |future
step
_While Flying:_
Take Pictures of Wildlife |q 93577/2 |future
|tip Point the light at creatures.
|tip Use the abilities.
|next "MID_World_Quest_Emissaries"
step
label quest-93573
click Dark Vessel
Examine the Dark Vessel |havebuff Deciphering Dark Wisdom##1265125 |goto Voidstorm/0 41.87,74.81 |q 93573 |future
step
Decipher the Dark Vessel |q 93573/1 |future
|tip Swap the blue orbs around.
|tip Make the lines not overlap.
|next "MID_World_Quest_Emissaries"
step
label quest-93904
click Void Tear+
|tip Swirling blue portals.
|tip Inside the underground cave.
Collect Void Power |q 93904/1 |goto Lair of Predaxas/1 59.42,45.41 |future
|tip Float through {o}blue rings{}.
|tip Enter the {o}hole{} at the {o}bottom of the cave{}.
|tip Shoots you back up.
|next "MID_World_Quest_Emissaries"
step
label quest-93571
kill Blood-Starved Carnidon##243142
Slay the Void-gorged Monstrosity |q 93571/1 |goto Voidstorm/0 27.84,53.53 |count 1 hidden |future
step
kill Gorgargus the Mutinous##243141
Slay the Void-gorged Monstrosity |q 93571/1 |goto Voidstorm/0 26.10,53.17 |count 2 hidden |future
step
kill Karybdos##243140
Slay the Void-gorged Monstrosity |q 93571/1 |goto Voidstorm/0 28.06,50.33 |count 3 hidden |future
|next "MID_World_Quest_Emissaries"
step
label quest-93507
kill Arcane Elemental##245614, Shadowguard Adept##245467, Shadowguard Automaton##244621, Shadowguard Engineer##244608, Shadowguard Infuser##244610, Shadowguard Technician##244606, Shadowguard Voidweaver##245461
click Various Objects
Disrupt the Shadowguard Operation |q 93507/1 |goto Voidstorm/0 37.67,43.59 |future
|next "MID_World_Quest_Emissaries"
stickystart "Disrupt_The_Domanaar_Forces_92576"
step
label quest-92576
click Defiant Banner+
|tip Yellow poles with flags.
|tip On your minimap.
Place #6# Banners |q 92576/1 |goto Slayers Rise/0 53.82,29.37 |future
step
label "Disrupt_The_Domanaar_Forces_92576"
kill Devouring Spawn##248007, Enraged Domanaar##252354, Ramparts Watcher##247802, Spiteful Consumptor##248013, Spiteful Minder##248005, Spiteful Mindwarden##256895, Spitegraft Harrower##248081, Voidscar Controller##247994
click Void Ward+
|tip Shattered orbs.
|tip On your minimap. |notinsticky
Disrupt the Domanaar Forces |q 92576/2 |goto Slayers Rise/0 53.82,29.37 |future
|next "MID_World_Quest_Emissaries"
step
label quest-91419
Shoot a Void Missile at Elementals or Kill Players |q 91419/1 |goto Slayers Rise/0 64.82,52.50 |future
|tip Jump inside {o}Anti-Gravity Areas{}.
|tip {o}Blue circles{} moving around.
|tip On your minimap.
|tip {o}Follow them{} as they move.
|tip Use the {o}Void Missile{} button ability on {o}Nefarious Elemental{}.
|tip Small elementals.
|next "MID_World_Quest_Emissaries"
step
label quest-87759
kill Vengeful Shredclaw##239427, Heinous Klaxid##239461
|tip They become friendly.
|tip Click them to gain a button ability.
Subdue Void Creatures or Kill Players |q 87759/1 |goto Slayers Rise/0 60.65,61.48 |future
|next "MID_World_Quest_Emissaries"
step
label quest-88679
kill Enraged Bloodfeaster##239940, Wrathful Flyer##239941
|tip They become friendly.
|tip Click them to gain a button ability.
Subdue Creatures or Kill Players |q 88679/1 |goto Slayers Rise/0 42.69,48.65 |future
|next "MID_World_Quest_Emissaries"
step
label quest-92546
kill 8 Encroaching Shredclaw##252107 |q 92546/1 |goto Voidstorm/0 35.59,58.94 |future
|tip Stealthed demon dogs.
|next "MID_World_Quest_Emissaries"
step
label quest-88992
kill Abhorrent Shadowguard##240645, Malignant Shadowguard##240647
Kill Shadowguards or Kill Players |q 88992/1 |goto Slayers Rise/0 65.28,52.07 |future
|next "MID_World_Quest_Emissaries"
step
label quest-93397
click Slain Beast+
|tip Dead grey beasts.
|tip Gives a button ability.
kill 5 Slavering Ultradon##235498 |q 93397/2 |goto Voidstorm/0 59.97,75.61 |future
|tip Use the {o}Carrion Essence{} button ability on them.
|tip Weakens them.
|tip Large humanoid elite enemies.
|next "MID_World_Quest_Emissaries"
step
label quest-89267
kill Accursed Elemental##242459, Malefic Engineer##241447, Spiteful Shadowguard##241448
Kill Ethereals or Kill Players |q 89267/1 |goto Slayers Rise/0 35.66,53.97 |future
|next "MID_World_Quest_Emissaries"
step
label quest-93905
kill Devouring Enforcer##236860, Manaforge Netherdrifter##236859, Manaforge Siphoner##236857, Manaforge Warder##237886, Netherbreaker##241040, Recommissioned Mech##238581
clicknpc Unraveling Captive##235710+
|tip Friendly NPCs in bubbles.
click Various Objects
Disrupt the Manaforge |q 93905/1 |goto Voidstorm/0 36.33,76.18 |future
|next "MID_World_Quest_Emissaries"
step
label quest-93517
kill Overcroft Ascendant##239440, Overcroft Automaton##239439, Overcroft Inquisitor##244836, Overcroft Militant##239422, Overcroft Skypiercer##239438, Overcroft Technician##239441
collect 10 Shadowguard Intelligence##259029 |q 93517/1 |goto Voidstorm/0 46.42,70.23 |future
|next "MID_World_Quest_Emissaries"
step
label quest-89347
kill Rage-Riddled Drifter##241472 |q 89347/1 |goto Slayers Rise/0 53.71,28.19 |future
|next "MID_World_Quest_Emissaries"
step
label quest-93579
kill Failed Supplicant##255578, Famished Aspirant##257858, Feeble Supplicant##255655, Hungering Aspirant##255661, Rueful Flagellant##255706
clicknpc Failed Supplicant##255578+
|tip Dead void creatures.
click Fallow Altar
|tip Gather {o} 10 Void Essence{}.
Empower the Fallow Altar with Void Essence |q 93579/2 |goto Voidstorm/0 29.31,45.00 |count 1 hidden |future
step
kill Failed Supplicant##255578, Famished Aspirant##257858, Feeble Supplicant##255655, Hungering Aspirant##255661, Rueful Flagellant##255706
clicknpc Failed Supplicant##255578+
|tip Dead void creatures.
click Fallow Altar
|tip Gather {o} 10 Void Essence{}.
Empower the Fallow Altar with Void Essence |q 93579/2 |goto Voidstorm/0 27.18,44.19 |count 2 hidden |future
step
kill Failed Supplicant##255578, Famished Aspirant##257858, Feeble Supplicant##255655, Hungering Aspirant##255661, Rueful Flagellant##255706
clicknpc Failed Supplicant##255578+
|tip Dead void creatures.
click Fallow Altar
|tip Gather {o} 10 Void Essence{}.
Empower the Fallow Altar with Void Essence |q 93579/2 |goto Voidstorm/0 26.65,41.43 |count 3 hidden |future
|next "MID_World_Quest_Emissaries"
step
label quest-92636
kill Predaxas##238015 |q 92636/1 |goto Voidstorm/0 49.04,86.89 |future
_EVERYONE_ |grouprole EVERYONE
|tip Seismic Slam knocks everyone back and with regurgitated meals. |grouprole EVERYONE
|tip Move out of areas targeted for Devour. |grouprole EVERYONE
_DPS_ |grouprole DAMAGE
|tip Kill adds after they are picked up. |grouprole DAMAGE
_HEALER_ |grouprole HEALER
|tip Regurgitated Blooclaws sometimes gain an enrage that requires extra healing. |grouprole HEALER
|next "MID_World_Quest_Emissaries"
step
label quest-91207
kill Vicious Karion##238476, Seething Shredclaw##238488, Seething Shredclaw##243264, Restless Consumptor##241153, Restless Consumptor##238504
Defeat Enemies to Lure Out Your Prey Target |q 91207/1 |goto Voidstorm/0 39.77,66.02 |future
|next "MID_World_Quest_Emissaries"
step
label quest-91458
Chase your Prey |q 91458/1 |goto Voidstorm/0 60.94,55.53 |future
|tip Use the ability on your screen near the defector to chase it.
|tip Run over speed boosts and dropped orbs while chasing the defector.
|tip Avoid mobs and purple patches dropped on the ground.
|next "MID_World_Quest_Emissaries"
step
label quest-93244
_NOTE:_
During the Next Steps
|tip Kill ethereal enemies.
|tip They drop {o}Overflow Diverters{}.
|tip Use them on the enemies at each console.
|tip Makes them take extra damage.
Click Here to Continue |confirm |q 93244 |future
step
click Surge's Console
kill Energy Surge##256945
Reroute Surge's Power |q 93244/5 |goto Voidstorm/0 39.33,85.41 |future
step
click Dweller's Console
kill Arcane Dweller##256949
Reroute Dweller's Power |q 93244/4 |goto Voidstorm/0 38.81,86.52 |future
step
click Unbound's Console
kill Energized Unbound##256950
Reroute Unbound's Power |q 93244/3 |goto Voidstorm/0 38.06,85.80 |future
step
click Amalgam's Console
kill Arcane Amalgam##256951
Reroute Amalgam's Power |q 93244/2 |goto Voidstorm/0 38.57,84.67 |future
|next "MID_World_Quest_Emissaries"
step
label quest-93438
click Esoti
Ride the War-Wyrm |q 93438/1 |goto Voidstorm/0 35.62,69.23 |future
step
_As You Fly:_
Slay #10# Forces in the Lower Courtyard |q 93438/2 |future
|tip Shoot enemies.
step
_As You Fly:_
Eliminate #5# High Value Targets |q 93438/4 |future
|tip Enemies with red arrows.
|tip Shoot enemies.
Slay #10# Forces in the Upper Courtyard |q 93438/3 |future
step
_As You Fly:_
Destroy #5# Stormarion Supplies |q 93438/6 |future
|tip Objects with red arrows.
Slay #7# Forces in Stormarion Watch |q 93438/5 |future
|tip Shoot enemies.
|next "MID_World_Quest_Emissaries"
step
label quest-90962
click Defense Position+
|tip On your minimap.
Kill the enemies that attack in waves
|tip Defend the {o}Singularity Anchor{}.
|tip Repeat this process.
Complete the Entire Stormarion Assault Event |q 90962/1 |goto Voidstorm/0 26.76,67.91 |future
|next "MID_World_Quest_Emissaries"
step
label quest-93524
Knock Down #20# Voracious Harrowers |q 93524/1 |goto Voidstorm/0 49.57,65.95 |future
|tip Large flying bats.
|tip Fly through them.
|next "MID_World_Quest_Emissaries"
step
label quest-92746
Enter the Stellar Vortex |q 92746/1 |goto Voidstorm/0 39.23,57.74 |future
|tip Walk into the portal.
step
Collect #10# Anomalous Residue |q 92746/2 |goto Voidstorm/0 39.61,58.03 |future
|tip Float through the {o}blue circles{}.
|tip Enter the {o}blue portals{} on the ground.
|tip Launches you back up.
|next "MID_World_Quest_Emissaries"
step
label quest-89377
click Void-tainted Meat+
|tip On your minimap.
kill Bitter Beast##242481, Vicious Consumptor##241570
Kill Behemoths or Kill Players |q 89377/1 |goto Slayers Rise/0 45.27,41.81 |future
|next "MID_World_Quest_Emissaries"
step
label quest-92549
Disperse #20# Void Anomalies |q 92549/1 |goto Voidstorm/0 65.32,61.48 |future
|tip Purple orbs in floating rings.
|tip Fy through them.
|next "MID_World_Quest_Emissaries"
step
label quest-93578
kill Alloyed Ultradon##252810, Alloyed Voidcrawler##246051, Baleful Voidwalker##246064, Desolate Wraith##246055, Gaunt Voidspawn##246063, Grief-Sworn Slayer##256376, Hate-Sworn Butcher##256377, Voracious Wraith##246073, Woeful Voidwalker##252815, Wretched Voidwalker##246057
click Various Objects
Disrupt the Battlefield Combatants |q 93578/1 |goto Slayers Rise/0 48.29,70.57 |future
|next "MID_World_Quest_Emissaries"
step
label "MID_World_Quest_Emissaries"
#include "MID_World_Quest_Emissaries"
]])
QuestCore:RegisterGuide("Daily Guides\\Midnight\\World Quests\\Zul'Aman World Quests",{
condition_valid=function() return achieved(42045) end,
condition_valid_msg="You must complete the \"Midnight\" achievement on your account by completing the 5 story campaigns and reaching level 90 on a single character to unlock world quests.",
worldquestzone={2437},
patch='120000',
},[[
step
label "Choose_World_Quest"
#include "MID_Choose_World_Quests"
step
label quest-91802
kill Boggorm Recluse##255154, Spiny Leechling##255141, Wallows Mukleech##255139
|tip Walking insects.
collect 100 Leech Tick##260453 |q 91802/1 |goto Zul Aman M/0 41.42,60.33 |future
|next "MID_World_Quest_Emissaries"
step
label quest-91806
kill Bark Breaker##253991, Bark Skullcracker##253992, Mammoth Tamer##253996
click Stolen Meat+
|tip Large pieces of red meat.
collect 12 Stolen Game Meat##258324 |q 91806/1 |goto Zul Aman M/0 28.03,36.96 |future
|next "MID_World_Quest_Emissaries"
step
label quest-91810
clicknpc Prepared Zapgut##256047+
Squeeze #5# Prepared Zapgut Eels |q 91810/1 |goto Zul Aman M/0 47.10,24.50 |future
step
Jump on the Blisterskin Kelp #8# Times |q 91810/3 |goto Zul Aman M/0 47.04,24.64 |future
|tip Jump repeatedly.
step
clicknpc Prepared Saltleaf Boar##256025+
Carve #6# Prepared Saltleaf Boars |q 91810/2 |goto Zul Aman M/0 47.14,24.82 |future
step
click Jol the Splintershell##255186
buy Bag of Skewers##260890 |q 91810/4 |goto Zul Aman M/0 47.27,25.21 |future
step
click Blistereel Boar Skewer
Cook the Blistereel Boar |q 91810/5 |goto Zul Aman M/0 47.14,24.67 |future
step
click Blistereel Boar
Taste the Blistereel Boar |q 91810/6 |goto Zul Aman M/0 47.15,24.61 |future
|next "MID_World_Quest_Emissaries"
step
label quest-91805
click Heartwisp Shrub+
|tip Scraggly plants.
collect 20 Heartwisp Frond##252370 |q 91805/1 |goto Zul Aman M/0 39.72,47.56 |future
|next "MID_World_Quest_Emissaries"
step
label quest-92123
kill Cragpine##244424 |q 92123/1 |goto Zul Aman M/0 45.21,48.02 |future
|next "MID_World_Quest_Emissaries"
step
label quest-91804
kill Floating Puffer##254188, Hexxa Eel##254201, Kelp Crab##254198, Ripsnout Shark##254192, Scamp Grouper##254204, Striped Lionfish##254189, Threshette Calf##254207, Threshunk##254209
|tip Underwater.
|tip Move into the {o}Underwater Airflow{} bubbles.
|tip Gives swim speed and water breathing.
collect 15 Lumpy Fish Guts##257241 |q 91804/1 |goto Zul Aman M/0 53.55,48.35 |future
|next "MID_World_Quest_Emissaries"
step
label quest-91798
kill Carnivorous Crab##252222, Hungry Hatchling##251705, King Crab##252221, Slippery Snapper##251636, Snacking Gatherer##252225, Snacking Warrior##252224
clicknpc Slippery Snapper##251636+
|tip Fish.
|tip In the water.
click River Rowberry+
|tip Small red flowers near the water.
|tip Gives {o}swim speed{} and {o}water breathing{}.
collect 10 Slippery Snapper##252003 |q 91798/1 |goto Zul Aman M/0 39.57,80.11 |future
|next "MID_World_Quest_Emissaries"
step
label quest-91800
kill Baleful Darkspawn##251693, Twilight Enforcer##251688, Twilight Shadowmage##251687
click Ransacked Heirloom+
|tip Piles of rubble.
collect 12 Ransacked Heirloom##258321 |q 91800/1 |goto Zul Aman M/0 24.51,62.29 |future
|next "MID_World_Quest_Emissaries"
step
label quest-91803
kill Bogfin Tidechanter##245709, Murloc Behemoth##245714, Murloc Dredgecaller##245712, Murloc Fistfin##245710, Murloc Reefstalker##245711, Murloc Scaleguard##245713
click Stolen Supplies+
|tip Wooden crates.
collect 8 Stolen Supplies##249498 |q 91803/1 |goto Zul Aman M/0 51.40,64.80 |future
|next "MID_World_Quest_Emissaries"
step
label quest-91591
click Empowering Urn
|tip Avoid the red rings around the Summoned Guards.
Destroy #5# Empowering Urns |q 91591/1 |goto Zul Aman M/0 24.51,63.16 |future
|next "MID_World_Quest_Emissaries"
step
label quest-91808
click Stolen Equipment+
|tip Broken wooden crates.
collect 10 Stolen Equipment##238964 |q 91808/1 |goto Zul Aman M/0 30.12,29.11 |future
|next "MID_World_Quest_Emissaries"
step
label quest-91811
clicknpc Coalesced Fire##256106
|tip You will be attacked.
|tip Top of the building.
Touch the Coalesced Fire |q 91811/1 |goto Zul Aman M/0 55.07,18.26 |future
step
Slay the Manifestation of Yourself |q 91811/2 |goto Zul Aman M/0 55.07,18.26 |future
|tip Enemy with your character's name.
|next "MID_World_Quest_Emissaries"
step
label quest-91796
Inhabit a Loa Avatar |q 91796/1 |goto Atal Aman M/1 34.45,65.25 |future
|tip Use the {o}Surrender to the Flame{} button ability.
|tip Inside the building.
step
kill Raiding Caster##254734, Raiding Caster##255883, Raiding Rogue##254731, Raiding Rogue##255882, Raiding Warrior##254534, Raiding Warrior##255881
|tip All around Atal Aman.
Slay #50# Echoes |q 91796/2 |goto Atal Aman M/1 34.68,47.21 |future
step
kill Raid Leader##254902 |q 91796/4 |goto Atal Aman M/1 63.89,47.28 |future
|tip Use the {o}Time Flies{} ability to travel.
step
Release the Loa Avatar |outvehicle
|tip Click the arrow to leave the vehicle.
|next "MID_World_Quest_Emissaries"
step
label quest-91390
talk Kul'kul##246880
accept Dead by Dusk##91401 |goto Zul Aman M/0 28.47,76.82
step
talk Nan'kejo##246878
accept Ashes of the Void##91399 |goto Zul Aman M/0 22.73,73.16
step
talk Akovu##246879
accept Blades of the Fallen##91400 |goto Zul Aman M/0 22.48,79.67
stickystart "Collect_Cultist_Femurs_91401"
stickystart "Collect_Void_Ashes_91399"
step
click Forgotten Amani Axe+
collect 12 Amani Hatchet##246443 |q 91400/1 |goto Zul Aman M/0 25.35,76.92
step
label "Collect_Cultist_Femurs_91401"
kill Twilight Occultist##246620, Twilight Warrior##246619
|tip Humanoids.
collect 20 Cultist Femur##246440 |q 91401/1 |goto Zul Aman M/0 25.35,76.92
step
label "Collect_Void_Ashes_91399"
kill Encroaching Darkness##246615, Flickering Shadow##246614, Twilight's Shade##246616
|tip Elementals.
collect 50 Void Ashes##246439 |q 91399/1 |goto Zul Aman M/0 25.35,76.92
step
talk Kul'kul##246880
turnin Dead by Dusk##91401 |goto Zul Aman M/0 28.47,76.82
step
talk Nan'kejo##246878
turnin Ashes of the Void##91399 |goto Zul Aman M/0 22.73,73.16
step
talk Akovu##246879
turnin Blades of the Fallen##91400 |goto Zul Aman M/0 22.48,79.67
Complete #3# Daily Quests in Atal'Kaldan |q 91390/1 |goto Zul Aman M/0 22.48,79.67 |future
|next "MID_World_Quest_Emissaries"
step
label quest-91799
Inspire Eagles |q 91799/1 |goto Zul Aman M/0 52.19,80.77 |future
|tip Birds flying next to rings.
|tip Fly through them.
|tip On your minimap.
|tip Top of the mountain.
|next "MID_World_Quest_Emissaries"
stickystart "Slay_Twilights_Blade_91801"
step
label quest-91801
click Ritual Component
Destroy the Ritual Component |q 91801/2 |goto Zul Aman M/0 37.70,69.94 |count 1 hidden |future
step
click Ritual Component
Destroy the Ritual Component |q 91801/2 |goto Zul Aman M/0 37.32,72.43 |count 2 hidden |future
step
click Ritual Component
Destroy the Ritual Component |q 91801/2 |goto Zul Aman M/0 35.62,71.88 |count 3 hidden |future
step
label "Slay_Twilights_Blade_91801"
kill Shadowstalker##251159, Twilight Bonecrusher##251156, Twilight Dreadblade##251154, Twilight Mindshaper##251150, Twilight Soulbinder##251152, Twilight Voidtongue##251153, Twilight Zealot##251151
Slay #12# Twilight's Blade |q 91801/1 |goto Zul Aman M/0 37.71,72.09 |future
|next "MID_World_Quest_Emissaries"
step
label "MID_World_Quest_Emissaries"
#include "MID_World_Quest_Emissaries"
]])
QuestCore:RegisterGuide("Daily Guides\\Midnight\\World Quests\\Val World Quests",{
condition_valid=function() return completedq(96051) end,
condition_valid_msg="You must complete the \"Through the Cold Rift\" quest in the Assault and Strike Back (Val) guide.",
worldquestzone={2599,2618,2617},
patch='120007',
},[[
step
label "Choose_World_Quest"
#include "MID_Choose_World_Quests"
step
label quest-95394
clicknpc Dominated Mauler##261990+
clicknpc Dominated Gorger##261991+
Free #15# Shadowguard Devourers |q 95394/1 |goto Val/0 36.49,44.90 |future
|next "MID_World_Quest_Emissaries"
step
label quest-95393
clicknpc Void Elf Riftwalker##261176+
click Barricade+
click Campfire+
kill Ceaseless Voidling##261164, Lingering Voidspawn##261165
|tip Inside and outside the cave.
Safeguard the Cave |q 95393/1 |goto Val/0 65.42,84.80 |future
|next "MID_World_Quest_Emissaries"
step
label quest-95397
click Campfire+
kill Devouring Voidlord##263819, Voidspawn##263816, Wasting Voidripper##263818, Voidwraith##263815
Assist the Expedition Forces |q 95397/1 |goto Val/0 44.32,28.28 |future
|next "MID_World_Quest_Emissaries"
step
label quest-95398
click Veilcaster
Apply the Disguise |q 95398/1 |goto Val/0 50.41,75.94 |future
step
clicknpc Domanaar Overlord##262442
|tip If it is lost in thought, choose "It is our fate to slave away..."
|tip If it says to speak quickly because its patience wanes, choose "Perhaps Decimus knows a better way."
|tip If it senses an incoming annoyance, choose "Perhaps Decimus knows a better way."
Defeat the Void Forces |q 95398/3 |goto Val/0 43.96,51.30 |future
|next "MID_World_Quest_Emissaries"
step
label quest-95815
click Ice Block
Ride the Ice Block |q 95815/1 |goto Val/0 45.19,78.43 |future
step
label "Ride_Ice_Block"
click Ice Block
Ride the Ice Block |complete invehicle() or completedq(95815) |goto Val/0 43.96,51.30
step
Follow the path |goto 39.51,64.22 < 15 |walk
Ride the Ice Block to the Goal |q 95815/2 |goto Val/0 46.19,37.84 |future |or
|tip Use the button on your bar to jump and recover a small amount of speed.
|tip Avoid snow drifts on the ground.
'|complete not invehicle() and not completedq(95815) |next "Ride_Ice_Block" |or
|next "MID_World_Quest_Emissaries"
step
label quest-95404
Enter the cave |goto Val/0 56.48,49.21 < 7 |walk
kill Spider Egg##260966
click Spider Egg##260963
|tip Inside the cave.
Destroy #20# Spider Eggs  |q 95404/1 |goto Val/0 64.17,42.52 |future
|next "MID_World_Quest_Emissaries"
step
label quest-95402
Fill the Gas Collector |q 95402/1 |goto Val/0 53.69,60.73 |future
|tip Stand in the gas and kill any enemies that attack until the collector fills
|next "MID_World_Quest_Emissaries"
step
label quest-95401
click Portal Beacon+
click Portal Console+
clicknpc Portal##263704+
kill Wasting Voidripper##267850, Lingering Voidspawn##267851, Umbrawarden Vicium##264677
Disrupt the Portal Hub |q 95401/1 |goto Val/0 37.45,72.25 |future
|next "MID_World_Quest_Emissaries"
stickystart "Collect_Void_Echoes"
step
label quest-95403
Enter the cave |goto Val/0 26.78,75.13 < 7 |walk
kill Primordial Aberration##263402 |q 95403/1 |goto Val/0 21.56,77.43 |future
|tip It will appear from the large orb inside the cave.
step
label "Collect_Void_Echoes"
click Void Echo
|tip They look like floating blue and purple crystal flames inside the cave.
Collect #10# Void Echoes |q 95403/2 |goto Val/0 21.56,77.43 |future
|next "MID_World_Quest_Emissaries"
step
label quest-96400
click Unstable Void Energy
|tip Inside the cave.
Investigate the Unstable Void Energy |q 96400/2 |goto Forgotten Depths/0 64.62,23.30
step
Smash #30# Fel Corrupted Enemies |q 96400/3 |goto Forgotten Depths/0 44.80,52.75
|tip Run over green worms inside the cave.
|next "MID_World_Quest_Emissaries"
step
label quest-95392
click Snow Pile
Investigate a Snow Pile |q 95392/1 |goto Val/0 43.96,51.30 |future
step
kill Invasive Crystalback##261085, Ravenous Gorger##261084, Skittering Creep##261082, Menacing Siphoid##261086
Defeat the Void Forces |q 95392/3 |goto Val/0 43.96,51.30 |future
|next "MID_World_Quest_Emissaries"
step
label quest-96295
kill Imperator Pertinax##261072 |q 96295/1 |goto Void Acropolis/0 39.12,82.00 |future
|next "MID_World_Quest_Emissaries"
step
label quest-96941
kill Imperator Pertinax##261072 |q 96941/1 |goto Void Acropolis/0 39.12,82.00 |future
|next "MID_World_Quest_Emissaries"
step
label quest-95399
click Veilcaster
Apply the Disguise |q 95399/1 |goto Val/0 50.36,75.83 |future
step
Run up the stairs |goto Void Acropolis/0 13.44,14.24
click Battle Plans
Steal the Battle Plans |q 95399/3 |goto Void Acropolis/1 25.19,59.97 |future
|next "MID_World_Quest_Emissaries"
step
label quest-95400
click Void Furnace
Destroy the Void Furnace |q 95400/1 |goto Val/0 45.32,39.23
step
Free #10# Frozen Solid Creatures |q 95400/2 |goto Val/0 48.22,51.89 |future
|next "MID_World_Quest_Emissaries"
step
label quest-96611
kill 8 Rampaging Ice Elemental##265829 |q 96611/1 |goto Val/0 38.10,41.25 |future
|next "MID_World_Quest_Emissaries"
step
label quest-96617
kill 8 Rampaging Ice Elemental##265829 |q 96617/1 |goto Val/0 49.96,80.00 |future
|next "MID_World_Quest_Emissaries"
step
label quest-96618
kill 8 Rampaging Ice Elemental##265829 |q 96618/1 |goto Val/0 50.96,61.25 |future
|next "MID_World_Quest_Emissaries"
step
label quest-95396
Enter the cave |goto Val/0 29.87,38.70 < 7 |walk
kill Domanaar Ritualist##263362, Voidwraith##263363
|tip Inside the cave.
Interrupt the Ritual |q 95396/1 |goto Val/0 25.92,41.80 |future
|next "MID_World_Quest_Emissaries"
step
label quest-95572
Avoid #10# Lightning Strikes |q 95572/1 |goto Val/0 47.84,48.97 |future
|tip Use the ability on the screen right when you see the light blue around your feet.
|tip You cannot be mounted to do this.
|next "MID_World_Quest_Emissaries"
step
label quest-95395
click Ultradon Slayer##262270
Release the Ultradon Slayer |q 95395/1 |goto Val/0 32.16,51.42 |future
step
Defeat the Void Forces |q 95395/2 |goto Val/0 32.80,51.20 |future
|tip Use the abilities on your bar to kill enemies around Val.
|next "MID_World_Quest_Emissaries"
step
label "MID_World_Quest_Emissaries"
#include "MID_World_Quest_Emissaries"
]])
QuestCore:RegisterGuide("Daily Guides\\Midnight\\World Quests\\Naigtal World Quests",{
condition_valid=function() return completedq(96052) end,
condition_valid_msg="You must complete the \"Through the Mana Rift\" quest in the Assault and Strike Back (Naigtal) guide.",
worldquestzone={2600},
patch='120007',
},[[
step
label "Choose_World_Quest"
#include "MID_Choose_World_Quests"
step
label quest-96696
click Spring Vine Infested Mushroom##265877
Grab the Vine |q 96696/1 |goto Naigtal/0 46.34,79.69 |future
step
Dismantle #4# Coalescing Leaf Storms |q 96696/2 |goto Naigtal/0 45.92,78.70 |future
|tip Back up to stretch the cord and collect the green orbs in front of you as you are propelled forward.
|next "MID_World_Quest_Emissaries"
step
label quest-96623
click Salt Cap##266057+
Gather #15# Salt Caps |q 96623/1 |goto Naigtal/0 59.73,63.89 |future
|next "MID_World_Quest_Emissaries"
step
label quest-96691
click Spring Vine Infested Mushroom##265877
Grab the Vine |q 96691/1 |goto Naigtal/0 72.46,80.58 |future
step
Dismantle #4# Coalescing Leaf Storms |q 96691/2 |goto Naigtal/0 74.06,82.46 |future
|tip Back up to stretch the cord and collect the green orbs in front of you as you are propelled forward.
|next "MID_World_Quest_Emissaries"
stickystart "Kill_Artificer's_Haulnaughts"
step
label quest-96600
kill 8 Crypt Raider##265766 |q 96600/1 |goto Vilaldoun/0 63.42,51.44 |future
|tip Inside the crypt.
step
label "Kill_Artificer's_Haulnaughts"
kill 4 Artificer's Haulnaught##267542 |q 96600/2 |goto Vilaldoun/0 63.42,51.44 |future
|tip Inside the crypt. |notinsticky
|next "MID_World_Quest_Emissaries"
step
label quest-96697
click Spring Vine Infested Mushroom##265877
Grab the Vine |q 96697/1 |goto Naigtal/0 27.85,56.66 |future
step
Dismantle #4# Coalescing Leaf Storms |q 96697/2 |goto Naigtal/0 28.82,54.13 |future
|tip Back up to stretch the cord and collect the green orbs in front of you as you are propelled forward.
|next "MID_World_Quest_Emissaries"
step
label quest-96557
click Remote Detonator+
Plant #12# Remote Detonators |q 96557/1 |goto Naigtal/0 54.77,34.11 |future
step
Trigger the Remote Detonators |q 96557/2 |goto Naigtal/0 54.74,38.56 |future
|tip Use the ability on your screen.
|next "MID_World_Quest_Emissaries"
step
label quest-95575
Jump On a Bouncy Mushroom |q 95575/1 |goto Naigtal/0 43.79,62.32 |future
|tip Jump on a brown Bouncy Mushroom around the area.
step
click Mana Spore Sac+
|tip Use Bouncy Mushrooms to bounce on top of the large mushroom structures above.
collect 5 Mana Spore##269934 |q 95575/2 |goto Naigtal/0 43.79,62.32 |future
|next "MID_World_Quest_Emissaries"
step
label quest-96548
clicknpc Erratic Spore##265652
Investigate the Erratic Spore |q 96548/1 |goto Naigtal/0 48.98,67.74 |future
step
Smash #15# Overflowing Caps |q 96548/2 |goto Naigtal/0 53.57,65.01 |future
|tip Run over the red caps.
|tip Use the ability on your bar to go faster, but avoid depleting the yellow bar.
|next "MID_World_Quest_Emissaries"
step
label quest-96695
click Spring Vine Infested Mushroom##265877
Grab the Vine |q 96695/1 |goto Naigtal/0 34.07,60.50 |future
step
Dismantle #4# Coalescing Leaf Storms |q 96695/2 |goto Naigtal/0 35.07,61.45 |future
|tip Back up to stretch the cord and collect the green orbs in front of you as you are propelled forward.
|next "MID_World_Quest_Emissaries"
step
label quest-96268
Jump On a Bouncy Mushroom |q 96268/1 |goto Naigtal/0 61.50,56.24 |future
|tip Jump on a brown Bouncy Mushroom around the area.
step
click Mana Spore Sac+
|tip Use Bouncy Mushrooms to bounce on top of the large mushroom structures above.
collect 5 Mana Spore##269934 |q 96268/2 |goto Naigtal/0 61.50,56.24 |future
|next "MID_World_Quest_Emissaries"
step
label quest-96698
click Spring Vine Infested Mushroom##265877
Grab the Vine |q 96698/1 |goto Naigtal/0 58.86,56.66 |future
step
Dismantle #4# Coalescing Leaf Storms |q 96698/2 |goto Naigtal/0 58.18,59.64 |future
|tip Back up to stretch the cord and collect the green orbs in front of you as you are propelled forward.
|next "MID_World_Quest_Emissaries"
step
label quest-96272
click Arcane Harvesting Machine##651860
Deactivate #8# Harvesting Machines |q 96272/1 |goto Naigtal/0 27.93,53.38 |future
|next "MID_World_Quest_Emissaries"
stickystart "Kill_Hal'hadar_Cultivator"
step
label quest-96293
click Hal'hadar Battery##265259
|tip Click purple mushrooms to throw the battery at them.
Throw #6# Batteries at Volatile Mushrooms |q 96293/1 |goto Naigtal/0 32.23,45.10 |future
step
label "Kill_Hal'hadar_Cultivator"
kill 10 Hal'hadar Cultivator##265115 |q 96293/2 |goto Naigtal/0 32.23,45.10 |future
|next "MID_World_Quest_Emissaries"
step
label quest-96699
click Spring Vine Infested Mushroom##265877
|tip On top of the big mushroom.
Grab the Vine |q 96699/1 |goto Naigtal/0 50.37,60.83 |future
step
Dismantle #4# Coalescing Leaf Storms |q 96699/2 |goto Naigtal/0 52.89,62.35 |future
|tip Back up to stretch the cord and collect the green orbs in front of you as you are propelled forward.
|next "MID_World_Quest_Emissaries"
step
label quest-96693
click Spring Vine Infested Mushroom##265877
Grab the Vine |q 96693/1 |goto Naigtal/0 56.45,41.60 |future
step
Dismantle #4# Coalescing Leaf Storms |q 96693/2 |goto Naigtal/0 57.44,40.18 |future
|tip Back up to stretch the cord and collect the green orbs in front of you as you are propelled forward.
|next "MID_World_Quest_Emissaries"
stickystart "Kill_Adjutant_Mertei"
step
label quest-96522
kill Nexus-Captain Leth'ir##260875 |q 96522/1 |goto Naigtal/0 77.34,70.86 |future
step
label "Kill_Adjutant_Mertei"
kill Adjutant Mertei##260833 |q 96522/2 |goto Naigtal/0 77.08,70.42 |future
|next "MID_World_Quest_Emissaries"
step
label quest-96432
click Fungal Processor+
|tip They look like large purple tanks around the building.
Overload #12# Fungal Processors |q 96432/1 |goto Naigtal/0 70.97,37.22 |future
|next "MID_World_Quest_Emissaries"
step
label quest-96210
kill Infected Devourer##263968, Infected Gorger##263971, Infected Mauler##263970
Slay #15# Infected Aberrations |q 96210/1 |goto Naigtal/0 39.90,61.34 |future
|next "MID_World_Quest_Emissaries"
step
label quest-96000
click Submerged Skiff
Board a Skiff |q 96000/1 |goto Naigtal/0 62.34,58.03|future
stickystart "Defeat_Troops_with_the_Cannon"
step
Destroy #4# Guns with the Cannon |q 96000/3 |goto Naigtal/0 66.58,72.82 |future
|tip Spam the cannon ability on them down below.
|tip Use the Repair ability when you reach 75% health.
step
label "Defeat_Troops_with_the_Cannon"
Defeat #100# Troops with the Cannon |q 96000/2 |goto Naigtal/0 66.58,72.82 |future
|tip Spam the cannon ability on them down below. |notinsticky
|tip Use the Repair ability when you reach 75% health. |notinsticky
|next "MID_World_Quest_Emissaries"
step
label quest-96217
kill Hal'hadar Spore Keeper##264109+
collect Hal'hadar Keeper Keycode##272975 |n
|tip You need one for each cage you open.
click Cage Controls+
Free #10# Spore Motes |q 96217/2 |goto Naigtal/0 85.25,34.58 |future
|next "MID_World_Quest_Emissaries"
step
label quest-96688
click Spring Vine Infested Mushroom##265877
Grab the Vine |q 96688/1 |goto Naigtal/0 88.44,44.20 |future
step
Dismantle #4# Coalescing Leaf Storms |q 96688/2 |goto Naigtal/0 88.99,42.46 |future
|tip Back up to stretch the cord and collect the green orbs in front of you as you are propelled forward.
|next "MID_World_Quest_Emissaries"
step
label quest-96689
click Spring Vine Infested Mushroom##265877
Grab the Vine |q 96689/1 |goto Naigtal/0 62.36,74.10 |future
step
Dismantle #4# Coalescing Leaf Storms |q 96689/2 |goto Naigtal/0 61.10,73.74 |future
|tip Back up to stretch the cord and collect the green orbs in front of you as you are propelled forward.
|next "MID_World_Quest_Emissaries"
step
label quest-96668
kill Spore Spewing Shroom##265304
Destroy #10# Spore Spewing Shrooms |q 96668/1 |goto Naigtal/0 80.73,40.13 |future
|mapmarker Naigtal/0 73.65,50.09
|next "MID_World_Quest_Emissaries"
step
label quest-96651
kill Spore Spewing Shroom##265304
Destroy #10# Spore Spewing Shrooms |q 96651/1 |goto Naigtal/0 34.62,43.76 |future
|next "MID_World_Quest_Emissaries"
step
label quest-96650
kill Spore Spewing Shroom##265304
Destroy #10# Spore Spewing Shrooms |q 96650/1 |goto Naigtal/0 53.05,57.20 |future
|next "MID_World_Quest_Emissaries"
step
label quest-96547
kill Hal'hadar Tech-Cadet##265580, Hal'hadar Forge-Grunt##265537, Hal'hadar Manaling##265573, Hal'hadar Leystalker##259106, Hal'hadar Artificer##265536
Weaken the Forces |q 96547/1 |goto Naigtal/0 74.17,72.73 |future
|next "MID_World_Quest_Emissaries"
step
label quest-96660
click Spring Vine Infested Mushroom##265877
Grab the Vine |q 96660/1 |goto Naigtal/0 32.17,31.13 |future
step
Dismantle #4# Coalescing Leaf Storms |q 96660/2 |goto Naigtal/0 33.14,28.92 |future
|tip Back up to stretch the cord and collect the green orbs in front of you as you are propelled forward.
|next "MID_World_Quest_Emissaries"
step
label "MID_World_Quest_Emissaries"
#include "MID_World_Quest_Emissaries"
]])
QuestCore:RegisterGuide("Daily Guides\\Midnight\\Prey: Hunts",{
},[[
step
label "Begin_Hunt"
talk Astalor Bloodsworn##246231
accept A Nightmarish Task##94446 |goto Silvermoon City M/0 56.72,65.45
step
click Hunt Table
|tip Use the {o}Prey: Season 1{} guide to unlock it.
|tip Downstairs inside the building.
|tip The Hunt Table will tell you how many hunts can be completed.
|tip Higher hunt difficulties increase rewards.
|tip When you reach Rank 2, a portal will open after each hunt to return you to Silvermoon City.
|tip You can do randomized hunts for 50 Remnants of Anguish by talking with Astalor Bloodsworn.
|tip At Rank 4, you unlock 12 hunts per reset and Nightmare hunts.
Accept a Hunt Quest |complete haveq("91095-91124","91210-91269") |goto Silvermoon City M/0 56.76,65.34 |autoacceptany 91095-91124,91210-91269
step
Click various objects
|tip You will see various objects on your minimap around the zone.
|tip Click them and loot or kill the enemy that spawns to advance your hunt progress.
Kill enemies
|tip Kill enemies around the entire zone to advance your hunt progress.
|tip Consul Nebulor will randomly ambush you and disappear before you can kill him.
Hunt Your Prey |q 91114/1 |only if haveq(91114)
Hunt Your Prey |q 91245/1 |only if haveq(91245)
Hunt Your Prey |q 91259/1 |only if haveq(91259)
|only if haveq(91114,91245,91259)
step
click Charged Anguish Crystal##249029
kill Consul Nebulor##246510 |q 91114/2 |goto Eversong Woods M/0 55.20,54.79 |only if haveq(91114)
kill Consul Nebulor##246963 |q 91245/2 |only if haveq(91245)
kill Consul Nebulor##246963 |q 91259/2 |only if haveq(91259)
|only if haveq(91114,91245,91259)
step
Click various objects
|tip You will see various objects on your minimap around the zone.
|tip Click them and loot or kill the enemy that spawns to advance your hunt progress.
Kill enemies
|tip Kill enemies around the entire zone to advance your hunt progress.
|tip Crusader Luxia Maxwell will randomly ambush you and disappear before you can kill her.
Hunt Your Prey |q 91112/1 |only if haveq(91112)
Hunt Your Prey |q 91243/1 |only if haveq(91243)
Hunt Your Prey |q 91257/1 |only if haveq(91257)
|only if haveq(91112,91243,91257)
step
kill Crusader Luxia Maxwell##247351 |q 91112/2 |only if haveq(91112)
kill Crusader Luxia Maxwell##247351 |q 91243/2 |only if haveq(91243)
kill Crusader Luxia Maxwell##247351 |q 91257/2 |only if haveq(91257)
|only if haveq(91112,91243,91257)
step
Click various objects
|tip You will see various objects on your minimap around the zone.
|tip Click them and loot or kill the enemy that spawns to advance your hunt progress.
Kill enemies
|tip Kill enemies around the entire zone to advance your hunt progress.
|tip Deliah Gloomsong will randomly ambush you and disappear before you can kill her.
Hunt Your Prey |q 91100/1 |only if haveq(91100)
Hunt Your Prey |q 91220/1 |only if haveq(91220)
Hunt Your Prey |q 91221/1 |only if haveq(91221)
|only if haveq(91100,91220,91221)
step
click Charged Anguish Crystal##249029
kill Deliah Gloomsong##246495 |q 91100/2 |only if haveq(91100)
kill Deliah Gloomsong##246495 |q 91220/2 |only if haveq(91220)
kill Deliah Gloomsong##246495 |q 91221/2 |only if haveq(91221)
|only if haveq(91100,91220,91221)
step
Click various objects
|tip You will see various objects on your minimap around the zone.
|tip Click them and loot or kill the enemy that spawns to advance your hunt progress.
Kill enemies
|tip Kill enemies around the entire zone to advance your hunt progress.
|tip Dengzag, the Darkened Blaze will randomly ambush you and disappear before you can kill him.
Hunt Your Prey |q 91124/1 |only if haveq(91124)
Hunt Your Prey |q 91255/1 |only if haveq(91255)
Hunt Your Prey |q 91269/1 |only if haveq(91269)
|only if haveq(91124,91255,91269)
step
click Charged Anguish Crystal##249029
kill Dengzag the Darkened Blaze##246521 |q 91124/2 |only if haveq(91124)
kill Dengzag the Darkened Blaze##246521 |q 91255/2 |only if haveq(91255)
kill Dengzag the Darkened Blaze##246521 |q 91269/2 |only if haveq(91269)
|only if haveq(91124,91255,91269)
step
Click various objects
|tip You will see various objects on your minimap around the zone.
|tip Click them and loot or kill the enemy that spawns to advance your hunt progress.
Kill enemies
|tip Kill enemies around the entire zone to advance your hunt progress.
|tip Executor Kaenius will randomly ambush you and disappear before you can kill him.
Hunt Your Prey |q 91115/1 |only if haveq(91115)
Hunt Your Prey |q 91246/1 |only if haveq(91246)
Hunt Your Prey |q 91260/1 |only if haveq(91260)
|only if haveq(91115,91246,91260)
step
click Charged Anguish Crystal##249029
kill Executor Kaenius##253913 |q 91115/2 |only if haveq(91115)
kill Executor Kaenius##253913 |q 91246/2 |only if haveq(91246)
kill Executor Kaenius##253913 |q 91260/2 |only if haveq(91260)
|only if haveq(91115,91246,91260)
step
Click various objects
|tip You will see various objects on your minimap around the zone.
|tip Click them and loot or kill the enemy that spawns to advance your hunt progress.
Kill enemies
|tip Kill enemies around the entire zone to advance your hunt progress.
|tip Grothoz, the Burning Shadow will randomly ambush you and disappear before you can kill him.
Hunt Your Prey |q 91123/1 |only if haveq(91123)
Hunt Your Prey |q 91254/1 |only if haveq(91254)
Hunt Your Prey |q 91268/1 |only if haveq(91268)
|only if haveq(91123,91254,91268)
step
click Charged Anguish Crystal##249029
kill Grothoz the Burning Shadow##247190 |q 91123/2 |only if haveq(91123)
kill Grothoz the Burning Shadow##246985 |q 91254/2 |only if haveq(91254)
kill Grothoz the Burning Shadow##247190 |q 91268/2 |only if haveq(91268)
|only if haveq(91123,91254,91268)
step
Click various objects
|tip You will see various objects on your minimap around the zone.
|tip Click them and loot or kill the enemy that spawns to advance your hunt progress.
Kill enemies
|tip Kill enemies around the entire zone to advance your hunt progress.
|tip High Vindicator Vureem will randomly ambush you and disappear before you can kill him.
Hunt Your Prey |q 91111/1 |only if haveq(91111)
Hunt Your Prey |q 91242/1 |only if haveq(91242)
Hunt Your Prey |q 91256/1 |only if haveq(91256)
|only if haveq(91111,91242,91256)
step
click Charged Anguish Crystal##249029
kill High Vindicator Vureem##246957 |q 91111/2 |only if haveq(91111)
kill High Vindicator Vureem##246957 |q 91242/2 |only if haveq(91242)
kill High Vindicator Vureem##246957 |q 91256/2 |only if haveq(91256)
|only if haveq(91111,91242,91256)
step
Click various objects
|tip You will see various objects on your minimap around the zone.
|tip Click them and loot or kill the enemy that spawns to advance your hunt progress.
Kill enemies
|tip Kill enemies around the entire zone to advance your hunt progress.
|tip Imperator Enigmalia will randomly ambush you and disappear before you can kill him.
Hunt Your Prey |q 91116/1 |only if haveq(91116)
Hunt Your Prey |q 91247/1 |only if haveq(91247)
Hunt Your Prey |q 91261/1 |only if haveq(91261)
|only if haveq(91116,91247,91261)
step
click Charged Anguish Crystal##249029
kill Imperator Enigmalia##247355 |q 91116/2 |only if haveq(91116)
kill Imperator Enigmalia##247355 |q 91247/2 |only if haveq(91247)
kill Imperator Enigmalia##247355 |q 91261/2 |only if haveq(91261)
|only if haveq(91116,91247,91261)
step
Click various objects
|tip You will see various objects on your minimap around the zone.
|tip Click them and loot or kill the enemy that spawns to advance your hunt progress.
Kill enemies
|tip Kill enemies around the entire zone to advance your hunt progress.
|tip Jo'zolo the Breaker will randomly ambush you and disappear before you can kill him.
Hunt Your Prey |q 91103/1 |only if haveq(91103)
Hunt Your Prey |q 91226/1 |only if haveq(91226)
Hunt Your Prey |q 91227/1 |only if haveq(91227)
|only if haveq(91103,91226,91227)
step
click Charged Anguish Crystal##248480
kill Jo'zolo the Breaker##246499 |q 91103/2 |goto Harandar/0 30.55,59.56 |only if haveq(91103)
kill Jo'zolo the Breaker##246940 |q 91226/2 |goto Harandar/0 39.83,17.04 |only if haveq(91226)
kill Jo'zolo the Breaker##246941 |q 91227/2 |only if haveq(91227)
|only if haveq(91103,91226,91227)
step
Click various objects
|tip You will see various objects on your minimap around the zone.
|tip Click them and loot or kill the enemy that spawns to advance your hunt progress.
Kill enemies
|tip Kill enemies around the entire zone to advance your hunt progress.
|tip Knight-Errant Bloodshatter will randomly ambush you and disappear before you can kill him.
Hunt Your Prey |q 91117/1 |only if haveq(91117)
Hunt Your Prey |q 91248/1 |only if haveq(91248)
Hunt Your Prey |q 91262/1 |only if haveq(91262)
|only if haveq(91117,91248,91262)
step
click Charged Anguish Crystal##249029
kill Knight-Errant Bloodshatter##247184 |q 91117/2 |only if haveq(91117)
kill Knight-Errant Bloodshatter##247184 |q 91248/2 |only if haveq(91248)
kill Knight-Errant Bloodshatter##247184 |q 91262/2 |only if haveq(91262)
|only if haveq(91117,91248,91262)
step
Click various objects
|tip You will see various objects on your minimap around the zone.
|tip Click them and loot or kill the enemy that spawns to advance your hunt progress.
Kill enemies
|tip Kill enemies around the entire zone to advance your hunt progress.
|tip L-N-0R the Recycler will randomly ambush you and disappear before you can kill it.
Hunt Your Prey |q 91098/1 |only if haveq(91098)
Hunt Your Prey |q 91216/1 |only if haveq(91216)
Hunt Your Prey |q 91217/1 |only if haveq(91217)
|only if haveq(91098,91216,91217)
step
click Charged Anguish Crystal##249029
kill L-N-0R the Recycler##246929 |q 91098/2 |only if haveq(91098)
kill L-N-0R the Recycler##246929 |q 91216/2 |only if haveq(91216)
kill L-N-0R the Recycler##246929 |q 91217/2 |only if haveq(91217)
|only if haveq(91098,91216,91217)
step
Click various objects
|tip You will see various objects on your minimap around the zone.
|tip Click them and loot or kill the enemy that spawns to advance your hunt progress.
Kill enemies
|tip Kill enemies around the entire zone to advance your hunt progress.
|tip Lamyne of the Undercroft will randomly ambush you and disappear before you can kill him.
Hunt Your Prey |q 91110/1 |only if haveq(91110)
Hunt Your Prey |q 91240/1 |only if haveq(91240)
Hunt Your Prey |q 91241/1 |only if haveq(91241)
|only if haveq(91110,91240,91241)
step
click Charged Anguish Crystal##249029
kill Lamyne of the Undercroft##247349 |q 91110/2 |only if haveq(91110)
kill Lamyne of the Undercroft##247349 |q 91240/2 |only if haveq(91240)
kill Lamyne of the Undercroft##247349 |q 91241/2 |only if haveq(91241)
|only if haveq(91110,91240,91241)
step
Click various objects
|tip You will see various objects on your minimap around the zone.
|tip Click them and loot or kill the enemy that spawns to advance your hunt progress.
Kill enemies
|tip Kill enemies around the entire zone to advance your hunt progress.
|tip Lieutenant Blazewing will randomly ambush you and disappear before you can kill him.
Hunt Your Prey |q 91108/1 |only if haveq(91108)
Hunt Your Prey |q 91236/1 |only if haveq(91236)
Hunt Your Prey |q 91237/1 |only if haveq(91237)
|only if haveq(91108,91236,91237)
step
click Charged Anguish Crystal##249029
kill Lieutenant Blazewing##253906 |q 91108/2 |only if haveq(91108)
kill Lieutenant Blazewing##253906 |q 91236/2 |only if haveq(91236)
kill Lieutenant Blazewing##253906 |q 91237/2 |only if haveq(91237)
|only if haveq(91108,91236,91237)
step
Click various objects
|tip You will see various objects on your minimap around the zone.
|tip Click them and loot or kill the enemy that spawns to advance your hunt progress.
Kill enemies
|tip Kill enemies around the entire zone to advance your hunt progress.
|tip Lost Theldrin will randomly ambush you and disappear before you can kill him.
Hunt Your Prey |q 91119/1 |only if haveq(91119)
Hunt Your Prey |q 91250/1 |only if haveq(91250)
Hunt Your Prey |q 91264/1 |only if haveq(91264)
|only if haveq(91119,91250,91264)
step
click Charged Anguish Crystal##249029
kill Lost Theldrin##246516 |q 91119/2 |goto Eversong Woods M/0 35.74,19.21 |only if haveq(91119)
kill Lost Theldrin##246976 |q 91250/2 |only if haveq(91250)
kill Lost Theldrin##246976 |q 91264/2 |only if haveq(91264)
|only if haveq(91119,91250,91264)
step
Click various objects
|tip You will see various objects on your minimap around the zone.
|tip Click them and loot or kill the enemy that spawns to advance your hunt progress.
Kill enemies
|tip Kill enemies around the entire zone to advance your hunt progress.
|tip Magister Sunbreaker will randomly ambush you and disappear before you can kill him.
Hunt Your Prey |q 91095/1 |only if haveq(91095)
Hunt Your Prey |q 91210/1 |only if haveq(91210)
Hunt Your Prey |q 91211/1 |only if haveq(91211)
|only if haveq(91095,91210,91211)
step
click Charged Anguish Crystal##249029
kill Magister Sunbreaker##246438 |q 91095/2 |only if haveq(91095)
kill Magister Sunbreaker##246438 |q 91210/2 |only if haveq(91210)
kill Magister Sunbreaker##246438 |q 91211/2 |only if haveq(91211)
|only if haveq(91095,91210,91211)
step
Click various objects
|tip You will see various objects on your minimap around the zone.
|tip Click them and loot or kill the enemy that spawns to advance your hunt progress.
Kill enemies
|tip Kill enemies around the entire zone to advance your hunt progress.
|tip Magistrix Emberlash will randomly ambush you and disappear before you can kill him.
Hunt Your Prey |q 91096/1 |only if haveq(91096)
Hunt Your Prey |q 91212/1 |only if haveq(91212)
Hunt Your Prey |q 91213/1 |only if haveq(91213)
|only if haveq(91096,91212,91213)
step
click Charged Anguish Crystal##249029
kill Magistrix Emberlash##247163 |q 91096/2 |only if haveq(91096)
kill Magistrix Emberlash##247163 |q 91212/2 |only if haveq(91212)
kill Magistrix Emberlash##247163 |q 91213/2 |only if haveq(91213)
|only if haveq(91096,91212,91213)
step
Click various objects
|tip You will see various objects on your minimap around the zone.
|tip Click them and loot or kill the enemy that spawns to advance your hunt progress.
Kill enemies
|tip Kill enemies around the entire zone to advance your hunt progress.
|tip Mordril Shadowfell will randomly ambush you and disappear before you can kill him.
Hunt Your Prey |q 91099/1 |only if haveq(91099)
Hunt Your Prey |q 91218/1 |only if haveq(91218)
Hunt Your Prey |q 91219/1 |only if haveq(91219)
|only if haveq(91099,91218,91219)
step
click Charged Anguish Crystal##249029
kill Mordril Shadowfell##247338 |q 91099/2 |only if haveq(91099)
kill Mordril Shadowfell##247338 |q 91218/2 |only if haveq(91218)
kill Mordril Shadowfell##247338 |q 91219/2 |only if haveq(91219)
|only if haveq(91099,91218,91219)
step
Click various objects
|tip You will see various objects on your minimap around the zone.
|tip Click them and loot or kill the enemy that spawns to advance your hunt progress.
Kill enemies
|tip Kill enemies around the entire zone to advance your hunt progress.
|tip Nexus-Edge Hadim will randomly ambush you and disappear before you can kill him.
Hunt Your Prey |q 91102/1 |only if haveq(91102)
Hunt Your Prey |q 91224/1 |only if haveq(91224)
Hunt Your Prey |q 91225/1 |only if haveq(91225)
|only if haveq(91102,91224,91225)
step
click Charged Anguish Crystal##249029
kill Nexus-Edge Hadim##247341 |q 91102/2 |only if haveq(91102)
kill Nexus-Edge Hadim##247341 |q 91224/2 |only if haveq(91224)
kill Nexus-Edge Hadim##247341 |q 91225/2 |only if haveq(91225)
|only if haveq(91102,91224,91225)
step
Click various objects
|tip You will see various objects on your minimap around the zone.
|tip Click them and loot or kill the enemy that spawns to advance your hunt progress.
Kill enemies
|tip Kill enemies around the entire zone to advance your hunt progress.
|tip Neydra the Starving will randomly ambush you and disappear before you can kill her.
Hunt Your Prey |q 91120/1 |only if haveq(91120)
Hunt Your Prey |q 91251/1 |only if haveq(91251)
Hunt Your Prey |q 91265/1 |only if haveq(91265)
|only if haveq(91120,91251,91265)
step
click Charged Anguish Crystal##249029
kill Neydra the Starving##253918 |q 91120/2 |only if haveq(91120)
kill Neydra the Starving##253918 |q 91251/2 |only if haveq(91251)
kill Neydra the Starving##253918 |q 91265/2 |only if haveq(91265)
|only if haveq(91120,91251,91265)
step
Click various objects
|tip You will see various objects on your minimap around the zone.
|tip Click them and loot or kill the enemy that spawns to advance your hunt progress.
Kill enemies
|tip Kill enemies around the entire zone to advance your hunt progress.
|tip Petyoll the Razorleaf will randomly ambush you and disappear before you can kill him.
Hunt Your Prey |q 91109/1 |only if haveq(91109)
Hunt Your Prey |q 91238/1 |only if haveq(91238)
Hunt Your Prey |q 91239/1 |only if haveq(91239)
|only if haveq(91109,91238,91239)
step
click Charged Anguish Crystal##249029
kill Petyoll the Razorleaf##246505 |q 91109/2 |only if haveq(91109)
kill Petyoll the Razorleaf##246505 |q 91238/2 |only if haveq(91238)
kill Petyoll the Razorleaf##246505 |q 91239/2 |only if haveq(91239)
|only if haveq(91109,91238,91239)
step
Click various objects
|tip You will see various objects on your minimap around the zone.
|tip Click them and loot or kill the enemy that spawns to advance your hunt progress.
Kill enemies
|tip Kill enemies around the entire zone to advance your hunt progress.
|tip Phaseblade Talasha will randomly ambush you and disappear before you can kill her.
Hunt Your Prey |q 91101/1 |only if haveq(91101)
Hunt Your Prey |q 91222/1 |only if haveq(91222)
Hunt Your Prey |q 91223/1 |only if haveq(91223)
|only if haveq(91101,91222,91223)
step
click Charged Anguish Crystal##249029
kill Phaseblade Talasha##246496 |q 91101/2 |only if haveq(91101)
kill Phaseblade Talasha##246936 |q 91222/2 |only if haveq(91222)
kill Phaseblade Talasha##246936 |q 91223/2 |only if haveq(91223)
|only if haveq(91101,91222,91223)
step
Click various objects
|tip You will see various objects on your minimap around the zone.
|tip Click them and loot or kill the enemy that spawns to advance your hunt progress.
Kill enemies
|tip Kill enemies around the entire zone to advance your hunt progress.
|tip Praetor Singularis will randomly ambush you and disappear before you can kill him.
Hunt Your Prey |q 91113/1 |only if haveq(91113)
Hunt Your Prey |q 91244/1 |only if haveq(91244)
Hunt Your Prey |q 91258/1 |only if haveq(91258)
|only if haveq(91113,91244,91258)
step
click Charged Anguish Crystal##249029
kill Praetor Singularis##246961 |q 91113/2 |only if haveq(91113)
kill Praetor Singularis##246961 |q 91244/2 |only if haveq(91244)
kill Praetor Singularis##246961 |q 91258/2 |only if haveq(91258)
|only if haveq(91113,91244,91258)
step
Click various objects
|tip You will see various objects on your minimap around the zone.
|tip Click them and loot or kill the enemy that spawns to advance your hunt progress.
Kill enemies
|tip Kill enemies around the entire zone to advance your hunt progress.
|tip Ranger Swiftglade will randomly ambush you and disappear before you can kill him.
Hunt Your Prey |q 91107/1 |only if haveq(91107)
Hunt Your Prey |q 91234/1 |only if haveq(91234)
Hunt Your Prey |q 91235/1 |only if haveq(91235)
|only if haveq(91107,91234,91235)
step
click Charged Anguish Crystal##249029
kill Ranger Swiftglade##246949 |q 91107/2 |only if haveq(91107)
kill Ranger Swiftglade##246949 |q 91234/2 |only if haveq(91234)
kill Ranger Swiftglade##246949 |q 91235/2 |only if haveq(91235)
|only if haveq(91107,91234,91235)
step
Click various objects
|tip You will see various objects on your minimap around the zone.
|tip Click them and loot or kill the enemy that spawns to advance your hunt progress.
Kill enemies
|tip Kill enemies around the entire zone to advance your hunt progress.
|tip Senior Tinker Ozwold will randomly ambush you and disappear before you can kill him.
Hunt Your Prey |q 91097/1 |only if haveq(91097)
Hunt Your Prey |q 91214/1 |only if haveq(91214)
Hunt Your Prey |q 91215/1 |only if haveq(91215)
|only if haveq(91097,91214,91215)
step
click Charged Anguish Crystal##249029
kill Senior Tinker Ozwold##253895 |q 91097/2 |only if haveq(91097)
kill Senior Tinker Ozwold##253895 |q 91214/2 |only if haveq(91214)
kill Senior Tinker Ozwold##253895 |q 91215/2 |only if haveq(91215)
|only if haveq(91097,91214,91215)
step
Click various objects
|tip You will see various objects on your minimap around the zone.
|tip Click them and loot or kill the enemy that spawns to advance your hunt progress.
Kill enemies
|tip Kill enemies around the entire zone to advance your hunt progress.
|tip The Talon of Janali will randomly ambush you and disappear before you can kill it.
Hunt Your Prey |q 91105/1 |only if haveq(91105)
Hunt Your Prey |q 91230/1 |only if haveq(91230)
Hunt Your Prey |q 91231/1 |only if haveq(91231)
|only if haveq(91105,91230,91231)
step
click Charged Anguish Crystal##249029
kill The Talon of Janali##246944 |q 91105/2 |only if haveq(91105)
kill The Talon of Janali##246944 |q 91230/2 |only if haveq(91230)
kill The Talon of Janali##246944 |q 91231/2 |only if haveq(91231)
|only if haveq(91105,91230,91231)
step
Click various objects
|tip You will see various objects on your minimap around the zone.
|tip Click them and loot or kill the enemy that spawns to advance your hunt progress.
Kill enemies
|tip Kill enemies around the entire zone to advance your hunt progress.
|tip The Wing of Akil'zon will randomly ambush you and disappear before you can kill it.
Hunt Your Prey |q 91106/1 |only if haveq(91106)
Hunt Your Prey |q 91232/1 |only if haveq(91232)
Hunt Your Prey |q 91233/1 |only if haveq(91233)
|only if haveq(91106,91232,91233)
step
click Charged Anguish Crystal##249029
kill The Wing of Akil'zon##253904 |q 91106/2 |only if haveq(91106)
kill The Wing of Akil'zon##253904 |q 91232/2 |only if haveq(91232)
kill The Wing of Akil'zon##253904 |q 91233/2 |only if haveq(91233)
|only if haveq(91106,91232,91233)
step
Click various objects
|tip You will see various objects on your minimap around the zone.
|tip Click them and loot or kill the enemy that spawns to advance your hunt progress.
Kill enemies
|tip Kill enemies around the entire zone to advance your hunt progress.
|tip Thorn-Witch Liset will randomly ambush you and disappear before you can kill her.
Hunt Your Prey |q 91122/1 |only if haveq(91122)
Hunt Your Prey |q 91253/1 |only if haveq(91253)
Hunt Your Prey |q 91267/1 |only if haveq(91267)
|only if haveq(91122,91253,91267)
step
click Charged Anguish Crystal##249029
kill Thorn-Witch Liset##246519 |q 91122/2 |only if haveq(91122)
kill Thorn-Witch Liset##246982 |q 91253/2 |only if haveq(91253)
kill Thorn-Witch Liset##246982 |q 91267/2 |only if haveq(91267)
|only if haveq(91122,91253,91267)
step
Click various objects
|tip You will see various objects on your minimap around the zone.
|tip Click them and loot or kill the enemy that spawns to advance your hunt progress.
Kill enemies
|tip Kill enemies around the entire zone to advance your hunt progress.
|tip Thornspeaker Edgath will randomly ambush you and disappear before you can kill him.
Hunt Your Prey |q 91121/1 |only if haveq(91121)
Hunt Your Prey |q 91252/1 |only if haveq(91252)
Hunt Your Prey |q 91266/1 |only if haveq(91266)
|only if haveq(91121,91252,91266)
step
click Charged Anguish Crystal##249029
kill Thornspeaker Edgath##246981 |q 91121/2 |only if haveq(91121)
kill Thornspeaker Edgath##246981 |q 91252/2 |only if haveq(91252)
kill Thornspeaker Edgath##246981 |q 91266/2 |only if haveq(91266)
|only if haveq(91121,91252,91266)
step
Click various objects
|tip You will see various objects on your minimap around the zone.
|tip Click them and loot or kill the enemy that spawns to advance your hunt progress.
Kill enemies
|tip Kill enemies around the entire zone to advance your hunt progress.
|tip Vylenna the Defector will randomly ambush you and disappear before you can kill her.
Hunt Your Prey |q 91118/1 |only if haveq(91118)
Hunt Your Prey |q 91249/1 |only if haveq(91249)
Hunt Your Prey |q 91263/1 |only if haveq(91263)
|only if haveq(91118,91249,91263)
step
click Charged Anguish Crystal##249029
kill Vylenna the Defector##246515 |q 91118/2 |goto Voidstorm/0 62.07,84.98 |only if haveq(91118)
kill Vylenna the Defector##246975 |q 91249/2 |only if haveq(91249)
kill Vylenna the Defector##246975 |q 91263/2 |only if haveq(91263)
|only if haveq(91118,91249,91263)
step
Click various objects
|tip You will see various objects on your minimap around the zone.
|tip Click them and loot or kill the enemy that spawns to advance your hunt progress.
Kill enemies
|tip Kill enemies around the entire zone to advance your hunt progress.
|tip Zadu, Fist of Nalorakk will randomly ambush you and disappear before you can kill him.
Hunt Your Prey |q 91104/1 |only if haveq(91104)
Hunt Your Prey |q 91228/1 |only if haveq(91228)
Hunt Your Prey |q 91229/1 |only if haveq(91229)
|only if haveq(91104,91228,91229)
step
click Charged Anguish Crystal##249029
|tip Inside the cave.
kill Zadu, Fist of Nalorakk##253902 |q 91104/2 |only if haveq(91104)
kill Zadu, Fist of Nalorakk##246942 |q 91228/2 |only if haveq(91228)
kill Zadu, Fist of Nalorakk##253902 |q 91229/2 |only if haveq(91229)
|only if haveq(91104,91228,91229)
step
Click the Complete Quest Box
turnin Prey: Consul Nebulor (Normal)##91114 |only if haveq(91114)
turnin Prey: Consul Nebulor (Hard)##91245 |only if haveq(91245)
turnin Prey: Consul Nebulor (Nightmare)##91259 |only if haveq(91259)
turnin Prey: Crusader Luxia Maxwell (Normal)##91112 |only if haveq(91112)
turnin Prey: Crusader Luxia Maxwell (Hard)##91243 |only if haveq(91243)
turnin Prey: Crusader Luxia Maxwell (Nightmare)##91257 |only if haveq(91257)
turnin Prey: Deliah Gloomsong (Normal)##91100 |only if haveq(91100)
turnin Prey: Deliah Gloomsong (Hard)##91220 |only if haveq(91220)
turnin Prey: Deliah Gloomsong (Nightmare)##91221 |only if haveq(91221)
turnin Prey: Dengzag, the Darkened Blaze (Normal)##91124 |only if haveq(91124)
turnin Prey: Dengzag, the Darkened Blaze (Hard)##91255 |only if haveq(91255)
turnin Prey: Dengzag, the Darkened Blaze (Nightmare)##91269 |only if haveq(91269)
turnin Prey: Executor Kaenius (Normal)##91115 |only if haveq(91115)
turnin Prey: Executor Kaenius (Hard)##91246 |only if haveq(91246)
turnin Prey: Executor Kaenius (Nightmare)##91260 |only if haveq(91260)
turnin Prey: Grothoz, the Burning Shadow (Normal)##91123 |only if haveq(91123)
turnin Prey: Grothoz, the Burning Shadow (Hard)##91254 |only if haveq(91254)
turnin Prey: Grothoz, the Burning Shadow (Nightmare)##91268 |only if haveq(91268)
turnin Prey: High Vindicator Vureem (Normal)##91111 |only if haveq(91111)
turnin Prey: High Vindicator Vureem (Hard)##91242 |only if haveq(91242)
turnin Prey: High Vindicator Vureem (Nightmare)##91256 |only if haveq(91256)
turnin Prey: Imperator Enigmalia (Normal)##91116 |only if haveq(91116)
turnin Prey: Imperator Enigmalia (Hard)##91247 |only if haveq(91247)
turnin Prey: Imperator Enigmalia (Nightmare)##91261 |only if haveq(91261)
turnin Prey: Jo'zolo the Breaker (Normal)##91103 |only if haveq(91103)
turnin Prey: Jo'zolo the Breaker (Hard)##91226 |only if haveq(91226)
turnin Prey: Jo'zolo the Breaker (Nightmare)##91227 |only if haveq(91227)
turnin Prey: Knight-Errant Bloodshatter (Normal)##91117 |only if haveq(91117)
turnin Prey: Knight-Errant Bloodshatter (Hard)##91248 |only if haveq(91248)
turnin Prey: Knight-Errant Bloodshatter (Nightmare)##91262 |only if haveq(91262)
turnin Prey: L-N-0R the Recycler (Normal)##91098 |only if haveq(91098)
turnin Prey: L-N-0R the Recycler (Hard)##91216 |only if haveq(91216)
turnin Prey: L-N-0R the Recycler (Nightmare)##91217 |only if haveq(91217)
turnin Prey: Lamyne of the Undercroft (Normal)##91110 |only if haveq(91110)
turnin Prey: Lamyne of the Undercroft (Hard)##91240 |only if haveq(91240)
turnin Prey: Lamyne of the Undercroft (Nightmare)##91241 |only if haveq(91241)
turnin Prey: Lieutenant Blazewing (Normal)##91108 |only if haveq(91108)
turnin Prey: Lieutenant Blazewing (Hard)##91236 |only if haveq(91236)
turnin Prey: Lieutenant Blazewing (Nightmare)##91237 |only if haveq(91237)
turnin Prey: Lost Theldrin (Normal)##91119 |only if haveq(91119)
turnin Prey: Lost Theldrin (Hard)##91250 |only if haveq(91250)
turnin Prey: Lost Theldrin (Nightmare)##91264 |only if haveq(91264)
turnin Prey: Magister Sunbreaker (Normal)##91095 |only if haveq(91095)
turnin Prey: Magister Sunbreaker (Hard)##91210 |only if haveq(91210)
turnin Prey: Magister Sunbreaker (Nightmare)##91211 |only if haveq(91211)
turnin Prey: Magistrix Emberlash (Normal)##91096 |only if haveq(91096)
turnin Prey: Magistrix Emberlash (Hard)##91212 |only if haveq(91212)
turnin Prey: Magistrix Emberlash (Nightmare)##91213 |only if haveq(91213)
turnin Prey: Mordril Shadowfell (Normal)##91099 |only if haveq(91099)
turnin Prey: Mordril Shadowfell (Hard)##91218 |only if haveq(91218)
turnin Prey: Mordril Shadowfell (Nightmare)##91219 |only if haveq(91219)
turnin Prey: Nexus-Edge Hadim (Normal)##91102 |only if haveq(91102)
turnin Prey: Nexus-Edge Hadim (Hard)##91224 |only if haveq(91224)
turnin Prey: Nexus-Edge Hadim (Nightmare)##91225 |only if haveq(91225)
turnin Prey: Neydra the Starving (Normal)##91120 |only if haveq(91120)
turnin Prey: Neydra the Starving (Hard)##91251 |only if haveq(91251)
turnin Prey: Neydra the Starving (Nightmare)##91265 |only if haveq(91265)
turnin Prey: Petyoll the Razorleaf (Normal)##91109 |only if haveq(91109)
turnin Prey: Petyoll the Razorleaf (Hard)##91238 |only if haveq(91238)
turnin Prey: Petyoll the Razorleaf (Nightmare)##91239 |only if haveq(91239)
turnin Prey: Phaseblade Talasha (Normal)##91101 |only if haveq(91101)
turnin Prey: Phaseblade Talasha (Hard)##91222 |only if haveq(91222)
turnin Prey: Phaseblade Talasha (Nightmare)##91223 |only if haveq(91223)
turnin Prey: Praetor Singularis (Normal)##91113 |only if haveq(91113)
turnin Prey: Praetor Singularis (Hard)##91244 |only if haveq(91244)
turnin Prey: Praetor Singularis (Nightmare)##91258 |only if haveq(91258)
turnin Prey: Ranger Swiftglade (Normal)##91107 |only if haveq(91107)
turnin Prey: Ranger Swiftglade (Hard)##91234 |only if haveq(91234)
turnin Prey: Ranger Swiftglade (Nightmare)##91235 |only if haveq(91235)
turnin Prey: Senior Tinker Ozwold (Normal)##91097 |only if haveq(91097)
turnin Prey: Senior Tinker Ozwold (Hard)##91214 |only if haveq(91214)
turnin Prey: Senior Tinker Ozwold (Nightmare)##91215 |only if haveq(91215)
turnin Prey: The Talon of Janali (Normal)##91105 |only if haveq(91105)
turnin Prey: The Talon of Janali (Hard)##91230 |only if haveq(91230)
turnin Prey: The Talon of Janali (Nightmare)##91231 |only if haveq(91231)
turnin Prey: The Wing of Akil'zon (Normal)##91106 |only if haveq(91106)
turnin Prey: The Wing of Akil'zon (Hard)##91232 |only if haveq(91232)
turnin Prey: The Wing of Akil'zon (Nightmare)##91233 |only if haveq(91233)
turnin Prey: Thorn-Witch Liset (Normal)##91122 |only if haveq(91122)
turnin Prey: Thorn-Witch Liset (Hard)##91253 |only if haveq(91253)
turnin Prey: Thorn-Witch Liset (Nightmare)##91267 |only if haveq(91267)
turnin Prey: Thornspeaker Edgath (Normal)##91121 |only if haveq(91121)
turnin Prey: Thornspeaker Edgath (Hard)##91252 |only if haveq(91252)
turnin Prey: Thornspeaker Edgath (Nightmare)##91266 |only if haveq(91266)
turnin Prey: Vylenna the Defector (Normal)##91118 |only if haveq(91118)
turnin Prey: Vylenna the Defector (Hard)##91249 |only if haveq(91249)
turnin Prey: Vylenna the Defector (Nightmare)##91263 |only if haveq(91263)
turnin Prey: Zadu, Fist of Nalorakk (Normal)##91104 |only if haveq(91104)
turnin Prey: Zadu, Fist of Nalorakk (Hard)##91228 |only if haveq(91228)
turnin Prey: Zadu, Fist of Nalorakk (Nightmare)##91229 |only if haveq(91229)
|only if haveq("91095-91124","91210-91269")
step
talk Astalor Bloodsworn##246231
|tip Downstairs inside the building.
turnin A Nightmarish Task##94446 |goto Silvermoon City M/0 56.72,65.45
|only if readyq(94446)
step
|next "Begin_Hunt"
]])
QuestCore:RegisterGuide("Daily Guides\\The War Within (70-80)\\Special Missions Locked",{
startlevel=70,
areapoiid={7828,7823,7826,7827,7825,7886,7829,7824,8183,8185,8184,8324,8328,8612,8471,8611,8585,8524,8588,8695,8696,8523},
patch='120002',
},[[
step
Complete Additional World Quests |complete false
|tip Special Assignments require a certain number of world quests be complete in the same zone before unlocking.
|tip Complete the number of world quests or specific world quest indicated on the special assignment icon before clicking it.
|tip If you complete the indicated quests but it still won't unlock, relogging should fix it.
]])
QuestCore:RegisterGuide("Daily Guides\\Midnight\\Saltheril's Soiree Weelkies",{
areapoiid={8600},
},[[
step
talk Caeris Fairdawn##240838
accept Courting Success##93930 |goto Eversong Woods M/0 43.46,47.42
|tip You need to complete the intro guide before you can start this guide.
|loadguide "Leveling Guides\\Midnight (80-90)\\Extra Storylines\\Saltheril's Soiree"
step
label "Begin_Weekly_Quests"
talk Lord Saltheril##240832
accept Favor of the Court##89289 |goto Eversong Woods M/0 42.68,47.31
|tip You cannot accept this quest in the same week you completed the intro.
|tip You can only complete this quest once per week for your entire warband.
|tip If this quest is not offered, skip this step.
step
talk Lord Saltheril##240832
Select _"I'd like to select someone to invite for the week."_ |gossip 132893
Select an Invitation |q 89289/1 |goto Eversong Woods M/0 42.68,47.31
|tip The NPC you choose will determine which Runestone quest you are offered.
|tip It's generally preferred to choose an invitation that offered additional currency for the week.
|only if haveq(89289) or completedq(89289)
step
talk Lord Saltheril##240832
turnin Favor of the Court##89289 |goto Eversong Woods M/0 42.68,47.31
|only if haveq(89289) or completedq(89289)
step
Accept the Available Weekly Quests |autoacceptany "89276-89278",89285,89289,89307,89311,89314,90573,"90574-90576",91971,91972,"91974-91979","91983-91997","91999-92007"
|tip Each week, a Fortify the Runestones quest is offered to complete the event.
|tip NPCs with bars over their head will offer weekly quests in exchange for Saltheril's Favor currency.
|tip You can exchange up to 3 Saltheril's Favor per NPC per week.
|tip Each exchange unlocks one additional weekly quest.
|tip If you only want to complete the event, only the Fortify the Runestones quests are required.
|tip Other quests are for reputation only.
confirm |goto Eversong Woods M/0 42.84,46.72
stickystart "Defend_the_Runestone_1"
stickystart "Defend_the_Runestone_2"
stickystart "Defend_the_Runestone_3"
stickystart "Defend_the_Runestone_4"
step
talk Silvermoon "Trader"##249428
Select _"Vyrin wants you to join him at Saltheril's Haven."_ |gossip 135188
|tip If the final trader doesn't give you credit, fly a few hundred yards away and come back to try again.
Invite #6# Traders |q 92000/1 |goto Eversong Woods M/0 50.56,35.88
|only if haveq(92000) or completedq(92000)
step
click Iridescent Mana Silk##568256+
collect 5 Iridescent Mana Silk##568256 |n
use Iridescent Mana Silk##568256
collect Bolt of Mana Silk Cloth##249445 |q 91996/1 |goto Eversong Woods M/0 46.72,35.22
|only if haveq(91996) or completedq(91996)
step
Locate the Magister's Apprentice |q 91992/1 |goto Eversong Woods M/0 43.57,36.99
|only if haveq(91992) or completedq(91992)
step
click Mana-Fortified Vintage##568213
|tip You will be attacked sometimes.
collect 4 Mana-Fortified Vintage##249421 |q 91992/2 |goto Eversong Woods M/0 43.49,37.18
|only if haveq(91992) or completedq(91992)
step
click Fragrant Bloodthistle+
collect 5 Fragrant Bloodthistle##249472 |q 91999/1 |goto Eversong Woods M/0 41.20,38.44
|only if haveq(91999) or completedq(91999)
stickystart "Chastise_Tideborne"
stickystart "Collect_Tideborn_Dubloons"
step
click Smuggled Goods
|tip Small barrels.
collect 5 Smuggled Goods##249517 |q 92001/1 |goto Eversong Woods M/0 38.59,45.28
|only if haveq(92001) or completedq(92001)
step
label "Collect_Tideborn_Dubloons"
kill Tideborne Deckwalker##239547, Tideborne Freight Runner##239549, Freight Barker##241909
click Smuggler's Satchel
|tip Dropped by enemies.
click Sack of Coins+
|tip Small bags.
collect 50 Tideborne Dubloon##249686 |q 91978/1 |goto Eversong Woods M/0 39.58,44.62
|only if haveq(91978) or completedq(91978)
step
label "Chastise_Tideborne"
kill Tideborne Deckwalker##239547, Tideborne Freight Runner##239549
Chastise #8# Tideborne |q 91977/1 |goto Eversong Woods M/0 39.32,44.49
|only if haveq(91977) or completedq(91977)
step
kill Tideborne Freighter##239521, Tideborne Smuggler##239519
collect 12 Naga Fang##249541 |q 92005/1 |goto Eversong Woods M/0 34.94,44.71
|only if haveq(92005) or completedq(92005)
step
kill Rampaging Ent##249635 |q 91979/1 |goto Eversong Woods M/0 37.27,54.88
|tip Runs around.
|only if haveq(91979) or completedq(91979)
stickystart "Collect_Luminous_Fibers"
stickystart "Collect_Lightbloom_Bulbs"
stickystart "Slay_Lightbloom_Creatures"
step
use the Felo'melorn Replica##249688
|tip Use it on creatures around the area.
Test the Felo'melorn Replica #5# Times |q 92003/1 |goto Eversong Woods M/0 41.71,55.63
|only if haveq(92003) or completedq(92003)
step
label "Collect_Luminous_Fibers"
kill Lightbloom Hydra##237414, Lightbloom Petalwing##237402, Lightbloom Lasher##237395, Lightbloom Monstrosity##244383, Irradiant Thornmaw##240644, Rampaging Ent##249635
collect 8 Luminous Fibers##239067 |q 89277/1 |goto Eversong Woods M/0 42.09,55.93
|only if haveq(89277) or completedq(89277)
step
label "Collect_Lightbloom_Bulbs"
kill Lightbloom Lasher##237395+
collect 8 Lightblooming Bulb##249418 |q 91987/1 |goto Eversong Woods M/0 42.20,55.99
|only if haveq(91987) or completedq(91987)
step
label "Slay_Lightbloom_Creatures"
kill Lightbloom Petalwing##237402, Light Wyrm##237408, Lightfed Growth##246523, Lightbloom Hydra##237414, Irradiant Thornmaw##240644, Lightbloom Lasher##237395
Slay Lightbloom Creatures |q 91976/1 |goto Eversong Woods M/0 42.09,55.89
|only if haveq(91976) or completedq(91976)
step
click Vintner's Golden
collect Vintner's Golden##249732 |q 91991/1 |goto Eversong Woods M/0 39.90,60.83
|only if haveq(91991) or completedq(91991)
step
kill 4 Daggerspine Infuser##247966 |q 91995/1 |goto Eversong Woods M/0 37.07,62.03
|only if haveq(91995) or completedq(91995)
stickystart "Collect_Naga_Scimitars"
step
use the Discordant Tune##249779
|tip Use it on Daggerspine Snapdragons.
Drive #8# Daggerspine Snapdragons Mad |q 91986/1 |goto Eversong Woods M/0 36.36,65.63
|only if haveq(91986) or completedq(91986)
step
click Relocation Crate##568507+
collect 5 Partially-Used Memento##249542 |q 568507/1 |goto Eversong Woods M/0 36.92,73.13
|only if haveq(568507) or completedq(568507)
step
label "Collect_Naga_Scimitars"
click Naga Scimitar##568483
collect 7 Naga Scimitar##249499 |q 91973/1 |goto Eversong Woods M/0 37.14,64.24
|only if haveq(91973) or completedq(91973)
stickystart "Purge_Twilight_Intruders"
step
kill Twilight Blade##242970, Twilight Shadecaster##242971, Heavy Caster##242972
collect 6 Twilight Weaponry##249528 |q 92002/1 |goto Eversong Woods M/0 43.63,68.31
|only if haveq(92002) or completedq(92002)
step
label "Purge_Twilight_Intruders"
use the Holy Sunfire##249691
|tip Use it on enemies to get credit.
|tip They will burn and die in a few seconds.
kill Twilight Blade##242970, Twilight Shadecaster##242971, Heavy Caster##242972, Shadeling##242973
Purge #10# Twilight Intruders |q 91974/1 |goto Eversong Woods M/0 43.53,68.75
|only if haveq(91974) or completedq(91974)
step
talk Master Chef Mouldier##245741
|tip If you can't see this NPC, you need to complete up to "The Missing Magister" in the Eversong Woods story only guide.
buy 1 Bloodthistle Brandy##249555 |q 92006/1 |goto Eversong Woods M/0 47.65,67.77
|only if haveq(92006) or completedq(92006)
step
talk Eralan##245769
|tip If you can't see this NPC, you need to complete up to "The Missing Magister" in the Eversong Woods story only guide.
buy 1 Mana Burner##249556 |q 92006/2 |goto Eversong Woods M/0 48.85,65.51
|only if haveq(92006) or completedq(92006)
step
talk Innkeeper Kalarin##236149
|tip Inside the building.
|tip If you can't see this NPC, you need to complete up to "The Missing Magister" in the Eversong Woods story only guide.
buy 1 Sun-Kissed Tranquilla##249557 |q 92006/3 |goto Eversong Woods M/0 48.96,68.53
|only if haveq(92006) or completedq(92006)
step
clicknpc Scintillant Wyrm##241374+
Siphon #6# Scintillant Wyrms |q 89276/1 |goto Eversong Woods M/0 44.61,79.75
|only if haveq(89276) or completedq(89276)
step
kill Sungrub##246574+
collect 1 Sunsilk##249422 |q 91984/1 |goto Eversong Woods M/0 48.21,74.70
|only if haveq(91984) or completedq(91984)
step
talk Bloodguard Nelric##249566
Report In to Thalassian Pass |q 91972/1 |goto Eversong Woods M/0 48.34,88.50
|only if haveq(91972) or completedq(91972)
step
talk Bloodguard Nelric##249566
Select _"<Accept the assignment.>"_ |gossip 135242
Kill enemies that attack in waves
Hold the Watch |q 91972/2 |goto Eversong Woods M/0 48.34,88.50
|only if haveq(91972) or completedq(91972)
step
kill Poisonous Passhopper##249358+
collect 6 Poisonous Frog Secretions##249687 |q 92004/1 |goto Eversong Woods M/0 56.42,78.51
|only if haveq(92004) or completedq(92004)
step
kill Twilight Bonebreaker##248797, Twilight Crystal Seer##248800, Twilight Agent##248801, Twilight Voidcaster##248798
collect 6 Twilight Tokens##249411 |q 91971/1 |goto Eversong Woods M/0 62.29,70.55
|only if haveq(91971) or completedq(91971)
step
kill Amani Watcher##252521, Amani Feller##236372, Amani Enforcer##236374, Amani Watcher##237344
collect 5 Harvested Lightwood##249407 |q 91975/1 |goto Eversong Woods M/0 60.95,51.10
|only if haveq(91975) or completedq(91975)
step
click Eversong Pyrepetal##568246+
collect 8 Eversong Pyrepetal##249444 |q 91994/1 |goto Eversong Woods M/0 58.09,44.81
|only if haveq(91994) or completedq(91994)
step
kill Ornery Sweeper##247199
collect 5 Inanimate Broom##249452 |q 91997/1 |goto Eversong Woods M/0 57.02,40.22
|only if haveq(91997) or completedq(91997)
stickystart "Collect_Bright_Feathers"
step
talk Seridis##249468
Select _"Vyrin sent me to get something from you."_
Speak to Vyrin's "Associate" |q 92007/1 |goto Eversong Woods M/0 56.86,35.81
|only if haveq(92007) or completedq(92007)
step
click Concealed Dirt Mound
Dig Up the Concealed Dirt Mound |q 92007/2 |goto Eversong Woods M/0 57.34,35.32
|only if haveq(92007) or completedq(92007)
step
click Chest of Stolen Valuables##568519
Loot the Chest of Stolen Valuables |q 92007/3 |goto Eversong Woods M/0 57.34,35.32
|only if haveq(92007) or completedq(92007)
step
label "Collect_Bright_Feathers"
click Bright Feather+
collect 8 Bright Feather##249439 |q 91983/1 |goto Eversong Woods M/0 56.71,35.37
|only if haveq(91983) or completedq(91983)
step
use the Bright Berry##249775
|tip Use it on Cerul.
clicknpc Cerul##249601
Lure Cerul |q 91988/1 |goto Eversong Woods M/0 65.39,26.87
|only if haveq(91988) or completedq(91988)
step
Lead Cerul Home |q 91988/2 |goto Eversong Woods M/0 63.52,28.85
|only if haveq(91988) or completedq(91988)
step
label "Defend_the_Runestone_1"
click Runestone
|tip Any Runestone in Eversong Woods can be active.
|tip Open your map and fly to the active Runestone indicated by the quest marker.
|tip Collect Latent Arcana from nearby Coalesced Light.
|tip Turn it in to the Runestone until the scenario starts.
|tip You may need to wait until the timer expires to begin a new scenario.
|tip Kill enemies and click objects around the scenario area until the boss spawns.
|tip The boss is elite, so you will likely need a group.
Defend the Runestone |q 90573/2
|only if haveq(90573) or completedq(90573)
step
label "Defend_the_Runestone_2"
click Runestone
|tip Any Runestone in Eversong Woods can be active.
|tip Open your map and fly to the active Runestone indicated by the quest marker.
|tip Collect Latent Arcana from nearby Coalesced Light.
|tip Turn it in to the Runestone until the scenario starts.
|tip You may need to wait until the timer expires to begin a new scenario.
|tip Kill enemies and click objects around the scenario area until the boss spawns.
|tip The boss is elite, so you will likely need a group.
Defend the Runestone |q 90574/2
|only if haveq(90574) or completedq(90574)
step
label "Defend_the_Runestone_3"
click Runestone
|tip Any Runestone in Eversong Woods can be active.
|tip Open your map and fly to the active Runestone indicated by the quest marker.
|tip Collect Latent Arcana from nearby Coalesced Light.
|tip Turn it in to the Runestone until the scenario starts.
|tip You may need to wait until the timer expires to begin a new scenario.
|tip Kill enemies and click objects around the scenario area until the boss spawns.
|tip The boss is elite, so you will likely need a group.
Defend the Runestone |q 90575/2
|only if haveq(90575) or completedq(90575)
step
label "Defend_the_Runestone_4"
click Runestone
|tip Any Runestone in Eversong Woods can be active.
|tip Open your map and fly to the active Runestone indicated by the quest marker.
|tip Collect Latent Arcana from nearby Coalesced Light.
|tip Turn it in to the Runestone until the scenario starts.
|tip You may need to wait until the timer expires to begin a new scenario.
|tip Kill enemies and click objects around the scenario area until the boss spawns.
|tip The boss is elite, so you will likely need a group.
Defend the Runestone |q 90576/2
|only if haveq(90576) or completedq(90576)
step
talk Magistrix Bloodflame##240834
turnin Fortify the Runestones: Magisters##90573 |goto Eversong Woods M/0 42.62,46.16 |only if haveq(90573) or completedq(90573)
turnin Light Snacks##89276 |goto Eversong Woods M/0 42.62,46.16 |only if haveq(89276) or completedq(89276)
turnin Diminutive Demand##91993 |goto Eversong Woods M/0 42.62,46.16 |only if haveq(91993) or completedq(91993)
turnin Minding Our Duty##89278 |goto Eversong Woods M/0 42.62,46.16 |only if haveq(89278) or completedq(89278)
turnin Illuminate the Space##89277 |goto Eversong Woods M/0 42.62,46.16 |only if haveq(89277) or completedq(89277)
turnin Power Clean##91997 |goto Eversong Woods M/0 42.62,46.16 |only if haveq(91997) or completedq(91997)
turnin Pyrepetal Purposes##91994 |goto Eversong Woods M/0 42.62,46.16 |only if haveq(91994) or completedq(91994)
turnin What Horrible Magic##91995 |goto Eversong Woods M/0 42.62,46.16 |only if haveq(91995) or completedq(91995)
turnin Where Has the Wine Gone?##91992 |goto Eversong Woods M/0 42.62,46.16 |only if haveq(91992) or completedq(91992)
turnin Fit for a Magister##91996 |goto Eversong Woods M/0 42.62,46.16 |only if haveq(91996) or completedq(91996)
|only if haveq(90573,89276,91993,89278,89277,91997,91994,91995,91992,91996) or completedq(90573,89276,91993,89278,89277,91997,91994,91995,91992,91996)
step
talk Knight-Lord Sunguard##240835
turnin Less Lawless##91977 |goto Eversong Woods M/0 42.40,46.67 |only if haveq(91977) or completedq(91977)
turnin Hold the Watch##91972 |goto Eversong Woods M/0 42.40,46.67 |only if haveq(91972) or completedq(91972)
turnin Lightbloom Dimmed##91976 |goto Eversong Woods M/0 42.40,46.67 |only if haveq(91976) or completedq(91976)
turnin Fortify the Runestones: Blood Knights##90574 |goto Eversong Woods M/0 42.40,46.67 |only if haveq(90574) or completedq(90574)
turnin Sunfire to the Blade##91974 |goto Eversong Woods M/0 42.40,46.67 |only if haveq(91974) or completedq(91974)
turnin Chop It Down##91979 |goto Eversong Woods M/0 42.40,46.67 |only if haveq(91979) or completedq(91979)
turnin Taxing the Tideborne##91978 |goto Eversong Woods M/0 42.40,46.67 |only if haveq(91978) or completedq(91978)
turnin Hitting the Hammer##91971 |goto Eversong Woods M/0 42.40,46.67 |only if haveq(91971) or completedq(91971)
turnin Naga Blades##91978 |goto Eversong Woods M/0 42.40,46.67 |only if haveq(91973) or completedq(91973)
turnin That's Our Wood##91975 |goto Eversong Woods M/0 42.40,46.67 |only if haveq(91975) or completedq(91975)
|only if haveq(91977,91972,91976,90574,91974,91979,91978,91971,91973,91975) or completedq(91977,91972,91976,90574,91974,91979,91978,91971,91973,91975)
step
talk Ranger-Captain Dawnfletch##240836
turnin Put a Little Snap in Their Step##91986 |goto Eversong Woods M/0 42.87,46.42 |only if haveq(91986) or completedq(91986)
turnin Potted Lashers##91987 |goto Eversong Woods M/0 42.87,46.42 |only if haveq(91987) or completedq(91987)
turnin A Little Errand##91991 |goto Eversong Woods M/0 42.87,46.42 |only if haveq(91991) or completedq(91991)
turnin Lovely Plumage##91983 |goto Eversong Woods M/0 42.87,46.42 |only if haveq(91983) or completedq(91983)
turnin Sunset to Sea##91990 |goto Eversong Woods M/0 42.87,46.42 |only if haveq(91990) or completedq(91990)
turnin Ghostland Peppers##91989 |goto Eversong Woods M/0 42.87,46.42 |only if haveq(91989) or completedq(91989)
turnin Fortify the Runestones: Farstriders##90575 |goto Eversong Woods M/0 42.87,46.42 |only if haveq(90575) or completedq(90575)
turnin Sungrub Silk##91984 |goto Eversong Woods M/0 42.87,46.42 |only if haveq(91984) or completedq(91984)
turnin Windrunner Memorabilia##91985 |goto Eversong Woods M/0 42.87,46.42 |only if haveq(91985) or completedq(91985)
turnin Brightwing Conservation##91988 |goto Eversong Woods M/0 42.87,46.42 |only if haveq(91988) or completedq(91988)
|only if haveq(91986,91987,91991,91983,91990,91989,90575,91984,91985,91988) or completedq(91986,91987,91991,91983,91990,91989,90575,91984,91985,91988)
step
talk Vyrin the Supplier##240837
turnin Dangerous Showpieces##92002 |goto Eversong Woods M/0 42.82,45.64 |only if haveq(92002) or completedq(92002)
turnin One Smuggler to Another##92001 |goto Eversong Woods M/0 42.82,45.64 |only if haveq(92001) or completedq(92001)
turnin Artisanal Replicas##92003 |goto Eversong Woods M/0 42.82,45.64 |only if haveq(92003) or completedq(92003)
turnin A Bit of Bloodthistle##91999 |goto Eversong Woods M/0 42.82,45.64 |only if haveq(91999) or completedq(91999)
turnin Throw the Dice##92005 |goto Eversong Woods M/0 42.82,45.64 |only if haveq(92005) or completedq(92005)
turnin Fortify the Runestones: Shades of the Row##90576 |goto Eversong Woods M/0 42.82,45.64 |only if haveq(90576) or completedq(90576)
turnin Bring the Ruckus##92000 |goto Eversong Woods M/0 42.82,45.64 |only if haveq(92000) or completedq(92000)
turnin Shady Dealings##92004 |goto Eversong Woods M/0 42.82,45.64 |only if haveq(92004) or completedq(92004)
turnin We Need a Refill##92006 |goto Eversong Woods M/0 42.82,45.64 |only if haveq(92006) or completedq(92006)
turnin Begged, Borrowed, or Stolen##92007 |goto Eversong Woods M/0 42.82,45.64 |only if haveq(92007) or completedq(92007)
|only if haveq(92001,92002,92003,91999,92005,90576,92000,92004,92006,92007) or completedq(92001,92002,92003,91999,92005,90576,92000,92004,92006,92007)
step
Complete "Fortify the Runestones" at Saltheril's Soiree |q 93930/1
|tip You should have this complete from previous steps.
|only if haveq(93930)
step
talk Caeris Fairdawn##240838
turnin Courting Success##93930 |goto Eversong Woods M/0 43.46,47.42
|only if haveq(93930)
step
|gossip 135478,135479
|tip Click objects around Saltheril's Haven that are highlighted.
|tip For NPCs, click wine glasses on nearby tables and talk to them to serve them refreshments.
|tip Refreshments can be served once.
|tip Speak to the NPC inside the building to choose a song.
Tend to the Soiree's Cleaning and Entertainment |q 91966/1 |goto Eversong Woods M/0 42.52,47.59
|only if haveq(91966) or completedq(91966)
step
Wait for the Next Reset |complete not completedq("89276-89278",89285,89289,89307,89311,89314,90573,"90574-90576",91971,91972,"91974-91979","91983-91997","91999-92007")
|tip More quests will be available at that time.
]])
