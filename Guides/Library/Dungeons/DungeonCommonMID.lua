-- Bundled QuestCore guide
if not QuestCore then return end

QuestCore:RegisterGuide("Dungeon Guides\\Midnight Dungeons\\Den of Nalorakk",{
description="To complete this dungeon, you will need to kill the following bosses:\n\nThe Hoardmonger\n"..
"Sentinel of Winter\nNalorakk",
keywords={"Hoardmonger","Sentinel","Winter","Nalorakk"},
achieveid={61638,61642,61643},
mapid={2564,2514,2513},
patch='120001',
},[[
step
Unlock the Den of Nalorakk Dungeon |achieve 62147
|tip Complete the quest "Den of Nalorakk: Unforgiven" or reach level 88 on any character.
step
kill The Hoardmonger##248710 |goto Den of Nalorakk/1 45.36,68.40
_EVERYONE_ |grouprole EVERYONE
|tip At 100 energy, the boss will toss out Spoiled Supplies creating Rotten Mushrooms. |grouprole EVERYONE
|tip Rotten Mushrooms pulse damage until they are destroyed. |grouprole EVERYONE
|tip At 90%, 60%, and 30% health, a new single ability will become empowered. |grouprole EVERYONE
|tip Avoid standing in front of the boss during Earthshatter Slam. |grouprole EVERYONE
|tip Avoid standing in front of the boss during Bonespike Slam. |grouprole EVERYONE
|tip Avoid stepping on Rotten Mushrooms. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Kill Rotten Mushrooms when they spawn. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip Savage Roar will inflict heavy damage to the entire party. |grouprole HEALER
|tip Hearty Bellow will inflict heavy damage to the entire party. |grouprole HEALER
|tip Colossal Roar will inflict heavy damage to the entire party. |grouprole HEALER
_TANK_ |grouprole TANK
|tip The boss ability changes after Resourceful Measures. |grouprole TANK
confirm
step
kill Sentinel of Winter##244100 |goto Den of Nalorakk/1 42.61,23.57
_EVERYONE_ |grouprole EVERYONE
|tip Avoid standing in the area of falling icicles. |grouprole EVERYONE
|tip Standing on the snowdrifts that they leave after death will prevent pushback from Eternal Winter. |grouprole EVERYONE
|tip Avoid contact with Raging Squalls when possible. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Kill Fractured Shivercores quickly to avoid stacking debuffs. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip Fractured Shivercores will deal increasing damage until killed. |grouprole HEALER
|tip During Raging Winter, everyone will take consistent damage. |grouprole HEALER
|tip Players affected by Glacial Torment will need extra healing over time. |grouprole HEALER
confirm
step
kill Nalorakk##23576 |goto Den of Nalorakk/2 47.27,20.70
_EVERYONE_ |grouprole EVERYONE
|tip Stay spread out and move away from Echoing Maul. |grouprole EVERYONE
|tip Forceful Roar will push everyone back. |grouprole EVERYONE
|tip During Concussive Shock, alternate intercepting Echoes of Nalorakk before they reach Zul'jarra. |grouprole EVERYONE
|tip During Overwhelming Onslaught, stand behind Zul'jarra's Devensive Stance. |grouprole EVERYONE
_HEALER_ |grouprole HEALER
|tip Group and bleed damage can be consistent and heavy at times. |grouprole HEALER
|tip Damage will be inflicted to the entire party each time an Echo reaches Zul'jarra during Concussive Shock. |grouprole HEALER
_TANK_ |grouprole TANK
confirm
]])
QuestCore:RegisterGuide("Dungeon Guides\\Midnight Dungeons\\Magister's Terrace",{
description="To complete this dungeon, you will need to kill the following bosses:\n\nArcanotron Custos\n"..
"Seranel Sunlash\nGemellus\nDegentrius",
keywords={"Arcanotron","Custos","Seranel","Sunlash","Gemellus","Degentrius"},
achieveid={61212,61213,61214},
mapid={2511,2515,2516,2517,2518,2519,2520},
patch='120001',
},[[
step
Unlock the Magister's Terrace Dungeon |achieve 62152
|tip Complete the quest "Magisters' Terrace: Homecoming" or reach level 90 on any character.
step
kill Arcanotron Custos##231861 |goto Magisters Terrace M/0 52.42,48.42
_EVERYONE_ |grouprole EVERYONE
|tip Ethereal Shackles will prevent movement for 15 seconds. |grouprole EVERYONE
|tip Stay out of pools of Arcane Residue to avoid the damage and slowing effect. |grouprole EVERYONE
|tip Intercept Energy Orbs during Refueling Protocol and move out of the pool they leave behind. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Cooldowns are best saved for Refueling Protocol when the boss takes increased damage. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip Players debuffed with Ethereal Shackles will take damage over time. |grouprole HEALER
|tip The group will take heavy damage any time an orb reaches the boss during Refueling Protocol. |grouprole HEALER
|tip Touching more than one pool inflicts stacking damage which requires heavy healing. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Orbs that reach the boss will increase its damage by 20%, stacking. |grouprole TANK
|tip Repulsive Slam deals heavy damage and has a knockback, requiring appropriate boss positioning. |grouprole TANK
confirm
step
kill Seranel Sunlash##231863 |goto Magisters Terrace M/2 55.88,33.25
_EVERYONE_ |grouprole EVERYONE
|tip Areas targeted by the shield leave Suppression Zones and deal damage to anyone within 8 yards. |grouprole EVERYONE
|tip Avoid entering Suppression Zones when affected by Runic Mark or you will silence and damage players. |grouprole EVERYONE
|tip During Vow of Silence, enter Suppression Zones to reduce negative effects. |grouprole EVERYONE
|tip Avoid standing near other players while affected by Runic Mark. |grouprole EVERYONE
_HEALER_ |grouprole HEALER
|tip Anyone outside of a Suppression Zone during Vow of Silence will take heavy damage. |grouprole HEALER
|tip Suppression Zone and Feedback both have silence components. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Hastening Ward will increase the boss's attack speed and add arcane damage. |grouprole TANK
confirm
step
kill Gemellus##231864 |goto Magisters Terrace M/0 45.84,65.82
_EVERYONE_ |grouprole EVERYONE
|tip The boss will split into 3 clones with shared health at 90% and 50%. |grouprole EVERYONE
|tip At 100 energy, the clones will pull everyone to them for 8 seconds. |grouprole EVERYONE
|tip Move out of pools created on the ground. |grouprole EVERYONE
|tip When Cosmic Sting expires, it leaves a Void Secretion under you. |grouprole EVERYONE
|tip Run to the boss if you become Neural Linked to it. |grouprole EVERYONE
_HEALER_ |grouprole HEALER
|tip During Astral Grasp, all players will take damage every second. |grouprole HEALER
|tip DoT effects are common and heavy at times. |grouprole HEALER
confirm
step
kill Degentrius##231865 |goto Magisters Terrace M/6 49.78,50.29
_EVERYONE_ |grouprole EVERYONE
|tip One player should intercept Unstable Void Essence impacts at all times or the damage will affect the entire group. |grouprole EVERYONE
|tip Unstable Void Essence will bounce 4 times. |grouprole EVERYONE
|tip Someone should trigger Null Bomb or it will explode and hit the entire group. |grouprole EVERYONE
|tip Avoid contact with Void Torrents. |grouprole EVERYONE
_HEALER_ |grouprole HEALER
|tip Triggering a bomb will cause heavy damage to that player. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Trigger Null Bombs when you have the health and cooldowns to handle it. |grouprole TANK
|tip Entropy Blast deals heavy damage. |grouprole TANK
confirm
]])
QuestCore:RegisterGuide("Dungeon Guides\\Midnight Dungeons\\Murder Row",{
description="To complete this dungeon, you will need to kill the following bosses:\n\nKystia Manaheart\n"..
"Zaen Bladesorrow\nXathuux the Annihilator\nLithiel Cinderfury",
keywords={"Kystia","Manaheart","Zaen","Bladesorrow","Xathuux","Annihilator","Lithiel","Cinderfury"},
achieveid={41960,41961,41962},
mapid={2433,2435,2434},
patch='120001',
},[[
step
Unlock the Murder Row Dungeon |achieve 62146
|tip Complete the quest "Murder Row: One Fel Swoop" or reach level 83 on any character.
step
kill Kystia Manaheart##252458 |goto Murder Row/0 45.48,29.30
_EVERYONE_ |grouprole EVERYONE
|tip Avoid the Fel Spray frontal cone attack from Nibbles. |grouprole EVERYONE
|tip Kystia will deal heavy damage and knock back anyone she teleports to. |grouprole EVERYONE
|tip Stay spread out. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Focus Nibbles below 20% health so it switches to helping the group. |grouprole DPS
|tip Interrupt Kystia's Mirror Images. |grouprole DPS
|tip When Nibbles joins your side, use cooldowns and focus Kystia. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip Chaos Barrage deals heavy damage to the tank and jumps at reduced effectiveness. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Chaos Barrage deals heavy damage. |grouprole TANK
confirm
step
kill Zaen Bladesorrow##234649 |goto Murder Row/1 30.30,50.39
_EVERYONE_ |grouprole EVERYONE
|tip Move out of the path and take cover behind Forbidden Freight during Murder in a Row. |grouprole EVERYONE
|tip Murder in a Row occurs at 100 energy. |grouprole EVERYONE
|tip Avoid damage from areas targeted on the ground. |grouprole EVERYONE
|tip Don't stand near Forbidden Freight unless Murder in a Row is happening. |grouprole EVERYONE
|tip Remove Heartstop Poison from the tank. |grouprole EVERYONE
_HEALER_ |grouprole HEALER
|tip Killing Spree will deal damage to the entire group. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Envenom will deal heavy physical damage and leave a poison behind. |grouprole TANK
|tip The poison has a 50% health reduction and heavy DoT. |grouprole TANK
confirm
step
kill Xathuux the Annihilator##234647 |goto Murder Row/2 55.40,88.95
_EVERYONE_ |grouprole EVERYONE
|tip Demonic Rage occurs at 100 rage. |grouprole EVERYONE
|tip Avoid standing near the axe when it lands. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Use cooldowns during Demonic Rage while the boss takes incrased damage. |grouprole DPS
|tip During Demonic Rage, the boss leaves fire behind where it walks. |grouprole DPS
|tip Destroy the axe from Axe Toss quickly. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip Legion Strike deals heavy damage to the tank and reduces healing. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Demonic Rage increases the boss' damage output. |grouprole TANK
|tip Legion Strike deals heavy damage and reduces healing received. |grouprole TANK
|tip Fire from Burning Steps remains on the ground for long durations. |grouprole TANK
|tip Move the boss around to place fire accordingly. |grouprole TANK
confirm
step
kill Lithiel Cinderfury##237415 |goto Murder Row/2 47.27,21.52
_EVERYONE_ |grouprole EVERYONE
|tip Avoid Malefic Wave by using the Demonic Gateway and avoid leading any demons into the wave. |grouprole EVERYONE
|tip Fingers of Gul'dan summons Wild Imps at each target location. |grouprole EVERYONE
|tip Stay spread out to avoid area damage. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Kill summoned demons quickly to avoid having them empowered from the Malefic Wave. |grouprole DPS
|tip Interrupt Chaos Bolt. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip Missed Chaos Bolt interruptions will cause it to hit a random player for heavy damage. |grouprole HEALER
|tip Additional healing will be required while Furious Vilefiend is active. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Furious Vilefiends inflict heavy damage. |grouprole TANK
confirm
]])
QuestCore:RegisterGuide("Dungeon Guides\\Midnight Dungeons\\Windrunner Spire",{
description="To complete this dungeon, you will need to kill the following bosses:\n\nEmberdawn\n"..
"Kalis\nCommander Kroluk\nThe Restless Heart",
keywords={"Emberdawn","Kalis","Commander","Kroluk","Restless","Heart"},
achieveid={41287,41288,41291},
mapid={2492,2493,2494,2496,2497,2498,2499},
patch='120001',
},[[
step
Unlock the Windrunner Spire Dungeon |achieve 62145
|tip Complete the quest "Windrunner Spire: Haunting Melodies" or reach level 81 on any character.
step
kill Emberdawn##231606 |goto Windrunner Spire/2 83.02,51.00
_EVERYONE_ |grouprole EVERYONE
|tip Burning Gale deals damage and pushes everyone in the direction it is blowing. |grouprole EVERYONE
|tip Move out of Flaming Updrafts quickly. |grouprole EVERYONE
|tip Avoid contact with Flaming Twisters moving around the area. |grouprole EVERYONE
_HEALER_ |grouprole HEALER
|tip The player targeted for Flaming Updraft will need heavy healing. |grouprole HEALER
|tip Searing Beak leaves a DoT on the tank. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Searing Beak does heavy damage. |grouprole TANK
confirm
step
kill Kalis##231626 |goto Windrunner Spire/4 51.94,88.49
kill Latch##231629
_EVERYONE_ |grouprole EVERYONE
|tip Move out of Gunk Splatter on the ground. |grouprole EVERYONE
|tip Avoid being hit by Heaving Yank. |grouprole EVERYONE
|tip Guide the hook from Heaving Yank to hit Kalis during her shriek to interrupt it. |grouprole EVERYONE
|tip Run away from entities if affected by Curse of Darkness. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip When one boss dies, the other one gains 50% increased damage every 5 seconds. |grouprole DPS
|tip Split DPS and kill them at the same time. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip Debilitating Shriek deals heavy increasing damage to the entire group. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Bone Hack deals heavy rapid damage. |grouprole TANK
confirm
step
kill Commander Kroluk##231631 |goto Windrunner Spire/5 70.47,51.65
_EVERYONE_ |grouprole EVERYONE
|tip Whoever is the largest distance from the boss will be the target of Reckless Leap. |grouprole EVERYONE
|tip Move out of the rubble from the leap quickly. |grouprole EVERYONE
|tip Adds are summoned at 66% and 33%. |grouprole EVERYONE
|tip Avoid the path of Bladestorm. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Focus adds to remove the 99% damage reduction from the boss. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip Healing can be chaotic while adds are up. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Rampage deals heavy damage in rapid succession. |grouprole TANK
|tip Pick up adds at 66% and 33% and focus them down. |grouprole TANK
confirm
step
kill Restless Heart##231636 |goto Windrunner Spire/6 67.36,53.69
_EVERYONE_ |grouprole EVERYONE
|tip Move out of areas targeted.
|tip At 100 energy, a wind-infused arrow will form an expanding ring of wind that deals damage and stuns anyone touching it. |grouprole EVERYONE
|tip Avoid the deadly wind at all costs. |grouprole EVERYONE
|tip Avoid coming into contact with Turbulent Arrows. |grouprole EVERYONE
_HEALER_ |grouprole HEALER
|tip The player targeted by Bolt Gale will take heavy damage. |grouprole HEALER
|tip Squall Leap deals damage to the entire group. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Gust Strike deals heavy damage and has a knockback. |grouprole TANK
confirm
]])
QuestCore:RegisterGuide("Dungeon Guides\\Midnight Dungeons\\Maisara Caverns",{
description="To complete this dungeon, you will need to kill the following bosses:\n\nMuro'jin and Nekraxx\n"..
"Vordaza\nRak'tul",
keywords={"Muro'jin","Nekraxx","Vordaza","Rak'tul"},
achieveid={61639,61644,61645},
mapid=2501,
patch='120001',
},[[
step
Unlock the Maisara Caverns Dungeon |achieve 62148
|tip Complete the quest "Maisara Caverns: Maisara Hungers" or reach level 88 on any character.
step
kill Muro'jin##247570 |goto Maisara Caverns/0 52.11,68.57
kill Nekraxx##247572 |goto Maisara Caverns/0 52.11,68.57
_EVERYONE_ |grouprole EVERYONE
|tip Use a personal cooldown during Infected Pinions. |grouprole EVERYONE
|tip Dodge Fetid Quillstorms. |grouprole EVERYONE
|tip When targeted by Carrion Swoop, move into a Freezing Trap to avoid damage. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Kill the bosses at the same time to prevent one from becoming empowered. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip Use a major healing cooldown during Infected Pinions. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Use an active mitigation cooldown during Flanking Spear. |grouprole TANK
|tip Keep both bosses stacked together for cleave damage. |grouprole TANK
confirm
step
kill Vordaza##248595 |goto Maisara Caverns/0 77.64,58.89
_EVERYONE_ |grouprole EVERYONE
|tip Move out of the Unmake frontal cone. |grouprole EVERYONE
|tip During Final Pursuit, force ghosts to collide with each other to remove them. |grouprole EVERYONE
|tip Do not remove a ghost if you have 2+ stacks of Lingering Dread. |grouprole EVERYONE
|tip Move out of pools on the ground. |grouprole EVERYONE
|tip Save DPS cooldowns for Necrotic Convergence. |grouprole EVERYONE
|tip Dodge orbs during Necrotic Convergence. |grouprole EVERYONE
_HEALER_ |grouprole HEALER
|tip This fight is very difficult due to heavy group damage. |grouprole HEALER
|tip Save a powerful cooldown for Necrotic Convergence and use the others frequently. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Use a defensive cooldown durin Drain Soul. |grouprole TANK
confirm
step
kill Rak'tul##248605 |goto Maisara Caverns/0 77.61,9.84
_EVERYONE_ |grouprole EVERYONE
|tip 3 players targeted should group up for Crush Souls. |grouprole EVERYONE
|tip Move out of puddles on the ground. |grouprole EVERYONE
|tip Use devensives during Deathgorged Vessel. |grouprole EVERYONE
|tip Interrupt Malignant Souls every cast to gain a stacking buff. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Cleave Soulbind Totems and kill them quickly. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip Use a major healing cooldown during Deathgorged Vessel. |grouprole HEALER
|tip Keep the party topped off during Soulrending Roar. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Use a defensive during Spritbreaker. |grouprole TANK
|tip Keep the boss close to Soulbind Totems for improved cleaving. |grouprole TANK
confirm
]])
QuestCore:RegisterGuide("Dungeon Guides\\Midnight Dungeons\\Nexus Point Xenas",{
description="To complete this dungeon, you will need to kill the following bosses:\n\nChief Corewright Kasreth\n"..
"Corewarden Nysarra\nLothraxion",
keywords={"Kasreth","Corewarden","Nysarra","Lothraxion"},
achieveid={61640,61646,61647},
mapid=2556,
patch='120001',
},[[
step
Unlock the Nexus Point Xenas Dungeon |achieve 62150
|tip Complete the quest "Nexus-Point Xenas: Eclipse" or reach level 90 on any character.
step
kill Kasreth##241539 |goto Nexus Point Xenas/0 21.93,37.02
_EVERYONE_ |grouprole EVERYONE
|tip Never move through a Leyline Array. |grouprole EVERYONE
|tip Outrange the impact of Corespark Detonation. |grouprole EVERYONE
|tip Destroy as many Leyline Arrays as possible if targeted by Reflux Charge. |grouprole EVERYONE
|tip Interrupt Arcane Zap on cooldown. |grouprole EVERYONE
|tip Move out of puddles. |grouprole EVERYONE
_HEALER_ |grouprole HEALER
|tip Group healing is necessary after Corespark Detonation when the party is affected by Sparkburn. |grouprole HEALER
_TANK_ |grouprole TANK
|tip If melee gets Reflux Charge, move the boss closer to a Leyline array so they can still attack. |grouprole TANK
confirm
step
kill Corewarden Nysarra##254227 |goto Nexus Point Xenas/0 81.47,34.33
_EVERYONE_ |grouprole EVERYONE
|tip Stay away from other players when you have Eclipsing Step. |grouprole EVERYONE
|tip Use a defensive cooldowns during Lightscar Flare. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Kill the Dreadflail and Grand Nullifier quickly. |grouprole DPS
|tip Use major cooldowns during the 300% damage buff after Lightscar Flare. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip Use healing cooldowns during Lightscar Flare. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Use a major cooldown for Umbral Lash and the following debuff. |grouprole TANK
confirm
step
kill Lothraxion##241546 |goto Nexus Point Xenas/0 50.98,27.69
_EVERYONE_ |grouprole EVERYONE
|tip Use a defensive cooldown if targeted by Brillian Dispersion. |grouprole EVERYONE
|tip Don't touch Fractured Images. |grouprole EVERYONE
|tip During Divine Guile, interrupt the image that does not have horns. |grouprole EVERYONE
_HEALER_ |grouprole HEALER
|tip Heavy damage will occur if someone interrupts the wrong image during Divine Guile. |grouprole HEALER
|tip Use a major healing cooldown for Brilliant Dispersion. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Use a cooldown during Searing Rend. |grouprole TANK
confirm
]])
QuestCore:RegisterGuide("Dungeon Guides\\Midnight Dungeons\\The Blinding Vale",{
description="To complete this dungeon, you will need to kill the following bosses:\n\nLightblossom Trinity\n"..
"Ikuzz the Light Hunter\nLightwarden Ruia\nZiekket",
keywords={"Meittik","Lekshi","Kezkitt","Ikuzz","Light","Hunter","Lightwarden","Ruia","Ziekket"},
achieveid={61641,61648,61649},
mapid=2500,
patch='120001',
},[[
step
Unlock The Blinding Vale Dungeon |achieve 62149
|tip Complete the quest "The Blinding Vale: Lightbloom Roots" or reach level 88 on any character.
step
kill Meittik##243028 |goto The Blinding Vale/0 51.82,25.18
kill Lekshi##243030 |goto The Blinding Vale/0
kill Kezkitt##243029 |goto The Blinding Vale/0
_EVERYONE_ |grouprole EVERYONE
|tip Block Lightblossom Beams and use a cooldown for the damage if needed. |grouprole EVERYONE
|tip Stay out of areas targeted on the ground. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Cleaving when possible is best because the health pool is shared between bosses. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip Players blocking Lightblossom Beams will take damage. |grouprole HEALER
|tip More Light Gorged stacks will increase the damage everyone takes from Lightbloom Overgrowth. |grouprole HEALER
|tip Heal the player targeted by the random bleed effect. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Move the boss out of Fertile Loam following Bedrock Slam. |grouprole TANK
|tip If needed, help block Lightblossom Beams. |grouprole TANK
confirm
step
kill Ikuzz the Light Hunter##244887 |goto The Blinding Vale/0 52.42,57.10
_EVERYONE_ |grouprole EVERYONE
|tip Destroy Bloodthorn Roots quickly to free party members. |grouprole EVERYONE
|tip If targeted by Bloodthirsty Gaze, run away until it wears off. |grouprole EVERYONE
|tip Avoid the walking path of the boss during Bloodthirsty Gaze. |grouprole EVERYONE
_HEALER_ |grouprole HEALER
|tip Players immobilized by Bloodthorn Roots may need additional healing. |grouprole HEALER
|tip Prepare AoE healing for Thorncaller Roar. |grouprole HEALER
confirm
step
kill Lightwarden Ruia##245912 |goto The Blinding Vale/0 87.57,42.58
_EVERYONE_ |grouprole EVERYONE
|tip Avoid the cone attack from Pulverizing Strikes. |grouprole EVERYONE
|tip Move out of Lightfall areas on the ground. |grouprole EVERYONE
|tip If you get hit by Pulverizing Strikes, you will take double damage from subsequent hits within 6 seconds. |grouprole EVERYONE
_HEALER_ |grouprole HEALER
|tip Heal players to full health to remove Grievous Thrash. |grouprole HEALER
|tip Players who get caught in Pulverizing Strikes will take heavy damage. |grouprole HEALER
_TANK_ |grouprole TANK
|tip While in Moonkin Form, melee attacks are replaced with magic attacks. |grouprole TANK
|tip Mangling Claws in bear form inflict increased damage. |grouprole TANK
confirm
step
kill Ziekket##247676 |goto The Blinding Vale/0 42.25,50.29
_EVERYONE_ |grouprole EVERYONE
|tip Lashers go dormant at 1% health. |grouprole EVERYONE
|tip The Concentrated Lightbean will instantly destroy Dormant Lightspawn Lashers and leave a puddle behind that should be avoided. |grouprole EVERYONE
|tip Intercept orbs evenly among the group to gain stacking damage/healing buffs. |grouprole EVERYONE
_DPS_ |grouprole DPS |grouprole DPS
|tip AoE any active lashers.
_HEALER_ |grouprole HEALER
|tip Oozing Xylem deals consistent damage to the entire group. |grouprole HEALER
|tip Players intercepting orbs will take damage. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Use a cooldown as needed for Thornspike. |grouprole TANK
|tip Pick up lashers during Awaken the Lightbloom. |grouprole TANK
confirm
]])
QuestCore:RegisterGuide("Dungeon Guides\\Midnight Dungeons\\Voidscar Arena",{
description="To complete this dungeon, you will need to kill the following bosses:\n\nTaz'Rah\n"..
"Atroxus\nCharonus",
keywords={"Taz'Rah","Atroxus","Charonus"},
achieveid={61508,61509,61510},
mapid={2574,2572,2573},
patch='120001',
},[[
step
Unlock the Voidscar Arena Dungeon |achieve 62151
|tip Complete the quest "Voidscar Arena: Breaking the Triad" or reach level 90 on any character.
step
kill Taz'Rah##238887 |goto Voidscar Arena/1 48.98,40.89
_EVERYONE_ |grouprole EVERYONE
|tip Move out of the path of Ethereal Shades after Gather Shadows. |grouprole EVERYONE
|tip Run away from Dark Rift until it ends. |grouprole EVERYONE
_HEALER_ |grouprole HEALER
|tip Anyone pulled into Dark Rift will take heavy damage. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Use a cooldown for Cosmic Spike as needed. |grouprole TANK
confirm
step
kill Atroxus##239008 |goto Voidscar Arena/2 48.11,85.80
_EVERYONE_ |grouprole EVERYONE
|tip Move out of directional Noxious Breath. |grouprole EVERYONE
|tip Stay out of puddles on the ground. |grouprole EVERYONE
|tip Avoid Toxic Creepers when fixated. |grouprole EVERYONE
_HEALER_ |grouprole HEALER
|tip Sickening Roar deals heavy damage over time. |grouprole HEALER
|tip Monstrous Stomp deals damage to the entire group and has a knockback. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Use a cooldown for Hulking Claw and the following DoT if needed. |grouprole TANK
confirm
step
kill Charonus##248015 |goto Voidscar Arena/2 47.99,35.94
_EVERYONE_ |grouprole EVERYONE
|tip Unstable Singularity deals damage and pulls you towards the center, dealing more damage if you are closer. |grouprole EVERYONE
|tip Make Gravitic Orbs move into an Unstable Singularity to destroy them. |grouprole EVERYONE
|tip Save defensive cooldowns orbs and Cosmic Blast. |grouprole EVERYONE
_HEALER_ |grouprole HEALER
|tip Condensed Mass deals increasing damage the longer orbs are active. |grouprole HEALER
|tip Cosmic Blast deals party damage and damage over 20 seconds. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Each cast of Unstable Singularity causes it to get bigger, requiring movement periodically. |grouprole TANK
confirm
]])
QuestCore:RegisterGuide("Dungeon Guides\\Midnight Raids\\The Voidspire",{
description="To complete this raid, you will need to kill the following bosses:\n\nImperator Averzian\n"..
"Vaelgor & Ezzorak\nVorasius\nLightblinded Vanguard\nFallen-King Salhadaar\nCrown of the Cosmos",
keywords={"Imperator","Averzian","Vaelgor","Ezzorak","Vorasius","Lightblinded","Vanguard","Fallen-King","Salhadaar","Crown","Cosmos"},
achieveid={61366,61368,61370},
mapid={2529,2530},
patch='120001',
},[[
step
kill Imperator Averzian##240435 |goto The Voidspire/0 39.50,68.15
_EVERYONE_ |grouprole EVERYONE
|tip Abyssal Voidshapers spawn in a tic tac toe pattern. |grouprole EVERYONE
|tip If they finish their cast, they claim that space. |grouprole EVERYONE
|tip You can destroy 2 out of 3 each wave that spawns. |grouprole EVERYONE
|tip Set a marker so a soak group and the target can group and split damage from Umbral Collapse. |grouprole EVERYONE
|tip Interrupt Pitch Bulwark from adds. |grouprole EVERYONE
|tip Move out of stuff on the ground. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Kill Voidshapers in a pattern that prevents 3 in straight row surviving. |grouprole DPS
|tip After Voidshapers, kill Shadowguard Stalwarts, then Voidbound Annihilators. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip The active tank will suffer reduced max health with each stack of Blackening Wounds. |grouprole HEALER
|tip Dark Upheaval deals damage to the entire raid over the course of the fight. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Swap at 8-10 stacks of Blackening Wounds. |grouprole TANK
confirm
step
kill Vorasius##240434 |goto The Voidspire/0 42.37,34.97
_EVERYONE_ |grouprole EVERYONE
|tip Stack in front of the boss for Primordial Roar. |grouprole EVERYONE
|tip Non-tanks should not soak Smashed circles unless called for. |grouprole EVERYONE
|tip Melee should group with the tank and step into the smash spot right after it lands to avoid the rings. |grouprole EVERYONE
|tip Range should move with melee or outrange the rings after the smash. |grouprole EVERYONE
|tip Dodge stuff on the ground when Blistercreeps appear. |grouprole EVERYONE
|tip When Blistercreeps fixate, melee go to the left wall and range to the right. |grouprole EVERYONE
|tip Kill them atop the walls so they blow up the wall after they die. |grouprole EVERYONE
|tip Run to the safe hand side during Void Breath. |grouprole EVERYONE
_HEALER_ |grouprole HEALER
|tip Each Primordial Roar gives another stack of shadow damage DoT. |grouprole HEALER
|tip Entering the second and subsequent phase loops will greatly increase healing requirements. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Soak the first two Shadowclaw Slams and then wait for Smashed to wear off. |grouprole TANK
|tip Offtank should soak odd smash circles for the remainder of the cycle. |grouprole TANK
confirm
step
kill Fallen-King Salhadaar##240432 |goto The Voidspire/0 65.21,76.22
_EVERYONE_ |grouprole EVERYONE
|tip Orbs will spawn from the marked gates. |grouprole EVERYONE
|tip Orbs must be prevented from reaching the boss or the raid wipes. |grouprole EVERYONE
|tip When you have Shattering Twilight, aim the arrows away from other players. |grouprole EVERYONE
|tip When you have Despotic Command, stop away from the raid and drop the puddle in a safe area. |grouprole EVERYONE
|tip Interrupt images with any form of CC or they will drop a permanent puddle on the ground. |grouprole EVERYONE
|tip Entropic Unraveling occurs at 100 energy. |grouprole EVERYONE
|tip Beams spin clockwise during Entropic Unraveling and deal heavy damage. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Avoid killing the second orb while Dark Radiation is still active on the raid. |grouprole DPS
|tip Use DPS cooldowns during Entropic Unraveling. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip The raid will take heavy damage if the second orb dies will Dark Radiation is active. |grouprole HEALER
|tip During Entropic Unraveling the raid will take heavy damage. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Move the boss near a marked gate and kite it away from the orb until it dies. |grouprole TANK
|tip During Entropic Unraveling the boss cannot be moved. |grouprole TANK
confirm
step
kill Vaelgor##242056 |goto The Voidspire/0 55.28,46.09
kill Ezzorak##244552
_EVERYONE_ |grouprole EVERYONE
|tip Position between the bosses attacking from the side to avoid the tail sweep. |grouprole EVERYONE
|tip Move out to the side to be dispelled when you are targeted by Dread Breath. |grouprole EVERYONE
|tip During Void Howl, stack close without circles overlapping. |grouprole EVERYONE
|tip Break your tethers by moving away from the anchor, with the tank breaking theirs last. |grouprole EVERYONE
|tip Stun/CC/grip orbs and AoE them quickly. |grouprole EVERYONE
|tip Aim gloom at the southeast part of the room and have at least 5 ranged players touch it to shrink the puddle. |grouprole EVERYONE
|tip Aim subsequent glooms clockwise around the room. |grouprole EVERYONE
|tip Stack in the middle of the room under the barrier during Midnight Flames and kill the add that spawns. |grouprole EVERYONE
|tip Move to the side if you get a purple circle during Midnight Flames. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip DPS the bosses evenly and ensure they stay within 10% health. |grouprole DPS
_TANK_ |grouprole TANK
|tip Tank the bosses where they stand separated by 15 yards at all times. |grouprole TANK
|tip Swap after each Gloom cast. |grouprole TANK
confirm
step
kill Commander Venel Lightblood##250588 |goto The Voidspire/0 75.61,16.86
kill General Amias Bellamy##250587 |goto The Voidspire/0 75.61,16.86
kill War Chaplain Senn##250589 |goto The Voidspire/0 75.61,16.86
_EVERYONE_ |grouprole EVERYONE
|tip Use Heroism on pull but avoid attacking Bellamy and Senn until Divine Shield wears off.
|tip Bellamy reaches 100 energy first, followed by Lightblood and then Senn.
|tip Dodge shields during Divine Toll.
|tip Stay spread out during Aura of Devotion.
|tip During Execution Sentence, multiple players need to soak the three circles that appear and then immediately dodge the 3 hammers that appear after.
|tip Dodge the charging Elekk.
|tip Rotate the 3 closest players to Senn during Tyr's Wrath to avoid the healing absorb stacking multiple times on one person.
_DPS_ |grouprole DPS
|tip Burn Venel during his Avenging Wrath, using cooldowns while he takes 20% more damage.
|tip When Avenging Wrath is not active and Divine Shield is down on the remaining bosses, cleave.
|tip Burn through Senn's Sacred Shield quickly to inturrupt Blinding Light.
|tip DPS the bosses evenly and kill them fairly close together.
_HEALER_ |grouprole HEALER
|tip Healing becomes more difficult as the fight progresses.
|tip Use cooldowns for Sacred Toll to help with raid healing.
|tip Tyr's Wrath will absorb some amount of healing before it is removed.
_TANK_ |grouprole TANK
|tip Swap after Lightblood's Judgement before Final Verdict.
|tip Swap after Bellamy's Judgement before Shield of the Righteous.
|tip Bosses at 100 energy need to be tanked near the edge to drop the permanent Consecration out of the raid.
|tip Bosses at 100 energy cannot be moved until their aura ends.
confirm
step
kill Alleria Windrunner##244761 |goto The Voidspire/1 47.15,51.00
_EVERYONE_ |grouprole EVERYONE
|tip Stack on Morium with range standing slightly outside. |grouprole EVERYONE
|tip If you are targeted, pint Silverstrike Arrow towards one of the sentinels to remove its shield. |grouprole EVERYONE
|tip Avoid standing in beams and puddles. |grouprole EVERYONE
|tip When the room splits, stay in your slice near the middle. |grouprole EVERYONE
|tip After the pull in, get hit once by Silverstrike Barrage but not again. |grouprole EVERYONE
|tip Stay stacked near the outer edge during phase 2. |grouprole EVERYONE
|tip Aim Silverstrike Arrow at Voidspawns to remove the tether. |grouprole EVERYONE
|tip Interrupt Void Barrage. |grouprole EVERYONE
|tip Stack near Alleria during the third phase. |grouprole EVERYONE
|tip When you are tethered, break them by ranging at least 30 yards away. |grouprole EVERYONE
|tip Break ranged first, then melle, then the tanks. |grouprole EVERYONE
|tip Use feathers to move to new slices during Devouring Cosmos. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Kill Morium, then Demair, then Vorelus. |grouprole DPS
|tip Use Heroism/cooldowns during the final phase. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip Avoid dispelling Null Corona and heal through it unless the player will die. |grouprole HEALER
|tip This fight is very healing intensive and will require frequent cooldown usage. |grouprole HEALER
_TANK_ |grouprole TANK
|tip One tank stay on Vorelus and pick up Void Droplets. |grouprole TANK
|tip Swap at 2-3 stacks of Rift Slash. |grouprole TANK
|tip Swap when breaking a tether. |grouprole TANK
confirm
]])
QuestCore:RegisterGuide("Dungeon Guides\\Midnight Raids\\The Dreamrift",{
description="To complete this raid, you will need to kill Chimaerus, the Undreamt God",
keywords={"Chimaerus"},
achieveid={61487,61489,61488},
mapid={2531,2532},
patch='120001',
},[[
step
kill Chimaerus##256116
_EVERYONE_ |grouprole EVERYONE
|tip Before pulling, split into group 1 and group 2, even tanks, healers, and DPS. |grouprole EVERYONE
|tip Group 1 will deal with Chimaerus and group 2 will soak the circle and deal with adds. |grouprole EVERYONE
|tip Move the Alndust Upheval circle off to the side if targeted and soak it with your assigned group so everyone gains Alnsight. |grouprole EVERYONE
|tip While in Alnsight, the assigned group should DPS the large add while AoEing the small adds. |grouprole EVERYONE
|tip Interrupt and dispel Haunting Essence. |grouprole EVERYONE
|tip While 1 group deals with Alnsight adds, the other works on Chimaerus. |grouprole EVERYONE
|tip If you get Comusming Miasma, move to a puddle and call for a dispel, touching the puddle with your circle to remove it. |grouprole EVERYONE
|tip Move out of Rending Tear to avoid the bleed. |grouprole EVERYONE
|tip At 100 energy, Consume is cast and everyone is knocked back, beginning intermission. |grouprole EVERYONE
|tip During intermission, dodge the line and stay out of puddles. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Do not let adds reach the boss and use cooldowns accordingly. |grouprole DPS
|tip Keep killing adds during intermission. |grouprole DPS
|tip Burn down all adds before Ravenous Dive. |grouprole DPS
|tip Ignore small adds and focus on the big one until they pile up. |grouprole DPS
|tip When the little adds lose their shield, they start moving to the boss so waiting until they group up for AoE helps. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip Do not dispel people in the raid to reduce splash damage. |grouprole HEALER
confirm
]])
QuestCore:RegisterGuide("Dungeon Guides\\Midnight Raids\\March on Quel'Danas",{
description="To complete this raid, you will need to kill the following bosses:\n\nBelo'ren\n"..
"Midnight Falls",
keywords={"Belo'ren","Midnight","Falls"},
achieveid={61367,61369,61371},
patch='120001',
},[[
step
kill Belo'ren##228713 |goto March on Quel Danas/0 51.10,29.95
_EVERYONE_ |grouprole EVERYONE
|tip Match your feather color to the color of the mechanic happening. |grouprole EVERYONE
|tip Mark the room at each point of the circle in the middle of the room. |grouprole EVERYONE
|tip Use the markers for assigning peopel to group up matching colors for the feather/dive mechanic. |grouprole EVERYONE
|tip A permanent puddle will be left behind, so use markers to plan accordinly. |grouprole EVERYONE
|tip Intercept Infused Quills if you have the matching color. |grouprole EVERYONE
|tip Pop orbs to open a path when you have the matching color. |grouprole EVERYONE
|tip Phase 2 starts at 0% health. |grouprole EVERYONE
|tip Place warlock gateways near the most recent puddle drop. |grouprole EVERYONE
|tip Use the gateway when the boss drops to reposition quickly. |grouprole EVERYONE
|tip Get hit by your matching cone color. |grouprole EVERYONE
|tip Pop bubbles with the matching color again. |grouprole EVERYONE
|tip After 30 seconds, phase 2 ends and phase 1 restarts with dive hitting an additional player. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Save Heroism for the egg phase. |grouprole DPS
|tip Kill the ember, then burn the egg quickly. |grouprole DPS
|tip Use DPS cooldowns on eggs to burn them quickly. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip The final phase reduces raid healing more each time it restarts. |grouprole HEALER
|tip Healing will become more difficult the longer the fight lasts. |grouprole HEALER
_TANK_ |grouprole TANK
|tip You will always have the opposite feather color. |grouprole TANK
|tip Intercept the frontal attacks with the matching color every time. |grouprole TANK
confirm
step
kill L'ura##228713 |goto March on Quel Danas/1 50.74,44.01
_EVERYONE_ |grouprole EVERYONE
|tip The laser should hit symobls in the same order that they are presented. |grouprole EVERYONE
|tip Interrup/CC/Purge Safeguard matrices. |grouprole EVERYONE
|tip Avoid hitting people with start patterns. |grouprole EVERYONE
|tip During phase 2, hit cores not on the same side as the boss with Galvanize. |grouprole EVERYONE
|tip Avoid touching Cosmic Cores. |grouprole EVERYONE
|tip During phase 3, always stand near a Torchbearer. |grouprole EVERYONE
|tip During The Dark Archangel, one player should be designated to use the extra action button ability to drop a safe barrier for the group. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Burn down hostile crystals after matrices. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip Heal Dusk Crystals after matrices. |grouprole HEALER
|tip A healing absorb is applied during intermission. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Swap after each Impaled cycle. |grouprole TANK
confirm
]])
QuestCore:RegisterGuide("Dungeon Guides\\Midnight Raids\\Sporefall",{
description="To complete this raid, you will need to kill Rotmire.",
keywords={"Rotmire"},
achieveid={63237,63240,63241},
patch='120007',
},[[
step
kill Rotmire##254176 |goto Sporefall/0 72.38,74.43
_EVERYONE_ |grouprole EVERYONE
|tip Move to the outside to drop Festering Vines |grouprole EVERYONE
|tip Shroomlings fixate random players. |grouprole EVERYONE
|tip Lead them under Rotmire and AoE them down. |grouprole EVERYONE
|tip Every two add spawns, mushrooms spawn on add corpses and need to be AoE'd down before the end of the cast. |grouprole EVERYONE
_HEALER_ |grouprole HEALER
|tip Rotting Pustule damage gets more intense over time. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Swap on Putrified Fist. |grouprole TANK
confirm
]])
