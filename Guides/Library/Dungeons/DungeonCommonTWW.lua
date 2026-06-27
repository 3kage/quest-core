-- Bundled QuestCore guide
if not QuestCore then return end

QuestCore:RegisterGuide("Dungeon Guides\\The War Within Dungeons\\Ara-kara, City of Echoes",{
description="To complete this dungeon, you will need to kill the following bosses:\n\nAvanoxx\n"..
"Anub'zekt\nKi'katal the Harvester",
keywords={"TWW","War","Within","Avanoxx","Anub'zekt","Ki'katal","Harvester"},
condition_suggested=function() return level >= 77 end,
achieveid={40370},
mapid=2357,
patch='110002',
},[[
step
Prefer Video Guides?
|tip We have a comprehensive video guide covering the dungeon in detail from the perspective of M+
|tip Check it out here:
|popuptext youtu.be/U_-_fnaxeKw
Click Here To Continue The Text Guide |confirm
step
kill Avanoxx##213179 |goto City of Echoes/1 67.48,28.05
_EVERYONE_ |grouprole EVERYONE
|tip Stay out of webbing on ground, it applies a stacking debuff that will web you if it reached 10 stacks.	|grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Adds fixate on random players. Focus them and kill them quickly. They buff the boss if they get near her.	|grouprole DPS
_HEALER_ |grouprole HEALER
|tip The boss casts Alerting Shrill and Gossamer Onsalught, both cause ticking party wide damage. |grouprole HEALER
|tip The boss will occasionally do three quick attacks on the tank and then cause them to take increased damage for 10 seconds. Use heavy healing and cooldowns to keep the tank alive. |grouprole HEALER
_TANK_ |grouprole TANK
|tip The boss will occasionally do three quick attacks on you causing you to take increased damage for 10 seconds after. Use defensive cooldowns to survive this. |grouprole TANK
|tip The adds fixate random targets and cannot be tanked, however the boss is temporarily buffed if adds get near the boss. Keep boss away from adds at all cost, and use a defensive cooldowns if the boss consumes an add |grouprole TANK
confirm
step
kill Anub'zekt##215405 |goto City of Echoes/1 16.67,39.17
_EVERYONE_ |grouprole EVERYONE
|tip Stay away from the swarms that move around the arena, they inflict a stacking dot to nearby players |grouprole EVERYONE
|tip Dodge the impale, a frontal cone that ripples out from the boss. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Ranged dps can be targeted by the Burrowing Charge. Stay at max range from the boss and be prepared to dodge this attack. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip Random players will be targeted by infestation, causing damage over time that will need to healed. The swarm that spawns after will apply a stacking dot to nearby players. |grouprole HEALER
|tip Try to not be the furthest away player from the boss so you aren't targeted by Burrowing Charge |grouprole HEALER
_TANK_ |grouprole TANK
|tip Face the boss away from the group to keep the group from being hit by impale, a frontal cone attack. This attack will knock you back. |grouprole TANK
confirm
step
kill Ki'katal the Harvester##215407 |goto City of Echoes/0 46.68,55.95
_EVERYONE_ |grouprole EVERYONE
|tip When the boss casts Cosmic Singularity, it will pull all players toward it and eventually explode dealing heavy damage. Use movement abilities and run away from it. |grouprole EVERYONE
|tip Avoid stepping in the black blood pools on the ground that the adds drop. It will root you in place. |grouprole EVERYONE
|tip Avoid the erupting webs. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip You can free players caught in the black blood pool immobilization by killing the grasping blood. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip The boss will inflict a poison on the party. Dispel this if you can and heal players affected. |grouprole HEALER
confirm
]])
QuestCore:RegisterGuide("Dungeon Guides\\The War Within Dungeons\\City of Threads",{
description="To complete this dungeon, you will need to kill the following bosses:\n\nOrator Krix'vizk\n"..
"Fangs of the Queen\nThe Coaglamation\nIzo, the Grand Splicer",
keywords={"TWW","War","Within","Orator","Krix'vizk","Fangs","Queen","Nx","Vx","Kx","Coaglamation","Izo","Grand","Splicer"},
condition_suggested=function() return level >= 80 end,
achieveid={40376},
mapid=2343,
patch='110002',
},[[
step
Prefer Video Guides?
|tip We have a comprehensive video guide covering the dungeon in detail from the perspective of M+
|tip Check it out here:
|popuptext youtu.be/fnL2CYbLJT0
Click Here To Continue The Text Guide |confirm
step
kill Orator Krix'vizk##216619 |goto City of Threads/1 59.85,26.79
_EVERYONE_ |grouprole EVERYONE
|tip Stay within ten yards of the boss at all times to avoid ticking damage. |grouprole EVERYONE
|tip When the boss casts Vociferous Indoctrination, keep moving to avoid the pools on the ground. |grouprole EVERYONE
|tip Spread out around the boss to better avoid his frontal cone attack. |grouprole EVERYONE
_HEALER_ |grouprole HEALER
|tip The party will take heavy damage during Vociferous Indoctrination, especially if people take damage from the pools. |grouprole HEALER
|tip The boss places a magic dot on a random player. When this expires or is dispelled, there will be an explosion outward from the player that does heavy damage and stuns anyone hit.  |grouprole HEALER
_TANK_ |grouprole TANK
|tip Subjugate causes heavy damage and applies a slow to you. This damage is half magical, half physical. |grouprole TANK
confirm
step
kill Nx##216648
kill Vx##216649
kill Kx##216582 |goto City of Threads/1 70.38,48.87
_EVERYONE_ |grouprole EVERYONE
|tip In the first phase, avoid the frontal cone from Nx, and the ice daggers from Vx. |grouprole EVERYONE
|tip Both bosses will charge at a random player. Everyone should stay clear of both paths. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Health is shared between the bosses. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip In the first phase, most damage is avoidable. In the second phase, the boss will occasionally do a heavy attack on the tank and the group. Nx will also do damage to a random player periodically. |grouprole HEALER
_TANK_ |grouprole TANK
|tip In the first phase, when Nx does a frontal cone, it will leave a shadow that will echo the attack later. Move the boss away from the shade. |grouprole TANK
|tip In the second phase, stack with at least one other player with the Freezing Blood debuff to prevent damage and being frozen. |grouprole TANK
confirm
step
kill The Coaglamation##216320 |goto City of Threads/0 49.91,47.01
_EVERYONE_ |grouprole EVERYONE
|tip Players will need to intercept the orbs that move towards the boss to prevent them from empowering it. They will apply a debuff that absorbs healing, so players should avoid grabbing too many without defensive cooldowns or heavy healing.	|grouprole EVERYONE
_HEALER_ |grouprole HEALER
|tip When the boss reaches max energy, it will do heavy group wide damage. |grouprole HEALER
|tip Players that pick up orbs will need to be pumped heals to remove the debuff. |grouprole HEALER
_TANK_ |grouprole TANK
|tip The boss has a heavy attack that will reduce healing received for 10 seconds. Use defensive abilities to mitigate this period. |grouprole TANK
confirm
step
kill Izo the Grand Splicer##216658 |goto City of Threads/0 49.91,78.60
_EVERYONE_ |grouprole EVERYONE
|tip Avoid the spheres around the room, they deal heavy damage and knockback when touched. |grouprole EVERYONE
|tip Move away from the boss during the Tremor Slam. This will spawn adds that need to be killed as well. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Switch to the webs to free party members when the boss webs the group. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip The boss will cast Splice to deal heavy damage to the whole party. |grouprole HEALER
_TANK_ |grouprole TANK
|tip The boss will channel a heavy attack on you that pulses three times and damage those near you. Stay away from the group and use defensive cooldowns to survive. |grouprole TANK
confirm
]])
QuestCore:RegisterGuide("Dungeon Guides\\The War Within Dungeons\\The Dawnbreaker",{
description="To complete this dungeon, you will need to kill the following bosses:\n\nSpeaker Shadowcrown\n"..
"Anub'ikkaj\nRasha'nan",
keywords={"TWW","War","Within","Speaker","Shadowcrown","Anub'ikkaj","Rasha'nan"},
condition_suggested=function() return level >= 80 end,
achieveid={40599},
mapid=2359,
patch='110002',
},[[
step
Prefer Video Guides?
|tip We have a comprehensive video guide covering the dungeon in detail from the perspective of M+
|tip Check it out here:
|popuptext youtu.be/hksmWdW90E0
Click Here To Continue The Text Guide |confirm
step
kill Speaker Shadowcrown##211087 |goto The Dawnbreaker/0 44.29,23.67
_EVERYONE_ |grouprole EVERYONE
|tip Pick up orbs in the sky to extend the duration of the Radiant Light buff that protects you from the Enroaching Shadows. |grouprole EVERYONE
|tip When the boss hits 50% and 1% health she will become immune to damage and channel a spell to kill anyone on the Dawnbreaker ship. |grouprole EVERYONE
|tip Avoid Collapsing Darkness zones on the ground. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Interrupt shadow bolts as often as possible. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip A player will be afflicted by a magic DOT that applies another debuff to others when dispelled. |grouprole HEALER
_TANK_ |grouprole TANK
|tip When the boss casts Obsidian Blast, prepare for heavy damage. |grouprole TANK
confirm
step
kill Anub'ikkaj##211089 |goto The Dawnbreaker/0 39.30,41.06
_EVERYONE_ |grouprole EVERYONE
|tip Kill the nerubian lieutenants prior to fighting the boss to remove the buffs that empower the boss. |grouprole EVERYONE
|tip The dark orb inflicts less damage to the party the further it is allowed to travel. |grouprole EVERYONE
_HEALER_ |grouprole HEALER
|tip When the boss casts shadowy decay, it does heavy group damage that cannot be avoided. |grouprole HEALER
_TANK_ |grouprole TANK
|tip The boss does a heavy attack the damages and knocks you back, and the same to anyone near you. Use a defensive ability to mitigate this and stay away from the group. |grouprole TANK
confirm
step
kill Rasha'nan##224552 |goto The Dawnbreaker/0 39.69,46.51
_EVERYONE_ |grouprole EVERYONE
|tip Players need to pick up the bombs on the ship and throw them at the boss by moving near him and using the extra action button. |grouprole EVERYONE
|tip The boss will fly away, players need to mount up and chase the boss down and interrupt its cast. Pick up the light orbs along the way and stay near the zeppelin.	|grouprole EVERYONE
|tip If targeted by the acid wave, move it to the sides of the area. The wave will move in the direction from the thin light green line to the wide darker green area. |grouprole EVERYONE
|tip In the final phase, if tethered to a webbed victim, move away to break the tether. |grouprole EVERYONE
_HEALER_ |grouprole HEALER
|tip Heal through the group wide damage of the Erosive Spray |grouprole HEALER
_TANK_ |grouprole TANK
|tip The boss will do heavy damage if no one is in melee range at all times.|grouprole TANK
confirm
]])
QuestCore:RegisterGuide("Dungeon Guides\\The War Within Dungeons\\Cinderbrew Meadery",{
description="To complete this dungeon, you will need to kill the following bosses:\n\nBrew Master Aldryr\n"..
"I'pa\nBenk Buzzbee\nGoldie Baronbottom",
keywords={"TWW","War","Within","Brew","Master","Aldryr","I'pa","Benk","Buzzbee","Goldie","Baronbottom"},
condition_suggested=function() return level >= 80 end,
achieveid={40361},
mapid=2335,
patch='110002',
},[[
step
kill Brew Master Aldryr##210271 |goto Cinderbrew Meadery/0 44.38,52.12
_EVERYONE_ |grouprole EVERYONE
|tip During happy hour, players need to bring mugs of cinderbrew from the table near the boss to roudy patrons around the room |grouprole EVERYONE
|tip Avoid pools of hot honey on the ground. |grouprole EVERYONE
|tip Avoid the frontal cone |grouprole EVERYONE
_HEALER_ |grouprole HEALER
|tip Players will randomly be afflicted by a DOT that drops a pool. |grouprole HEALER
_TANK_ |grouprole TANK
|tip The boss has a heavy attack that knocks you back and leaves a pool on the ground. |grouprole TANK
confirm
step
kill I'pa##210267 |goto Cinderbrew Meadery/0 41.37,23.74
_DPS_ |grouprole DPS
|tip Kill the Brew Drops on the ground to turn them back into pools before they reach the boss.	|grouprole DPS
_HEALER_ |grouprole HEALER
|tip The boss applies a heawvy fire damage DoT to random players periodically. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Move the boss away from Brew Drops and the brew pools to keep them from reaching the boss. |grouprole TANK
|tip The boss has heavy Uppercut attack that will knock you back. |grouprole TANK
confirm
step
kill Benk Buzzbee##218000 |goto Cinderbrew Meadery/0 52.55,76.23
_EVERYONE_ |grouprole EVERYONE
|tip The boss drops barrels that need to be avoided. The barrels spawn bee adds that can be mounted when they reach 1 hp, and subsequently launched towards the barrels to destroy them. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip DPS the bee adds and help launch them at barrels. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip The boss has a gust that pushes all players back and deals group wide damage. |grouprole HEALER
_TANK_ |grouprole TANK
|tip The boss will do a heavy attack on the tank that apply a debuff that explodes on nearby players and leaves pool when it expires. |grouprole TANK
confirm
step
kill Goldie Baronbottom##218523 |goto Cinderbrew Meadery/0 54.67,52.85
_EVERYONE_ |grouprole EVERYONE
|tip The boss spawns explosive barrels that do group wide damage when detonated. |grouprole EVERYONE
|tip When the boss reaches full energy, she will detonate all remaining barrels at once. It is critical to ignite some barrels by standing near them to stagger the damage throughout the fight and prevent them from all exploding at once. |grouprole EVERYONE
_HEALER_ |grouprole HEALER
|tip The group will need heavy healing whenever a barrel explodes. If multiple barrels explode at once the damage will be significant. |grouprole HEALER
_TANK_ |grouprole TANK
|tip The boss has a frontal cone that deals heavy damage and can ignite barrels. |grouprole TANK
confirm
]])
QuestCore:RegisterGuide("Dungeon Guides\\The War Within Dungeons\\Darkflame Cleft",{
description="To complete this dungeon, you will need to kill the following bosses:\n\nOl' Waxbeard\n"..
"Blazikon\nThe Candle King\nThe Darkness",
keywords={"TWW","War","Within","Ol'","Waxbeard","Blazikon","Candle","King","Darkness"},
condition_suggested=function() return level >= 80 end,
achieveid={40427},
mapid=2303,
patch='110002',
},[[
step
kill Ol' Waxbeard##210149 |goto Darkflame Cleft/0 22.57,20.36
_EVERYONE_ |grouprole EVERYONE
|tip Most of Waxbeard's abilities will kill the kobolds they collide with. Avoid the minecarts and charges and guide kobolds into their paths. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Adds will fixate on a ranged player targeted by Luring Candleflame. Keep away from them and lure them into the boss's abilities. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip Priority heal target's marked with Luring Candleflame. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Use a defensive ability when the boss uses rock buster. |grouprole TANK
confirm
step
kill Blazikon##208743 |goto Darkflame Cleft/0 41.40,41.14
_EVERYONE_ |grouprole EVERYONE
|tip Keep candles lit with by moving near them during Wicklighter Barrage in order to leave safe space for Enkindling Inferno. |grouprole EVERYONE
|tip Move near a lit candle when the boss casts Enkindling Inferno. |grouprole EVERYONE
_TANK_ |grouprole TANK
|tip The boss will do a deadly attack if no one is in melee range. |grouprole TANK
confirm
step
kill The Candle King##222096 |goto Darkflame Cleft/0 41.37,86.49
_EVERYONE_ |grouprole EVERYONE
|tip If targeted by Darkflame Pickaxe or Throw Darkflame, hide behind a wax statue to destroy it instead. Don't go within 2 yards of the statues or you will be stunned. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Interrupt Paranoid Mind to prevent the group from being feared. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip The group will take increased periodic damage to the whole group for each was statue that is still alive. |grouprole HEALER
confirm
step
kill The Darkness##210797 |goto Darkflame Cleft/0 81.62,74.76
_EVERYONE_ |grouprole EVERYONE
|tip The key to this fight is to stay near the candle at all times and keep it lit as long as possible. The candle lose heat the longer players are near them, and can be moved around. |grouprole EVERYONE
|tip Avoid baiting the boss's abilities on to the candles as they will remove their heat. Pick up the candle and move it to avoid it being hit. |grouprole EVERYONE
|tip Use lumps of wax from dead candlebearers to add heat to candles. |grouprole EVERYONE
|tip Avoid letting the candle reach 0 heat. It can be relit with wax, but each time it reaches 0 it will cause group wide damage and increase damage taken and reduce haste for the remainder of the fight. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Kill the Darkspawn before they can reduce the heat from the candles. |grouprole DPS
confirm
]])
QuestCore:RegisterGuide("Dungeon Guides\\The War Within Dungeons\\Priory of the Sacred Flame",{
description="To complete this dungeon, you will need to kill the following bosses:\n\nCaptain Dailcry\n"..
"Baron Braunpyke\nPrioress Murrpray",
keywords={"TWW","War","Within","Captain","Dailcry","Baron","Braunpyke","Prioress","Murrpray"},
condition_suggested=function() return level >= 75 end,
achieveid={40590},
mapid=2308,
patch='110002',
},[[
step
kill Captain Dailcry##207946 |goto Priory of the Sacred Flame/0 36.75,54.59
_EVERYONE_ |grouprole EVERYONE
|tip The boss's guards deal increased damage for each other nearby guard. |grouprole EVERYONE
|tip Avoid the boss's spear throw attack. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip When the boss's mount mauls a player, it can be interrupted by doing sufficient damage to it. |grouprole DPS
|tip Interrupt the boss's battle cry is essential or the fight will become progressively more dangerous.  |grouprole DPS
_HEALER_ |grouprole HEALER
|tip Dispel the Cinderblast debuff if the add does not get interrtupted. |grouprole HEALER
_TANK_ |grouprole TANK
|tip The boss applies a stacking bleed on to the tank. It may be necessary to try to let the stacks fall off before they get too high. |grouprole TANK
|tip The paladin add's divine judgement causes you to take 25% increased damage for 6 seconds, be prepared to mitigate the increased damage. |grouprole TANK
confirm
step
kill Baron Braunpyke##207939 |goto Priory of the Sacred Flame/1 83.98,48.60
_EVERYONE_ |grouprole EVERYONE
|tip Once the boss reaches full energy, he will cast vindictive wrath and gain 25% increased damage and his spells will target more players. |grouprole EVERYONE
|tip If his shield attack bounces to you, move out of the subsequent explosion on the ground underneath you. |grouprole EVERYONE
|tip Avoid the hammers of purity. There will be many more of these to avoid after the bosses use vindictive wrath. |grouprole EVERYONE
|tip Players need to the need the Sacred Pyres to drain them of all of their stacks before they expire. This causes stacking holy damage so be careful not to take too many stacks at once.|grouprole EVERYONE
_HEALER_ |grouprole HEALER
|tip Players that take stacks from the sacred pyres will need extra healing. |grouprole HEALER
confirm
step
kill Prioress Murrpray##207940 |goto Priory of the Sacred Flame/1 25.27,56.85
_EVERYONE_ |grouprole EVERYONE
|tip When she cast's Blinding Light, turn your character away from the boss to prevent being blinded |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Interrupt the boss's Holy Smite as often as possible. |grouprole DPS
|tip When the boss cast's barrier of light, get to her and damage her shield quickly and interrupt her cast when the shield is down. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip The group will take heavy damage when the boss gets to 50% health and casts Inner Fire |grouprole HEALER
|tip Cleanse Holy Flame to reduce damage |grouprole HEALER
confirm
]])
QuestCore:RegisterGuide("Dungeon Guides\\The War Within Dungeons\\The Rookery",{
description="To complete this dungeon, you will need to kill the following bosses:\n\nKyrioss\n"..
"Stormguard Gorren\nVoidstone Monstrosity",
keywords={"TWW","War","Within","Kyrioss","Stormguard","Gorren","Voidstone","Monstrosity"},
condition_suggested=function() return level >= 71 end,
achieveid={40621},
mapid=2315,
patch='110002',
},[[
step
kill Kyrioss##209230 |goto The Rookery/4 49.55,50.39
_EVERYONE_ |grouprole EVERYONE
|tip Break line of sight with your group if targeted by unstable charge. You can drop into the hole in the middle of the room for this. |grouprole EVERYONE
|tip Dodge The Lightning Dash and Lightning Torrent abilities. |grouprole EVERYONE
_HEALER_ |grouprole HEALER
|tip The boss casts a chain lightning that will deal heavy damage if the group is not spread out. |grouprole HEALER
confirm
step
kill Stormguard Gorren##207205 |goto The Rookery/2 55.64,62.84
_EVERYONE_ |grouprole EVERYONE
|tip The Chaotic Corruption debuff will bounce to the nearest party member when it expires. This also causes an explosion if other players are too close when the effect expires. |grouprole EVERYONE
|tip Move away when the boss tries to pull everyone in. |grouprole EVERYONE
|tip Avoid the Crush Reality and the subsequent pools of void and tornadoes that shoot from it. |grouprole EVERYONE
confirm
step
kill Voidstone Monstrosity##207207 |goto The Rookery/1 56.96,54.88
_EVERYONE_ |grouprole EVERYONE
|tip Players empowered by Stormrider's charge can shatter Seeping Fragments by standing near them. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Destroy Void Chunks before their finish casting Reshape |grouprole DPS
_TANK_ |grouprole TANK
|tip The boss does a heavy attack in a line targeting the tank, avoid hitting other players. |grouprole TANK
|tip The boss deals heavy damage to all players if no one is in melee range. |grouprole TANK
confirm
]])
QuestCore:RegisterGuide("Dungeon Guides\\The War Within Dungeons\\The Stonevault",{
description="To complete this dungeon, you will need to kill the following bosses:\n\nE.D.N.A\n"..
"Skarmorak\nSpeaker Dorlita\nSpeaker Brokk\nVoid Speaker Eirich",
keywords={"TWW","War","Within","E.D.N.A","Skarmorak","Speaker","Dorlita","Brokk","Void","Eirich"},
condition_suggested=function() return level >= 73 end,
achieveid={40643},
mapid=2341,
patch='110002',
},[[
step
Prefer Video Guides?
|tip We have a comprehensive video guide covering the dungeon in detail from the perspective of M+
|tip Check it out here:
|popuptext youtu.be/XXfqP0CB4c4
Click Here To Continue The Text Guide |confirm
step
kill E.D.N.A##210108 |goto The Stonevault/0 56.35,35.58
_EVERYONE_ |grouprole EVERYONE
|tip When targeted by the Refracting Beam, stand behind a Volatile Spike to destroy it. |grouprole EVERYONE
|tip Volatile Spikes will also detonate if anyone comes to close to them, causing group wide damage. |grouprole EVERYONE
_HEALER_ |grouprole HEALER
|tip Dispel Seismic Reverberation from the tank to remove the DoT and give them a temporary earth shield, reducing further damage for 3 seconds. |grouprole HEALER
_TANK_ |grouprole TANK
|tip The boss's Seismic Smash causes a heavy burst of damage to the tank and leaves a heavy DoT as well. |grouprole TANK
confirm
step
kill Skarmorak##210156 |goto The Stonevault/0 79.09,36.42
_EVERYONE_ |grouprole EVERYONE
|tip Avoid Crystal Shards as they land around the room. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Destroy the crystal shards to create void fragments that you will need to pick up. |grouprole DPS
|tip Pick up Void Fragments to deal additional damage to Crumbling Shell. The buff stacks, but deals more damage to you with each stack. |grouprole DPS
|tip Destroy the crumbling shell before the damage overwhelms the group. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip The boss does a heavy party wide attack that does progressively more damage over the course of the fight. |grouprole HEALER
|tip Picking up void fragments to increase your healing. Don't take too many because the dps need them to destroy the shell quickly. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Crystalline Smash deals heavy damage to the tank. |grouprole TANK
confirm
step
kill Speaker Dorlita##221586
kill Speaker Brokk##213217 |goto The Stonevault/0 31.88,64.67
_EVERYONE_ |grouprole EVERYONE
|tip The remaining boss pulses heavy group damage and deals 75% increased damage if the other is killed. |grouprole EVERYONE
|tip Avoid the flame vents while they are activated. |grouprole EVERYONE
|tip Avoid the path of the scrap cube. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Interrupt Molten Metal as often as possible. |grouprole DPS
|tip Kill bosses evenly to prevent the remaining boss from being buffed. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip When the Scrap Cube is detonated, the group takes heavy damage even when splinters are avoided. |grouprole HEALER
|tip Dispel molten metal to mitigate damage coming in. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Mitigate the Molten Hammer attack, which deals heavy volcanic damage. |grouprole TANK
confirm
step
kill Void Speaker Eirich##219440 |goto The Stonevault/0 56.41,66.01
_EVERYONE_ |grouprole EVERYONE
|tip Players infected by Void Corruption will take a progressively increasing DOT until they move near a void rift. |grouprole EVERYONE
|tip Moving to the center of the void rift will instead kill the player. |grouprole EVERYONE
|tip When the boss casts Entropic Reckoning, all players need to move to the edge of the room to drop pools where they wont be in the way. |grouprole EVERYONE
|tip Avoid the boss's cone attack. |grouprole EVERYONE
confirm
]])
QuestCore:RegisterGuide("Dungeon Guides\\The War Within Raids\\Nerub-Ar Palace",{
},[[
step
kill Ulgrax the Devourer##228713
_EVERYONE_ |grouprole EVERYONE
|tip Split your raid for soaking Carnivorous Contest and run against the pull.
|tip Dodge Stalker’s Webbing or you will need to be broken out of your webbing.
|tip Watch out for Juggernaut Charge in the intermission, the boss will charge through a large section of the room indicated by dark portals on the edge of the arena
_DPS_ |grouprole DPS
|tip Help raid members trapped in webbing and avoid getting webbed. During the intermission let tanks get threat and help feed the boss. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip Spot heal players with Digestive Acid, be ready to heal the entire group during the intermission. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Face the boss away from the group for Brutal Crush. |grouprole TANK
|tip Taunt swap to reset stacks of Tenderized as needed. |grouprole TANK
|tip The adds have a stacking debuff they apply on melee you must watch for. Group the adds without endangering your raid in the intermission. |grouprole TANK
confirm
step
kill The Bloodbound Horror##214502
_EVERYONE_ |grouprole EVERYONE
|tip Split your group for Gruesome Disgorge, have half your raid stand in the frontal cone each time to be able to kill the adds. |grouprole EVERYONE
|tip Run away for Goresplatter, you will take some damage crossing the blood pool. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip After being hit with Gruesome Disgorge focus the Forgotten Harbingers and make sure the Blood Horrors they spawn do not reach the boss. |grouprole DPS
|tip Be mindful of where you are placing your Grasp From Beyond tentacles to not cut off or kill other players. |grouprole DPS
|tip Kick the Lost Watcher’s Black Bulwark cast which shields the boss. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip Crimson Rain applies a healing absorb to players, make sure your UI clearly displays when a healing absorb is present and be ready to heal it off. |grouprole HEALER
|tip After Gruesome Disgorge you will find yourself in a small group healing environment. Identify the tank and players you are responsible for and focus healing on them. |grouprole HEALER
|tip After being hit with Gruesome Disgorge help prevent the Blood Horrors from reaching the boss with crowd control. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Gruesome Disgorge is positioned by the tank. Position the Disgorge for players to stack inside. Spewing Hemorrhage spawn from both 90 degree angles from the tank then spin counterclockwise. |grouprole TANK
|tip After being hit with Gruesome Disgorge you are responsible for tanking the Lost Watcher. Have a defensive ready for its Spectral Slam and position it on top of Forgotten Harbingers to help the group’s DPS. |grouprole TANK
|tip Kick the Lost Watcher’s Black Bulwark cast which shields the boss. |grouprole TANK
confirm
step
kill Sikran##219853
_EVERYONE_ |grouprole EVERYONE
|tip This encounter revolves around Phase Blades and the mechanics that interact with it. Make sure you know your raid’s strategy for this fight. |grouprole EVERYONE
|tip Dodge the Rain of Arrows and be ready for the Arrows to overlap with other mechanics. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Pre-positioning for Phase Blades and Decimate will help decrease the chaos on this fight, use your defensives liberally when targeted by these mechanics. |grouprole DPS
_HEALER_  |grouprole HEALER
|tip The group will take increasing rot damage as Cosmic Simulacrums accumulate. This damage will spike as the Simulacrums are destroyed. |grouprole HEALER
|tip Shattering Sweep will happen a few times throughout the fight and the group will require a large amount of healing. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Captain’s Flourish is the tank swap mechanic on this fight and has a specific timing element to successfully doing it. |grouprole TANK
|tip Sikran will cast 2 Exposes followed by a Phase Lunge. You should be taunting during the Phase Lunge cast and holding the boss until the next Captain’s Flourish.|grouprole TANK
confirm
step
kill Rasha’nan##224552
_EVERYONE_ |grouprole EVERYONE
|tip Because the boss starts at 60% health, executes talents and abilities are very good on this fight. |grouprole EVERYONE
|tip Rasha’nan will transition into different parts of the room during the fight, be ready to chase her down and interrupt Acid Eruption. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip When targeted by Infested Spawn move near the tanks to spawn your adds in range of them. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip Erosive Spray will deal heavy group damage throughout the fight, this damage will linger because of Lingering Erosion. |grouprole HEALER
|tip Players that get targeted by Spinneret’s Strands, Rolling Acid and Infested Spawn will require extra healing. |grouprole HEALER
_TANK_ |grouprole TANK
|tip When Infested Spawn go out on the raid be ready to pick up the adds these players will spawn. |grouprole TANK
|tip Be prepared to use any mitigation abilities against Savage Assault.  |grouprole TANK
confirm
step
kill Broodtwister Ovi’nax##214506
_EVERYONE_ |grouprole EVERYONE
|tip Similar to Sikran your group’s specific strategy for this encounter will be very important so make sure you are familiar with how your raid wants to handle this fight. |grouprole EVERYONE
|tip Avoid the Blood Parasites when they fixate you, letting them reach you will spawn an additional Parasite after a DoT. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Voracious Worms will cast Poison Burst which should be kicked. |grouprole DPS
|tip Help crowd control the Blood Parasites so they can be quickly killed. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip Players targeted by Experimental Dosage will need extra healing to remove the heal absorb. |grouprole HEALER
|tip The entire raid will take damage and have a heal absorb applied to them when Ovi’nax reaches full energy and ingests Black Blood. |grouprole HEALER
|tip Volatile Concoction is a potentially lethal tank mechanic you should watch for. When the primary tank has the DoT make sure they are healthy when it expires. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Gathering the Blood Parasites, positioning the boss and Colossal Spiders on top of Voracious Worms for efficient cleave are important on this fight. |grouprole TANK
|tip The boss as a whole is very positioning intensive. Positioning the boss with what eggs your raid are about to break in mind or forced movement the boss may be doing will go a long way. |grouprole TANK
|tip Volatile Concoction deals heavy Magic damage over the course of 8 seconds. At the end of the debuff you will take more damage based on your missing health, use defensives to stay healthy through the DoT until the end. |grouprole TANK
confirm
step
kill Nexus-Princess Ky’veza##228470
_EVERYONE_ |grouprole EVERYONE
|tip Falling below 10% health on this boss causes her to attempt to execute you. |grouprole EVERYONE
|tip Minimize your movement with Regicide during the Intermissions to let your raid position around you. |grouprole EVERYONE
|tip Follow your raid’s plan for where to go when you are targeted by Assassination. Assassination deals a large amount of damage and leaves a heavy DoT, use a defensive for this damage. |grouprole EVERYONE
|tip
_HEALER_ |grouprole HEALER
|tip The raid will take heavy damage during Starless Night. |grouprole HEALER
|tip Players targeted with the Queensbane debuff will require extra healing to stay alive, there is a large burst of damage at the end of the DoT they must be healthy enough to live through. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Keep track of you and your co-tanks Chasmal Gash stacks from the bosses Void Shredder to determine who should be tanking the boss. |grouprole TANK
confirm
step
kill Anub'arash##223779
_EVERYONE_ |grouprole _EVERYONE_
|tip Help crowd control and group up the Shattershell Scarabs throughout Phase 1 and 2. |grouprole _EVERYONE_
|tip Avoid Impaling Eruption from Anub’arash and help break anyone free who does get Impaled. |grouprole _EVERYONE_
|tip Be ready to spread from players with Venomous Rain. |grouprole _EVERYONE_
_DPS_ |grouprole _DPS_
|tip In Phase 1 when Anub’arash’s Reckless Charge is successfully stopped he takes 100% increased damage for 7 seconds. |grouprole _DPS_
|tip In Phase 2 Takazj takes 150% increased damage for 5 seconds after successfully having the 3 Stinging Swarms dispelled onto her. |grouprole _DPS_
|tip In Phase 3 both these mechanics will happen. |grouprole _DPS_
|tip Both Intermissions end when the shield on the center boss is broken. |grouprole _DPS_
_HEALER_ |grouprole _HEALER_
|tip Both Intermissions will do consistent rot damage to the entire raid. |grouprole _HEALER_
|tip Players that get Entangled will take continuous damage and must be kept alive. |grouprole _HEALER_
|tip Stinging Swarm which starts in Phase 2 is a very important healer mechanic. The Swarms must be dispelled onto Takazj once she has jumped to the middle and begun casting Cataclysmic Entropy. |grouprole _HEALER_
|tip Each debuff dispelled will deal damage to the whole raid. The players with Stinging Swarm will take increased damage from all mechanics and must be kept alive. |grouprole _HEALER_
|tip Unleashed Swarm which occurs only in the final phase will deal a heavy ramping amount of raid damage. |grouprole _HEALER_
_TANK_ |grouprole _TANK_
|tip Both bosses have forced movement moments you should be ready to adapt to. |grouprole _TANK_
|tip Both bosses have a frontal cast that will aim at the largest clump of players. |grouprole _TANK_
|tip Keep track of you and your co-tanks Piercing Strike stacks to determine who should be tanking Anub’arash. |grouprole _TANK_
confirm
]])
QuestCore:RegisterGuide("Dungeon Guides\\The War Within Raids\\Liberation of Undermine",{
},[[
step
kill Vexie Fullthrottle##225822 |goto Liberation of Undermine/0 46.92,45.55
_EVERYONE_ |grouprole EVERYONE
|tip All stacks of {o}Protective Plating{} must be removed within 2 minutes. |grouprole EVERYONE
|tip Assign people to use the bikes left behind from Geargrinder Biker adds, aiming them at the boss to remove plating stacks. |grouprole EVERYONE
|tip Drop {o}Oil Slicks{} indicated by purple circles around the outside of the encounter area. |grouprole EVERYONE
|tip Use {o}Incendiary Fire{} to clear oil if targeted. |grouprole EVERYONE
|tip Avoid running bikes over oil. |grouprole EVERYONE
|tip Interrupt and CC {o}Pit Mechanic{} mobs immediately during phase 2 to prevent boss healing. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Save DPS cooldowns for the burn phase when {o}Protective Plating{} is removed. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip Prepare for a tank swap and extra healing following {o}Tankbuster{} |grouprole HEALER
_TANK_ |grouprole TANK
|tip {o}Tankbuster{} deals massive damage and requires a tank swap each time. |grouprole TANK
confirm
step
kill Flarendo##229181 |goto Liberation of Undermine/0 50.14,18.65
kill Torq##229177
_EVERYONE_ |grouprole EVERYONE
|tip Coordinate soaking {o}Scrabombs{} and move lasers away from the group. |grouprole EVERYONE
|tip Avoid {o}Thunderdrum Salvo{} areas targeted on the ground. |grouprole EVERYONE
|tip When both bosses charge in the middle, avoid red and blue areas. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Both bosses must die at the same time. |grouprole DPS
|tip Cleave as much as possible when the bosses come together. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip The raid will take damage through the entire fight. |grouprole HEALER
|tip When the bosses converge in the middle, the entire raid will take damage. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Tank the bosses separated across the arena to avoid overlapping debuff auras. |grouprole TANK
|tip {o}Eruption Stomp{} and {o}Lightning Bash{} deal heavy magic damage. |grouprole TANK
|tip Manage {o}Static Charge{} tanking Torq by moving to increase it and standing still to decrease it. |grouprole TANK
confirm
step
kill Rik Reverb##228652 |goto Liberation of Undermine/0 36.15,19.01
_EVERYONE_ |grouprole EVERYONE
|tip Activate {o}Amplifiers{} to drain their energy and always keep them below 100 or the raid will wipe. |grouprole EVERYONE
|tip Use Amplifiers with blue rings to cause {o}Blowouts{} that knock players in the air and save them from {o}Blaring Drops{}. |grouprole EVERYONE
|tip Move away from {o}Resonant Echoes{} to avoid being hit. |grouprole EVERYONE
|tip When Rik is shielded, focusing on dodging projectiles and manipulating blue Amplifiers. |grouprole EVERYONE
_HEALER_ |grouprole HEALER
|tip Activating an Amplifier applies a DoT on the player. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Tank Rik facing away from the raid and tank swap after each {o}Sonic Blast{} cast. |grouprole TANK
confirm
step
kill Stix Bunkjunker##230322 |goto Liberation of Undermine/0 56.57,79.31
_EVERYONE_ |grouprole EVERYONE
|tip If targeted with {o}Rolling Rubbish{}, roll them over Garbage Piles and avoid players, bombs, or the boss. |grouprole EVERYONE
|tip Keep Garbage Piles under control to avoid them being turned into {o}Hot Garbage{} by AoE. |grouprole EVERYONE
|tip Interrupt {o}Scrap Rockets{} by Scrapmasters quickly. |grouprole EVERYONE
|tip Spread out around Junkyard Hyenas. |grouprole EVERYONE
|tip Prioritize absorbing {o}Discarded Doomsplosive{} with Rolling Rubbish when they appear. |grouprole EVERYONE
_HEALER_ |grouprole HEALER
|tip {o}Demolish{} will deal heavy magic damage to the tank. |grouprole HEALER
|tip After two garbage cycles, prepare for increased damage during {o}Overdrive{}. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Swap after each {o}Demolish{} cast and use cooldowns to reduce the magic damage. |grouprole TANK
confirm
step
kill Sprocketmonger Lockenstock##230583 |goto Liberation of Undermine/0 28.80,78.90
_EVERYONE_ |grouprole EVERYONE
|tip Avoid the two electrified areas of the arena and move with the pattern. |grouprole EVERYONE
|tip Dodge various invetions from the conveyer belt. |grouprole EVERYONE
|tip When pushed to the edge of the arena, fight against the conveyer belts and avoid inventions to reach the boss. |grouprole EVERYONE
|tip Warlock gateways and other transport abilities help with conveyer belts. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Drop {o}Screw Ups{} drills away from other players. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip {o}Sonic Ba-boom{} deals heavy damage to the entire raid. |grouprole HEALER
|tip When fighting against conveyer belts to reach the boss, the raid takes damage and healing is reduced. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Swap after {o}Gravi-Gunk{} and run away from the group before {o}Pyro Party Pack{} explodes to reduce group damage. |grouprole TANK
confirm
step
kill The One-Armed Bandit##228458 |goto Liberation of Undermine/2 49.90,49.03
_EVERYONE_ |grouprole EVERYONE
|tip {o}Reel Assistants{} drop various symbols which must be deposited in specific sequences to trigger mechanics. |grouprole EVERYONE
|tip A Shock Token and Flame token create a {o}Superheated Coil{}. |grouprole EVERYONE
|tip A Shock Token and Bomb Token create a {o}Dynamite-Laden Coil{}. |grouprole EVERYONE
|tip A Flame Token and Bomb Token create {o}Fiery Dynamite Booty Bots{}. |grouprole EVERYONE
|tip A Flame Token and Coin Token create a {o}One-Armed Bandit{}. |grouprole EVERYONE
|tip A Coin Token and Shock Token create a {o}Premium Currency Coil{}. |grouprole EVERYONE
|tip A Coin Token and Bomb Token create {o}Premium Dynamite Booty Bots{}. |grouprole EVERYONE
|tip Avoid standing in the path of objects and in areas targeted on the ground. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Save cooldowns for the enrage at 30%. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip The entire raid will be affected by healing absorbs and DoT damage at various points. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Tank swap for {o}The Big Hit{} casts. |grouprole TANK
|tip An enrage timer begins at 30% at which point the boss should be kited. |grouprole TANK
confirm
step
kill Mug’Zee##229953 |goto Liberation of Undermine/3 50.86,76.04
_EVERYONE_ |grouprole EVERYONE
|tip Split up between red and blue sides. |grouprole EVERYONE
|tip Moving most of the raid to one side will activate it. |grouprole EVERYONE
|tip Red side will handle Gaols, slippery movements, and Frostshatter Spears. |grouprole EVERYONE
|tip Blue Side detonate mines, soak split damage, and cleave adds. |grouprole EVERYONE
|tip Swap sides every 60 seconds to avoid overlapping the DoTs. |grouprole EVERYONE
|tip Dodge add abilities. |grouprole EVERYONE
|tip When affected by {o}Frostshatter Boots{}, dodging the following spear will take more care because it will be more difficult to start and stop. |grouprole EVERYONE
|tip During 40% intermission, dodge abilities and follow the boss rotation. |grouprole EVERYONE
|tip Drop {o}Goblin-guided Rocket{} pools at the edge away from players. |grouprole EVERYONE
|tip Use immunity or cooldowns to trigger {o}Unstable Crawler Mines{}. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Save cooldowns and burn down Mug'Zee before he reaches 100 energy after {o}Bloodlust{}. |grouprole DPS
|tip Kill adds quickly and interrupt {o}Pay Respects{}. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip The entire raid takes DoT damage consistently. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Tank swap after {o}Head Honcho{} and leave pools at the edge of the arena. |grouprole TANK
|tip Use a cooldown and stand in the path of {o}Double Whammy Shot{} |grouprole TANK
confirm
step
kill Chrome King Gallywix##241526 |goto Liberation of Undermine/4 52.57,77.49
_EVERYONE_ |grouprole EVERYONE
|tip Split the raid into two groups and share damage from the cone {o}Scatterblast Cannisters{} ability. |grouprole EVERYONE
|tip Move out of the raid during {o}Big Bad Buncha Bombs{} if targeted. |grouprole EVERYONE
|tip During the second phase (100 energy), bring Giga Bombs to {o}Giga Controls{}. |grouprole EVERYONE
|tip Avoid various AoE and area targeted abilites throughout the fight. |grouprole EVERYONE
|tip Ensure at least two players handle each {o}Fused Cannister{} to avoid a raid-wide heal debuff. |grouprole EVERYONE
|tip Ensure at least one player soaks each {o}Tick-Tock Cannister{}. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Kill {o}Darkfuse Technicians{} ASAP. |grouprole DPS
|tip At 50%, burn through the shield and interrupt {o}TOTAL DESTRUCTION!!!{} quickly. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip Extra healing will be required for tanks during {o}Trick Shots{}. |grouprole HEALER
|tip The final phase will require heavy healing. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Swap after {o}Scatterblast Cannisters{}. |grouprole TANK
|tip Swap during {o}Trick Shots{} and use cooldowns to manage the DoT. |grouprole TANK
|tip Use defenisives/swap during {o}Ego Check{} hits in phase 3. |grouprole TANK
confirm
]])
QuestCore:RegisterGuide("Dungeon Guides\\The War Within Dungeons\\Operation: Floodgate",{
},[[
step
kill Big M.O.M.M.A.##226398 |goto Operation: Floodgate/1 30.50,59.50
_EVERYONE_ |grouprole EVERYONE
|tip Use cooldowns for {o}Jumpstart{} during the damage bonus. |grouprole EVERYONE
|tip Move out of electrified areas on the ground. |grouprole EVERYONE
|tip Avoid the path of {o}Sonic Boom{} and aim it towards obstacles if targeted. |grouprole EVERYONE
|tip Avoid areas targeted by adds on the ground. |grouprole EVERYONE
|tip Interrupt {o}Maximum Distortion{} on Mechadrones every time if possible. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Kill adds when they spawn as top priority. |grouprole DPS
|tip The boss takes extra damage when adds die.
_HEALER_ |grouprole HEALER
|tip During {o}Jumpstart{}, the entire group will take damage. |grouprole HEALER
_TANK_ |grouprole TANK
|tip {o}Electrocrush{} deals heavy damage and leaves a DOT for 10 seconds. |grouprole TANK
confirm
step
kill Keeza Quickfuse##226403 |goto Operation: Floodgate/1 65.00,67.00
kill Bront##226402
_EVERYONE_ |grouprole EVERYONE
|tip Dispel {o}Kinetic Explosive Gel{} near {o}Ticking Timebombs{} following {o}Big Bada Boom{} to blow them up. |grouprole EVERYONE
|tip Aim {o}Barreling Charge{} towards {o}Ticking Timebombs{} quickly if targeted to clear them. |grouprole EVERYONE
|tip Avoid standing in {o}B.B.B.F.G.{} AoE areas. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip DPS bosses evenly to avoid a stacking enrage buff when one dies before the other. |grouprole DPS
_TANK_ |grouprole TANK
|tip Bront's {o}Wallop{} deals heavy damage and can be spammed if Keeza dies first. |grouprole TANK
|tip Position Bront near {o}Ticking Timebombs{} prior to his charge. |grouprole TANK
confirm
step
kill Swampface##226396 |goto Operation: Floodgate/1 51.20,73.00
_EVERYONE_ |grouprole EVERYONE
|tip You will be tethered to another player during the fight and your movement can affect your partner. |grouprole EVERYONE
|tip Coordinate to stay close enough together so your tether will not pull you, but far enough apart to avoid mechanics. |grouprole EVERYONE
|tip Dodge {o}Muckslide{} and {o}Rushing Tide{} with your partner when they occur. |grouprole EVERYONE
_HEALER_ |grouprole HEALER
|tip {o}Sludge Claws{} leaves a debuff that reduces healing on the tank. |grouprole HEALER
|tip The tether between players deals constant damage over the course of the fight. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Use cooldowns for {o}Sludge Claws{} to compensate for the healing debuff. |grouprole TANK
confirm
step
kill Geezle Gigazap##236950 |goto Operation: Floodgate/0 65.20,81.00
_EVERYONE_ |grouprole EVERYONE
|tip When Geezle's energy bar is low, expect basic attacks and when high, expect {o}Leaping Spark{} and {o}Gigazap{}. |grouprole EVERYONE
|tip During {o}Leaping Spark{}, lead the sparks into non-electified pools. |grouprole EVERYONE
|tip Only one spark can be neutralized per pool. |grouprole EVERYONE
|tip Dodge AoE during {o}Dam Rubble{} and avoid electrified pools. |grouprole EVERYONE
_DPS_ |grouprole DPS
_HEALER_ |grouprole HEALER
|tip Be prepared to heal heavily during {o}Turbo Charge{} and {o}Leaping Sparks{}. |grouprole HEALER
|tip {o}Thunder Punch{} leaves a DoT on the tank. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Keep Geezle away from water pools to avoid them being electrified. |grouprole TANK
|tip {o}Thunder Punch{} deals heavy damage and leaves a DoT. |grouprole TANK
confirm
]])
QuestCore:RegisterGuide("Dungeon Guides\\The War Within Delves\\Fungal Folly Treasures",{
description="This guide will show you the location of trasures in the Fungal Folly Delve",
mapid=2249,
patch='110000',
areapoiid={7864,7779},
},[[
step
click Sturdy Chest##455527
|tip On the ledge at water level.
Loot the Treasure |q 83702 |goto Fungal Folly/0 58.68,46.74 |future
step
click Sturdy Chest##455495
|tip At the bottom of the waterfall.
Loot the Treasure |q 83689 |goto Fungal Folly/0 34.45,65.63 |future
step
click Sturdy Chest##455516
|tip Use the mushrooms to reach the top platform.
Loot the Treasure |q 83671 |goto Fungal Folly/0 32.73,74.07 |future
step
click Sturdy Chest##454093
|tip In the water, at the bottom.
Loot the Treasure |q 83452 |goto Fungal Folly/0 49.59,35.97 |future
]])
QuestCore:RegisterGuide("Dungeon Guides\\The War Within Delves\\Kriegval's Rest Treasures",{
description="This guide will show you the location of trasures in the Kriegval's Rest Delve",
mapid=2250,
patch='110000',
areapoiid={7781,7865},
},[[
step
click Sturdy Chest##455510
|tip By the wall on the left.
Loot the Treasure |q 83665 |goto Kriegval's Rest/0 46.26,19.74 |future
step
click Sturdy Chest##455524
|tip On the scaffolding. Walk and jump up the scafolding from the left side.
Loot the Treasure |q 83698 |goto Kriegval's Rest/0 62.15,52.86 |future
step
click Sturdy Chest##455489
|tip Beneath the scaffolding in the corner.
Loot the Treasure |q 83683 |goto Kriegval's Rest/0 74.46,70.21 |future
step
click Sturdy Chest##455511
|tip Behind the left pillar.
Loot the Treasure |q 83666 |goto Kriegval's Rest/0 69.99,85.18 |future
]])
QuestCore:RegisterGuide("Dungeon Guides\\The War Within Delves\\The Dread Pit Treasures",{
description="This guide will show you the location of trasures in The Dread Pit Delve",
mapid=2302,
patch='110000',
areapoiid={7788,7867},
},[[
step
click Sturdy Chest##455482
|tip Behind the rocks.
Loot the Treasure |q 83677 |goto The Dread Pit/0 41.04,45.53 |future
step
click Sturdy Chest##455503
|tip On the corner of the ledge below.
Loot the Treasure |q 83658 |goto The Dread Pit/0 57.48,56.18 |future
step
click Sturdy Chest##455484
|tip On the ledge, behind the large rocks.
Loot the Treasure |q 83678 |goto The Dread Pit/0 57.85,27.66 |future
step
click Sturdy Chest##455504
|tip Behind the stalagmites.
Loot the Treasure |q 83659 |goto The Dread Pit/0 36.24,16.63 |future
]])
QuestCore:RegisterGuide("Dungeon Guides\\The War Within Delves\\The Waterworks Treasures",{
description="This guide will show you the location of trasures in The Waterworks Delve",
mapid=2251,
patch='110000',
areapoiid={7866,7782,8196},
},[[
step
click Sturdy Chest##455490
|tip Around the corner.
Loot the Treasure |q 83684 |goto The Waterworks/0 49.89,24.60 |future
step
click Sturdy Chest##455532
|tip In the water behind the waterfall.
Loot the Treasure |q 83650 |goto The Waterworks/0 44.36,38.29 |future
step
click Sturdy Chest##455512
|tip Under the scaffolding.
Loot the Treasure |q 83667 |goto The Waterworks/0 47.92,53.50 |future
step
click Sturdy Chest##454207
|tip Behind the debris around the corner.
Loot the Treasure |q 83456 |goto The Waterworks/0 49.59,79.15 |future
]])
QuestCore:RegisterGuide("Dungeon Guides\\The War Within Delves\\The Sinkhole Treasures",{
description="This guide will show you the location of trasures in The Sinkhole Delve",
mapid=2301,
patch='110000',
areapoiid={7870,7783},
},[[
step
click Sturdy Chest##454200
|tip At the bottom of the water when you enter.
Loot the Treasure |q 83453 |goto The Sinkhole/0 52.21,13.34 |future
step
click Sturdy Chest##455513
|tip Behind the plants and rock.
Loot the Treasure |q 83668 |goto The Sinkhole/0 43.52,60.62 |future
step
click Sturdy Chest##455525
|tip On the edge of the cliff behind the giant shell.
Loot the Treasure |q 83700 |goto The Sinkhole/0 72.58,61.19 |future
step
click Sturdy Chest##455491
|tip On the rocks.
Loot the Treasure |q 83685 |goto The Sinkhole/0 48.43,69.26 |future
]])
QuestCore:RegisterGuide("Dungeon Guides\\The War Within Delves\\Mycomancer Cavern Treasures",{
description="This guide will show you the location of trasures in the Mycomancer Cavern Delve",
mapid=2312,
patch='110000',
areapoiid={7869,7780},
},[[
step
click Sturdy Chest##455534
|tip On the ledge.
Loot the Treasure |q 83652 |goto Mycomancer Cavern/0 49.85,21.68 |future
step
click Sturdy Chest##455497
|tip Underwater.
Loot the Treasure |q 83691 |goto Mycomancer Cavern/0 63.33,45.23 |future
step
click Sturdy Chest##454202
|tip Behind the pillar.
Loot the Treasure |q 83455 |goto Mycomancer Cavern/0 68.69,41.25 |future
step
click Sturdy Chest##455517
|tip On the ledge over the cliffside.
Loot the Treasure |q 83672 |goto Mycomancer Cavern/0 40.79,61.41 |future
]])
QuestCore:RegisterGuide("Dungeon Guides\\The War Within Delves\\Nightfall Sanctum Treasures",{
description="This guide will show you the location of trasures in the Nightfall Sanctum Delve",
mapid=2277,
patch='110000',
areapoiid={7868,7785},
},[[
step
click Sturdy Chest##455515
|tip On the plant below. Drop down from the top platform.
Loot the Treasure |q 83670 |goto Nightfall Sanctum/0 70.90,44.47 |future
step
click Sturdy Chest##455494
|tip Underwater.
Loot the Treasure |q 83688 |goto Nightfall Sanctum/0 51.91,57.07 |future
step
click Sturdy Chest##454201
|tip On the floor, in the piles of supplies.
Loot the Treasure |q 83454 |goto Nightfall Sanctum/0 39.18,74.30 |future
step
Board the ship |goto Nightfall Sanctum/0 43.53,57.64 < 5 |only if walking
Jump off the ship |goto Nightfall Sanctum/0 38.61,48.19 < 5 |only if walking
Follow the path |goto Nightfall Sanctum/0 38.53,43.76 < 5 |only if walking
click Sturdy Chest##455526
|tip Jump off the left side of the ship, the chest is on the ledge below.
Loot the Treasure |q 83701 |goto Nightfall Sanctum/0 40.05,36.69 |future
]])
QuestCore:RegisterGuide("Dungeon Guides\\The War Within Delves\\Skittering Breach Treasures",{
description="This guide will show you the location of trasures in the Skittering Breach Delve",
mapid=2310,
patch='110000',
areapoiid={7871,7789},
},[[
step
click Sturdy Chest##455485
|tip In the room on the left.
Loot the Treasure |q 83679 |goto Skittering Breach/0 50.76,65.78 |future
step
click Sturdy Chest##455505
|tip In the tunnel.
Loot the Treasure |q 83660 |goto Skittering Breach/0 27.40,26.43 |future
step
click Sturdy Chest##455522
|tip On the ledge to the left.
Loot the Treasure |q 83696 |goto Skittering Breach/0 56.10,24.23 |future
step
click Sturdy Chest##455486
|tip In the bush next to the rock.
Loot the Treasure |q 83680 |goto Skittering Breach/0 66.75,14.61 |future
]])
QuestCore:RegisterGuide("Dungeon Guides\\The War Within Delves\\The Spiral Weave Treasures",{
description="This guide will show you the location of trasures in The Spiral Weave Delve",
mapid=2347,
patch='110000',
areapoiid={7874,7790},
},[[
step
click Sturdy Chest##455531
|tip Behind the barricade.
Loot the Treasure |q 83649 |goto The Spiral Weave/0 50.03,46.31 |future
step
click Sturdy Chest
|tip The chest is on the beam above - a grapple point appears only in some variants of the delve. If there is no grapple point, come back on another day to try again.
Loot the Treasure |q 83661 |goto The Spiral Weave/0 36.48,11.11 |future
step
click Sturdy Chest##455487
|tip Drop down onto the pillar just before the treasure room.
|tip You must complete the delve to reach this chest.
Loot the Treasure |q 83681 |goto The Spiral Weave/0 46.01,46.42 |future
step
click Sturdy Chest##455507
|tip Carefully drop down onto the beam and walk to the end.
Loot the Treasure |q 83662 |goto The Spiral Weave/0 42.32,47.75 |future
]])
QuestCore:RegisterGuide("Dungeon Guides\\The War Within Delves\\Overcharged Delves",{
author="QuestCore",
description="This guide will assist you in completing the overcharged delves intro questline.",
startlevel=80,
patch='110107',
},[[
step
accept Titanic Rumblings##90968 |goto Dornogal/0 48.03,43.46
|tip Accept this from your adventure Journal.
step
talk Dagran Thaurissan II##245191
turnin Titanic Rumblings##90968 |goto Dornogal/0 48.03,43.46
accept Titan Consoles##90969 |goto Dornogal/0 48.03,43.46
step
click Overcharged Titan Console##235490
Access the Overcharged Titan Console |q 90969/1
step
click Overcharged Titan Console##235490
turnin Titan Consoles##90969 |goto Skittering Breach/0 72.79,56.10
accept Titan Disc-Count##90970 |goto Skittering Breach/0 72.79,56.10
stickystart "Collect_Titan_Disc_Shards"
step
kill Awakened Defense Matrix##239445, Awakened Defensive Construct##239412, Awakened Attendant##241433, Overcharged Bot##236838
|tip Enter the current overcharged delve indicated by the quest marker.
|tip Titan Constructs are found throughout the overcharged delve.
Defeat #8# Titan Constructs |q 90970/2
step
label "Collect_Titan_Disc_Shards"
click Mislaid Curiosity+
|tip Enter the current overcharged delve indicated by the quest marker. |notinsticky
|tip They look like small pots on the ground all over the delve.
collect 50 Titan Disc Shards##244465 |q 90970/1
step
click Overcharged Titan Console##235490
|tip At the beginning of the overcharged delve with the quest indicator on the map.
|tip When you finish in the treasure room, you will return to the console.
turnin Titan Disc-Count##90970
accept Overcharged Console##90971
step
collect 100 Titan Disc Shards##244465 |q 90971
|tip Enter the current overcharged delve indicated by the quest marker.
|tip Kill enemies in the overcharged delve to collect the shards.
step
click Overcharged Titan Console##235490
|tip At the beginning of the overcharged delve with the quest indicator on the map.
|tip When you finish in the treasure room, you will return to the console at the beginning of the overcharged delve.
Select _"Obtain Titan Disc [100 Titan Disc Shards]"_ |gossip 134234
Create a Titan Disc |q 90971/1
step
click Overcharged Titan Console##235490
|tip At the beginning of the overcharged delve with the quest indicator on the map.
Select _"<View overcharged console discs.>"_ |gossip 131481
Select a node in the Overcharged Tech Tree |q 90971/2
step
click Overcharged Titan Console##235490
|tip At the beginning of the overcharged delve with the quest indicator on the map.
turnin Overcharged Console##90971
accept Durable Information Storage Container##91009
step
kill 4 Overcharged Pylon##240018 |q 91009/1
|tip Enter the current overcharged delve indicated by the quest marker.
|tip Pylons are found throughout the overcharged delve.
step
talk Dagran Thaurissan II##245191
turnin Durable Information Storage Container##91009 |goto Dornogal/0 48.03,43.46
accept Gathering an Upgrade##91026 |goto Dornogal/0 48.03,43.46
stickystart "Complete_An_Overcharged_Delve_91026"
step
kill Awakened Defense Matrix##239445, Awakened Defensive Construct##239412, Awakened Attendant##241433, Overcharged Bot##236838
|tip Enter the current overcharged delve indicated by the quest marker.
|tip Collect directives from the enemies throughout the overcharged delve.
collect 4 Faulty Titan Directives##244825 |q 91026/1
step
label "Complete_An_Overcharged_Delve_91026"
Complete an Overcharged Delve |q 91026/2
|tip Enter the current overcharged delve indicated by the quest marker. |notinsticky
|tip Complete the entire delve while it is overcharged.
step
talk Dagran Thaurissan II##245191
turnin Gathering an Upgrade##91026 |goto Dornogal/0 48.04,43.45
accept New Titan Directives##91030 |goto Dornogal/0 48.04,43.45
stickystart "Complete_An_Overcharged_Delve_91030"
step
kill Awakened Defense Matrix##239445, Awakened Defensive Construct##239412, Awakened Attendant##241433, Overcharged Bot##236838
|tip Enter the current overcharged delve indicated by the quest marker.
|tip Titan Constructs are found throughout the overcharged delve.
Defeat #8# Titan Constructs |q 91030/1
step
label "Complete_An_Overcharged_Delve_91030"
Complete an Overcharged Delve |q 91030/2
|tip Enter the current overcharged delve indicated by the quest marker. |notinsticky
|tip Complete the entire delve while it is overcharged.
step
talk Dagran Thaurissan II##245191
turnin New Titan Directives##91030 |goto Dornogal/0 48.04,43.45
accept Pushing it to the Limit##91031 |goto Dornogal/0 48.04,43.45
stickystart "Complete_An_Overcharged_Delve_91031"
step
kill Overcharged Bot##236838 |q 91031/1
|tip This is a rare mob found near the end of the overcharged delve indicated with a quest marker.
|tip It should always be spawned.
step
label "Complete_An_Overcharged_Delve_91031"
Complete an Overcharged Delve |q 91031/2
|tip Enter the current overcharged delve indicated by the quest marker. |notinsticky
|tip Complete the entire delve while it is overcharged.
step
talk Dagran Thaurissan II##245191
turnin Pushing it to the Limit##91031 |goto Dornogal/0 48.04,43.45
accept Monitoring 'Construct'ing##91033 |goto Dornogal/0 48.04,43.45
step
Complete an Overcharged Delve |q 91033/1
|tip Enter the current overcharged delve indicated by the quest marker.
|tip Complete the entire delve while it is overcharged.
step
talk Dagran Thaurissan II##245191
turnin Monitoring 'Construct'ing##91033 |goto Dornogal/0 48.04,43.45
accept Construct De-Escalation##91035 |goto Dornogal/0 48.04,43.45
stickystart "Complete_An_Overcharged_Delve_91035"
step
kill Awakened Defense Matrix##239445, Awakened Defensive Construct##239412, Awakened Attendant##241433, Overcharged Bot##236838
|tip Enter the current overcharged delve indicated by the quest marker.
|tip Titan Constructs are found throughout the overcharged delve.
Defeat #5# Titan Constructs |q 91035/1
step
label "Complete_An_Overcharged_Delve_91035"
Complete an Overcharged Delve |q 91035/2
|tip Enter the current overcharged delve indicated by the quest marker. |notinsticky
|tip Complete the entire delve while it is overcharged.
step
talk Dagran Thaurissan II##245191
turnin Construct De-Escalation##91035 |goto Dornogal/0 48.04,43.45
]])
QuestCore:RegisterGuide("Dungeon Guides\\The War Within Dungeons\\Eco-Dome Al'dani",{
description="To complete this dungeon, you will need to kill the following bosses:\n\nAzhiccar\n"..
"Taah'bat\nSoul-Scribe",
keywords={"TWW","War","Within","Azhiccar","Taah'bat","Soul-Scribe"},
condition_suggested=function() return level >= 77 end,
achieveid={42780},
mapid=2449,
patch='110200',
},[[
step
kill Azhiccar##234893 |goto Eco-Dome Al'dani/0 61.22,84.11
_EVERYONE_ |grouprole EVERYONE
|tip You will alternate phases between fighting the boss and fighting adds. |grouprole EVERYONE
|tip Loosely group up for adds and AoE/CC them quickly. |grouprole EVERYONE
|tip Position yourself near a designated area during "Toxic Regurgitation" to drop the pools in safe areas. |grouprole EVERYONE
|tip "Digestive Spittle" puddles can be placed on the add spawn locations to slow them. |grouprole EVERYONE
|tip At 100 energy, stay away from the boss or you will be killed during "Devour" as it attempts to pull you closer. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Follwing "Invading Shriek" casts, burn down adds as fast as possible to avoid being overwhelmed. |grouprole DPS
|tip CC and burn down adds during "Devour" quickly or they will heal the boss for 10% for each one that reaches it. |grouprole DPS
|tip Adds must be killed before "Devour" finishes channeling or they will be eaten anyways. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip "Toxic Regurgitation" deals shadow damage every second to the debuffed player and anyone within 10 yards. |grouprole HEALER
|tip "Devour" deals damage to the entire group. |grouprole HEALER
_TANK_ |grouprole TANK
|tip During the boss phase, always remain in melee range of the boss to avoid "Thrash" from triggering. |grouprole TANK
|tip Adds following "Invading Shriek" casts target random players. |grouprole TANK
confirm
step
kill Taah'bat##234933 |goto Eco-Dome Al'dani/0 56.53,44.60
_EVERYONE_ |grouprole EVERYONE
|tip Try to position "Binding Javelins" close and position the boss near them to cleave. |grouprole EVERYONE
|tip Move out of the path of "Warp Strike" quickly. |grouprole EVERYONE
|tip At 100 energy, all players need to focus on making "Warp Strike" hit the boss when targeted. |grouprole EVERYONE
|tip 6 hits are required to remove the "Incorporeal" buff. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Burn down javelins quickly to free the connected players. |grouprole DPS
|tip You start by attacking A'wazj, and switch to Taah'bat later. |grouprole DPS
|tip Use cooldowns and burn/cleave when both bosses are attackable. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip Players targeted by "Warp Strike" and anyone in the path will receive a DoT. |grouprole HEALER
|tip While the boss is immune, the group will take steady damage. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Use a cooldown for each "Rift Claws" cast. |grouprole TANK
|tip Position bosses together when possible for cleaving. |grouprole TANK
confirm
step
kill Soul-Scribe##247283 |goto Eco-Dome Al'dani/0 25.67,35.50
_EVERYONE_ |grouprole EVERYONE
|tip After "Whispers of Fate," run over your echo quickly to gain a stacking  buff. |grouprole EVERYONE
|tip When "Dread of the Unknown" goes out, run over your echo quickly and then spread out. |grouprole EVERYONE
|tip At 100 energy, you will need to run over 3 echoes instead of 1. |grouprole EVERYONE
|tip While at 100 energy, cones of arcane energy will rotate around the room for 6 seconds periodically. |grouprole EVERYONE
_HEALER_ |grouprole HEALER
|tip "Whispers of Fate" will damage the entire group. |grouprole HEALER
|tip The boss deals constant damage to the entire raid for the duration of the fight. |grouprole HEALER
confirm
]])
QuestCore:RegisterGuide("Dungeon Guides\\The War Within Dungeons\\Tazavesh, the Veiled Market",{
mapid=1993,
patch='110200',
condition_suggested=function() return level >= 80 end,
keywords={"TWW","War","Within"},
description="To complete this dungeon, you will need to kill the following bosses:\n\nZo'phex"..
"\nThe Grand Menagerie\nMailroom Mayhem\nMyza's Oasis\nSo'azmi\nHylbrande\n"..
"Timecap'n Hooktail\nSo'leah",
},[[
step
kill Zo'phex##175616 |goto Tazavesh, the Veiled Market/7 75.49,44.12
_EVERYONE:_ |grouprole EVERYONE
|tip During "Interrogation," avoid standing in front of Zo'phex. |grouprole EVERYONE
|tip Avoid standing near Zo'phex during "Armed Security." |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Quickly burn down "Containment Cells" to interrupt "Interrogation." |grouprole DAMAGE
|tip Pick your weapon up after "Impound Contraband" to remove your pacification. |grouprole DAMAGE
|tip "Rotary Body Armor" absorbs all damage that passes through it. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Pick your weapon up after "Impound Contraband" to remove your pacification. |grouprole HEALER
|tip The tank will need extra healing while Zo'phex is bufed with "Fully Armed." |grouprole HEALER
|tip Every time a "Containment Cell" is destroyed, "Security Measure" will deal heavy damage to the raid. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip You may need to use a cooldown while Zo'phex is buffed with "Fully Armed." |grouprole TANK
Click Here to Continue |confirm
step
kill Alcruux##176556 |goto Tazavesh, the Veiled Market/6 55.52,67.79
_EVERYONE:_ |grouprole EVERYONE
|tip Players nearest to Alcruux initially will gain "Gluttony." |grouprole EVERYONE
|tip "Gluttony" will transfer to the closest player upon expiration. |grouprole EVERYONE
|tip Avoid standing near players with "Gluttony" unless transferring it upon expiration. |grouprole EVERYONE
|tip The pull of "Whirling Annihilation" intensifies over time, making it more difficult to avoid. |grouprole EVERYONE
|tip Avoid touching "Volatile Anima." |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Player afflicted with "Gluttony" should absorb "Volatile Anima" to gain a stacking "Devoured Anima" damage buff. |grouprole DAMAGE
|tip The "Gluttony" debuff should be passed to a Ranged DPS. |grouprole DAMAGE
|tip Quickly burn down the shield and interrupt "Flagellation Protocol." |grouprole DAMAGE
|tip Destroy "Chains Of Domination" quickly. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip "Grand Consumption" may deal heavy damage to the raid when it begins to hit the ground. |grouprole HEALER
|tip Dispel "Purification Protocol." |grouprole HEALER
|tip The tank will need extra healing while the "Flagellation Protocol" shield is being burned down. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Use a defensive cooldown during "Flagellation Protocol." |grouprole TANK
Click Here to Continue |confirm
step
kill P.O.S.T. Master##175646 |goto Tazavesh, the Veiled Market/5 58.15,34.51
_EVERYONE:_ |grouprole EVERYONE
|tip Soak as many "Hazardous Liquids" puddles as possible. |grouprole EVERYONE
|tip Use a personal defensive cooldown during "Fan Mail." |grouprole EVERYONE
|tip Stack for "Money Order" to split damage. |grouprole EVERYONE
|tip Run over "Unstable Goods" and use the "Throw Package" extra action button to throw them to another player the Active Delivery Portal with blue lights. |grouprole EVERYONE
|tip Do not drop "Unstable Goods," as they will cause group-wide damage. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Dispel high stacks of "Alchemical Residue" from players soaking "Hazardous Liquids." |grouprole HEALER
|tip Players soaking "Spilled Liquids" puddles will need extra healing. |grouprole HEALER
|tip Use a cooldown during "Fan Mail" or "Money Order." |grouprole HEALER
Click Here to Continue |confirm
step
kill Zo'gron##176564 |goto Tazavesh, the Veiled Market/4 42.49,36.23
_EVERYONE:_ |grouprole EVERYONE
|tip Kill adds while one player trades items between the vendors until the door opens. |grouprole EVERYONE
|tip Use the instrument directional abilities to hit notes that appear on the ground to gain "Up Tempo!" at 12 stacks of the "Jazzy" buff. |grouprole EVERYONE
|tip Horn Improvisation: Hits notes within 4 yards to gain a stack of "Jazzy." |grouprole EVERYONE
|tip Guitar Riff: Slide forward hitting notes for 12 yards to gain stacks of "Jazzy." |grouprole EVERYONE
|tip Sax Solo: Slide forward hitting notes for 12 yards to gain stacks of "Jazzy." |grouprole EVERYONE
|tip Trumpet Slide: Slide forward hitting notes for 12 yards to gain stacks of "Jazzy." |grouprole EVERYONE
|tip Drum Beat: Play drums to hit notes around the drumset to gain stacks of "Jazzy." |grouprole EVERYONE
|tip CC and cleave down Disruptive Patrons casting "Suppression." |grouprole EVERYONE
|tip Attack from the rear and avoid the frontal cone damage from "Crowd Control." |grouprole EVERYONE
|tip Spread out and use defensive cooldown for "Suppression Spark."
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt "Menacing Shout." |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip You might need to use a healing cooldown for "Suppression Spark." |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Use a defensive cooldown for "Security Slam." |grouprole TANK
|tip Interrupt "Menacing Shout." |grouprole TANK
Click Here to Continue |confirm
step
kill So'azmi##175806 |goto Tazavesh, the Veiled Market/7 33.76,54.34
_EVERYONE:_ |grouprole EVERYONE
|tip Teleport using the shape-matching "Relocators" (wandering pillars) to avoid damage or to regroup after "Divide". |grouprole EVERYONE
|tip Spread and use personal defensives to avoid cleave from "Quickblade." |grouprole EVERYONE
|tip "Double Technique" must be interrupted twice. |grouprole EVERYONE
Click Here to Continue |confirm
step
kill Hylbrande##175663 |goto Tazavesh, the Veiled Market/2 58.75,41.79
_EVERYONE:_ |grouprole EVERYONE
|tip Drop "Purged By Fire" pools away from group, and not in front of the panels in the corners. |grouprole EVERYONE
|tip During "Sanitizing Cycle" check the console at the front of the room to see which corner your colored orb should go to. |grouprole EVERYONE
|tip Only one person can check the console, so please share. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Stay behind boss to avoid "Shearing Swings" and "Titanic Crash." |grouprole DAMAGE
|tip Quickly swap to and kill adds that spawn and channel "Empowered Defense" on the boss. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Stay behind boss to avoid "Shearing Swings" and "Titanic Crash." |grouprole HEALER
|tip Players targeted by "Purged By Fire" will take extra damage when dropping their pools away from group. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Sidestep "Titanic Crash." |grouprole TANK
Click Here to Continue |confirm
step
kill Timecap'n Hooktail##175546 |goto Tazavesh, the Veiled Market/1 48.11,66.07
_EVERYONE:_ |grouprole EVERYONE
|tip Stay out of "Cannon Barrage" fire swirls on the ground. |grouprole EVERYONE
|tip Don't go in the water. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Stay on the sides of the boss to avoid "Infinite Breath" and "Hook Swipe." |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Stay on the sides of the boss to avoid "Infinite Breath" and "Hook Swipe." |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Kill all the Corsair Brutes with the boss's cast of "Infinite Breath" before the boss gets to 100 energy to prevent their being empowered with "Double Time." |grouprole TANK
Click Here to Continue |confirm
step
kill So'leah##178433 |goto Tazavesh, the Veiled Market/0 34.60,53.26
_EVERYONE:_ |grouprole EVERYONE
|tip Touch the spinning orb "Collapsing Star" 4 times, allowing the DoT "Collapsing Energy" to drop off the party each time. |grouprole EVERYONE
|tip Line up "Hyperlight Jolt" (red arrows that cycle around players) with the star relics. |grouprole EVERYONE
|tip Make sure players are targeted by red arrows only once. |grouprole EVERYONE
|tip Dodge "Energy Fragmentation" missiles that come out of the relic stars. |grouprole EVERYONE
|tip Avoid "Hyperlight Nova" AOE rings that spawn around the relic stars. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt or stun Assassins' "Shuriken Blitz." |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Expect heavy damage during "Hyperlight Spark" and "Collapsing Star." |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Interrupt or stun Assassins' "Shuriken Blitz." |grouprole TANK
Click Here to Continue |confirm
]])
QuestCore:RegisterGuide("Dungeon Guides\\The War Within Raids\\Manaforge Omega",{
mapid=2810,
lfgid=2805,
achieveid={41598},
patch='110200',
condition_suggested=function() return level >= 80 end,
keywords={"TWW","War","Within"},
description="To complete this dungeon, you will need to kill the following bosses:\n\nPlexus Sentinel"..
"\nLoom'ithar\nSoulbinder Naazindhri\nForgeweaver Araz\nThe Soul Hunters\nFractillus\n"..
"Nexus-King Salhadaar\nDimensius",
},[[
step
kill Plexus Sentinel##233814 |goto Manaforge Omega/0 76.81,26.61
_EVERYONE_ |grouprole EVERYONE
|tip Use the {b}Phase Blink{} button on the screen to charge forward through energy walls safely. |grouprole EVERYONE
|tip At 100 energy, phase 2 starts. |grouprole EVERYONE
|tip Group up behind the boss to split damage from {b}Eradicating Salvo{} casts. |grouprole EVERYONE
|tip When targeted by {b}Manifest Matrices{}, move to the sides of the room to drop the traps. |grouprole EVERYONE
|tip Avoid running over traps on the ground. |grouprole EVERYONE
|tip During phase 2, run to the boss while dodging domes and lasers. |grouprole EVERYONE
|tip Use the ability on the screen to pass through energy walls. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Burn through the shield in phase 2 to return to phase 1. |grouprole DPS
_TANK_ |grouprole TANK
|tip When targeted by {b}Obliteraction Acranocannon{}, run to a corner and wait until the void zone drops. |grouprole TANK
confirm
step
kill Loom'ithar##233815 |goto Manaforge Omega/1 63.77,64.38
_EVERYONE_ |grouprole EVERYONE
|tip At 50% health, phase 2 starts. |grouprole EVERYONE
|tip If you are pulled to the boss with a web, run to the edge near other webs to drop them close together. |grouprole EVERYONE
|tip At 100 energy, run to the edge of the room to escape the {b}Overinfusion Burst{} AoE. |grouprole EVERYONE
|tip Avoid stepping in puddles during phase 2. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Focus on a single add when the web ring goes out to open an escape gap quickly. |grouprole DPS
_TANK_ |grouprole TANK
|tip Swap during {b}Piercing Strand{} casts. |grouprole TANK
|tip During phase 2, move the boss around the edge of the room as needed. |grouprole TANK
|tip Swap during {b}Writhing Wave{} casts and split the damage by standing in the cone together. |grouprole TANK
confirm
step
kill Soulbinder Naazindhri##233816 |goto Manaforge Omega/2 50.86,78.73
_EVERYONE_ |grouprole EVERYONE
|tip Interrupt Soulguard Mages. |grouprole EVERYONE
|tip Spread out for Soulguard Assassins. |grouprole EVERYONE
|tip Position yourself behind an incubation chamber for {b}Soulfray Annihilation{} to break it. |grouprole EVERYONE
|tip Avoid standing in the line. |grouprole EVERYONE
|tip Avoid being knocked back off the platform from {b}Arcane Expulsion{}. |grouprole EVERYONE
|tip Run away from the group if targeted by {b}Soulfire Convergence{} and avoid aiming the orbs at the boss. |grouprole EVERYONE
|tip Dodge orbs incoming from other players. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Cleave down adds when the become active. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip Soulguard Phaseblades will deal AoE damage to the group. |grouprole HEALER
|tip {b}Arcane Expulsion{} deals AoE damage. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Swap after every {b}Mystic Lash{} cast. |grouprole TANK
|tip Move the boss near incubation chambers that need to be broken. |grouprole TANK
confirm
step
kill Forgeweaver Araz##247989 |goto Manaforge Omega/4 64.37,47.78
_EVERYONE_ |grouprole EVERYONE
|tip Phase 2 starts at 25% health. |grouprole EVERYONE
|tip Soak {b}Arcane Obliteration{} casts as a group. |grouprole EVERYONE
|tip When targeted for {b}Invoke Collector{}, spawn the adds on the boss to cleave them down. |grouprole EVERYONE
|tip CC the adds to prevent them from reaching the collector. |grouprole EVERYONE
|tip Split up when all collectors are active and kill them before they reach 100 energy. |grouprole EVERYONE
|tip Avoid lines on the ground. |grouprole EVERYONE
|tip Run away from the edge of the room to avoid the singularity for the duration of phase 2. |grouprole EVERYONE
|tip Stack under the boss if targeted by {b}Void Harvest{} and CC/cleave the adds before they reach the singularity. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Use cooldowns on the boss after the collector phase during the 12 second double damage period. |grouprole DPS
_TANK_ |grouprole TANK
|tip Swap after each {b}Arcane Obliteraction{} debuff. |grouprole TANK
confirm
step
kill Adarus Duskblaze##237661 |goto Manaforge Omega/5 35.08,70.48
kill Velaryn Bloodwrath##248404
kill Ilyssa Darksorrow##237662
_EVERYONE_ |grouprole EVERYONE
|tip Assign players to soak the two purple areas at the start of the fight. |grouprole EVERYONE
|tip Move away from the boss if targeted by {b}The Hunt{} to extend the charge distance while other players help soak the damage. |grouprole EVERYONE
|tip During the metamorphosis, soak orbs before they reach the boss, dodge lines, and move to the sides of the boss to dodge cones of damage. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Kill the bosses at the same time to avoid extra AoE damage. |grouprole DPS
_TANK_ |grouprole TANK
|tip Stack the bosses on Adarus to maximize damage. |grouprole TANK
|tip One tank should be on Velayrn and the other on Ilyssa. |grouprole TANK
|tip Swap after each {b}Eye Beam{} and {b}Fracture{} cast. |grouprole TANK
|tip Point {b}Eye Beam{} away from the group. |grouprole TANK
|tip Have another player soak your {b}Fracture{} soul. |grouprole TANK
step
kill Fractillus##237861 |goto Manaforge Omega/5 52.89,37.66
_EVERYONE_ |grouprole EVERYONE
|tip Each of the 6 areas marked by crystals will gain stacking walls in the back. |grouprole EVERYONE
|tip If any of these areas have no walls, the raid wipes. |grouprole EVERYONE
|tip One of the 6 areas should be assigned as a safe area for players to stand when not handling mechanics. |grouprole EVERYONE
|tip If you are one of the 4 {b}Crystalline Shockwave{} targets, move to a lane not occupied by someone else and drop the wall. |grouprole EVERYONE
|tip Never drop a wall in a zone if it accumulates 6 walls. |grouprole EVERYONE
|tip If targeted by {b}Shattershell{}, spread out and stand in zones with more walls to destroy them. |grouprole EVERYONE
|tip Avoid standing in swirling spots on the ground when walls break. |grouprole EVERYONE
_TANK_ |grouprole TANK
|tip Place the wall from {b}Shockwave Slam{} in a zone with the least number of walls and swap. |grouprole TANK
confirm
step
kill Nexus-King Salhadaar##237763 |goto Manaforge Omega/6 49.55,55.31
_EVERYONE_ |grouprole EVERYONE
|tip Phase 1 begins with 3 stacks of the debuff. |grouprole EVERYONE
|tip Remove a stack by soaking one {b}Conquest{} cast per tank combo. |grouprole EVERYONE
|tip Run away from the group during {b}Behead{} to drop void zones in safe areas. |grouprole EVERYONE
|tip At 50% health phase 2 begins and 4 players drop portals at their location. |grouprole EVERYONE
|tip Spread out 30 yards away from the group if targeted with {b}Netherbreaker{}. |grouprole EVERYONE
|tip Avoid laser beams. |grouprole EVERYONE
|tip When adds spawn, split into two groups and use the button on the screen to teleport over and kill the adds quickly. |grouprole EVERYONE
|tip Phase 3 starts when the dragon dies. |grouprole EVERYONE
|tip Players targeted by {b}Galactic Smash{} should spread evenly around the outside and dodge rings. |grouprole EVERYONE
|tip Aim missiles from {b}Starkiller Swing{} into {b}Dark Stars{}. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Burn the dragon down when the boss is immune during the 100% damage buff. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip {b}Banishment{}, {b}Reap{}, and {b}Twilight Scar{} deal heavy damage over time to affected players. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Swap during each {b}Conquer{} and {b}Vanquish{} cast and aim {b}Vanquish{} away from the group. |grouprole TANK
|tip The ability will hit the tank it was cast upon at the start of the cast. |grouprole TANK
|tip Aim {b}Conquer{} at each raid group once to remove a debuff stack. |grouprole TANK
confirm
step
kill Dimensius##233824 |goto Manaforge Omega/7 84.46,48.42
_EVERYONE_ |grouprole EVERYONE
|tip Entering Dimensius' body will instantly kill you. |grouprole EVERYONE
|tip Split up into two teams on each side of Dimensius. |grouprole EVERYONE
|tip When Dimensius uses {b}Massive Smash{}, group the mobs using CC and knockbacks and burn them down. |grouprole EVERYONE
|tip Pick up {b}Excess Mass{} each {b}Devour{} cycle and pull airborne players down during {b}Reverse Gravity{}. |grouprole EVERYONE
|tip Players with {b}Excess Mass{} should stack each {b}Devour{} to provide extra gravity and prevent the raid from being consumed. |grouprole EVERYONE
|tip During the intermission, avoid obstacles and fly through waygates. |grouprole EVERYONE
|tip During {b}Darkened Sky{}, walk through {b}Shadowquakes{} in sequence before each shockwave reaches them. |grouprole EVERYONE
|tip During phase 3 {b}Devour{}, stand in the gravity well from a {b}Voidstar{} until finished. |grouprole EVERYONE
|tip Run way from targeted {b}Voidstars{} quickly to avoid damage. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Grab {b}Stellar Cores{} for additional damage. |grouprole DPS
|tip Quickly focus a single Voidwarden down during {b}Conqueror's Cross{}. |grouprole DPS
|tip Defeat the mini bosses during phase 2 while avoiding incoming mechanics. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip Phase 2 damage can be burst-oriented depending on mechanic timing. |grouprole HEALER
|tip Phase 3 is a race with increasing raid-wide damage as the fight progresses. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Move during phase 3 to safe areas and position the boss so the raid has a place to stand. |grouprole TANK
confirm
]])
