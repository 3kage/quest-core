-- Bundled QuestCore guide
if not QuestCore then return end

if UnitFactionGroup("player")~="Alliance" then return end
QuestCore:RegisterGuide("Events Guides\\Brawler's Guild\\Legion Brawler's Guild", {
description="This guide will help you achieve rank 8 in the Brawler's Guild.",
},[[
step
kill Helarjar Priest##111326+, Helarjar Mystcaller##111325+, Helarjar Soulhunter##111328+
|tip Kill any and all of the elite mobs on this island.
|tip You may need a group to accomplish this.
collect 1 Blood-Soaked Invitation##144363 |goto Stormheim/0 85.32,11.34 |n
click Blood-Soaked Invitation##144363 |use Blood-Soaked Invitation##144363
Earn the Achievement "The First Rule of Brawler's Guild" |achieve 11558
step
talk Quackenbush##68363 |goto Deeprun Tram/2 54.40,26.80
|tip We also suggest that you purchase potions from Quackenbush, located here. Once you have the potions, use the buff of your choice right before the fight, and then again during the fight to maximize your dps.
_WARNING_
|tip There is an enrage timer on all Brawler's Guild fights. You have 2 minutes to kill the current opponent before it activates. If it does, a wall of unavoidable meteors sweeps across the arena, killing you. Remember this as you go through this guide!
Click here after buying potions
|tip You can only have a maximum of 10 potions of each at a time.
|confirm
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.20,35.00 < 5
Select _"Yes, sign me up for a fight.."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.80,47.40 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip When Oso begins casting Shotgun Blast, move out from in front of him.
|tip He may occasionally knock you back and then cast Grizzly Leap. Run out of this circle.
|only if QC:GetReputation(2011).friendRep<250
step
kill Oso##117753
|tip When Oso begins casting Shotgun Blast, move out from in front of him.
|tip He may occasionally knock you back and then cast Grizzly Leap. Run out of this circle.
Defeat Oso |complete QC:GetReputation(2011).friendRep>=250
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.20,35.00 < 5
Select _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.80,47.40 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Do not step on the Luckydont dolls that he places around the room, these will be red and white.
|tip The Blue Luckydo dolls will give a health boost, these are ok to run over.
|tip When he reaches 50 percent HP, he will knock you back. Be sure your back is not facing any of these bad dolls.
|tip After he hits 50 percent he will start summoning the white Luckydonts that will hop towards you. Avoid these.
|tip Interrupt Cantata of Flooting. This is a channeled ability that will heal him every .5 seconds.
|only if QC:GetReputation(2011).friendRep<500
step
kill Grandpa Grumplefloot##70678
|tip Do not step on the Luckydont dolls that he places around the room, these will be red and white.
|tip The Blue Luckydo dolls will give a health boost, these are ok to run over.
|tip When he reaches 50 percent HP, he will knock you back. Be sure your back is not facing any of these bad dolls.
|tip After he hits 50 percent he will start summoning the white Luckydonts that will hop towards you. Avoid these.
|tip Interrupt Cantata of Flooting. This is a channeled ability that will heal him every .5 seconds.
Defeat Grandpa Grumplefloot |complete QC:GetReputation(2011).friendRep>=500
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.20,35.00 < 5
Select _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.80,47.40 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Run away from him when he casts Horrific Pursuit. This will one-shot you.
|only if QC:GetReputation(2011).friendRep<750
step
kill Ooliss##117133
|tip Run away from him when he casts Horrific Pursuit. This will one-shot you.
Defeat Ooliss |complete QC:GetReputation(2011).friendRep>=750
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.20,35.00 < 5
Select _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.80,47.40 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Move out of Molten Slag.
|tip If Arstad the Wild finishes his Lightning Crash cast he will jump on where you are and stun you for 3 seconds. Be sure to keep moving while the cast is about to complete.
|tip There will be 3 enemies in this fight, but they all share the same health pool.
|only if QC:GetReputation(2011).friendRep<1000
step
kill Altor Direvith##115294, Arstad the Wild##115295, Ulrich Forgeworth##115292
|tip Move out of Molten Slag.
|tip If Arstad the Wild finishes his Lightning Crash cast he will jump on where you are and stun you for 3 seconds. Be sure to keep moving while the cast is about to complete.
|tip There will be 3 enemies in this fight, but they all share the same health pool.
Defeat The Warhammer Council |complete QC:GetReputation(2011).friendRep>=1000
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.20,35.00 < 5
Select _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.80,47.40 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Dippy has a melee ability called Peck. If you are in melee range when the cast is finished, it will kill you.
|tip When Dippy takes damage, he is knocked back.
|tip You should prioritize fast attacks.
|only if QC:GetReputation(2011).friendRep<1250
step
kill Dippy##68255
|tip Dippy has a melee ability called Peck. If you are in melee range when the cast is finished, it will kill you.
|tip When Dippy takes damage, he is knocked back.
|tip You should prioritize fast attacks.
Defeat Dippy |complete QC:GetReputation(2011).friendRep>=1250
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.20,35.00 < 5
Select _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.80,47.40 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Bill will cast Summon Broom. If this cast goes off he will one of 2 brooms.
|tip Boom Broom will have a explosion timer and if it is near you when it runs out, you will die.
|tip These can be slowed and stunned.
|only if QC:GetReputation(2011).friendRep<1500
step
kill Bill the Janitor##117077
|tip Bill will cast Summon Broom. If this cast goes off he will one of 2 brooms.
|tip Boom Broom will have a explosion timer and if it is near you when it runs out, you will die.
|tip These can be slowed and stunned.
Defeat Bill the janitor |complete QC:GetReputation(2011).friendRep>=1500
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.20,35.00 < 5
Select _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.80,47.40 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Avoid Sanoriak's Firewall ability. There is always a safe opening to run through.
|tip Always interrupt Pyroblast.
|only if QC:GetReputation(2011).friendRep<1750
step
kill Sanoriak##67268
|tip Avoid Sanoriak's Firewall ability. There is always a safe opening to run through.
|tip Always interrupt Pyroblast.
Defeat Sanoriak |complete QC:GetReputation(2011).friendRep>=1750
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.20,35.00 < 5
Select _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.80,47.40 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Once the fight begins, your character will continuously run forward.
|tip You gain a buff that allows you to cast while running.
|tip Run through the maze without hitting any of the blue tiles.
|tip While Whirling Kick is active, you can not damage the monks. To cancel this, collect one of the yellow orbs around the room.
|only if QC:GetReputation(2011).friendRep<2000
step
kill Master Paku##115645
|tip Once the fight begins, your character will continuously run forward.
|tip You gain a buff that allows you to cast while running.
|tip Run through the maze without hitting any of the blue tiles.
|tip While Whirling Kick is active, you can not damage the monks. To cancel this, collect one of the yellow orbs around the room.
Defeat Master Paku |complete QC:GetReputation(2011).friendRep>=2000
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.20,35.00 < 5
Select _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.80,47.40 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip He doesn't do anything special, just auto attacks.
|only if QC:GetReputation(2011).friendRep<2250
step
kill Doomflipper##117145
|tip He doesn't do anything special, just auto attacks.
Defeat Doomflipper |complete QC:GetReputation(2011).friendRep>=2250
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.20,35.00 < 5
Select _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.80,47.40 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip As the fight goes on, Splat will make copies of himself. These copies move slow and die when Splat dies.
|tip Avoid the copies of Splat and kill him before the copies overwhelm you.
|only if QC:GetReputation(2011).friendRep<2500
step
kill Splat##70736
|tip As the fight goes on, Splat will make copies of himself. These copies move slow and die when Splat dies.
|tip Avoid the copies of Splat and kill him before the copies overwhelm you.
Defeat Splat |complete QC:GetReputation(2011).friendRep>=2500
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.20,35.00 < 5
Select _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.80,47.40 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Shadowmaster will cast 2 spells: Shadow Torch and Shadow Blast.
|tip His Shadow Torch ability will put a torch on the ground.
|tip His Shadow Blast ability will create a ball of energy that travels toward a Shadow Torch.
|tip Be sure not to stand in these Shadow Blasts by not standing between Shadow Torches.
|only if QC:GetReputation(2011).friendRep<2750
step
kill Shadowmaster Aameen##116743
|tip Shadowmaster will cast 2 spells: Shadow Torch and Shadow Blast.
|tip His Shadow Torch ability will put a torch on the ground.
|tip His Shadow Blast ability will create a ball of energy that travels toward a Shadow Torch.
|tip Be sure not to stand in these Shadow Blasts by not standing between Shadow Torches.
Defeat Shadowmaster Aameen |complete QC:GetReputation(2011).friendRep>=2750
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.20,35.00 < 5
Select _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.80,47.40 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Johnny Awesome will have a pet called Dazzle.
|tip To kill his pet, put his pet inbetween yourself and Johnny Awesome while he is casting Powershot.
|tip Once his pet is dead, Johnny will start casting Revive Dazzle.
|tip This is a long cast and he will stop all other abilities to do this. Also, he will take 100 percent more damage when casting the revive ability.
|tip Don't stand in Rain of Arrows indicated by green circles on the ground.
|tip Don't stand in front of him when he casts Volley.
|only if QC:GetReputation(2011).friendRep<3000
step
kill Johnny Awesome##115058
|tip Johnny Awesome will have a pet called Dazzle.
|tip To kill his pet, put his pet inbetween yourself and Johnny Awesome while he is casting Powershot.
|tip Once his pet is dead, Johnny will start casting Revive Dazzle.
|tip This is a long cast and he will stop all other abilities to do this. Also, he will take 100 percent more damage when casting the revive ability.
|tip Don't stand in Rain of Arrows indicated by green circles on the ground.
|tip Don't stand in front of him when he casts Volley.
Defeat Johnny Awesome |complete QC:GetReputation(2011).friendRep>=3000
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.20,35.00 < 5
Select _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.80,47.40 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip This is the first damage test of Brawler's Guild!
|tip Burnstachio will have a buff called Ember Shield, preventing all damage except from players with the Water Shield buff.
|tip You must obtain the Water Shield by following the rain clouds that make a path rhough the fire.
|tip This is a RNG type fight.
|tip Once you gain the Water Shield buff, you will be immune to the fire and able to attack Burnstachio for 15 seconds.
|tip Hitting the fire without the Water Shield buff will one-shot you.
|tip You will need to find a new rain cloud path before the buff runs out, as a new Water Shield bubble will not spawn until your buff expires.
|only if QC:GetReputation(2011).friendRep<3250
step
kill Burnstachio##115023
|tip This is the first damage test of Brawler's Guild!
|tip Burnstachio will have a buff called Ember Shield, preventing all damage except from players with the Water Shield buff.
|tip You must obtain the Water Shield by following the rain clouds that make a path rhough the fire.
|tip This is a RNG type fight.
|tip Once you gain the Water Shield buff, you will be immune to the fire and able to attack Burnstachio for 15 seconds.
|tip Hitting the fire without the Water Shield buff will one-shot you.
|tip You will need to find a new rain cloud path before the buff runs out, as a new Water Shield bubble will not spawn until your buff expires.
Defeat Burnstachio |complete QC:GetReputation(2011).friendRep>=3250
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.20,35.00 < 5
Select _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.80,47.40 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Meatball has a 60 second enrage timer.
|tip Meatball drops purple orbs which will increase your damage and heal you.
|tip Stacking these orbs is the only way to defeat him before the enrage timer.
|tip Spend the first 30-45 seconds colleting these orbs.
|only if QC:GetReputation(2011).friendRep<3500
step
kill Meatball##67573
|tip Meatball has a 60 second enrage timer.
|tip Meatball drops purple orbs which will increase your damage and heal you.
|tip Stacking these orbs is the only way to defeat him before the enrage timer.
|tip Spend the first 30-45 seconds colleting these orbs.
Defeat Meatball |complete QC:GetReputation(2011).friendRep>=3500
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.20,35.00 < 5
Select _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.80,47.40 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Max Megablast will spam Goblin Rocket Barrage.
|tip Avoid these rockets and lead Bo Bobble into them.
|tip Periodically, Bo will retreat to a corner and put up a shield. Stand under the shield so Goblin Rocket Barrage will hit it.
|tip 3 rockets will disable the shield.
|tip These two share one Health Pool.
|only if QC:GetReputation(2011).friendRep<3750
step
kill Max Megablast##67488, Bo Bobble##67487
|tip Max Megablast will spam Goblin Rocket Barrage.
|tip Avoid these rockets and lead Bo Bobble into them.
|tip Periodically, Bo will retreat to a corner and put up a shield. Stand under the shield so Goblin Rocket Barrage will hit it.
|tip 3 rockets will disable the shield.
|tip These two share one Health Pool.
Defeat GG Engineering |complete QC:GetReputation(2011).friendRep>=3750
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.20,35.00 < 5
Select _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.80,47.40 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Stiches will cast Stiches' Hook when the player is not in melee range.
|tip This will also apply a stack of Hooked, which reduces movement speed by 10 percent per stack.
|tip Surronding Stiches is an Aura of Rot. This applies a debuff every second or two, increasing damage per stack.
|tip Do not get to 10 stacks or it will instantly kill you.
|tip At around 7 or 8 stacks, run out of the Aura asap. Once out, he will cast Stiches' Hook to bring you back in.
|tip Keep repeating this process. Save your movement speed increases for when you have higher stacks of Hooked.
|only if QC:GetReputation(2011).friendRep<4000
step
kill Stiches##117275
|tip Stiches will cast Stiches' Hook when the player is not in melee range.
|tip This will also apply a stack of Hooked, which reduces movement speed by 10 percent per stack.
|tip Surronding Stiches is an Aura of Rot. This applies a debuff every second or two, increasing damage per stack.
|tip Do not get to 10 stacks or it will instantly kill you.
|tip At around 7 or 8 stacks, run out of the Aura asap. Once out, he will cast Stiches' Hook to bring you back in.
|tip Keep repeating this process. Save your movement speed increases for when you have higher stacks of Hooked.
Defeat Stiches |complete QC:GetReputation(2011).friendRep>=4000
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.20,35.00 < 5
Select _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.80,47.40 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip You will be fighting Wes and Sunny, along with a few dancers.
|tip Throughout the fight, Sunny will cast Sit Down. This can be interrupted, but if it goes off, it will root you for 3 seconds.
|tip There will be Jukeboxes in the back that will shoot out Sound Waves which can be dodged, or waves of Drop the Bass! which can be jumped over.
|tip These 2 abilities do about 50k-100k damage per hit. You will want to avoid these by interrupting every Sit Down cast.
|only if QC:GetReputation(2011).friendRep<4250
step
kill Wes##114945, Sonny##114944
|tip You will be fighting Wes and Sunny, along with a few dancers.
|tip Throughout the fight, Sunny will cast Sit Down. This can be interrupted, but if it goes off, it will root you for 3 seconds.
|tip There will be Jukeboxes in the back that will shoot out Sound Waves which can be dodged, or waves of Drop the Bass! which can be jumped over.
|tip These 2 abilities do about 50k-100k damage per hit. You will want to avoid these by interrupting every Sit Down cast.
Defeat Thwack U |complete QC:GetReputation(2011).friendRep>=4250
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.20,35.00 < 5
Select _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.80,47.40 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Razorgrin will flop around on the ground, going towards the player. Simply kite him if you are a ranged.
|tip If you are a melee, you will need to get behind him and stay behind him at all times.
|tip This is the next dps check in the Brawler's Guild.
|only if QC:GetReputation(2011).friendRep<4500
step
kill Razorgrin##71085
|tip Razorgrin will flop around on the ground, going towards the player. Simply kite him if you are a ranged.
|tip If you are a melee, you will need to get behind him and stay behind him at all times.
|tip This is the next dps check in the Brawler's Guild.
Defeat Razorgrin |complete QC:GetReputation(2011).friendRep>=4500
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.20,35.00 < 5
Select _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.80,47.40 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip When the gnomes spawn, Wheezy is the only one at full health.
|tip Attack Queasy first, followed by the next lowest health gnome.
|tip AoE damage is beneficial for this encounter, helping to beat the enrage timer.
|only if QC:GetReputation(2011).friendRep<4750
step
kill Fleasy##67515, Greazy##67514, Sleazy##67513, Wheezy##67516, Queasy##67511
|tip When the gnomes spawn, Wheezy is the only one at full health.
|tip Attack Queasy first, followed by the next lowest health gnome.
|tip AoE damage is beneficial for this encounter, helping to beat the enrage timer.
Defeat Leper Gnome Quintet |complete QC:GetReputation(2011).friendRep>=4750
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.20,35.00 < 5
Select _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.80,47.40 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip There will be a row of Cannons in the back of the room and long fuses going toward each one.
|tip When a Lit Fuse reaches a cannon, that cannon will fire. If you are in the row of that cannon, it's an instant kill
|tip You will need to side step to safe areas.
|only if QC:GetReputation(2011).friendRep<5000
step
kill Blackmange##114902
|tip There will be a row of Cannons in the back of the room and long fuses going toward each one.
|tip When a Lit Fuse reaches a cannon, that cannon will fire. If you are in the row of that cannon, it's an instant kill
|tip You will need to side step to safe areas.
Defeat Blackmange |complete QC:GetReputation(2011).friendRep>=5000
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.20,35.00 < 5
Select _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.80,47.40 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Topps will charge around the room. Dino Dash, when dodged, will either give him a debuff called Dino Daze or will cast Dino Dash again.
|tip Simply dodge Dino Dash and save your cooldowns for when he is Dino Dazed.
|tip Everytime Topps Dashes, he will gain a buff making his next Dashes cast faster. This effect stacks.
|tip This fight is more difficult for melee, as you can not damage Topps when he is charging or about to charge.
|tip This is another DPS check and requires a minimum of 410k DPS to avoid the enrage timer.
|only if QC:GetReputation(2011).friendRep<5250
step
kill Topps##116539
|tip Topps will charge around the room. Dino Dash, when dodged, will either give him a debuff called Dino Daze or will cast Dino Dash again.
|tip Simply dodge Dino Dash and save your cooldowns for when he is Dino Dazed.
|tip Everytime Topps Dashes, he will gain a buff making his next Dashes cast faster. This effect stacks.
|tip This fight is more difficult for melee, as you can not damage Topps when he is charging or about to charge.
|tip This is another DPS check and requires a minimum of 410k DPS to avoid the enrage timer.
Defeat Topps |complete QC:GetReputation(2011).friendRep>=5250
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.20,35.00 < 5
Select _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.80,47.40 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip When Millie casts Megafantastic Discombobumorphanator, get ready to run into Electric Dynamite.
|tip Electric Dynamite will put a lightning circle on the ground.
|tip When the cast of Megafantastic Discombobumorphanator is almost finished, step into Electric Dynamite.
|tip Use defensive cooldowns to help mitigate Photoplasm Buster Ray.
|only if QC:GetReputation(2011).friendRep<5500
step
kill Millie Watt##67591
|tip When Millie casts Megafantastic Discombobumorphanator, get ready to run into Electric Dynamite.
|tip Electric Dynamite will put a lightning circle on the ground.
|tip When the cast of Megafantastic Discombobumorphanator is almost finished, step into Electric Dynamite.
|tip Use defensive cooldowns to help mitigate Photoplasm Buster Ray.
Defeat Millie Watt |complete QC:GetReputation(2011).friendRep>=5500
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.20,35.00 < 5
Select _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.80,47.40 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Carl is a giant worm that will Burrow across the room.
|tip Periodicaly, he will spawn Lava Pools at a random location. When these spawn, they will shot out Lava Waves in 4 directions.
|tip If one of these Lava Waves hits another Lava Pool, it will spawn another 2 waves out of that pool.
|only if QC:GetReputation(2011).friendRep<5750
step
kill Carl##115233
|tip Carl is a giant worm that will Burrow across the room.
|tip Periodicaly, he will spawn Lava Pools at a random location. When these spawn, they will shot out Lava Waves in 4 directions.
|tip If one of these Lava Waves hits another Lava Pool, it will spawn another 2 waves out of that pool.
Defeat Carl |complete QC:GetReputation(2011).friendRep>=5750
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.20,35.00 < 5
Select _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.80,47.40 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip There will be 3 bosses: Hudson, Dupree, and Stuffshrew.
|tip Hudson will put up a Barrier which will need to be destroyed by dealing damage. He will also cast Tesla Cannon.
|tip Interrupt Tesla Cannon.
|tip Dupree will only cast High Noon the entire fight. You will need to kill him before this finishes casting.
|tip Stuffshrew will cast Maniacal Laugh which, when completed, will explode. This deals a high amount of damage and knocks you back if you are within 6 yards.
|tip Run away from Stuffshrew when he casts this.
|tip Stuffshrew will also put 3 bombs on the ground, indicated by red circles. Avoid standing in these.
|only if QC:GetReputation(2011).friendRep<6000
step
kill Dupree##114955, Hudson##114951, Stuffshrew##114941
|tip There will be 3 bosses: Hudson, Dupree, and Stuffshrew.
|tip Hudson will put up a Barrier which will need to be destroyed by dealing damage. He will also cast Tesla Cannon.
|tip Interrupt Tesla Cannon.
|tip Dupree will only cast High Noon the entire fight. You will need to kill him before this finishes casting.
|tip Stuffshrew will cast Maniacal Laugh which, when completed, will explode. This deals a high amount of damage and knocks you back if you are within 6 yards.
|tip Run away from Stuffshrew when he casts this.
|tip Stuffshrew will also put 3 bombs on the ground, indicated by red circles. Avoid standing in these.
Defeat Ogrewatch |complete QC:GetReputation(2011).friendRep>=6000
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.20,35.00 < 5
Select _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.80,47.40 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Nibbleh will leave green pools on the ground. Each time he contacts a pool, he will gain increased damage and take less damage.
|tip Melee will need to constantly backpedal and kite him in a circle around the room.
|tip Kite Nibbleh and DPS him quickly before his stacks get too high.
|only if QC:GetReputation(2011).friendRep<6250
step
kill Nibbleh##70656
|tip Nibbleh will leave green pools on the ground. Each time he contacts a pool, he will gain increased damage and take less damage.
|tip Melee will need to constantly backpedal and kite him in a circle around the room.
|tip Kite Nibbleh and DPS him quickly before his stacks get too high.
Defeat Nibbleh |complete QC:GetReputation(2011).friendRep>=6250
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.20,35.00 < 5
Select _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.80,47.40 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Serpent of Old will Spawn 4 Totems. You will need to kite him to each of the totems, getting just enough stacks on each so that when you get back to the first, those stacks will reset.
|tip Around 12 stacks on each totem.
|tip If you have less dps and more defensives try to get more stacks of either the damage buff totem or the haste buff totem.
|tip Totem of Ferocity will give him a stacking damage bonus. 1% per stack.
|tip Warding Totem will give him a buff, reducing his damage taken. 1% per stack.
|tip Healing Flume Totem will give him a stacking healing buff. .01% per stack.
|tip Invigorating Totem will give him a stacking buff, increasing his haste and movement speed. 6% haste and 2% movement speed per stack.
|tip There will also be green barrels placed at your location throughout the fight; be sure to stay clear of these.
|only if QC:GetReputation(2011).friendRep<6500
step
kill Serpent of Old##116692
|tip Serpent of Old will Spawn 4 Totems. You will need to kite him to each of the totems, getting just enough stacks on each so that when you get back to the first, those stacks will reset.
|tip Around 12 stacks on each totem.
|tip If you have less dps and more defensives try to get more stacks of either the damage buff totem or the haste buff totem.
|tip Totem of Ferocity will give him a stacking damage bonus. 1% per stack.
|tip Warding Totem will give him a buff, reducing his damage taken. 1% per stack.
|tip Healing Flume Totem will give him a stacking healing buff. .01% per stack.
|tip Invigorating Totem will give him a stacking buff, increasing his haste and movement speed. 6% haste and 2% movement speed per stack.
|tip There will also be green barrels placed at your location throughout the fight; be sure to stay clear of these.
Defeat Serpent of Old |complete QC:GetReputation(2011).friendRep>=6500
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.20,35.00 < 5
Select _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.80,47.40 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Throughout the entire fight, he will put sound wave circles all over the room. Avoid these at all costs.
|tip Periodically, he will cast Destructolaser, which will follow you around. Avoid getting hit by this.
|tip He will also cast Blue Crush. This needs to be interrupted ASAP.
|tip This is another dps check thay requires a minimum of 500k dps to beat the enrage timer.
|only if QC:GetReputation(2011).friendRep<6750
step
kill Epicus Maximus##67490
|tip Throughout the entire fight, he will put sound wave circles all over the room. Avoid these at all costs.
|tip Periodically, he will cast Destructolaser, which will follow you around. Avoid getting hit by this.
|tip He will also cast Blue Crush. This needs to be interrupted ASAP.
|tip This is another dps check thay requires a minimum of 500k dps to beat the enrage timer.
Defeat Epicus Maximus |complete QC:GetReputation(2011).friendRep>=6750
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.20,35.00 < 5
Select _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.80,47.40 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip This boss will transform into multiple different bosses from the Hellfire Citadel raid.
|tip Siegemaster Mar'tak will cast Shockwave. This need to be avoided at all costs.
|tip Kormrok will cast Grasping Hand. You will need switch to this and destroy it ASAP. If it is up too long, you may need to use a defensive cooldown.
|tip Gurtogg Bloodboil will apply Acidic Wound which will deal 40k damage every 2 seconds and reduce your armor by 100 percent for 2 minutes.
|tip Watch your health and use your defensive cooldowns when needed.
|tip Kilrogg Deadeye will cast Death Throes. Just side step these green circles.
|tip Gorefiend will cast Crushing Darkness. Just side step these purple circles.
|tip Fel Lord Zakuun will cast Fel Crystal. Try to place these in one of the 4 corners and run to the opposite side of the room.
|tip The Fel Crystal will continiously spawn Fel Waves that need to be dodged.
|tip Tyrant Velhari will cast Gavel of the Tyrant. You will need to use an immunity or a big defensive cooldown before this goes off.
|tip Xhul'horacthat will cast Black Hole. Stay completly clear of this when it is put down.
|tip Mannoroth will cast Fel Imp-losion. This will need to be interrupted.
|tip Archimonde will cast Shadowfel Burst. This will knock you up high in the air.
|tip You will need a minimum of 550k dps to beat the enrage timer.
|only if QC:GetReputation(2011).friendRep<7000
step
kill Ray D. Tear##115040
|tip This boss will transform into multiple different bosses from the Hellfire Citadel raid.
|tip Siegemaster Mar'tak will cast Shockwave. This need to be avoided at all costs.
|tip Kormrok will cast Grasping Hand. You will need switch to this and destroy it ASAP. If it is up too long, you may need to use a defensive cooldown.
|tip Gurtogg Bloodboil will apply Acidic Wound which will deal 40k damage every 2 seconds and reduce your armor by 100 percent for 2 minutes.
|tip Watch your health and use your defensive cooldowns when needed.
|tip Kilrogg Deadeye will cast Death Throes. Just side step these green circles.
|tip Gorefiend will cast Crushing Darkness. Just side step these purple circles.
|tip Fel Lord Zakuun will cast Fel Crystal. Try to place these in one of the 4 corners and run to the opposite side of the room.
|tip The Fel Crystal will continiously spawn Fel Waves that need to be dodged.
|tip Tyrant Velhari will cast Gavel of the Tyrant. You will need to use an immunity or a big defensive cooldown before this goes off.
|tip Xhul'horacthat will cast Black Hole. Stay completly clear of this when it is put down.
|tip Mannoroth will cast Fel Imp-losion. This will need to be interrupted.
|tip Archimonde will cast Shadowfel Burst. This will knock you up high in the air.
|tip You will need a minimum of 550k dps to beat the enrage timer.
Defeat Ray D. Tear |complete QC:GetReputation(2011).friendRep>=7000
step
Congratulations you are now Rank 8 in the new Brawler's Guild!
Earn the Achievement "King of the Guild" |achieve 11565
]])
QuestCore:RegisterGuide("Daily Guides\\Legion\\The Originals",{
description="This guide will walk you through killing Azuregos, Lord Kazzak, and a Dragon of Nightmare for the daily quest \"The Originals\". This quest is available from November 16 to November 30.",
keywords={"Azuregos","Lord","Kazzak","Dragons","of","Nightmare","Lethon","Taerar","Ysondre","Emeriss"},
condition_valid=function() return level >= 30 end,
condition_valid_msg="You must be at least level 30 to complete this guide.",
model={12449,11460,15364,15363,15365,15366},
},[[
step
collect Anniversary Gift##147876 |n
|tip Go to the nearest mailbox to receive this item.
Open the Anniversary Gift |use Anniversary Gift##147876
accept Interesting Times##47252
step
Enter the building |goto Stormwind City/0 84.16,26.07
talk Archmage Timear##111246
turnin Interesting Times##47252 |goto Stormwind City/0 84.65,24.86
accept The Originals##47253 |goto Stormwind City/0 84.65,24.86
step
kill Lord Kazzak##121818
_EVERYONE_
|tip Lord Kazzak has a 5 minute respawn timer.
|tip Mark of Kazzak deals shadow damage over time and deals AoE shadow damage in addition to a knockback when dispelled.
|tip Shadow Bolt Volley will deal shadow damage to all players nearby.
|tip Thunderclap is a stacking debuff that reduces haste by 5%.
|tip Avoid entering areas targeted on the ground.
_TANK_ |only if grouprole("TANK")
|tip Void Bolt decreases movement speed by 50% and increases future Void Bolt damage. This effect stacks. |only if grouprole("TANK")
|tip Frenzy increases Lord Kazzak's attack speed and damage. |only if grouprole("TANK")
Slay Lord Kazzak |q 47253/1 |goto Blasted Lands/0 32.37,49.09
step
kill Azuregos##121820
_EVERYONE_
|tip Azuregos has a 5 minute respawn timer.
|tip Avoid entering areas targeted on the ground.
_DAMAGE_ |only if grouprole("DAMAGE")
|tip Azuregos has a Frost Breat attack that hits anyone in a frontal cone area. Avoid standing in front of him. |only if grouprole("DAMAGE")
_HEALER_ |only if grouprole("HEALER")
|tip Azuregos has a Frost Breat attack that hits anyone in a frontal cone area. Avoid standing in front of him. |only if grouprole("HEALER")
_TANK_ |only if grouprole("TANK")
Slay Azuregos |q 47253/2 |goto Azshara/0 48.80,84.18
step
The Dragons of Nightmare can spawn in one of four different locations
|tip Open your world map and click on "The Originals" quest to see where the current dragon is located.
|tip Go to the zone indicated on your map
Go to Ashenvale |goto Ashenvale |c |next "Ashenvale" |or
Go to Feralas |goto Feralas |c |next "Feralas" |or
Go to Duskwood |goto Duskwood |c |next "Duskwood" |or
Go to the Hinterlands |goto The Hinterlands |c |next "Hinterlands" |or
step
label "Ashenvale"
_Ysondre_
|tip Stay out of purple swirls on the ground. |only if grouprole("EVERYONE")
|tip Stand in Nightmare Blooms on the ground to prevent Dread Horrors from spawning. |only if grouprole("EVERYONE")
|tip Dread Horrors will reduce the damage of players within 5 yards by 50 percent. |only if grouprole("EVERYONE")
|tip Dispel players affected by Defiled Vines. |only if grouprole("HEALER")
_Emeriss_
|tip Volatile Infection will deal damage throughout the fight. |only if grouprole("EVERYONE")
|tip Emeriss will summon an Essence of Corruption, which should be interrupted. |only if grouprole("EVERYONE")
|tip Don't stand near mushrooms. |only if grouprole("EVERYONE")
_Lethon_
|tip Siphon Life will draw a Soul Fragment from every player. |only if grouprole("EVERYONE")
|tip Kill the Soul Fragments before they reach Lethon. |only if grouprole("DAMAGE")
|tip Avoid standing in purple circles |only if grouprole("EVERYONE")
|tip Shadow Burst will deal damage and slow the player for 21 seconds. This debuff stacks. |only if grouprole("EVERYONE")
_Taerar_
|tip Taerar will summon a Shade of itself, possessing the dragon's breath ability. Don't stand in front of it. |only if grouprole("EVERYONE")
|tip Taerar will periodically fear the entire raid. |only if grouprole("EVERYONE")
|tip This dragon will also summon several poison clouds that will move slowly around. If you stand in these clouds you will be put to sleep. |only if grouprole("EVERYONE")
Slay a Dragon of Nightmare |q 47253/3 |goto Ashenvale/0 93.78,41.30
|next "The_Originals_Turnin"
step
label "Feralas"
_Ysondre_
|tip Stay out of purple swirls on the ground. |only if grouprole("EVERYONE")
|tip Stand in Nightmare Blooms on the ground to prevent Dread Horrors from spawning. |only if grouprole("EVERYONE")
|tip Dread Horrors will reduce the damage of players within 5 yards by 50 percent. |only if grouprole("EVERYONE")
|tip Dispel players affected by Defiled Vines. |only if grouprole("HEALER")
_Emeriss_
|tip Volatile Infection will deal damage throughout the fight. |only if grouprole("EVERYONE")
|tip Emeriss will summon an Essence of Corruption, which should be interrupted. |only if grouprole("EVERYONE")
|tip Don't stand near mushrooms. |only if grouprole("EVERYONE")
_Lethon_
|tip Siphon Life will draw a Soul Fragment from every player. |only if grouprole("EVERYONE")
|tip Kill the Soul Fragments before they reach Lethon. |only if grouprole("DAMAGE")
|tip Avoid standing in purple circles |only if grouprole("EVERYONE")
|tip Shadow Burst will deal damage and slow the player for 21 seconds. This debuff stacks. |only if grouprole("EVERYONE")
_Taerar_
|tip Taerar will summon a Shade of itself, possessing the dragon's breath ability. Don't stand in front of it. |only if grouprole("EVERYONE")
|tip Taerar will periodically fear the entire raid. |only if grouprole("EVERYONE")
|tip This dragon will also summon several poison clouds that will move slowly around. If you stand in these clouds you will be put to sleep. |only if grouprole("EVERYONE")
Slay a Dragon of Nightmare |q 47253/3 |goto Feralas/0 50.95,11.91
|next "The_Originals_Turnin"
step
label "Duskwood"
_Ysondre_
|tip Stay out of purple swirls on the ground. |only if grouprole("EVERYONE")
|tip Stand in Nightmare Blooms on the ground to prevent Dread Horrors from spawning. |only if grouprole("EVERYONE")
|tip Dread Horrors will reduce the damage of players within 5 yards by 50 percent. |only if grouprole("EVERYONE")
|tip Dispel players affected by Defiled Vines. |only if grouprole("HEALER")
_Emeriss_
|tip Volatile Infection will deal damage throughout the fight. |only if grouprole("EVERYONE")
|tip Emeriss will summon an Essence of Corruption, which should be interrupted. |only if grouprole("EVERYONE")
|tip Don't stand near mushrooms. |only if grouprole("EVERYONE")
_Lethon_
|tip Siphon Life will draw a Soul Fragment from every player. |only if grouprole("EVERYONE")
|tip Kill the Soul Fragments before they reach Lethon. |only if grouprole("DAMAGE")
|tip Avoid standing in purple circles |only if grouprole("EVERYONE")
|tip Shadow Burst will deal damage and slow the player for 21 seconds. This debuff stacks. |only if grouprole("EVERYONE")
_Taerar_
|tip Taerar will summon a Shade of itself, possessing the dragon's breath ability. Don't stand in front of it. |only if grouprole("EVERYONE")
|tip Taerar will periodically fear the entire raid. |only if grouprole("EVERYONE")
|tip This dragon will also summon several poison clouds that will move slowly around. If you stand in these clouds you will be put to sleep. |only if grouprole("EVERYONE")
Slay a Dragon of Nightmare |q 47253/3 |goto Duskwood/0 46.63,39.57
|next "The_Originals_Turnin"
step
label "Hinterlands"
_Ysondre_
|tip Stay out of purple swirls on the ground. |only if grouprole("EVERYONE")
|tip Stand in Nightmare Blooms on the ground to prevent Dread Horrors from spawning. |only if grouprole("EVERYONE")
|tip Dread Horrors will reduce the damage of players within 5 yards by 50 percent. |only if grouprole("EVERYONE")
|tip Dispel players affected by Defiled Vines. |only if grouprole("HEALER")
_Emeriss_
|tip Volatile Infection will deal damage throughout the fight. |only if grouprole("EVERYONE")
|tip Emeriss will summon an Essence of Corruption, which should be interrupted. |only if grouprole("EVERYONE")
|tip Don't stand near mushrooms. |only if grouprole("EVERYONE")
_Lethon_
|tip Siphon Life will draw a Soul Fragment from every player. |only if grouprole("EVERYONE")
|tip Kill the Soul Fragments before they reach Lethon. |only if grouprole("DAMAGE")
|tip Avoid standing in purple circles |only if grouprole("EVERYONE")
|tip Shadow Burst will deal damage and slow the player for 21 seconds. This debuff stacks. |only if grouprole("EVERYONE")
_Taerar_
|tip Taerar will summon a Shade of itself, possessing the dragon's breath ability. Don't stand in front of it. |only if grouprole("EVERYONE")
|tip Taerar will periodically fear the entire raid. |only if grouprole("EVERYONE")
|tip This dragon will also summon several poison clouds that will move slowly around. If you stand in these clouds you will be put to sleep. |only if grouprole("EVERYONE")
Slay a Dragon of Nightmare |q 47253/3 |goto The Hinterlands/0 62.88,25.25
step
label "The_Originals_Turnin"
Enter the building |goto Stormwind City/0 84.16,26.07
talk Archmage Timear##111246
turnin The Originals##47253 |goto Stormwind City/0 84.65,24.86
]])
