-- QuestCore bundled guide (mists)
if not QuestCore then return end
if UnitFactionGroup("player")~="Horde" then return end
QuestCore:RegisterGuide("Leveling Guides\\Pandaria (85-90)\\The Jade Forest (85-86)",{
expansion="mists",
image="JadeForest",
next="Leveling Guides\\Pandaria (85-90)\\Valley of the Four Winds (86-87)",
startlevel=85,
mopready=true
},[[
step
accept The Art of War##29611 |goto Orgrimmar/1 51.28,79.42
|tip You will accept this quest automatically.
step
Report to Grommash Hold |q 29611/1 |goto Orgrimmar/1 49.20,73.60
|tip Inside the building.
step
talk General Nazgrim##54870
|tip Inside the building.
turnin The Art of War##29611 |goto Orgrimmar/1 48.60,70.65
accept All Aboard!##31853 |goto Orgrimmar/1 48.60,70.65
step
talk General Nazgrim##55054
|tip On the {o}deck of the flying airship{}.
turnin All Aboard!##31853 |goto Kalimdor/0 61.22,44.59
accept Into the Mists##29690 |goto Kalimdor/0 61.22,44.59
step
talk General Nazgrim##55054
Select _"I'm ready to go, General."_ |gossip 130216
Discover Pandaria |q 29690/1 |goto Kalimdor/0 61.22,44.59
step
Reach the Jade Forest |complete subzone("The Skyfire") |q 29548
step
talk General Nazgrim##55135
|tip {o}Inside the room{}, on the {o}main deck of the airship{}.
turnin Into the Mists##29690 |goto The Jade Forest/0 30.78,10.19
accept Paint it Red!##31765 |goto The Jade Forest/0 30.78,10.19
step
clicknpc Gunship Turret##66677
|tip On the {o}lower level of the ship{}.
Enter the Turret |invehicle |goto The Jade Forest/0 31.53,11.01 |q 31765
|tip If Gunship Turrents are not having this option, check if you can already turn in the quest (2 steps later)
step
Kill Thunder Hold enemies around this area
|tip They are on the ground to the {o}east{}.
Slay #80# Thunder Hold Troops |q 31765/1 |goto The Jade Forest/0 33.03,10.61
kill 9 Thunder Hold Cannons##66203 |q 31765/2 |goto The Jade Forest/0 33.03,10.61
step
talk Rivett Clutchpop##67250
|tip On the {o}lower level of the ship{}.
turnin Paint it Red!##31765 |goto The Jade Forest/0 31.01,11.02
accept Touching Ground##31766 |goto The Jade Forest/0 31.01,11.02
step
click Rappelling Rope##215689
|tip On the {o}lower level of the ship{}.
Rappel into Honeydew Glade |q 31766/1 |goto The Jade Forest/0 31.51,11.11
step
talk General Nazgrim##55135
|tip He walks around this area.
turnin Touching Ground##31766 |goto The Jade Forest/0 31.64,11.33
accept Finish Them!##31767 |goto The Jade Forest/0 31.64,11.33
accept Fire Is Always the Answer##31768 |goto The Jade Forest/0 31.64,11.33
stickystart "Slay_Thunder_Hold_Troops"
step
use Nazgrim's Flare Gun##89605
|tip Use it near {o}Thunder Hold Munitions{}.
|clicknpc Thunder Hold Munitions##66308
|tip They look like {o}piles of crates and barrels{}.
Destroy #10# Thunder Hold Munitions |q 31768/1 |goto The Jade Forest/0 32.71,6.91
You can find more around [33.77,12.87]
step
label "Slay_Thunder_Hold_Troops"
kill Thunder Hold Armsman##66348, Thunder Hold Cannoneer##66395, Thunder Hold Infantryman##66285, Thunder Hold Sharp-Shooter##66288, Thunder Hold Mender##66286, Thunder Hold Infantryman##66503
|tip They look like {o}Alliance soldiers{}.
Slay #15# Thunder Hold Troops |q 31767/1 |goto The Jade Forest/0 32.71,6.91
You can find more around [33.77,12.87]
step
Enter the building |goto The Jade Forest/0 33.67,10.61 < 15 |walk
talk General Nazgrim##66646
|tip Inside the building.
turnin Finish Them!##31767 |goto The Jade Forest/0 34.78,10.63
turnin Fire Is Always the Answer##31768 |goto The Jade Forest/0 34.78,10.63
accept The Final Blow!##31769 |goto The Jade Forest/0 34.78,10.63
step
use Nazgrim's Flare Gun##89769
|tip Inside the building.
Destroy the First Barricade |q 31769/1 |goto The Jade Forest/0 34.01,9.94
step
use Nazgrim's Flare Gun##89769
|tip Upstairs inside the building.
Destroy the Second Barricade |q 31769/2 |goto The Jade Forest/0 34.73,9.93
step
use Nazgrim's Flare Gun##89769
|tip Upstairs inside the building.
Destroy the Third Barricade |q 31769/3 |goto The Jade Forest/0 34.94,10.63
step
Watch the dialogue
|tip Outside, on {o}top of the building{}.
Find Captain Doren |q 31769/4 |goto The Jade Forest/0 33.73,10.61
step
talk General Nazgrim##66656
turnin The Final Blow!##31769 |goto The Jade Forest/0 33.65,10.61
step
Watch the dialogue
talk General Nazgrim##66656
accept You're Either With Us Or...##31770 |goto The Jade Forest/0 33.65,10.61
accept Higher Ground##29694 |goto The Jade Forest/0 33.65,10.61
step
talk Taran Zhu##66657
accept Face to Face With Consequence##31771 |goto The Jade Forest/0 33.71,10.61
stickystart "Kill_Sha_Haunts"
step
kill 7 Sha Harbinger##66424 |q 31771/2 |goto The Jade Forest/0 34.25,10.58
|tip They look like {o}larger aliens{}.
|tip Inside and outside the building.
step
label "Kill_Sha_Haunts"
kill 20 Sha Haunt##66425 |q 31771/1 |goto The Jade Forest/0 34.25,10.58
|tip They look like {o}smaller aliens{}.
|tip Inside and outside the building.
step
talk Ellie Honeypaw##66660
accept Priorities!##31772 |goto The Jade Forest/0 30.55,7.14
step
talk Rivett Clutchpop##55146
Select _"Quit messing around and use your knife! Nazgrim wants you to report to the village immediately."_ |gossip 125651
Rescue Rivett Clutchpop |q 29694/2 |goto The Jade Forest/0 30.53,7.21
step
talk Sue-Ji the Tender##66659
accept Prowler Problems##31773 |goto The Jade Forest/0 30.53,7.49
stickystart "Find_Barrels_of_Honeybrew"
stickystart "Kill_Sha-Infested_Prowlers"
step
talk Shokia##55170
Select _"On your feet! Nazgrim is organizing a counter-attack. We're regrouping in the village."_ |gossip 125653
Rescue Shokia |q 29694/4 |goto The Jade Forest/0 29.43,8.48
step
talk Sergeant Gorrok##55162
Select _"We need to regroup, Sergeant! Go to the nearby village."_ |gossip 125652
Rescue Sergeant Gorrok |q 29694/3 |goto The Jade Forest/0 30.58,11.65
step
talk Shademaster Kiryn##55141
Select _"Snap out of it! You're alive! Nazgrim has ordered us to report to the nearby village."_ |gossip 125650
Rescue Shademaster Kiryn |q 29694/1 |goto The Jade Forest/0 32.06,13.35
step
label "Find_Barrels_of_Honeybrew"
click Barrel of Honeybrew##215695+
|tip They look like {o}grey and yellow barrels{}.
Find #6# Barrels of Honeybrew |q 31772/1 |goto The Jade Forest/0 31.11,12.42
You can find more around [29.06,9.38]
step
label "Kill_Sha-Infested_Prowlers"
kill 10 Sha-Infested Prowler##66668 |q 31773/1 |goto The Jade Forest/0 31.11,12.42
|tip They look like {o}black tigers{}.
You can find more around [29.06,9.38]
step
talk Ellie Honeypaw##66848
turnin Priorities!##31772 |goto The Jade Forest/0 29.38,13.58
step
talk Sergeant Gorrok##66845
turnin Regroup!##29694 |goto The Jade Forest/0 29.13,13.72
step
talk Mayor Honeydew##66220
turnin You're Either With Us Or...##31770 |goto The Jade Forest/0 29.18,13.79
step
talk Taran Zhu##66657
turnin Face to Face With Consequence##31771 |goto The Jade Forest/0 29.13,13.84
turnin Prowler Problems##31773 |goto The Jade Forest/0 29.13,13.84
step
talk Sergeant Gorrok##66845
accept Seeking Zin'jun##31774 |goto The Jade Forest/0 29.13,13.72
step
talk Brewmother Kiki##66236
|tip Inside the building.
home Honeydew Village |goto The Jade Forest/0 28.51,13.34 |q 31241 |future
step
talk Wing Hya##66227
fpath Honeydew Village |goto The Jade Forest/0 28.10,15.62
step
talk Zin'Jun##55403
turnin Seeking Zin'jun##31774 |goto The Jade Forest/0 31.14,17.53
accept Cryin' My Eyes Out##29765 |goto The Jade Forest/0 31.14,17.53
step
click Ancient Statue##212181
accept Monstrosity##29743 |goto The Jade Forest/0 30.89,17.49
stickystart "Collect_Zin_Juns_Items"
step
click Ancient Statue Torso##212182
Select _"<Create a sketch of the statue piece.>"_ |gossip 125671
Sketch the Statue Torso |q 29743/1 |goto The Jade Forest/0 29.36,18.90
step
click Ancient Statue Arm##212183
Select _"<Create a sketch of the statue piece.>"_ |gossip 125672
Sketch the Statue Arm |q 29743/2 |goto The Jade Forest/0 30.12,21.35
step
click Ancient Statue Head##212186
Select _"<Create a sketch of the statue piece.>"_ |gossip 125674
Sketch the Statue Head |q 29743/4 |goto The Jade Forest/0 29.95,22.37
step
click Ancient Statue Shoulder##212184
Select _"<Create a sketch of the statue piece.>"_ |gossip 125673
Sketch the Statue Shoulder |q 29743/3 |goto The Jade Forest/0 28.58,22.16
step
_Click the Complete Quest Box:_
turnin Monstrosity##29743
step
label "Collect_Zin_Juns_Items"
kill Hozen Groundpounder##55470+
|tip They look like {o}monkeys{}.
collect Zin'Jun's Rifle##74160 |q 29765/1 |goto The Jade Forest/0 29.79,20.83
collect Zin'Jun's Left Eye##74161 |q 29765/2 |goto The Jade Forest/0 29.79,20.83
collect Zin'Jun's Right Eye##74162 |q 29765/3 |goto The Jade Forest/0 29.79,20.83
collect Snuff's Corpse##74163 |q 29765/4 |goto The Jade Forest/0 29.79,20.83
step
_Next to you:_
talk Zin'Jun##55497
turnin Cryin' My Eyes Out##29765
accept Seein' Red##29804
step
kill Konk##55509 |q 29804/1 |goto The Jade Forest/0 31.94,22.20
|tip Inside the small cave.
step
talk General Nazgrim##66656
|tip He runs to this location.
turnin Seein' Red##29804 |goto The Jade Forest/0 31.66,21.91
accept Assault on the Airstrip##31775 |goto The Jade Forest/0 31.66,21.91
accept Strongarm Tactics##31776 |goto The Jade Forest/0 31.66,21.91
step
talk Merchant Zin##65998
accept Unreliable Allies##31778 |goto The Jade Forest/0 31.41,21.76
step
talk Rivett Clutchpop##55521
accept Choppertunity##31777 |goto The Jade Forest/0 31.14,21.58
stickystart "Free_Pandaren"
stickystart "Slay_Strongarm_Troops"
step
kill Master Engineer Cogswing##65882 |q 31776/1 |goto The Jade Forest/0 30.33,24.26
kill Gyro-Mechanic Lavenderp##65883 |q 31776/2 |goto The Jade Forest/0 30.33,24.26
step
kill Morgus Grimhatchet##65880 |q 31776/3 |goto The Jade Forest/0 29.66,23.11
|tip He walks around the area.
step
kill Corporal Jackson Silver##65881 |q 31776/4 |goto The Jade Forest/0 27.78,22.92
|tip Inside the tower, on the {o}ground floor{}.
step
click Requisitioned Firework Launcher##214962+
|tip They look like {o}small bronze dragon-shaped rocket launchers{}.
collect Requisitioned Firework Launcher##89163+ |n
use the Requisitioned Firework Launcher##89163+
|tip Use them on {o}Strongarm Gyrocopters{}.
|tip They look like {o}helicopters flying in the air{}.
Shoot Down #12# Strongarm Gyrocopters |q 31777/1 |goto The Jade Forest/0 27.21,24.11
'|clicknpc Strongarm Gyrocopter##65843
step
label "Free_Pandaren"
talk Pandaren Volunteer##67090+
|tip They look like {o}friendly panda people{}.
Select _"You can go home now. I'll cover your back."_ |gossip 130351
Select _"You can go home to your family now."_ |gossip 130352
Free #12# Pandaren |q 31778/1 |goto The Jade Forest/0 28.83,23.97
step
label "Slay_Strongarm_Troops"
kill Strongarm Lieutenant##65905, Strongarm Ace##66000, Strongarm Airman##65840, Strongarm Private##65841, Strongarm Medic##65842
|tip They look like {o}Alliance soldiers{}.
Slay #15# Strongarm Troops |q 31775/1 |goto The Jade Forest/0 28.83,23.97
step
talk Rivett Clutchpop##55521
turnin Choppertunity##31777 |goto The Jade Forest/0 31.14,21.58
step
talk Merchant Zin##65998
turnin Unreliable Allies##31778 |goto The Jade Forest/0 31.41,21.76
step
talk General Nazgrim##66656
turnin Assault on the Airstrip##31775 |goto The Jade Forest/0 31.66,21.91
turnin Strongarm Tactics##31776 |goto The Jade Forest/0 31.66,21.91
accept The Darkness Within##31779 |goto The Jade Forest/0 31.66,21.91
step
Cross the bridge |goto The Jade Forest/0 27.35,25.11 < 15 |only if walking
kill Captain Doren##66052 |q 31779/1 |goto The Jade Forest/0 25.75,23.64
|tip Inside the small cave.
step
click Flagpole##215844
turnin The Darkness Within##31779 |goto The Jade Forest/0 27.57,24.28
accept Nazgrim's Command##31999 |goto The Jade Forest/0 27.57,24.28
step
talk General Nazgrim##55172
turnin Nazgrim's Command##31999 |goto The Jade Forest/0 28.42,24.94
step
talk Shademaster Kiryn##55180
accept Forensic Science##29815 |goto The Jade Forest/0 28.19,24.82
step
talk Rivett Clutchpop##55521
accept Missed Me By... That Much!##29821 |goto The Jade Forest/0 28.10,24.70
step
clicknpc Empty Package##62923
turnin Missed Me By... That Much!##29821 |goto The Jade Forest/0 22.87,30.59
accept They're So Thorny!##31112 |goto The Jade Forest/0 22.87,30.59
stickystart "Collect_Emergency_Supplies"
step
clicknpc Lurching Blossom##55610+
|tip They look like {o}blue and green plants that move{}.
|tip You can do this while mounted.
collect 8 Viscous Chlorophyll##74621 |q 29815/1 |goto The Jade Forest/0 25.63,26.77
step
label "Collect_Emergency_Supplies"
kill Water Sprite##62930+
|tip They look like {o}blue imps{}.
collect 5 Emergency Supplies##74623 |q 31112/1 |goto The Jade Forest/0 25.99,26.20
step
talk Rivett Clutchpop##55521
turnin They're So Thorny!##31112 |goto The Jade Forest/0 28.10,24.70
step
talk Shademaster Kiryn##55180
turnin Forensic Science##29815 |goto The Jade Forest/0 28.19,24.82
accept Acid Rain##29827 |goto The Jade Forest/0 28.19,24.82
step
clicknpc Recovered Gyrocopter##55674
Fly With the Gyrocopter |invehicle |goto The Jade Forest/0 28.07,24.78 |q 29827
step
_As You Fly:_
kill 25 Hozen Gutripper##55707 |q 29827/1 |goto The Jade Forest/0 28.67,27.39
kill 25 Hozen Nibstabber##55701 |q 29827/2 |goto The Jade Forest/0 28.67,27.39
|tip They look like {o}monkeys{}.
step
talk Shademaster Kiryn##55180
turnin Acid Rain##29827 |goto The Jade Forest/0 28.19,24.82
step
talk General Nazgrim##55172
accept Lay of the Land##29822 |goto The Jade Forest/0 28.42,24.94
step
Visit the Shrine of the Sun |q 29822/1 |goto The Jade Forest/0 31.91,27.95
step
kill Dook Ookem##55622 |q 29822/3 |goto The Jade Forest/0 27.81,30.31
step
Visit the Shrine of the Moon |q 29822/2 |goto The Jade Forest/0 26.23,32.30
step
talk Lorewalker Cho##55768
|tip Inside the small cave.
turnin Lay of the Land##29822 |goto The Jade Forest/0 27.59,32.69
accept Stay a While, and Listen##31121 |goto The Jade Forest/0 27.59,32.69
step
click Cho's Teapot
|tip Inside the small cave.
Watch the dialogue
Listen to Lorewalker Cho |q 31121/1 |goto The Jade Forest/0 27.67,32.56
step
talk Lorewalker Cho##55768
|tip Inside the small cave.
turnin Stay a While, and Listen##31121 |goto The Jade Forest/0 27.59,32.69
accept A Mile in My Shoes##31132 |goto The Jade Forest/0 27.59,32.69
step
talk Lorewalker Cho##63217
|tip Follow {o}Lorewalker Cho{} as he walks.
|tip He eventually walks to this location.
turnin A Mile in My Shoes##31132 |goto The Jade Forest/0 30.84,34.06
accept If These Stones Could Speak##31134 |goto The Jade Forest/0 30.84,34.06
'|clicknpc Lorewalker Cho##63193
step
click Stone Monolith
Translate the First Stone Monolith |q 31134/1 |goto The Jade Forest/0 30.88,33.70
step
click Stone Monolith
kill Bloodthirsty Saurok##63279
Translate the Second Stone Monolith |q 31134/2 |goto The Jade Forest/0 30.64,33.78
step
click Stone Monolith
Translate the Third Stone Monolith |q 31134/3 |goto The Jade Forest/0 30.59,34.14
step
talk Lorewalker Cho##63217
turnin If These Stones Could Speak##31134 |goto The Jade Forest/0 30.84,34.06
accept Peering Into the Past##31152 |goto The Jade Forest/0 30.84,34.06
step
Watch the dialogue
|tip Follow {o}Lorewalker Cho{} as he walks.
|tip He eventually walks to this location.
Escort Lorewalker Cho to the Circle of Stone |q 31152/1 |goto The Jade Forest/0 28.83,32.55
'|clicknpc Lorewalker Cho##63290
step
talk Lorewalker Cho##63307
turnin Peering Into the Past##31152 |goto The Jade Forest/0 28.82,32.62
accept Family Tree##31167 |goto The Jade Forest/0 28.82,32.62
step
click Incense Bundle##245682
Light the Incense |q 31167/1 |goto The Jade Forest/0 28.79,32.48
step
talk Lorewalker Cho##63307
turnin Family Tree##31167 |goto The Jade Forest/0 28.82,32.62
accept Swallowed Whole##29879 |goto The Jade Forest/0 28.82,32.62
stickystart "Kill_Engorged_Crocolisks"
step
clicknpc Speckled Trout##56180+
|tip They look like {o}small grey fish{}.
|tip Underwater.
collect 5 Speckled Trout##75202 |q 29879/2 |goto The Jade Forest/0 22.94,35.02
step
label "Kill_Engorged_Crocolisks"
kill 5 Engorged Crocolisk##56183 |q 29879/1 |goto The Jade Forest/0 22.94,35.02
|tip Underwater. |notinsticky
step
talk Tooki Tooki##56313
turnin Swallowed Whole##29879 |goto The Jade Forest/0 26.28,37.33
accept Orders are Orders##29935 |goto The Jade Forest/0 26.28,37.33
step
talk Bo Bo##56351
accept The Bees' Knees##29933 |goto The Jade Forest/0 25.88,37.99
step
talk Nibi Nibi##56327
accept Kill Kher Shan##29924 |goto The Jade Forest/0 25.96,38.73
step
talk Jeek Jeek##63748
accept Wicked Wikkets##31241 |goto The Jade Forest/0 28.18,38.97
step
Go to the cave entrance |goto The Jade Forest/0 33.32,42.74 < 15
kill Kher Shan##56329 |q 29924/1 |goto The Jade Forest/0 33.35,41.65
|tip Inside the small cave.
step
_Click the Complete Quest Box:_
turnin Kill Kher Shan##29924
stickystart "Collect_Alliance_Service_Medallions"
step
kill Jack Arrow##63809
|tip {o}Attack him from behind{} and he {o}won't hurt you{}.
|tip {o}Avoid the pink circles{} on the ground.
collect Captain Jack's Head##85783 |n
use Captain Jack's Head##85783
accept Captain Jack's Dead##31261 |goto The Jade Forest/0 30.82,41.27
step
label "Collect_Alliance_Service_Medallions"
kill Battleworn Paratrooper##63782+
|tip They look like {o}Alliance solders{}.
collect 6 Alliance Service Medallion##85784 |q 31241/1 |goto The Jade Forest/0 30.82,40.78
step
kill Tigerfly##56283+
|tip They look like {o}yellow flying insects{}.
collect 30 Bug Leg##76173 |q 29933/1 |goto The Jade Forest/0 29.43,44.67
You can find more around [31.51,45.57]
step
talk Chief Kah Kah##56336
turnin Orders are Orders##29935 |goto The Jade Forest/0 27.99,47.20
accept Instant Messaging##29936 |goto The Jade Forest/0 27.99,47.20
turnin The Bees' Knees##29933 |goto The Jade Forest/0 27.99,47.20
turnin Captain Jack's Dead##31261 |goto The Jade Forest/0 27.99,47.20
turnin Wicked Wikkets##31241 |goto The Jade Forest/0 27.99,47.20
step
clicknpc Signal Flare##56413
Signal the Survivors |q 29936/1 |goto The Jade Forest/0 27.98,46.79
step
talk General Nazgrim##56339
turnin Instant Messaging##29936 |goto The Jade Forest/0 28.26,47.78
accept Beyond the Horizon##29941 |goto The Jade Forest/0 28.26,47.78
step
talk Grookin Flapmaster##60952
fpath Grookin Hill |goto The Jade Forest/0 27.82,47.90
step
talk Shokia##56340
Select _"Nazgrim has assigned you to scout the region, Shokia. You are to depart shortly."_ |gossip 125743
Dispatch Shokia |q 29941/1 |goto The Jade Forest/0 28.35,46.97
step
talk Chief Kah Kah##56336
Select _"Big Chief Kah Kah, we will be exploring your lands and could use a good guide. Will you help us?"_ |gossip 125748
Parlay with Kah Kah |q 29941/4 |goto The Jade Forest/0 27.99,47.20
step
talk Shademaster Kiryn##56478
Select _"Nazgrim has assigned you to the scouting party, Kiryn. You are to depart shortly."_ |gossip 125746
Dispatch Shademaster Kiryn |q 29941/3 |goto The Jade Forest/0 27.10,48.98
step
talk Sergeant Gorrok##56477
|tip He walks around this area.
Select _"Nazgrim has assigned you to help scout the region, Gorrok. You are to depart shortly."_ |gossip 125745
Dispatch Sergeant Gorrok |q 29941/2 |goto The Jade Forest/0 27.63,50.48
step
talk General Nazgrim##56339
turnin Beyond the Horizon##29941 |goto The Jade Forest/0 28.26,47.78
step
talk Rivett Clutchpop##56406
accept Furious Fowl##29937 |goto The Jade Forest/0 28.30,47.79
step
talk Chief Kah Kah##56336
accept What's in a Name Name?##31239 |goto The Jade Forest/0 27.99,47.20
step
kill 7 Riverstride Jinyu##56289+ |q 31239/1 |goto The Jade Forest/0 30.46,47.44
|tip They look like {o}fish people{}.
You can find more around [The Jade Forest/0 28.79,46.01]
step
kill Hungry Bloodtalon##56396+
|tip They look like {o}brown birds{}.
collect 6 Fistful of Bird Guts##76225 |q 29937/1 |goto The Jade Forest/0 30.51,50.99
You can find more around [27.91,52.38]
step
talk Chief Kah Kah##56336
turnin What's in a Name Name##31239 |goto The Jade Forest/0 27.99,47.20
step
talk Rivett Clutchpop##56406
turnin Furious Fowl##29937 |goto The Jade Forest/0 27.23,50.78
accept Easy Pickings##29939 |goto The Jade Forest/0 27.23,50.78
step
talk Eekle Eekle##56358
accept Silly Wikket, Slickies are for Hozen##29942 |goto The Jade Forest/0 27.03,50.84
stickystart "Collect_Snapper_Steaks"
step
use the Gut Bomb##76262
|tip Use it to {o}throw a bomb into the water{}.
click Dead Deepriver Slicky##209877+
|tip They look like {o}small dead fish{} that appear in the water.
collect 5 Exploded Slicky##76260 |q 29939/1 |goto The Jade Forest/0 26.71,55.39
step
label "Collect_Snapper_Steaks"
kill Muck Snapper##56447+
|tip They look like {o}turtles{}.
|tip Underwater. |notinsticky
collect 4 Snapper Steak##76420+ |q 29942/1 |goto The Jade Forest/0 26.88,55.92
step
talk Eekle Eekle##56358
turnin Silly Wikket, Slickies are for Hozen##29942 |goto The Jade Forest/0 27.03,50.84
step
talk Rivett Clutchpop##56406
turnin Easy Pickings##29939 |goto The Jade Forest/0 27.23,50.78
accept The Scouts Return##29971 |goto The Jade Forest/0 27.23,50.78
step
talk Shokia##55647
turnin The Scouts Return##29971 |goto The Jade Forest/0 28.64,47.37
step
talk Riko##55648
accept Scouting Report: Hostile Natives##29730 |goto The Jade Forest/0 28.60,47.43
step
click STAY OUT - NO VISITORS##209615
Inspect the Warning Sign |q 29730/1 |goto The Jade Forest/0 38.30,45.39
step
clicknpc Lifelike Jade Statue##55378
|tip They look like {o}small green Pandaren statues{}.
Inspect a Lifelike Jade Statue |q 29730/2 |goto The Jade Forest/0 38.85,45.92
step
Watch the dialogue
talk Widow Greenpaw##55381
Select _"I am an orc, ma'am. Would you mind if I asked you a few questions?"_ |gossip 125676
Speak with Widow Greenpaw |q 29730/3 |goto The Jade Forest/0 39.24,46.21
step
Watch the dialogue
Return to Grookin Hill |complete subzone("Grookin Hill") |q 29730
step
talk Riko##55648
turnin Scouting Report: Hostile Natives##29730 |goto The Jade Forest/0 28.60,47.43
step
talk Shademaster Kiryn##55646
accept Scouting Report: On the Right Track##29731 |goto The Jade Forest/0 28.65,47.46
step
Watch the dialogue
|tip Use the {o}Smoke Bomb{} ability on enemies.
|tip {o}Shokia will kill them{}.
Search the Serpent's Spine for Signs of Life |q 29731/1 |goto The Jade Forest/0 48.59,60.11
step
Watch the dialogue
Return to Grookin Hill |complete subzone("Grookin Hill") |q 29731
step
talk Shademaster Kiryn##55646
turnin Scouting Report: On the Right Track##29731 |goto The Jade Forest/0 28.65,47.46
step
talk Riko##55648
accept Scouting Report: The Friend of My Enemy##29823 |goto The Jade Forest/0 28.60,47.43
step
talk Shademaster Kiryn##55688
Select _"Never! Riko protect you to death!"_ |gossip 125697
Kill the enemies that attack in waves
Listen to Riko's Report |q 29823/1 |goto The Jade Forest 49.82,70.51
step
Watch the dialogue
Return to Grookin Hill |complete subzone("Grookin Hill") |q 29823
step
talk Riko##55648
turnin Scouting Report: The Friend of My Enemy##29823 |goto The Jade Forest 28.60,47.43
step
talk Shokia##55647
accept Scouting Report: Like Jinyu in a Barrel##29824 |goto The Jade Forest 28.64,47.37
step
Watch the dialogue
click Sniper Rifle##209621 |goto The Jade Forest 62.56,82.15
Control the Sniper Rifle |goto The Jade Forest 58.82,81.19 < 5 |noway |c |q 29824
step
Watch the dialogue
|tip {o}Right-click enemies{} to shoot them.
|tip Shademaster Kiryn will {o}plant poison barrels, shoot them{}.
|tip Kill the waves of enemies.
|tip {o}Protect Shademaster Kiryn and Riko{}.
Escort Shademaster Kiryn Through the Camp |q 29824/1
step
Watch the dialogue
Return to Grookin Hill |complete subzone("Grookin Hill") |q 29824
step
talk Shokia##55647
turnin Scouting Report: Like Jinyu in a Barrel##29824 |goto The Jade Forest 28.64,47.37
step
Watch the dialogue
talk General Nazgrim##56339
accept Guerrillas in our Midst##29943 |goto The Jade Forest 28.67,47.53
stickystart "Kill_Alliance_Infiltrators"
step
talk Rivett Clutchpop##56406
accept Green-ish Energy##29968 |goto The Jade Forest 30.79,52.26
step
click Green Branch##209903+
|tip They look like {o}brown logs{}.
collect 7 Green Branch##76333 |q 29968/1 |goto The Jade Forest 30.58,52.63
step
label "Kill_Alliance_Infiltrators"
kill 8 Alliance Infiltrator##56303 |q 29943/1 |goto The Jade Forest 30.47,51.64
|tip They look like {o}stealthed humans{}.
step
_Next to you:_
talk General Nazgrim##56490
turnin Guerrillas in our Midst##29943
accept Burning Down the House##29966
step
use Nazgrim's Grog##76336
|tip Up on the mountain. |goto The Jade Forest/0 30.46,52.68 <15
Destroy the Alliance Camp |q 29966/1 |goto The Jade Forest 29.44,54.20
step
talk Rivett Clutchpop##56406
turnin Green-ish Energy##29968 |goto The Jade Forest 27.23,50.78
accept Boom Goes the Doonamite!##29967 |goto The Jade Forest 27.23,50.78
step
talk Rivett Clutchpop##56525
Select _"Okay, Rivett. I'm ready!"_ |gossip 125751
Kill Jinyu enemies around this area
|tip They look like {o}fish people{}.
|tip Use the {o}Throw Methane Bomb{}.
|tip If they get too close and knock you out, talk to Rivett again.
Slay #10# Jinyu Attackers |q 29967/1 |goto The Jade Forest 28.98,49.08
step
talk Rivett Clutchpop##56525
turnin Boom Goes the Doonamite!##29967 |goto The Jade Forest 28.98,49.08
step
talk General Nazgrim##56339
turnin Burning Down the House##29966 |goto The Jade Forest 28.67,47.53
accept Dawn's Blossom##30015 |goto The Jade Forest 28.67,47.53
step
talk Grookin Flapmaster##60952
Select _"Send me to Dawn's Blossom."_ |gossip 129596
Begin Flying to Dawn's Blossom |invehicle |goto The Jade Forest 27.82,47.90 |q 30015
step
Fly to Dawn's Blossom |outvehicle |goto The Jade Forest 47.03,46.16 |q 30015 |notravel
step
talk Keg Runner Lee##59186
fpath Dawn's Blossom |goto The Jade Forest 47.05,46.24
step
talk Lorewalker Cho##63577
turnin Dawn's Blossom##30015 |goto The Jade Forest 46.82,46.14
step
Watch the dialogue
talk Toya##56348
accept Welcome to Dawn's Blossom##31230 |goto The Jade Forest 47.16,46.17
step
talk Kai Wanderbrew##59173
|tip He walks around this area.
Speak with Kai Wanderbrew |q 31230/3 |goto The Jade Forest 46.72,45.81
step
talk Peiji Goldendraft##55809
|tip Inside the building.
Speak with Peiji Goldendraft |q 31230/2 |goto The Jade Forest 45.72,43.70
step
talk Peiji Goldendraft##55809
home The Drunken Hozen |goto The Jade Forest/0 45.72,43.69
step
talk Master Windfur##59160
|tip Inside the building.
Speak with Master Windfur |q 31230/1 |goto The Jade Forest 48.49,44.49
step
talk Toya##56348
turnin Welcome to Dawn's Blossom##31230 |goto The Jade Forest 47.16,46.17
step
talk An Windfur##55413
|tip She walks around this area.
accept The Double Hozu Dare##29716 |goto The Jade Forest 46.65,46.15
step
talk Tzu the Ironbelly##56062
accept The Silkwood Road##29865 |goto The Jade Forest 46.46,45.80
step
talk Lo Wanderbrew##59178
accept The Threads that Stick##29866 |goto The Jade Forest 46.63,45.31
stickystart "Kill_Silkwood_Stalkers"
step
click Silk Patch##209951+
|tip They look like {o}white spider eggs{}.
collect 7 Pristine Silk Strand##75023 |q 29866/1 |goto The Jade Forest 43.76,49.30
step
label "Kill_Silkwood_Stalkers"
kill 8 Silkwood Stalker##56070 |q 29865/1 |goto The Jade Forest 43.76,49.30
|tip They look like {o}spiders{}.
step
talk An Windfur##55274
|tip She appears next to you.
accept Down Kitty!##29717 |goto The Jade Forest 37.83,45.03
stickystart "Kill_Jade_Guardians"
step
clicknpc Scared Pandaren Cub##55267+
|tip They look like {o}panda children clinging to trees{} low to the ground.
Select _"It's safe now.  You can come down."_ |gossip 125661
Rescue #6# Cubs |q 29716/1 |goto The Jade Forest 38.12,45.49
step
label "Kill_Jade_Guardians"
kill 8 Jade Guardian##55236 |q 29717/1 |goto The Jade Forest 38.12,45.49
|tip They look like {o}green cougars{}.
step
_Next to you:_
talk An Windfur##55234
turnin The Double Hozu Dare##29716
turnin Down Kitty!##29717
accept The Jade Witch##29723
step
talk Widow Greenpaw##55368
|tip Also check {o}behind the building{}.
Select _"Where is Shin?"_ |gossip 125681
Watch the dialogue
|tip Follow {o}Widow Greenpaw{} as she walks.
kill Widow Greenpaw##55368
Confront the Jade Witch |q 29723/1 |goto The Jade Forest 39.34,46.22
step
talk Tzu the Ironbelly##56062
turnin The Silkwood Road##29865 |goto The Jade Forest 46.46,45.80
step
talk An Windfur##55413
|tip She runs {o}along the path{} around this area.
turnin The Jade Witch##29723 |goto The Jade Forest 46.49,45.75
step
talk Toya##56348
accept All We Can Spare##29925 |goto The Jade Forest 47.16,46.17
step
talk Lo Wanderbrew##59178
turnin The Threads that Stick##29866 |goto The Jade Forest 46.63,45.31
step
talk Kai Wanderbrew##59173
|tip He walks around this area.
accept Find the Boy##29993 |goto The Jade Forest 47.05,46.01
step
talk Old Man Misteye##59383
accept An Air of Worry##29576 |goto The Jade Forest 48.32,46.06
step
talk Apprentice Yufi##54998
accept Tian Monastery##29617 |goto The Jade Forest 49.65,45.83
step
talk Inkmaster Wei##56065
|tip He walks around this area.
turnin Find the Boy##29993 |goto The Jade Forest 55.00,44.87
accept Shrine of the Dawn##29995 |goto The Jade Forest 55.00,44.87
step
talk Inkmaster Glenzu##56064
accept The Perfect Color##29881 |goto The Jade Forest 54.88,45.31
step
talk Inkmaster Jo Po##56063
accept Quill of Stingers##29882 |goto The Jade Forest 55.40,45.28
step
talk Injar'i Lakebloom##59732
fpath The Arboretum |goto The Jade Forest 57.01,44.03
stickystart "Collect_Freshly_Fallen_Petals"
step
kill Orchard Wasp##56201+
|tip They look like {o}large flying insects{}.
collect 6 Wasp Stinger##75221 |q 29882/1 |goto The Jade Forest 53.60,44.50
step
label "Collect_Freshly_Fallen_Petals"
click Freshly Fallen Petals##209836+
|tip They look like {o}small red flowers{}.
collect 8 Freshly Fallen Petals##75219 |q 29881/1 |goto The Jade Forest 54.10,45.35
step
talk Inkmaster Glenzu##56064
turnin The Perfect Color##29881 |goto The Jade Forest 54.88,45.31
step
talk Inkmaster Jo Po##56063
|tip He walks around this area.
turnin Quill of Stingers##29882 |goto The Jade Forest 55.27,45.23
step
talk Syra Goldendraft##56708
turnin Shrine of the Dawn##29995 |goto The Jade Forest 52.57,38.12
accept Getting Permission##29920 |goto The Jade Forest 52.57,38.12
step
talk Pandriarch Bramblestaff##56209
Select _"Challenge the Pandriarch."_ |gossip 125715
kill Pandriarch Bramblestaff##56209
|tip He will eventually surrender.
Defeat Pandriarch Bramblestaff |q 29920/2 |goto The Jade Forest 54.09,38.46
step
talk Pandriarch Goldendraft##56210
Select _"Challenge the Pandriarch."_ |gossip 125716
kill Pandriarch Goldendraft##56210
|tip He will eventually surrender.
Defeat Pandriarch Goldendraft |q 29920/3 |goto The Jade Forest 53.59,36.73
step
talk Pandriarch Windfur##56206
Select _"Challenge the Pandriarch."_ |gossip 125714
kill Pandriarch Windfur##56206
|tip He will eventually surrender.
Defeat Pandriarch Windfur |q 29920/1 |goto The Jade Forest 52.54,35.57
step
talk Lo Wanderbrew##55788
turnin Getting Permission##29920 |goto The Jade Forest 52.59,38.12
step
talk Lorewalker Cho##56345
turnin All We Can Spare##29925 |goto The Jade Forest 50.91,27.08
step
talk Foreman Mann##56346
accept I Have No Jade And I Must Scream##29928 |goto The Jade Forest 50.94,27.03
step
talk Supplier Towsa##59735
fpath Emperor's Omen |goto The Jade Forest 50.82,26.80
step
kill Puckish Sprite##56349+
|tip They look like {o}small green imps{}.
click Chunk of Jade##209863+
|tip They look like {o}green rocks that appear{}.
collect 15 Chunk of Jade##76209 |q 29928/1 |goto The Jade Forest 48.33,31.10
step
talk Foreman Mann##56346
turnin I Have No Jade And I Must Scream##29928 |goto The Jade Forest 50.94,27.03
step
Watch the dialogue
talk Foreman Mann##56346
accept Calamity Jade##29926 |goto The Jade Forest 50.94,27.03
accept Mann's Man##29927 |goto The Jade Forest 50.94,27.03
step
clicknpc Outcast Sprite##55438
accept The Sprites' Plight##29745 |goto The Jade Forest 48.67,24.93
stickystart "Kill_Stonebound_Destroyers"
step
Find the Source of the Simulacra |q 29745/2 |goto The Jade Forest 48.61,20.26
step
label "Kill_Stonebound_Destroyers"
kill 10 Stonebound Destroyer##55288 |q 29745/1 |goto The Jade Forest 48.80,21.60
|tip They look like {o}brown bulky humanoids{}.
step
_Click the Complete Quest Box:_
turnin The Sprites' Plight##29745
accept Break the Cycle##29747
step
click Shattered Destroyer##214871
accept Simulacrumble##29748 |goto The Jade Forest 48.57,20.62
stickystart "Kill_Shanze_Spiritbinders"
step
click Vacant Destroyer##214873+
|tip They look like {o}stone orc-like statues holding weapons{}.
Kick #6# Vacant Destroyers |q 29748/1 |goto The Jade Forest 48.07,17.12
step
_Click the Complete Quest Box:_
turnin Simulacrumble##29748
step
label "Kill_Shanze_Spiritbinders"
kill 8 Shan'ze Spiritbinder##55279 |q 29747/1 |goto The Jade Forest 48.07,17.12
|tip They look like {o}grey bulky humanoids{}.
step
_Click the Complete Quest Box:_
turnin Break the Cycle##29747
accept An Urgent Plea##29749
step
click Staff of Pei-Zhi##209662
collect Staff of Pei-Zhi##74258 |q 29749/1 |goto The Jade Forest 44.23,14.91
step
kill Ancient Spirit##55489+
|tip Try to {o}kill them before they reach the swirling purple orb{}.
Interrupt the Ritual of Spiritbinding |q 29749/2 |goto The Jade Forest 44.36,15.35
step
Watch the dialogue
talk Pei-Zhi##55614
turnin An Urgent Plea##29749 |goto The Jade Forest 44.23,15.03
accept Ritual Artifacts##29751 |goto The Jade Forest 44.23,15.03
accept Vessels of the Spirit##29750 |goto The Jade Forest 44.23,15.03
accept The Wayward Dead##29752 |goto The Jade Forest 44.23,15.03
stickystart "Collect_Spirit_Bottles"
stickystart "Recover_Wayward_Ancestors"
step
click Jade Cong##209699
collect Jade Cong##74762 |q 29751/1 |goto The Jade Forest 42.68,15.76
step
click Pungent Ritual Candle##209701
collect Pungent Ritual Candle##74761 |q 29751/3 |goto The Jade Forest 42.26,17.09
step
click Chipped Ritual Bowl##209700
collect Chipped Ritual Bowl##74760 |q 29751/2 |goto The Jade Forest 41.62,14.32
step
label "Collect_Spirit_Bottles"
kill Shan'ze Spiritclaw##55291+
|tip They look like {o}bulky humanoids with purple glowing weapons{}.
collect 8 Spirit Bottle##74763 |q 29750/1 |goto The Jade Forest 42.07,15.74
step
label "Recover_Wayward_Ancestors"
use the Staff of Pei-Zhi##74771
|tip Use it on {o}Wayward Ancestors{}.
|tip They look like {o}banshees{}.
Recover #10# Wayward Ancestors |q 29752/1 |goto The Jade Forest 42.07,15.74
step
talk Pei-Zhi##55614
turnin Ritual Artifacts##29751 |goto The Jade Forest 44.23,15.03
turnin Vessels of the Spirit##29750 |goto The Jade Forest 44.23,15.03
turnin The Wayward Dead##29752 |goto The Jade Forest 44.23,15.03
accept Back to Nature##29753 |goto The Jade Forest 44.23,15.03
accept A Humble Offering##29756 |goto The Jade Forest 44.23,15.03
stickystart "Collect_Tidemist_Caps"
step
use the Spirit Bottles##74808
|tip You can use it {o}repeatedly in the same location{}.
kill Raging Beast Spirit##55790+
|tip Some of them will be {o}friendly{}.
Return #8# Beast Spirits to Nature |q 29753/1 |goto The Jade Forest 38.41,10.90
step
label "Collect_Tidemist_Caps"
click Tidemist Cap##209825+
|tip They look like {o}clusters of white mushrooms{o}.
collect 10 Tidemist Cap##75214 |q 29756/1 |goto The Jade Forest 39.76,11.48
step
talk Pei-Zhi##55614
turnin Back to Nature##29753 |goto The Jade Forest 44.23,15.03
turnin A Humble Offering##29756 |goto The Jade Forest 44.23,15.03
accept To Bridge Earth and Sky##29754 |goto The Jade Forest 44.23,15.03
step
Watch the dialogue
Kill the enemies that attack in waves
|tip Protect {o}Pei-Zhi{} until the {o}bar fills up{}.
Protect Pei-Zhi During His Ritual |q 29754/1 |goto The Jade Forest 43.70,12.90
step
_Click the Complete Quest Box:_
turnin To Bridge Earth and Sky##29754
accept Pei-Back##29755
step
kill Stonebound Colossus##56595
|tip He walks around this area.
|tip {o}Click your body{} when your spirit gets ripped out.
|tip He will {o}regenerate health{} when {o}you're out-of-body{}.
kill Shan Jitong##56596 |q 29755/1 |goto The Jade Forest 42.52,10.45
|tip He {o}appears while you fight{} the Stonebound Colossus.
step
talk Pei-Zhi##59492
turnin Pei-Back##29755 |goto The Jade Forest 43.84,12.52
step
talk Lin Tenderpaw##54913
|tip Run around the {o}western side of the mountain{} and {o}follow the road{}. |only if walking
turnin Tian Monastery##29617 |goto The Jade Forest 44.99,24.95
accept The High Elder##29618 |goto The Jade Forest 44.99,24.95
step
talk High Elder Cloudfall##54914
|tip Upstairs on the balcony outside the building.
turnin The High Elder##29618 |goto The Jade Forest 45.22,25.07
step
talk Lin Tenderpaw##54913
accept A Courteous Guest##29619 |goto The Jade Forest 44.99,24.95
step
talk Studious Chu##59736
fpath Tian Monastery |goto The Jade Forest 43.58,24.53
step
kill Greenwood Thief##54930+
|tip They will only drop them if they are {o}carrying oranges{}.
click Ripe Orange##209436+
|tip They look like {o}small orange balls{}.
collect 8 Ripe Orange##72589 |q 29619/1 |goto The Jade Forest 45.73,27.35
step
Enter the mine |goto The Jade Forest 45.86,28.84 < 10 |walk
Locate Hao Mann |q 29927/1 |goto The Jade Forest/6 60.96,36.74
|tip Inside the mine.
step
talk Hao Mann##56347
|tip Inside the mine.
turnin Mann's Man##29927 |goto The Jade Forest/6 60.96,36.74
accept Trapped!##29929 |goto The Jade Forest/6 60.96,36.74
stickystart "Kill_Greenstone_Nibblers"
stickystart "Free_Greenstone_Miners"
step
kill 6 Greenstone Gorger##56404 |q 29926/2 |goto The Jade Forest/0 45.86,28.84
|tip They look like {o}large stone spiders{}.
|tip Throughout the mine.
step
label "Free_Greenstone_Miners"
talk Greenstone Miner##56464+
|tip They look like {o}pandas inside piles of large rocks{}.
|tip Throughout the mine. |notinsticky
Free #8# Greenstone Miners |q 29929/1 |goto The Jade Forest/0 45.86,28.84
step
label "Kill_Greenstone_Nibblers"
kill 12 Greenstone Nibbler##56401 |q 29926/1 |goto The Jade Forest/0 45.86,28.84
|tip They look like {o}small stone spiders{}.
|tip Throughout the mine. |notinsticky
step
Run up the stairs |goto The Jade Forest/7 50.06,53.11 < 10 |walk |only if subzone("Greenstone Quarry") and indoors()
talk Hao Mann##56467
turnin Trapped!##29929 |goto The Jade Forest/0 46.30,29.39
accept What's Mined Is Yours##29930 |goto The Jade Forest/0 46.30,29.39
step
clicknpc Jade Cart##56527
Ride in the Jade Cart |invehicle |goto The Jade Forest/0 46.27,29.48 |q 29930
step
Watch the dialogue
Kill the enemies that attack in waves
Deliver the Jade |q 29930/1 |goto The Jade Forest/0 51.21,26.72 |notravel
step
Watch the dialogue
talk Foreman Mann##56346
turnin Calamity Jade##29926 |goto The Jade Forest/0 50.94,27.03
turnin What's Mined Is Yours##29930 |goto The Jade Forest/0 50.94,27.03
step
Watch the dialogue
talk Foreman Mann##56346
accept The Serpent's Heart##29931 |goto The Jade Forest/0 50.94,27.03
step
talk Lin Tenderpaw##54913
turnin A Courteous Guest##29619 |goto The Jade Forest/0 44.99,24.95
accept The Great Banquet##29620 |goto The Jade Forest/0 44.99,24.95
step
talk High Elder Cloudfall##54914
Select _"I don't need any introductions, old man. Let's skip ahead to the good part."_ |gossip 125647
Select _"I am certain. Let's move on to the fighting."_ |gossip 125649
|tip If this dialogue option isn't available, pick the one that's available, and follow him as he walks.
Speak with High Elder Cloudfall |q 29620/1 |goto The Jade Forest/0 42.74,23.17
step
talk High Elder Cloudfall##54914
turnin The Great Banquet##29620 |goto The Jade Forest/0 42.74,23.17
step
Watch the dialogue
talk Xiao##54926
accept Your Training Starts Now##29622 |goto The Jade Forest/0 43.13,23.63
accept Groundskeeper Wu##29626 |goto The Jade Forest/0 43.13,23.63
step
talk Master Stone Fist##54922
accept Becoming Battle-Ready##29632 |goto The Jade Forest/0 43.23,24.75
step
talk Tian Pupil##54944+
Select _"Let's fight!"_ |gossip 125643
kill Tian Pupil##54944+
|tip They will eventually surrender.
Defeat #8# Monastic Pupils |q 29632/1 |goto The Jade Forest/0 43.73,24.99
step
talk Master Stone Fist##54922
turnin Becoming Battle-Ready##29632 |goto The Jade Forest/0 43.24,24.76
accept Zhi-Zhi, the Dextrous##29633 |goto The Jade Forest/0 43.24,24.76
accept Husshun, the Wizened##29634 |goto The Jade Forest/0 43.24,24.76
step
talk Zhi-Zhi##54924
Select _"Wanna fight?"_ |gossip 125640
kill Zhi-Zhi##54924
|tip He will eventually surrender.
Defeat Zhi-Zhi |q 29633/1 |goto The Jade Forest/0 43.06,25.99
step
talk Husshun##54925
Select _"I challenge you to a fight, Husshun!"_ |gossip 125641
kill Husshun##54925
|tip He will eventually surrender.
Defeat Husshun |q 29634/1 |goto The Jade Forest/0 44.56,24.05
step
talk Master Stone Fist##54922
turnin Zhi-Zhi, the Dextrous##29633 |goto The Jade Forest/0 43.24,24.75
turnin Husshun, the Wizened##29634 |goto The Jade Forest/0 43.24,24.75
accept Xiao, the Eater##29635 |goto The Jade Forest/0 43.24,24.75
step
talk Xiao##54926
Select _"Put down your fork, and pick up your fists! I challenge you!"_ |gossip 125642
kill Xiao##54926
|tip He will eventually surrender.
Defeat Xiao |q 29635/1 |goto The Jade Forest/0 43.13,23.63
step
talk Master Stone Fist##54922
turnin Xiao, the Eater##29635 |goto The Jade Forest/0 43.24,24.75
accept A Test of Endurance##29636 |goto The Jade Forest/0 43.24,24.75
step
talk Groundskeeper Wu##54915
turnin Groundskeeper Wu##29626 |goto The Jade Forest/0 41.62,23.70
accept A Proper Weapon##29627 |goto The Jade Forest/0 41.62,23.70
stickystart "Collect_Rattan_Switches"
step
talk June Whiteblossom##54981
buy Black Walnut Extract##72954 |q 29627/2 |goto The Jade Forest/0 41.39,24.15
step
talk Brewmaster Lei Kanglei##54982
buy 3 Triple-Bittered Ale##72979 |q 29627/3 |goto The Jade Forest/0 41.77,24.61
step
label "Collect_Rattan_Switches"
click Rattan Switch##209464+
|tip They look like {o}thin twigs with leaves{}.
collect 6 Rattan Switch##72926 |q 29627/1 |goto The Jade Forest/0 41.09,24.78
step
talk Groundskeeper Wu##54915
turnin A Proper Weapon##29627 |goto The Jade Forest/0 41.62,23.70
accept A Strong Back##29628 |goto The Jade Forest/0 41.62,23.70
accept A Steady Hand##29629 |goto The Jade Forest/0 41.62,23.70
accept And a Heavy Fist##29630 |goto The Jade Forest/0 41.62,23.70
step
talk Instructor Myang##54918
turnin A Test of Endurance##29636 |goto The Jade Forest/0 38.97,24.04
accept The Rumpus##29637 |goto The Jade Forest/0 38.97,24.04
step
use the Monastary Fireworks##73369
Kill the enemies that attack in waves
Survive the Melee |q 29637/1 |goto The Jade Forest/0 38.97,23.27
step
talk Instructor Myang##54918
turnin The Rumpus##29637 |goto The Jade Forest/0 38.97,24.04
step
talk Guard Shan Long##55094
accept Burning Bright##29631 |goto The Jade Forest/0 38.01,23.80
stickystart "Collect_Blushleaf_Extract"
step
kill Waxwood Hunter##54988, Waxwood Matriarch##55238
|tip They look like {o}tigers{}.
Slay #6# Waxwood Hunters |q 29631/1 |goto The Jade Forest/0 35.10,22.10
step
label "Collect_Blushleaf_Extract"
click Blushleaf Cluster+
|tip They look like {o}small red plants{}.
|tip {o}Don't move while channeling{}.
collect 80 Blushleaf Extract##73193 |q 29629/1 |goto The Jade Forest/0 35.10,22.10
step
kill 10 Greenwood Trickster##54987 |q 29630/1 |goto The Jade Forest/0 37.79,20.14
|tip They look like {o}sprites{}.
step
_NOTE:_
During the Next Few Steps
|tip After {o}collecting the cauldron{} in the next step, {o}don't mount up{}.
|tip You will {o}lose the cauldron{} and have to get another one.
Click Here to Continue |confirm |q 29628
step
click Boiling Cauldron##209551
|tip Inside the building.
Obtain the Boiling Cauldron |q 29628/1 |goto The Jade Forest/0 37.72,17.38
step
talk Guard Shan Long##55094
turnin Burning Bright##29631 |goto The Jade Forest/0 38.00,23.80
step
Return the Boiling Cauldron |q 29628/2 |goto The Jade Forest/0 41.61,23.69
step
talk Groundskeeper Wu##54915
turnin A Strong Back##29628 |goto The Jade Forest/0 41.61,23.69
turnin A Steady Hand##29629 |goto The Jade Forest/0 41.61,23.69
turnin And a Heavy Fist##29630 |goto The Jade Forest/0 41.61,23.69
step
talk Instructor Xann##54917
turnin Your Training Starts Now##29622 |goto The Jade Forest/0 41.60,28.33
accept Perfection##29623 |goto The Jade Forest/0 41.60,28.33
step
Complete #12# Practice Strikes |q 29623/1 |goto The Jade Forest/0 41.40,27.90
|tip Watch the {o}Tian Instructor{} as he {o}makes motions{}.
|tip Use the abilities to {o}mimic his motions{}.
|tip Repeat your motions AFTER Tian Students (not right after Instructor).
step
talk Instructor Xann##54917
turnin Perfection##29623 |goto The Jade Forest/0 41.60,28.33
accept Attention##29624 |goto The Jade Forest/0 41.60,28.33
step
kill 2 Training Bag##55184 |q 29624/1 |goto The Jade Forest/0 41.66,26.97
|tip Each pole has {o}2 punching bags{}, on the {o}left and right{} of the pole.
|tip You will see {o}LEFT!{} and {o}RIGHT!{} messages {o}on your screen{}.
|tip {o}Attack the bag{} on the {o}side the message says{}.
step
talk Instructor Xann##54917
turnin Attention##29624 |goto The Jade Forest/0 41.60,28.33
accept Flying Colors##29639 |goto The Jade Forest/0 41.60,28.33
step
talk High Elder Cloudfall##54914
turnin Flying Colors##29639 |goto The Jade Forest/0 42.74,23.17
step
talk Gingo Alebottom##59733
fpath Sri-La Village |goto The Jade Forest/0 55.38,23.73
step
talk Foreman Raike##59391
turnin The Serpent's Heart##29931 |goto The Jade Forest/0 48.31,61.35
accept Love's Labor##30495 |goto The Jade Forest/0 48.31,61.35
step
talk Historian Dinh##59395
Select _"I've got a new jade shipment for you."_ |gossip 125986
Complete the Delivery to Historian Dinh |q 30495/1 |goto The Jade Forest/0 46.36,61.80
step
talk Surveyor Sawa##59401
Select _"I've got your jade right here."_ |gossip 125992
Complete the Delivery to Surveyor Sawa |q 30495/2 |goto The Jade Forest/0 46.94,60.35
step
talk Kitemaster Shoku##59392
Select _"I've got a jade delivery for you."_ |gossip 125988
Complete the Delivery to Kitemaster Shoku |q 30495/3 |goto The Jade Forest/0 48.17,60.02
step
talk Kitemaster Shoku##59392
|tip You can {o}skip this step{} if you are {o}able to fly{}.
Select _"I need a ride to the top of the statue."_ |gossip 125987
Begin Riding a Kite to the Top of the Statue |invehicle |goto The Jade Forest/0 48.18,60.02 |q 30495
step
Ride a Kite to the Top of the Statue |outvehicle |goto The Jade Forest/0 47.46,60.58 |q 30495 |notravel
step
talk Taskmaster Emi##59397
|tip On a platform at the top of the statue.
Select _"Did someone say they needed jade?"_ |gossip 125990
Complete the Delivery to Taskmaster Emi |q 30495/4 |goto The Jade Forest/0 47.58,60.67
step
talk Kitemaster Inga##59400
|tip On a platform at the top of the statue.
|tip You can {o}skip this step{} if you are {o}able to fly{}.
Select _"I need a ride to the bottom of the statue."_ |gossip 125991
Begin Riding a Kite to the Bottom of the Statue |invehicle |goto The Jade Forest/0 47.45,60.51 |q 30495
step
Ride a Kite to the Bottom of the Statue |outvehicle |goto The Jade Forest/0 48.23,60.00 |q 30495 |notravel
step
talk Foreman Raike##59391
turnin Love's Labor##30495 |goto The Jade Forest/0 48.31,61.35
accept The Temple of the Jade Serpent##29932 |goto The Jade Forest/0 48.31,61.35
step
talk Kitemaster Shoku##59392
Select _"Take me to the Temple of the Jade Serpent."_ |gossip 125989
Begin Flying to the Temple of the Jade Serpent |invehicle |goto The Jade Forest/0 48.18,60.02 |q 29932
step
Fly to the Temple of the Jade Serpent |outvehicle |goto The Jade Forest/0 55.67,57.05 |q 29932 |notravel
step
talk Elder Sage Wind-Yi##57242
|tip She walks around this area.
Select _"I have a message for the Jade Serpent."_ |gossip 125804
Speak to Elder Sage Wind-Yi |q 29932/1 |goto The Jade Forest/0 55.84,57.07
Also check around [54.99,56.89]
step
Watch the dialogue
talk Elder Sage Rain-Zhu##56782
turnin The Temple of the Jade Serpent##29932 |goto The Jade Forest/0 58.13,58.66
accept The Scryer's Dilemma##29997 |goto The Jade Forest/0 58.13,58.66
accept The Librarian's Quandary##29998 |goto The Jade Forest/0 58.13,58.66
accept They Call Him... Stormstout##32019 |goto The Jade Forest/0 58.13,58.66
step
talk Fei##56784
accept The Rider's Bind##29999 |goto The Jade Forest/0 58.03,59.01
accept Lighting Up the Sky##30005 |goto The Jade Forest/0 58.03,59.01
stickystart "Launch_Fireworks"
step
clicknpc Playful Crimson Serpent##56852
|tip It moves around this small area.
Find the Playful Crimson Serpent |q 29999/2 |goto The Jade Forest/0 58.18,61.39
step
talk Lorewalker Stonestep##56786
|tip Inside the building.
turnin The Librarian's Quandary##29998 |goto The Jade Forest/0 56.26,60.43
accept Moth-Ridden##30001 |goto The Jade Forest/0 56.26,60.43
accept Pages of History##30002 |goto The Jade Forest/0 56.26,60.43
stickystop "Launch_Fireworks"
stickystart "Kill_Dappled_Moths"
stickystart "Squash_Bookworms"
step
clicknpc Playful Gold Serpent##56850
|tip It moves around this small area.
|tip Inside the building.
Find the Playful Gold Serpent |q 29999/4 |goto The Jade Forest/0 56.00,60.32
step
label "Kill_Dappled_Moths"
kill 8 Dappled Moth##57232 |q 30001/1 |goto The Jade Forest/0 56.00,60.32
|tip They look like {o}butterflies{}.
|tip Inside the building. |notinsticky
step
label "Squash_Bookworms"
click Infested Book##209594+
|tip They look like {o}large green books{}.
|tip Inside the building. |notinsticky
kill Bookworm##57237+
|tip You can {o}right-click them repeatedly{} to kill them quickly.
Squash #12# Bookworms |q 30002/1 |goto The Jade Forest/0 56.00,60.32
step
talk Lorewalker Stonestep##56786
|tip Inside the building.
turnin Moth-Ridden##30001 |goto The Jade Forest/0 56.26,60.44
turnin Pages of History##30002 |goto The Jade Forest/0 56.26,60.44
accept Everything In Its Place##30004 |goto The Jade Forest/0 56.26,60.44
step
clicknpc Playful Emerald Serpent##56851
|tip It moves around this small area.
|tip {o}Follow the stairs up{} and {o}leave the building{} to find it.
Find the Playful Emerald Serpent |q 29999/3 |goto The Jade Forest/0 56.54,58.38
step
kill Water Fiend##56820+
|tip They look like {o}small water elementals{}.
|tip Inside the building.
collect Scryer's Staff##76725 |q 29997/1 |goto The Jade Forest/0 57.46,55.98
step
talk Wise Mari##56787
|tip Inside the building.
turnin The Scryer's Dilemma##29997 |goto The Jade Forest/0 57.57,56.03
accept A New Vision##30011 |goto The Jade Forest/0 57.57,56.03
stickystart "Launch_Fireworks"
step
clicknpc Playful Azure Serpent##56853
|tip It moves around this small area.
Find the Playful Azure Serpent |q 29999/1 |goto The Jade Forest/0 59.21,56.73
step
label "Launch_Fireworks"
click Firework Launcher##209672+
|tip They look like {o}metal pots sitting on wooden pallets{}.
Launch #8# Fireworks |q 30005/1 |goto The Jade Forest/0 57.46,58.50
step
talk Elder Sage Rain-Zhu##56782
turnin A New Vision##30011 |goto The Jade Forest/0 58.14,58.66
turnin Everything In Its Place##30004 |goto The Jade Forest/0 58.14,58.66
step
talk Fei##56784
turnin The Rider's Bind##29999 |goto The Jade Forest/0 58.03,59.01
turnin Lighting Up the Sky##30005 |goto The Jade Forest/0 58.03,59.01
accept The Jade Serpent##30000 |goto The Jade Forest/0 58.03,59.01
step
Watch the dialogue
Listen to the Jade Serpent |q 30000/1
step
talk Elder Sage Wind-Yi##57242
|tip She walks around this area.
turnin The Jade Serpent##30000 |goto The Jade Forest/0 55.84,57.08
accept Get Back Here!##30499 |goto The Jade Forest/0 55.84,57.08
Also check around [54.99,56.89]
step
talk Ginsa Arroweye##59727
fpath Jade Temple Grounds |goto The Jade Forest/0 54.57,61.76
step
talk Ginsa Arroweye##59727
Select _"I could use a kite to Grookin' Hill."_ |gossip 129651
Begin Flying to Grookin Hill |invehicle |goto The Jade Forest/0 54.57,61.76 |q 30499
step
Fly to Grookin Hill |outvehicle |goto The Jade Forest/0 28.02,46.97 |q 30499 |notravel
step
talk General Nazgrim##57108
turnin Get Back Here!##30499 |goto The Jade Forest/0 28.03,47.19
accept Gauging Our Progress##30484 |goto The Jade Forest/0 28.03,47.19
accept Sufficient Motivation##30466 |goto The Jade Forest/0 28.03,47.19
stickystart "Motivate_Hozen"
step
click Barrel of Slickies##209974
collect Bucket of Slicky Water##79884 |q 30466/2 |goto The Jade Forest/0 28.11,47.39
step
talk Rivett Clutchpop##59305
Select _"General Nazgrim needs an update on your progress."_ |gossip 125983
collect Rivett Clutchpop's Report##80014 |q 30484/2 |goto The Jade Forest/0 28.41,47.79
step
talk Shademaster Kiryn##56841
Select _"General Nazgrim wants an update on your progress."_ |gossip 125687
collect Shademaster Kiryn's Report##80013 |q 30484/1 |goto The Jade Forest/0 29.16,50.89
stickystop "Motivate_Hozen"
step
talk Shokia##56838
|tip She walks around this area.
Select _"General Nazgrim needs your training report."_ |gossip 125787
collect Shokia's Report##80015 |q 30484/3 |goto The Jade Forest/0 28.39,51.93
step
talk Riko##56840
Select _"General Nazgrim wants to know the status of the supplies."_ |gossip 125813
collect Riko's Report##80061 |q 30484/4 |goto The Jade Forest/0 27.00,54.94
step
label "Motivate_Hozen"
use the Bucket of Slicky Water##79884
|tip Use it on {o}Lazy Hozens{}.
|tip They look like {o}monkeys sleeping on the ground{}, or {o}hanging from ropes{}.
Motivate #10# Hozen |q 30466/1 |goto The Jade Forest/0 27.63,48.80
'|clicknpc Lazy Hozen##59296, Lazy Hozen##59740
step
talk General Nazgrim##57108
turnin Gauging Our Progress##30484 |goto The Jade Forest/0 28.03,47.19
turnin Sufficient Motivation##30466 |goto The Jade Forest/0 28.03,47.19
step
talk Lorewalker Cho##59377
accept Last Piece of the Puzzle##30485 |goto The Jade Forest/0 28.22,46.72
step
talk Mishi##64207
Select _"I am ready to leave."_ |gossip 129655
Begin Flying to Serpent's Overlook |invehicle |goto The Jade Forest/0 28.19,46.72 |q 30485
step
Fly to Serpent's Overlook |outvehicle |goto The Jade Forest/0 44.65,67.24 |q 30485 |notravel
step
talk Sky Dancer Ji##64310
fpath Serpent's Overlook |goto The Jade Forest/0 43.10,68.49
step
talk Shao the Defiant##54697
|tip He fights around this area.
turnin An Air of Worry##29576 |goto The Jade Forest/0 43.48,75.92
accept Defiance##29578 |goto The Jade Forest/0 43.48,75.92
accept Rally the Survivors##29579 |goto The Jade Forest/0 43.48,75.92
step
talk Gentle Mother Hanae##54854
|tip She walks around this area.
|tip Inside the building.
accept Spitfire##29585 |goto The Jade Forest/0 43.24,76.01
accept Orchard-Supplied Hardware##29580 |goto The Jade Forest/0 43.24,76.01
stickystart "Collect_Orchard_Tools"
stickystart "Kill_Gormali_Incinerators"
stickystart "Kill_Gormali_Raiders"
stickystart "Put_Out_Orchard_Fires"
step
talk Nectarbreeze Farmer##54763+
|tip They look like {o}pandaren{}.
Select _"Get to Hanae's house. It's safe there."_ |gossip 125636
Rescue #5# Survivors |q 29579/1 |goto The Jade Forest/0 44.01,74.31
step
label "Collect_Orchard_Tools"
click Orchard Tool##209345+
|tip They look like {o}various farm tools with long brown wooden handles{}.
collect 6 Orchard Tool##72133 |q 29580/1 |goto The Jade Forest/0 44.01,74.31
step
label "Kill_Gormali_Incinerators"
kill 8 Gormali Incinerator##54703 |q 29578/2 |goto The Jade Forest/0 44.01,74.31
|tip They look like {o}grey bulky humanoids carrying torches{}.
step
label "Kill_Gormali_Raiders"
kill 8 Gormali Raider##54702 |q 29578/1 |goto The Jade Forest/0 44.01,74.31
|tip They look like {o}grey bulky humanoids{}.
step
label "Put_Out_Orchard_Fires"
use the Nectarbreeze Cider##72578
|tip Use it {o}near fires while facing them{}.
Put Out #12# Orchard Fires |q 29585/1 |goto The Jade Forest/0 44.01,74.31
step
talk Shao the Defiant##54697
|tip He fights around this area.
turnin Defiance##29578 |goto The Jade Forest/0 43.48,75.92
turnin Rally the Survivors##29579 |goto The Jade Forest/0 43.48,75.92
step
talk Gentle Mother Hanae##54854
|tip She walks around this area.
|tip Inside the building.
turnin Spitfire##29585 |goto The Jade Forest/0 43.24,76.01
turnin Orchard-Supplied Hardware##29580 |goto The Jade Forest/0 43.24,76.01
step
talk Traumatized Nectarbreeze Farmer##55209
|tip Inside the building.
accept The Splintered Path##29586 |goto The Jade Forest/0 43.21,75.94
step
Discover Camp Mogu |q 29586/1 |goto The Jade Forest/0 41.00,73.97
step
talk Shao the Defiant##55009
turnin The Splintered Path##29586 |goto The Jade Forest/0 41.00,73.97
accept Unbound##29587 |goto The Jade Forest/0 41.00,73.97
accept Getting Down to Business##29670 |goto The Jade Forest/0 41.00,73.97
stickystart "Set_Farmers_Free"
step
kill Subjugator Gormal##55016 |q 29670/1 |goto The Jade Forest/0 37.80,76.18
step
label "Set_Farmers_Free"
clicknpc Captured Nectarbreeze Farmer##54990+
|tip They look like {o}pandas caught in nets{}.
kill Gormali Slaver##54989+
|tip Kill the {o}ones dragging a prisoner{} behind them.
Set #10# Farmers Free |q 29587/1 |goto The Jade Forest/0 39.91,74.79
step
talk Shao the Defiant##55009
turnin Unbound##29587 |goto The Jade Forest/0 41.00,73.97
turnin Getting Down to Business##29670 |goto The Jade Forest/0 41.00,73.97
step
|tip If you can fly in Pandaria, just fly to the top of the mountain.
|tip otherwise use Hearthstone and local flight master to get to that location.
use Hearthstone##6948
talk Keg Runner Lee##59186  |goto The Jade Forest/0 47.05,46.24 <10
Select _"Show me where I can fly."_ |gossip 88152
|tip Fly to the Serpent's Overlook
use the Cho Family Heirloom##80071
|tip At the top of the mountain.
Watch the dialogue
Place the Heirloom at the Cho Family Shrine |q 30485/1 |goto The Jade Forest/0 44.50,66.93
step
talk Lorewalker Cho##59411
|tip At the top of the mountain.
turnin Last Piece of the Puzzle##30485 |goto The Jade Forest/0 44.77,67.09
accept The Seal is Broken##31303 |goto The Jade Forest/0 44.77,67.09
step
talk Mishi##64475
Select _"Let's do this, Mishi!"_ |gossip 129667
Fly with Mishi |invehicle |goto The Jade Forest/0 44.77,67.04 |q 31303
step
Seal #12# Sha Fissures |q 31303/1 |goto The Jade Forest/0 47.30,58.20
|tip Use the ability on the {o}white smoke pillars{} on the ground as you fly.
step
talk Lorewalker Cho##59418
turnin The Seal is Broken##31303 |goto The Jade Forest/0 49.30,61.48
accept Residual Fallout##30500 |goto The Jade Forest/0 49.30,61.48
accept Jaded Heart##30502 |goto The Jade Forest/0 49.30,61.48
accept Emergency Response##30504 |goto The Jade Forest/0 49.30,61.48
stickystart "Kill_Sha_Remnants"
stickystart "Kill_Sha_Echoes"
step
use Cho's Fireworks##86467
Rescue General Nazgrim |q 30504/1 |goto The Jade Forest/0 48.13,61.77
step
use Cho's Fireworks##86467
Rescue Shademaster Kiryn |q 30504/2 |goto The Jade Forest/0 47.24,62.54
step
use Cho's Fireworks##86467
Rescue Shokia |q 30504/3 |goto The Jade Forest/0 46.87,60.71
step
use Cho's Fireworks##86467
Rescue Rivett Clutchpop |q 30504/4 |goto The Jade Forest/0 48.02,59.08
step
label "Kill_Sha_Remnants"
click Celestial Jade##210921+
|tip They look like {o}small green rocks{}.
collect Celestial Jade##80074+ |n
use the Celestial Jade##80074+
|tip Use them on {o}Sha Remnants{}.
|tip They look like {o}larger shadow aliens{}.
|tip They will {o}become non-elite{} and {o}easy to kill{}.
kill 6 Sha Remnant##59434 |q 30502/1 |goto The Jade Forest/0 46.93,60.72
step
label "Kill_Sha_Echoes"
kill 12 Sha Echo##59417 |q 30500/1 |goto The Jade Forest/0 46.93,60.72
|tip They look like {o}smaller shadow aliens{}.
step
talk Lorewalker Cho##59418
turnin Residual Fallout##30500 |goto The Jade Forest/0 49.30,61.48
turnin Jaded Heart##30502 |goto The Jade Forest/0 49.30,61.48
turnin Emergency Response##30504 |goto The Jade Forest/0 49.30,61.48
step
talk Fei##59899
accept Moving On##30648 |goto The Jade Forest/0 49.30,61.42
step
talk Fei##59899
Select _"I am ready to leave."_ |gossip 126094
Begin Flying to the Valley of the Four Winds |invehicle |goto The Jade Forest/0 49.30,61.42 |q 30648
step
Watch the dialogue
Travel to the Valley of the Four Winds |q 30648/1 |goto Valley of the Four Winds/0 85.97,21.72 |notravel
step
_Click the Complete Quest Box:_
turnin Moving On##30648
]])
QuestCore:RegisterGuide("Leveling Guides\\Pandaria (85-90)\\Valley of the Four Winds (86-87)",{
expansion="mists",
image="ValleyOfTheFourWinds",
next="Leveling Guides\\Pandaria (85-90)\\Krasarang Wilds (87)",
startlevel=86,
mopready=true
},[[
step
talk Chen Stormstout##56133
turnin They Call Him... Stormstout##32019 |goto Valley of the Four Winds/0 85.94,22.10 |only if haveq(32019) or completedq(32019)
turnin His Name Was... Stormstout##32018 |goto Valley of the Four Winds/0 85.94,22.10 |only if haveq(32018) or completedq(32018)
accept Chen and Li Li##29907 |goto Valley of the Four Winds/0 85.94,22.10
step
talk Princeton##60230
fpath Pang's Stead |goto Valley of the Four Winds/0 84.49,21.06
step
Watch the dialogue
Follow Chen and Li Li to Pang's Stead |q 29907/1 |goto Valley of the Four Winds/0 83.78,21.17
step
talk Pang Thunderfoot##56204
turnin Chen and Li Li##29907 |goto Valley of the Four Winds/0 83.70,21.03
accept A Seemingly Endless Nuisance##29908 |goto Valley of the Four Winds/0 83.70,21.03
step
talk Nan Thunderfoot##65528
|tip Inside the building.
home Thunderfoot Inn |goto Valley of the Four Winds/0 83.76,20.19 |q 29877 |future
stickystart "Slay_Large_Virmen"
stickystart "Slay_Virmen_Pesterers"
step
talk Muno the Farmhand##56440
accept A Poor Grasp of the Basics##29877 |goto Valley of the Four Winds/0 82.70,21.24
step
clicknpc Plow Plant##56281+
|tip They look like {o}plows sticking out of dirt piles{}.
clicknpc Hoe Tree##56280+
|tip They look like {o}hoes sticking out of dirt piles{}.
clicknpc Rake Tree##56279+
|tip They look like {o}rakes sticking out of dirt piles{}.
clicknpc Barrow Bush##56278+
|tip They look like {o}wheelbarrow handles sticking out of dirt piles{}.
Find #7# Buried Farm Equipment |q 29877/1 |goto Valley of the Four Winds/0 80.71,21.45
step
label "Slay_Large_Virmen"
kill Snagtooth Virmen##56184, Snagtooth Tool-Grabber##56185, Snagtooth Troublemaker##55873
|tip They look like {o}larger rats{}.
Slay #8# Large Virmen |q 29908/1 |goto Valley of the Four Winds/0 80.71,21.45
step
label "Slay_Virmen_Pesterers"
kill Snagtooth Pesterling##65504+
|tip They look like {o}tiny rats that run around in groups{}.
Slay #18# Virmen Pesterers |q 29908/2 |goto Valley of the Four Winds/0 80.71,21.45
step
talk Muno the Farmhand##56440
turnin A Poor Grasp of the Basics##29877 |goto Valley of the Four Winds/0 82.70,21.24
step
talk Pang Thunderfoot##56204
turnin A Seemingly Endless Nuisance##29908 |goto Valley of the Four Winds/0 83.70,21.03
accept Low Turnip Turnout##29909 |goto Valley of the Four Winds/0 83.70,21.03
step
talk Xiao##56110
accept The Search for the Hidden Master##30086 |goto Valley of the Four Winds/0 84.08,21.04
step
talk Xiao##56110
turnin The Search for the Hidden Master##30086 |goto Valley of the Four Winds/0 84.08,21.05
accept Ken-Ken##29873 |goto Valley of the Four Winds/0 84.08,21.05
accept Clever Ashyo##29871 |goto Valley of the Four Winds/0 84.08,21.05
accept Kang Bramblestaff##29875 |goto Valley of the Four Winds/0 84.08,21.05
accept Lin Tenderpaw##29872 |goto Valley of the Four Winds/0 84.08,21.05
step
talk Ang Thunderfoot##56207
|tip He walks around this area.
turnin Low Turnip Turnout##29909 |goto Valley of the Four Winds/0 81.59,25.22
accept Taking a Crop##29940 |goto Valley of the Four Winds/0 81.59,25.22
step
talk Ana Thunderfoot##56465
|tip She walks around this area.
accept Rampaging Rodents##29910 |goto Valley of the Four Winds/0 82.23,25.94
stickystart "Fill_Marmot_Holes"
step
clicknpc Plump Marmot##56203+
|tip They look like {o}small brown rodents{}.
Move #6# Plump Marmots |q 29910/1 |goto Valley of the Four Winds/0 82.38,25.15
step
label "Fill_Marmot_Holes"
click Marmot Hole##209835+
|tip They look like {o}piles of dirt{}.
Fill #6# Marmot Holes |q 29910/2 |goto Valley of the Four Winds/0 82.38,25.15
step
talk Ana Thunderfoot##56465
|tip She walks around this area.
turnin Rampaging Rodents##29910 |goto Valley of the Four Winds/0 82.23,25.94
step
Enter the underground burrow |goto Valley of the Four Winds/0 86.50,28.08 < 10 |walk
click Stolen Turnip##209891+
|tip They look like {o}round white vegetables with green leaves{}.
|tip Inside the underground burrow.
collect 5 Stolen Turnip##76297 |q 29940/1 |goto Valley of the Four Winds/0 84.86,27.01
step
Leave the underground burrow |goto Valley of the Four Winds/0 86.56,28.08 < 10 |walk |only if subzone("Virmen Nest") and indoors()
click Stolen Watermelon##209899+
|tip They look like {o}watermelons with flag poles in them{}.
collect 5 Stolen Watermelon##76298 |q 29940/2 |goto Valley of the Four Winds/0 85.56,33.13
step
talk Ang Thunderfoot##56207
|tip He walks around this area.
turnin Taking a Crop##29940 |goto Valley of the Four Winds/0 81.59,25.22
accept Practically Perfect Produce##29911 |goto Valley of the Four Winds/0 81.59,25.22
step
talk Pang Thunderfoot##56204
turnin Practically Perfect Produce##29911 |goto Valley of the Four Winds/0 83.70,21.02
accept The Fabulous Miss Fanny##29912 |goto Valley of the Four Winds/0 83.70,21.02
step
click Ang's Giant Pink Turnip##209844
collect Ang's Giant Pink Turnip##75259 |goto Valley of the Four Winds/0 84.28,21.89 |q 29912 |future
step
click Ang's Summer Watermelon##209843
collect Ang's Summer Watermelon##75258 |goto Valley of the Four Winds/0 84.16,22.07 |q 29912 |future
step
click Pang's Extra-Spicy Tofu##209842
collect Pang's Extra-Spicy Tofu##75256 |goto Valley of the Four Winds/0 84.04,22.00 |q 29912 |future
step
talk Miss Fanny##56192
Select _"Hit it with average power."_ |gossip 125725
Launch a Pink Turnip |q 29912/1 |goto Valley of the Four Winds/0 83.00,21.36
step
talk Miss Fanny##56192
Select _"Hit it very softly."_ |gossip 125721
Launch a Watermelon |q 29912/2 |goto Valley of the Four Winds/0 83.00,21.36
step
talk Miss Fanny##56192
Select _"Hit it as hard as possible."_ |gossip 125720
Launch the Extra-Spicy Tofu |q 29912/3 |goto Valley of the Four Winds/0 83.00,21.36
step
talk Liang Thunderfoot##56205
turnin The Fabulous Miss Fanny##29912 |goto Valley of the Four Winds/0 75.22,24.05
accept The Meat They'll Eat##29913 |goto Valley of the Four Winds/0 75.22,24.05
accept Back to the Sty##29914 |goto Valley of the Four Winds/0 75.22,24.05
stickystart "Collect_Turtle_Meat_Scraps"
stickystart "Collect_Mushan_Shoulder_Steaks"
step
clicknpc Jian##56253
|tip It looks like a {o}grey pig{}.
|tip It walks around this area.
Find Jian |q 29914/1 |goto Valley of the Four Winds/0 70.39,24.05
step
talk Kim of the Mountain Winds##62658
fpath Grassy Cline |goto Valley of the Four Winds/0 70.82,24.10
step
clicknpc Smelly##56255
|tip It looks like a {o}pink pig{}.
|tip It walks around this area.
Find Smelly |q 29914/3 |goto Valley of the Four Winds/0 70.56,28.36
step
clicknpc Ling##56254
|tip It looks like a {o}grey pig{}.
|tip It walks around this area.
Find Ling |q 29914/2 |goto Valley of the Four Winds/0 67.08,29.74
step
label "Collect_Turtle_Meat_Scraps"
kill Wyrmhorn Turtle##56256+
collect 80 Turtle Meat Scrap##75276 |q 29913/2 |goto Valley of the Four Winds/0 67.87,29.22
step
label "Collect_Mushan_Shoulder_Steaks"
kill Adolescent Mushan##56239+
|tip They look like {o}yellow dinosaurs{}.
collect 4 Mushan Shoulder Steak##75275 |q 29913/1 |goto Valley of the Four Winds/0 71.90,29.94
step
talk Liang Thunderfoot##56205
turnin The Meat They'll Eat##29913 |goto Valley of the Four Winds/0 75.22,24.06
turnin Back to the Sty##29914 |goto Valley of the Four Winds/0 75.22,24.06
accept A Neighbor's Duty##29915 |goto Valley of the Four Winds/0 75.22,24.07
step
talk Francis the Shepherd Boy##56208
turnin A Neighbor's Duty##29915 |goto Valley of the Four Winds/0 78.12,32.91
accept Piercing Talons and Slavering Jaws##29916 |goto Valley of the Four Winds/0 78.12,32.91
accept Lupello##29917 |goto Valley of the Four Winds/0 78.12,32.91
stickystart "Kill_Thieving_Wolves"
stickystart "Kill_Thieving_Plainshawks"
step
kill Lupello##56357 |q 29917/1 |goto Valley of the Four Winds/0 81.76,39.85
|tip It looks like a {o}large black wolf{}.
|tip It walks around this area.
step
label "Kill_Thieving_Wolves"
kill 6 Thieving Wolf##56106 |q 29916/2 |goto Valley of the Four Winds/0 81.64,35.01
step
label "Kill_Thieving_Plainshawks"
kill 5 Thieving Plainshawk##56034 |q 29916/1 |goto Valley of the Four Winds/0 80.40,31.74
|tip They look like {o}brown birds perched in trees{} or {o}flying in the air{}.
step
talk Francis the Shepherd Boy##56208
turnin Piercing Talons and Slavering Jaws##29916 |goto Valley of the Four Winds/0 78.12,32.91
turnin Lupello##29917 |goto Valley of the Four Winds/0 78.12,32.91
step
Watch the dialogue
talk Shang Thunderfoot##56312
accept A Lesson in Bravery##29918 |goto Valley of the Four Winds/0 78.18,32.82
step
use the Rancher's Lariat##75208
|tip Use it on {o}Great White Plainshawks{}.
|tip They look like {o}larger white birds flying in the air{}.
kill Great White Plainshawk##56171 |q 29918/1 |goto Valley of the Four Winds/0 79.40,34.76
step
talk Shang Thunderfoot##56312
|tip He walks around this area.
turnin A Lesson in Bravery##29918 |goto Valley of the Four Winds/0 74.56,34.61
step
talk Chen Stormstout##56133
accept Great Minds Drink Alike##29919 |goto Valley of the Four Winds/0 75.28,35.50
step
talk Chen Stormstout##56133
Select _"I'm ready. Let's hit the road."_ |gossip 125752
Watch the dialogue
Follow Chen and Li Li |goto Valley of the Four Winds/0 75.28,35.50 > 10 |c |q 29919
step
Watch the dialogue
|tip Follow {o}Chen{} and {o}Li Li{} as they walk.
|tip They eventually walk to this location.
Escort Chen and Li Li |q 29919/1 |goto Valley of the Four Winds/0 68.87,43.15
'|clicknpc Chen Stormstout##56571, Li Li##56572
step
talk Mudmug##56474
turnin Great Minds Drink Alike##29919 |goto Valley of the Four Winds/0 68.72,43.12
step
talk Chen Stormstout##56133
accept Leaders Among Breeders##29944 |goto Valley of the Four Winds/0 68.87,43.15
step
talk Li Li##56138
accept Yellow and Red Make Orange##29945 |goto Valley of the Four Winds/0 68.89,43.32
stickystart "Collect_Vial_Animal_Bloods"
step
click Meadow Marigold##209907+
|tip They look like {o}yellow flowers{}.
collect 10 Meadow Marigold##76334 |q 29945/1 |goto Valley of the Four Winds/0 70.53,47.94
step
kill Aiyu the Skillet##56520 |q 29944/1 |goto Valley of the Four Winds/0 68.29,38.01
|tip He looks like a {o}large rat{}.
|tip He walks around this area.
step
kill Jinanya the Clawblade##56513 |q 29944/2 |goto Valley of the Four Winds/0 65.97,37.39
|tip He looks like a {o}large rat{}.
|tip He walks around this area.
step
kill Frenzyhop##56514 |q 29944/3 |goto Valley of the Four Winds/0 64.53,40.65
|tip He looks like a {o}large rat{}.
|tip He walks around this area.
step
label "Collect_Vial_Animal_Bloods"
kill Tawnyhide Fawn##56526, Tawnyhide Stag##56532, Mushan Nomad##56523, Tawnyhide Doe##56531, Longfang Howler##56524
|tip Only {o}beast enemies{} will {o}drop the quest items{}.
collect 40 Vial of Animal Blood##76335 |q 29945/2 |goto Valley of the Four Winds/0 68.71,48.24
You can find more around [66.67,39.42]
step
talk Li Li##56138
turnin Yellow and Red Make Orange##29945 |goto Valley of the Four Winds/0 68.88,43.30
accept Crouching Carrot, Hidden Turnip##29947 |goto Valley of the Four Winds/0 68.87,43.31
step
talk Chen Stormstout##56133
turnin Leaders Among Breeders##29944 |goto Valley of the Four Winds/0 68.88,43.15
accept The Warren-Mother##29946 |goto Valley of the Four Winds/0 68.88,43.15
step
talk Mudmug##56474
accept Thieves to the Core##29948 |goto Valley of the Four Winds/0 68.71,43.12
stickystart "Collect_Stolen_Sack_Of_Hops"
stickystart "Trick_Virmen_With_Orange_Painted_Turnips"
step
Enter the underground burrow |goto Valley of the Four Winds/0 65.99,38.38 < 10 |walk
kill Chufa##56537 |q 29946/1 |goto Valley of the Four Winds/0 67.90,37.44
|tip {o}Chen Stormstout{} will eventually appear and {o}help you fight{}.
|tip Inside the underground burrow.
step
label "Collect_Stolen_Sack_Of_Hops"
click Stolen Sack of Hops##211696+
|tip They look like {o}tan bags filled with green balls{}.
|tip Throughout the underground burrow. |notinsticky
collect 6 Stolen Sack of Hops##76337 |q 29948/1 |goto Valley of the Four Winds/0 69.05,39.90
step
label "Trick_Virmen_With_Orange_Painted_Turnips"
use the Orange-Painted Turnip##76370
|tip Use it on {o}Twitchheel Hoarders{}.
|tip They look like {o}rat people{}.
|tip Inside and outside the underground burrow.
Trick #12# Virmen with Orange-Painted Turnips |q 29947/1 |goto Valley of the Four Winds/0 67.88,36.52
'|clicknpc Twitchheel Hoarder##56538
step
talk Li Li##56138
turnin Crouching Carrot, Hidden Turnip##29947 |goto Valley of the Four Winds/0 68.88,43.32
stickystart "Collect_Stolen_Sack_Of_Hops"
step
talk Mudmug##56474
turnin Thieves to the Core##29948 |goto Valley of the Four Winds/0 68.71,43.12
step
talk Chen Stormstout##56133
turnin The Warren-Mother##29946 |goto Valley of the Four Winds/0 68.88,43.15
accept Legacy##29949 |goto Valley of the Four Winds/0 68.88,43.14
step
Watch the dialogue
talk Li Li##56138
turnin Legacy##29949 |goto Valley of the Four Winds/0 68.77,43.44
accept Li Li's Day Off##29950 |goto Valley of the Four Winds/0 68.77,43.44
step
Watch the dialogue
talk Mudmug##56474
accept Muddy Water##29951 |goto Valley of the Four Winds/0 68.70,43.10
step
use Li Li's Wishing-Stone##76350
|tip Use it if she's {o}not following you{}.
Bring Li Li to Huangtze Falls |q 29950/3 |goto Valley of the Four Winds/0 74.96,42.42
step
use Li Li's Wishing-Stone##76350
|tip Use it if she's {o}not following you{}.
Bring Li Li to New Cifera |q 29950/2 |goto Valley of the Four Winds/0 61.90,35.36
step
talk Clever Ashyo##56113
turnin Clever Ashyo##29871 |goto Valley of the Four Winds/0 61.23,34.22
accept Ashyo's Vision##29577 |goto Valley of the Four Winds/0 61.23,34.22
step
talk Yan##56773
accept Bottletoads##29757 |goto Valley of the Four Winds/0 60.61,33.69
step
talk Gladecaster Lang##58736
accept Watery Woes##30267 |goto Valley of the Four Winds/0 60.97,32.88
stickystart "Collect_Spindly_Bloodfeathers"
stickystart "Collect_Glade_Glimmers"
step
kill Manglemaw##58754
kill Manglemaw's Mother##58755
|tip She appears {o}after you kill Manglemaw{}.
collect Enormous Crocolisk Tail##79238 |goto Valley of the Four Winds/0 57.48,25.79 |q 30275 |future
step
use the Enormous Crocolisk Tail##79238
accept A Crocolisk Tale##30275
step
label "Collect_Spindly_Bloodfeathers"
kill Glade Hunter##57299, Glade Sprinter##58741
|tip They look like {o}large walking birds{}.
collect 5 Spindly Bloodfeather##79198 |q 30267/2 |goto Valley of the Four Winds/0 57.03,33.27
step
label "Collect_Glade_Glimmers"
clicknpc Glade Glimmer##57301+
|tip They look like {o}tiny yellow flying insects{}.
collect 18 Glade Glimmer##79197 |q 30267/1 |goto Valley of the Four Winds/0 57.03,33.27
step
talk Gladecaster Lang##58736
turnin Watery Woes##30267 |goto Valley of the Four Winds/0 60.98,32.89
step
talk Yan##56773
turnin A Crocolisk Tale##30275 |goto Valley of the Four Winds/0 60.62,33.70
step
Follow the path up |goto Valley of the Four Winds/0 62.95,29.70 < 20 |only if walking
talk Zhang Yue##56802
accept Snap Judgment##29600 |goto Valley of the Four Winds/0 59.83,27.93
step
talk Clever Ashyo##56113
Select _"Go ahead and speak with the water, Ashyo."_ |gossip 125796
Witness Ashyo's Vision |q 29577/1 |goto Valley of the Four Winds/0 59.26,27.56
step
talk Zhang Yue##56802
turnin Ashyo's Vision##29577 |goto Valley of the Four Winds/0 59.83,27.93
accept The Golden Dream##29581 |goto Valley of the Four Winds/0 59.82,27.95
stickystart "Scoop_Toad_Eggs"
stickystart "Kill_Razorback_Snappers"
step
kill Krosh##56833
collect Krosh's Back##83767 |n
use Krosh's Back##83767
accept Guess Who's Back##29758 |goto Valley of the Four Winds/0 65.32,25.73
step
click Dreamleaf Bush##209987
collect Sprig of Dreamleaf##76973 |q 29581/1 |goto Valley of the Four Winds/0 65.26,26.29
step
label "Scoop_Toad_Eggs"
click Gurgling Toadspawn##209950+
|tip They look like {o}bubbles in the water{}.
Scoop #8# Toad Eggs |q 29757/1 |goto Valley of the Four Winds/0 63.15,26.42
step
label "Kill_Razorback_Snappers"
kill 16 Razorback Snapper##56832 |q 29600/1 |goto Valley of the Four Winds/0 63.15,26.42
|tip They look like {o}small turtles{}.
step
talk Zhang Yue##56802
turnin Snap Judgment##29600 |goto Valley of the Four Winds/0 59.83,27.95
step
talk Yan##56773
turnin The Golden Dream##29581 |goto Valley of the Four Winds/0 60.61,33.69
step
Watch the dialogue
talk Yan##56773
turnin Bottletoads##29757 |goto Valley of the Four Winds/0 60.61,33.69
turnin Guess Whose Back##29758 |goto Valley of the Four Winds/0 60.61,33.69
step
talk Wing Nga##60231
fpath Halfhill |goto Valley of the Four Winds/0 56.50,50.36
step
talk Stonecarver Mac##64315
accept Children of the Water##32045 |goto Valley of the Four Winds/0 55.14,47.39
step
talk Lolo Lio##59585
accept Got Silk?##32035 |goto Valley of the Four Winds/0 55.59,52.06
step
use Li Li's Wishing-Stone##76350
|tip Use it if she's {o}not following you{}.
Bring Li Li to the Silken Fields |q 29950/1 |goto Valley of the Four Winds/0 61.79,58.85
step
talk Silkmaster Tsai##57405
turnin Got Silk?##32035 |goto Valley of the Four Winds/0 62.66,59.74
step
talk Journeyman Chu##57424
accept The Moth Rebellion##30059 |goto Valley of the Four Winds/0 63.55,58.45
stickystart "Kill_Tiny_Mutated_Silkmoths"
step
kill 6 Mutated Silkmoth##57422 |q 30059/1 |goto Valley of the Four Winds/0 65.40,57.81
|tip They look like {o}large white moths{}.
step
label "Kill_Tiny_Mutated_Silkmoths"
kill 8 Tiny Mutated Silkmoth##65984 |q 30059/2 |goto Valley of the Four Winds/0 65.40,57.81
|tip They look like {o}tiny moths in groups{}.
step
click Muddy Water##209921+
|tip They look like {o}green spots on the water{}.
|tip {o}Fill up the flask{} on your screen.
collect Stoppered Vial of Muddy Water##76356 |q 29951/1 |goto Valley of the Four Winds/0 71.61,56.13
step
talk Journeyman Chu##57424
turnin The Moth Rebellion##30059 |goto Valley of the Four Winds/0 63.54,58.45
step
talk Master Goh##57407
accept Mothallus!##30058 |goto Valley of the Four Winds/0 63.62,58.53
step
click Mothallus Bait##210117
Watch the dialogue
kill Mothallus##57421
Bait and Kill Mothallus |q 30058/1 |goto Valley of the Four Winds/0 64.38,57.97
step
talk Master Goh##57407
turnin Mothallus!##30058 |goto Valley of the Four Winds/0 63.62,58.53
step
talk Li Li##56138
turnin Li Li's Day Off##29950 |goto Valley of the Four Winds/0 68.78,43.43
step
talk Mudmug##56474
turnin Muddy Water##29951 |goto Valley of the Four Winds/0 68.71,43.12
step
Watch the dialogue
talk Chen Stormstout##56133
accept Broken Dreams##29952 |goto Valley of the Four Winds/0 68.85,43.41
step
talk Chen Stormstout##56133
Select _"What happened, Chen?"_ |gossip 125770
Enter Chen's Story |invehicle |goto Valley of the Four Winds/0 68.85,43.41 |q 29952
step
Watch the dialogue
|tip Inside the building.
kill Unruly Alemental##56684
Click Here After Killing the Unruly Alemental |confirm |goto Valley of the Four Winds/0 34.25,70.57 |q 29952
step
Watch the dialogue
kill Wuk-Wuk##56691
Click Here After Killing Wuk-Wuk |confirm |goto Valley of the Four Winds/0 35.87,72.72 |q 29952
step
Watch the dialogue
|tip Upstairs inside the building.
|tip Follow the path up into the {o}upper level{} of the building.
Listen to Chen's Story |q 29952/1 |goto Valley of the Four Winds/0 34.55,70.70
step
talk Chen Stormstout##56133
turnin Broken Dreams##29952 |goto Valley of the Four Winds/0 68.85,43.40
accept Chen's Resolution##30046 |goto Valley of the Four Winds/0 68.85,43.40
step
talk Chen Stormstout##56133
turnin Chen's Resolution##30046 |goto Valley of the Four Winds/0 55.89,49.44
accept Hop Hunting##30053 |goto Valley of the Four Winds/0 55.89,49.44
accept Li Li and the Grain##30048 |goto Valley of the Four Winds/0 55.89,49.44
accept Doesn't Hold Water##30049 |goto Valley of the Four Winds/0 55.89,49.44
step
talk Mudmug##56474
|tip He walks around this small area.
turnin Doesn't Hold Water##30049 |goto Valley of the Four Winds/0 54.28,38.74
accept The Great Water Hunt##30051 |goto Valley of the Four Winds/0 54.28,38.74
step
talk Mudmug##56474
|tip He walks around this small area.
Select _"I'm ready to go, Mudmug."_ |gossip 125856
|tip {o}Mudmug will begin following you{}.
Click Here After Mudmug is Following You |confirm |goto Valley of the Four Winds/0 54.28,38.74
stickystart "Gather_Gladewaters"
step
kill Kracor##67128 |q 32045/1 |goto Valley of the Four Winds/0 56.05,33.85
step
label "Gather_Gladewaters"
Gather #30# Gladewater |q 30051/1 |goto Valley of the Four Winds/0 54.14,31.20
|tip Bring {o}Mudmug{} near {o}Swirling Pools{}.
|tip They look like {o}dark blue glittering spots{} on the ground.
'|clicknpc Mudmug##58785
step
_Next to you:_
talk Mudmug##58785
turnin The Great Water Hunt##30051
accept Barreling Along##30172
step
kill Thundergill##67125 |q 32045/2 |goto Valley of the Four Winds/0 54.94,25.22
|tip He looks like a {o}large blue fish{}.
|tip He {o}swims underwater{} around this area.
step
kill Succula##67099 |q 32045/3 |goto Valley of the Four Winds/0 51.30,26.90
|tip She looks like a {o}large red and yellow spider{}.
|tip It can also be {o}stealthed{}.
|tip She walks around this area.
step
Lead Mudmug Back to Halfhill |q 30172/1 |goto Valley of the Four Winds/0 55.89,49.43
If he's not following you, you can find Mudmug around [54.28,38.74]
step
talk Chen Stormstout##56133
turnin Barreling Along##30172 |goto Valley of the Four Winds/0 55.89,49.43
step
talk Stonecarver Mac##64315
turnin Children of the Water##32045 |goto Valley of the Four Winds/0 55.14,47.38
step
talk Gardener Fran##62377
accept Gardener Fran and the Watering Can##30050 |goto Valley of the Four Winds/0 48.31,33.48
step
talk Gardener Fran##62377
Select _"I'm ready to go!"_ |gossip 126281
Water #60# Vegetables |q 30050/1 |goto Valley of the Four Winds/0 48.31,33.48
|tip Use the {o}Water Plants{} button ability near {o}vegetables{}.
|tip {o}She tells you{} which {o}vegetables{} to water.
|tip The {o}correct vegetables will sparkle{}.
|tip All of the {o}patches you need to water{} will be {o}north of her location{}, around the {o}big hill{}.
step
talk Gardener Fran##62377
turnin Gardener Fran and the Watering Can##30050 |goto Valley of the Four Winds/0 48.31,33.48
step
talk Gardener Fran##62377
Select _"I'm helping a friend brew some beer, and we need hops. Do you have any to spare?"_ |gossip 126282
Speak with Gardener Fran |q 30053/1 |goto Valley of the Four Winds/0 48.31,33.48
step
talk Den Mudclaw##62385
accept The Farmer's Daughter##30056 |goto Valley of the Four Winds/0 44.26,34.21
step
talk Den Mudclaw##62385
Select _"Do you have any hops you can spare?"_ |gossip 126288
Speak with Den Mudclaw |q 30053/3 |goto Valley of the Four Winds/0 44.26,34.21
step
talk Mung-Mung##57401
accept Enough is Ookin' Enough##30054 |goto Valley of the Four Winds/0 44.17,34.24
stickystart "Collect_Virmen_Teeth"
step
Enter the underground burrow |goto Valley of the Four Winds/0 43.55,35.34 < 10 |walk
talk Mina Mudclaw##57408
|tip Inside the underground burrow.
turnin The Farmer's Daughter##30056 |goto Valley of the Four Winds/0 41.32,38.14
accept Seeing Orange##30057 |goto Valley of the Four Winds/0 41.32,38.14
step
label "Collect_Virmen_Teeth"
kill Springtail Gnasher##57413, Springtail Digger##66264, Springtail Leaper##57415
|tip They look like {o}small and large rats{}.
|tip Inside the and outside the underground burrow. |notinsticky
collect 100 Virmen Tooth##77379 |q 30054/1 |goto Valley of the Four Winds/0 43.55,35.34
step
Bring Mina Mudclaw Home to Her Father |q 30057/1 |goto Valley of the Four Winds/0 44.27,34.21
step
talk Den Mudclaw##62385
turnin Seeing Orange##30057 |goto Valley of the Four Winds/0 44.27,34.21
step
talk Mung-Mung##57401
turnin Enough is Ookin' Enough##30054 |goto Valley of the Four Winds/0 44.17,34.24
step
talk Gai Lan##57385
Select _"Can I buy some hops from you?"_ |gossip 125811
Speak with Gai Lan |q 30053/2 |goto Valley of the Four Winds/0 38.59,51.71
step
_Click the Complete Quest Box:_
turnin Hop Hunting##30053
step
talk Gai Lan##57385
accept Weed War##30052 |goto Valley of the Four Winds/0 38.59,51.71
step
talk Gai Lan##57385
Select _"What weeds?"_ |gossip 125809
Watch the dialogue
clicknpc Ugly Weed##57306+
clicknpc Nasty Weed##57308+
click Weed-B-Gone Gas Bomb##210057+
Pull #100# Weeds |q 30052/1 |goto Valley of the Four Winds/0 38.59,51.71
|tip {o}Run over the small blue weeds{} that appear.
|tip You can {o}do this while mounted{}.
step
talk Gai Lan##57385
turnin Weed War##30052 |goto Valley of the Four Winds/0 38.59,51.71
step
accept Stormstout's Hops##30055 |goto Valley of the Four Winds/0 38.59,51.71
|tip You will automatically accept this quest.
step
talk Chen Stormstout##56133
turnin Stormstout's Hops##30055 |goto Valley of the Four Winds/0 55.89,49.45
step
talk Li Li##56138
turnin Li Li and the Grain##30048 |goto Valley of the Four Winds/0 52.69,62.83
accept Taste Test##30031 |goto Valley of the Four Winds/0 52.69,62.83
step
talk Grainlord Kai##57211
accept Wee Little Shenanigans##30029 |goto Valley of the Four Winds/0 52.73,62.99
step
talk Grainer Pan##57209
accept Out of Sprite##30030 |goto Valley of the Four Winds/0 52.61,62.97
stickystart "Kill_Tricky_Maizer"
step
kill Cornan##57213 |q 30030/1 |goto Valley of the Four Winds/0 51.47,64.42
|tip He runs around this area upstairs inside the building.
step
click Malted Grain##210023
Taste the Malted Grain |q 30031/3 |goto Valley of the Four Winds/0 50.80,63.61
step
click Aged Grain##210021
Taste the Aged Grain |q 30031/1 |goto Valley of the Four Winds/0 51.17,60.79
step
click Light Grain##210024
Taste the Light Grain |q 30031/2 |goto Valley of the Four Winds/0 53.73,63.31
step
click Fresh Grain##210022
Taste the Fresh Grain |q 30031/4 |goto Valley of the Four Winds/0 53.59,64.58
step
label "Kill_Tricky_Maizer"
kill Granary Vandal##66205, Tricky Maizer##57223
|tip They look like {o}larger sprites{}.
Slay #8# Tricky Maizers |q 30029/1 |goto Valley of the Four Winds/0 52.30,62.29
step
talk Li Li##56138
turnin Taste Test##30031 |goto Valley of the Four Winds/0 52.69,62.83
step
talk Grainer Pan##57209
turnin Out of Sprite##30030 |goto Valley of the Four Winds/0 52.60,62.97
step
talk Grainlord Kai##57211
turnin Wee Little Shenanigans##30029 |goto Valley of the Four Winds/0 52.74,62.99
accept The Quest for Better Barley##30032 |goto Valley of the Four Winds/0 52.74,62.99
accept Grain Recovery##30028 |goto Valley of the Four Winds/0 52.74,62.99
step
kill Maizerly Thief##57267+
|tip They look like {o}larger sprites carrying white bags{}.
click Stolen Barley Sack##210002+
|tip They look like {o}large white bags{}.
collect 8 Sack of Grain##77033 |q 30028/1 |goto Valley of the Four Winds/0 56.17,64.96
step
talk Grainlord Kai##57211
turnin Grain Recovery##30028 |goto Valley of the Four Winds/0 52.73,63.00
step
click Rappeling Rope##7548
Use the Cliff Harness |q 30032/1 |goto Valley of the Four Winds/0 51.26,77.50
step
click Malted Cave Barley##210037+
|tip They look like {o}small bushes{}.
|tip Inside the small cave.
collect Malted Cave Barley##77034 |q 30032/2 |goto Valley of the Four Winds/0 53.58,76.26 |notravel
step
click Climbing Rope
Climb Up the Cliff |invehicle |goto Krasarang Wilds/0 48.65,27.02 |q 30032 |notravel
|only if walking
step
talk Li Li##56138
turnin The Quest for Better Barley##30032 |goto Valley of the Four Winds/0 52.69,62.83
accept The Chen Taste Test##30047 |goto Valley of the Four Winds/0 52.69,62.83
step
talk Chen Stormstout##56133
turnin The Chen Taste Test##30047 |goto Valley of the Four Winds/0 55.89,49.45
accept The Emperor##30073 |goto Valley of the Four Winds/0 55.89,49.45
step
Watch the dialogue
Help Chen Brew His Beer |q 30073/1 |goto Valley of the Four Winds/0 55.89,49.45
step
talk Chen Stormstout##56133
turnin The Emperor##30073 |goto Valley of the Four Winds/0 55.84,49.35
accept Knocking on the Door##30074 |goto Valley of the Four Winds/0 55.84,49.35
step
talk Chen Stormstout##56133
turnin Knocking on the Door##30074 |goto Valley of the Four Winds/0 32.25,68.55
step
Watch the dialogue
talk Mudmug##56474
accept The Fanciest Water##30076 |goto Valley of the Four Winds/0 32.26,68.28
step
talk Li Li##56138
accept Barrels, Man##30077 |goto Valley of the Four Winds/0 32.33,68.47
step
talk Chen Stormstout##56133
accept Clear the Way##30075 |goto Valley of the Four Winds/0 32.11,68.34
stickystart "Collect_Spritewater_Essences"
stickystart "Kill_Ale_Addled_Hozen_Or_Mischievous_Virmen"
step
clicknpc Barreled Pandaren##57662+
|tip They look like {o}shaking wooden barrels{}.
|tip Avoid {o}Ook-Ook{}, the {o}huge elite monkey{} that runs up and down the road.
|tip If he {o}catches you{}, use the {o}Break Barrel{} ability.
Free #7# Barreled Pandaren |q 30077/1 |goto Valley of the Four Winds/0 35.95,66.10
'|clicknpc Ook-Ook##57628
step
label "Collect_Spritewater_Essences"
kill Curious Water Sprite##57673+
|tip They look like {o}small blue elementals wearing masks{}.
collect 3 Spritewater Essence##77471 |q 30076/1 |goto Valley of the Four Winds/0 35.95,66.10
step
label "Kill_Ale_Addled_Hozen_Or_Mischievous_Virmen"
kill Ale-Addled Hozen##57672, Mischievous Virmen##57671
|tip They look like {o}rats and monkeys{}.
Slay #10# Ale-Addled Hozen or Mischievous Virmen |q 30075/1 |goto Valley of the Four Winds/0 35.95,66.10
step
talk Li Li##56138
turnin Barrels, Man##30077 |goto Valley of the Four Winds/0 36.13,69.05
step
talk Mudmug##56474
turnin The Fanciest Water##30076 |goto Valley of the Four Winds/0 36.00,69.10
step
talk Chen Stormstout##56133
turnin Clear the Way##30075 |goto Valley of the Four Winds/0 36.04,68.99
accept Cleaning House##30078 |goto Valley of the Four Winds/0 36.04,68.99
step
talk Chen Stormstout##56133
Select _"<Crack your knuckles and nod your head.>"_ |gossip 125849
Enter the Stormstout Brewery |complete subzone("Stormstout Brewhall") or subzone("The Great Wheel") or subzone("Trickling Passage") |goto Valley of the Four Winds/0 36.04,68.99 |q 30078
step
label "Stormstout_Brewery_Router"
Watch the dialogue
|tip This sequence of this quest is random.
|tip You will appear in one of the random locations.
Stormstout Brewhall	|complete subzone("Stormstout Brewhall")	|q 30078	|or	|next "Stormstout_Brewhall"
The Great Wheel		|complete subzone("The Great Wheel")		|q 30078	|or	|next "The_Great_Wheel"
Trickling Passage	|complete subzone("Trickling Passage")		|q 30078	|or	|next "Trickling_Passage"
Stormstout Brewery	|complete subzone("Stormstout Brewery")		|q 30078	|or	|next "Stormstout_Brewery_Exit"		|only if readyq(30078)
|only if not completedq(30078)
step
label "Stormstout_Brewhall"
talk Li Li##58028
|tip Inside the building.
Select _"I'll help."_ |gossip 125833
kill Jooga##58015 |q 30078/2 |goto Valley of the Four Winds/0 32.98,71.11
|tip He looks like a {o}large monkey{} nearby.
|tip {o}Click the Empty Keg barrels{} inside the room.
|tip He will {o}stop moving{}, so you can {o}hit him{}.
|tip {o}Avoid{} the {o}bananas{}.
|only if not (readyq(30078) or completedq(30078)) and subzone("Stormstout Brewhall")
step
Watch the dialogue
Leave the Stormstout Brewhall |complete not subzone("Stormstout Brewhall") |q 30078 |next "Stormstout_Brewery_Router"
|only if not (readyq(30078) or completedq(30078)) and subzone("Stormstout Brewhall")
step
label "The_Great_Wheel"
talk Chen Stormstout##58029
|tip Inside the building.
Select _"Let's do this, Chen."_ |gossip 125835
kill Fizzy Yellow Spirit##58253+
|tip Kill {o}all of them{}.
kill Fizzy Yellow Alemental##58017 |q 30078/3 |goto Valley of the Four Winds/0 38.35,67.74
|only if not (readyq(30078) or completedq(30078)) and subzone("The Great Wheel")
step
Watch the dialogue
Leave the Great Wheel |complete not subzone("The Great Wheel") |q 30078 |next "Stormstout_Brewery_Router"
|only if not (readyq(30078) or completedq(30078)) and subzone("The Great Wheel")
step
label "Trickling_Passage"
talk Mudmug##58027
|tip Inside the building.
Select _"Calm down, Mudmug. Let's go."_ |gossip 125832
kill Eddy##58014 |q 30078/1 |goto Valley of the Four Winds/0 34.88,70.31
|tip It looks like a {o}large water sprite elemental{} nearby.
|tip {o}Run over the bubbles{} on the ground to {o}weaken Eddy's Water Shield{}.
|tip Click the {o}bubble around him{} when his {o}Watery Shield is weakened{}.
|only if not (readyq(30078) or completedq(30078)) and (subzone("Trickling Passage") or subzone("Grain Cellar"))
step
Watch the dialogue
Leave the Trickling Passage |complete not (subzone("Trickling Passage") or subzone("Grain Cellar")) |q 30078 |next "Stormstout_Brewery_Router"
|only if not (readyq(30078) or completedq(30078)) and (subzone("Trickling Passage") or subzone("Grain Cellar"))
step
Detecting player location... |complete not (readyq(30078) or completedq(30078)) |next "Stormstout_Brewery_Router"
|only if not (readyq(30078) or completedq(30078))
step
label "Stormstout_Brewery_Exit"
Watch the dialogue
Leave the Stormstout Brewery |complete subzone("Stormstout Brewery") |q 30078
|only if not completedq(30078) and (subzone("Stormstout Brewhall") or subzone("The Great Wheel") or subzone("Trickling Passage") or subzone("Grain Cellar"))
step
talk Chen Stormstout##56133
turnin Cleaning House##30078 |goto Valley of the Four Winds/0 36.00,69.12
step
talk Emmi##61026
accept Stoneplow Thirsts##30117 |goto Valley of the Four Winds/0 36.20,68.29
step
talk "Dragonwing" Dan##58843
fpath Stoneplow |goto Valley of the Four Winds/0 20.30,58.67
step
talk Lin Tenderpaw##56111
turnin Lin Tenderpaw##29872 |goto Valley of the Four Winds/0 19.87,56.92
accept Stemming the Swarm##29981 |goto Valley of the Four Winds/0 19.87,56.92
step
talk Loon Mai##56720
turnin Stoneplow Thirsts##30117 |goto Valley of the Four Winds/0 19.55,56.88
accept Evacuation Orders##29982 |goto Valley of the Four Winds/0 19.55,56.88
step
talk Haiyun Greentill##57123
Select _"Loon Mai has issued evacuation orders."_ |gossip 125792
Evacuate the Greentil Family |q 29982/3 |goto Valley of the Four Winds/0 15.84,56.28
step
talk Mia Marlfur##57127
Select _"Loon Mai has issued evacuation orders."_ |gossip 125802
Evacuate the Marlfur Family |q 29982/4 |goto Valley of the Four Winds/0 15.48,54.90
stickystart "Kill_Ikthink_Mantids"
step
talk Feng Spadepaw##57121
Select _"Yes, Commander Mai sent me, and I carry his evacuation orders."_ |gossip 125799
Evacuate the Spadepaw Family |q 29982/2 |goto Valley of the Four Winds/0 12.85,55.71
step
talk Wei Blacksoil##57120
Select _"Loon Mai has issued evacuation orders."_ |gossip 125790
kill Ik'thik Ambusher##57134
talk Wei Blacksoil##57120
Select _"Yes, they're right here. Let's go."_ |gossip 125791
Evacuate the Blacksoil Family |q 29982/1 |goto Valley of the Four Winds/0 7.15,54.83
step
label "Kill_Ikthink_Mantids"
kill Ik'thik Wingblade##57196, Ik'thik Swiftclaw##57195
|tip They look like {o}insect people{}.
Slay #14# Ik'thik Mantids |q 29981/1 |goto Valley of the Four Winds/0 11.80,56.66
step
talk Loon Mai##56720
turnin Stemming the Swarm##29981 |goto Valley of the Four Winds/0 19.55,56.88
turnin Evacuation Orders##29982 |goto Valley of the Four Winds/0 19.55,56.88
accept The Hidden Master##29983 |goto Valley of the Four Winds/0 19.55,56.88
step
talk Master Bruised Paw##56714
turnin The Hidden Master##29983 |goto Valley of the Four Winds/0 18.29,31.24
accept Unyielding Fists: Trial of Bamboo##29984 |goto Valley of the Four Winds/0 18.29,31.24
step
talk Master Bruised Paw##56714
Select _"I'm ready for the trial of bamboo."_ |gossip 125782
Begin the Trial of Bamboo |invehicle |goto Valley of the Four Winds/0 18.29,31.23 |q 29984
step
Watch the dialogue
|tip Use the {o}Unyielding Fist{} ability.
|tip Use it when the {o}circle on your screen is full and glowing{}.
Strike #3# Stacks of Bamboo Reeds |q 29984/1 |goto Valley of the Four Winds/0 18.34,32.13
step
talk Master Bruised Paw##56714
turnin Unyielding Fists: Trial of Bamboo##29984 |goto Valley of the Four Winds/0 18.29,31.24
step
Watch the dialogue
talk Master Bruised Paw##56714
accept They Will Be Mist##29985 |goto Valley of the Four Winds/0 18.29,31.24
accept Fog Wards##29986 |goto Valley of the Four Winds/0 18.29,31.24
step
talk Lin Tenderpaw##56111
accept Tenderpaw By Name, Tender Paw By Reputation##29992 |goto Valley of the Four Winds/0 18.06,31.01
stickystart "Kill_Mist_Incarnations"
stickystart "Collect_Jademoon_Leaves"
step
click Northern Fog Ward##209945
Light the Northern Fog Ward |q 29986/1 |goto Valley of the Four Winds/0 16.01,32.11
step
click Western Fog Ward##209946
Light the Western Fog Ward |q 29986/2 |goto Valley of the Four Winds/0 14.86,36.82
step
click Southern Fog Ward##209947
Light the Southern Fog Ward |q 29986/3 |goto Valley of the Four Winds/0 18.10,41.46
step
label "Kill_Mist_Incarnations"
kill 12 Mist Incarnation##56740 |q 29985/1 |goto Valley of the Four Winds/0 16.99,35.63
|tip They look like {o}humanoid alien creatures{}.
step
label "Collect_Jademoon_Leaves"
click Jademoon Leaf##11006+
|tip They look like {o}small green plants on the grey rocks{}.
collect 18 Jademoon Leaf##76499 |q 29992/1 |goto Valley of the Four Winds/0 16.99,35.63
step
talk Lin Tenderpaw##56111
turnin Tenderpaw By Name, Tender Paw By Reputation##29992 |goto Valley of the Four Winds/0 18.06,31.01
step
talk Master Bruised Paw##56714
turnin They Will Be Mist##29985 |goto Valley of the Four Winds/0 18.29,31.24
turnin Fog Wards##29986 |goto Valley of the Four Winds/0 18.29,31.24
accept Unyielding Fists: Trial of Wood##29987 |goto Valley of the Four Winds/0 18.29,31.24
step
talk Master Bruised Paw##56714
Select _"My fists are ready. Bring on the trial of wood."_ |gossip 125783
Begin the Trial of Wood |invehicle |goto Valley of the Four Winds/0 18.29,31.24 |q 29987
step
Watch the dialogue
|tip Use the {o}Unyielding Fist{} ability.
|tip Use it when the {o}circle on your screen is full and glowing{}.
Strike #4# Stacks of Wooden Boards |q 29987/1 |goto Valley of the Four Winds/0 18.25,32.18
step
talk Master Bruised Paw##56714
turnin Unyielding Fists: Trial of Wood##29987 |goto Valley of the Four Winds/0 18.29,31.24
accept A Taste For Eggs##29988 |goto Valley of the Four Winds/0 18.29,31.24
stickystart "Collect_Whitefisher_Crane_Eggs"
stickystart "Collect_Emperor_Tern_Eggs"
step
click Hornbill Strider Egg##209955
|tip Inside the small cave.
collect Hornbill Strider Egg##76516 |q 29988/3 |goto Valley of the Four Winds/0 26.98,39.05
step
label "Collect_Whitefisher_Crane_Eggs"
click Whitefisher Crane Egg##209954+
|tip They look like {o}small white eggs{}.
collect 4 Whitefisher Crane Egg##76503 |q 29988/2 |goto Valley of the Four Winds/0 25.36,43.15
step
label "Collect_Emperor_Tern_Eggs"
click Emperor Tern Egg##209953+
|tip They look like {o}small purple eggs{}.
collect 10 Emperor Tern Egg##76501 |q 29988/1 |goto Valley of the Four Winds/0 25.36,43.15
step
talk Master Bruised Paw##56714
turnin A Taste For Eggs##29988 |goto Valley of the Four Winds/0 18.29,31.24
step
Watch the dialogue
talk Master Bruised Paw##56714
accept Unyielding Fists: Trial of Stone##29989 |goto Valley of the Four Winds/0 18.29,31.24
step
talk Master Bruised Paw##56714
Select _"I've done all that you've asked of me. I'm ready for the trial of stone."_ |gossip 125784
Begin the Trial of Stone |invehicle |goto Valley of the Four Winds/0 18.29,31.24 |q 29989
step
Watch the dialogue
|tip Use the {o}Unyielding Fist{} ability.
|tip Use it when the {o}circle on your screen is full and glowing{}.
Strike #5# Stacks of Stone Blocks |q 29989/1 |goto Valley of the Four Winds/0 18.16,32.15
step
talk Master Bruised Paw##56714
turnin Unyielding Fists: Trial of Stone##29989 |goto Valley of the Four Winds/0 18.29,31.24
step
talk Lin Tenderpaw##56111
accept Training and Discipline##29990 |goto Valley of the Four Winds/0 18.06,31.01
step
talk Loon Mai##56720
turnin Training and Discipline##29990 |goto Valley of the Four Winds/0 19.55,56.88
step
talk Tani##63822
|tip She walks around this area.
accept Stalker Mastery##30183 |goto Valley of the Four Winds/0 16.20,82.53
step
talk Hemet Nesingwary Jr.##58422
accept Mushan Mastery##30181 |goto Valley of the Four Winds/0 16.07,82.62
stickystart "Slay_Dustback_Mushans"
step
kill 15 Gorge Stalker##58432 |q 30183/1 |goto Valley of the Four Winds/0 12.77,75.08
|tip They look like {o}green tigers{}.
step
label "Slay_Dustback_Mushans"
kill Young Dustback Mushan##58427, Dustback Mushan##58424
|tip They look like {o}yellow dinosaurs{}.
Slay #15# Dustback Mushans |q 30181/1 |goto Valley of the Four Winds/0 17.96,72.89
step
talk Tani##63822
|tip She walks around this area.
turnin Stalker Mastery##30183 |goto Valley of the Four Winds/0 16.20,82.53
accept Fox Mastery##30182 |goto Valley of the Four Winds/0 16.20,82.53
step
talk Hemet Nesingwary Jr.##58422
turnin Mushan Mastery##30181 |goto Valley of the Four Winds/0 16.07,82.62
step
talk Hemet Nesingwary##58421
accept Mushan Mastery: Darkhide##30184 |goto Valley of the Four Winds/0 16.01,82.49
step
talk Matt "Lucky" Gotcher##58434
accept Stag Mastery##32038 |goto Valley of the Four Winds/0 15.89,82.24
stickystart "Kill_Sly_Foxes"
stickystart "Slay_Wilderland_Stags"
step
kill Darkhide##58435
|tip He looks like a {o}larger grey dinosaur{}.
|tip You {o}may need help{} with this.
collect Darkhide's Head###79058 |q 30184/1 |goto Valley of the Four Winds/0 26.20,75.48
step
label "Kill_Sly_Foxes"
kill Sly Fox##58548, Sly Pup##58549
|tip They look like {o}foxes{}.
|tip The {o}larger foxes are stealthed{}.
Slay #15# Sly Foxes |q 30182/1 |goto Valley of the Four Winds/0 27.81,70.87
You can find more all all around [25.58,74.34]
step
label "Slay_Wilderland_Stags"
kill Wilderland Doe##58490, Wilderland Stag##58489
|tip They look like {o}deer{}.
Slay #10# Wilderland Stags |q 32038/1 |goto Valley of the Four Winds/0 28.74,81.86
You can find more around [21.30,80.38]
step
talk Tani##63822
|tip She walks around this area.
turnin Fox Mastery##30182 |goto Valley of the Four Winds/0 16.20,82.53
step
talk Hemet Nesingwary##58421
turnin Mushan Mastery: Darkhide##30184 |goto Valley of the Four Winds/0 16.01,82.49
step
talk Hemet Nesingwary Jr.##58422
accept Tortoise Mastery##30185 |goto Valley of the Four Winds/0 16.07,82.62
step
talk Matt "Lucky" Gotcher##58434
turnin Stag Mastery##32038 |goto Valley of the Four Winds/0 15.89,82.24
step
kill Bulgeback Tortoise##58431+
collect 5 Intact Tortoise Shell##79059 |q 30185/1 |goto Valley of the Four Winds/0 19.91,75.66
step
talk Hemet Nesingwary Jr.##58422
turnin Tortoise Mastery##30185 |goto Valley of the Four Winds/0 19.91,75.66
accept Parental Mastery##30186 |goto Valley of the Four Winds/0 19.91,75.66
step
Enter the underwater cave |goto Valley of the Four Winds/0 21.27,74.40 < 20 |walk
talk Hemet Nesingwary Jr.##58461
|tip Inside the underwater cave.
Select _"<Try shaking Hemet.>"_ |gossip 125865
Watch the dialogue
kill Torjar's Bane##58439
Rescue Hemet Nesingwary Jr. |q 30186/1 |goto Valley of the Four Winds/0 24.54,74.64
step
Leave the underwater cave |goto Valley of the Four Winds/0 21.27,74.40 < 20 |walk |only if subzone("Lair of the Beast") and indoors()
talk Hemet Nesingwary##58421
turnin Parental Mastery##30186 |goto Valley of the Four Winds/0 16.01,82.49
]])
QuestCore:RegisterGuide("Leveling Guides\\Pandaria (85-90)\\Krasarang Wilds (87)",{
expansion="mists",
image="KrasarangWilds",
next="Leveling Guides\\Pandaria (85-90)\\Kun-Lai Summit (87-88)",
startlevel=87,
mopready=true
},[[
step
talk Ken-Ken##56115
turnin Ken-Ken##29873 |goto Krasarang Wilds/0 76.22,7.06
accept What's Eating Zhu's Bastion?##30079 |goto Krasarang Wilds/0 76.22,7.06
step
talk Rude Sho##62879
|tip Inside the building.
home Wilds' Edge Inn |goto Krasarang Wilds/0 75.74,7.21
step
talk Mei Barrelbottom##57744
Speak with Mei |q 30079/4 |goto Krasarang Wilds/0 75.84,7.60
step
talk Mei Barrelbottom##57744
accept Finding Yi-Mo##30080 |goto Krasarang Wilds/0 75.84,7.60
step
talk Despondent Warden of Zhu##57457
Speak with a Despondent Warden of Zhu |q 30079/1 |goto Krasarang Wilds/0 76.01,8.30
step
talk Gee Hung##60232
fpath Zhu's Watch |goto Krasarang Wilds/0 76.74,8.38
step
talk Sunni##57830
|tip Inside the building.
Speak with Sunni |q 30079/2 |goto Krasarang Wilds/0 77.47,8.53
step
talk Yun##57825
|tip Inside the building.
Speak with Yun |q 30079/3 |goto Krasarang Wilds/0 75.48,9.39
step
talk Ken-Ken##56115
turnin What's Eating Zhu's Bastion?##30079 |goto Krasarang Wilds/0 76.22,7.06
step
talk Yi-Mo Longbrow##58376
Find Yi-Mo Longbrow |q 30080/1 |goto Krasarang Wilds/0 81.31,6.84
step
talk Yi-Mo Longbrow##58376
turnin Finding Yi-Mo##30080 |goto Krasarang Wilds/0 81.31,6.84
accept Cheer Up, Yi-Mo##30082 |goto Krasarang Wilds/0 81.31,6.84
step
talk Yi-Mo Longbrow##58376
Select _"Please, Yi-Mo: your aunt's worried sick about you."_ |gossip 125822
Select _"I don't have time for this. Move your ass or I'll move it for you."_ |gossip 125825
clicknpc Yi-Mo Longbrow##57310
Follow Yi-Mo and Continue Moving Him West |goto Krasarang Wilds/0 81.31,6.84 > 10 |c |q 30082
step
clicknpc Yi-Mo Longbrow##57310
|tip Click him {o}repeatedly{}.
|tip He will eventually roll to this location.
kill Thunderbird##58111+
|tip They look like {o}birds{} that attack in waves.
Bring Yi-Mo to Zhu's Watch |q 30082/1 |goto Krasarang Wilds/0 76.71,7.79 |notravel
step
talk Mei Barrelbottom##57744
turnin Cheer Up, Yi-Mo##30082 |goto Krasarang Wilds/0 75.84,7.60
accept Tears of Pandaria##30091 |goto Krasarang Wilds/0 75.84,7.60
step
talk Ken-Ken##56115
accept Materia Medica##30081 |goto Krasarang Wilds/0 76.22,7.06
stickystart "Collect_Salty_Cores"
stickystart "Kill_Weeping_Horrors"
stickystart "Collect_Chunks_Of_Honeycomb"
step
click Slick Mudfish##210186+
|tip They look like {o}small fish{}.
collect 4 Slick Mudfish##78877 |q 30081/2 |goto Krasarang Wilds/0 75.38,10.91
You can find more around [71.86,10.76]
step
label "Collect_Salty_Cores"
kill Weeping Horror##57649+
|tip They look like {o}rock elementals{}.
collect 4 Salty Core##78880+ |q 30081/1 |goto Krasarang Wilds/0 75.38,10.91
You can find more around [71.86,10.76]
step
label "Kill_Weeping_Horrors"
kill 12 Weeping Horror##57649 |q 30091/1 |goto Krasarang Wilds/0 75.38,10.91
|tip They look like {o}rock elementals{}. |notinsticky
You can find more around [71.86,10.76]
step
label "Collect_Chunks_Of_Honeycomb"
click Rain-Slick Honeycomb##210188+
|tip They look like {o}orange glowing balls hanging from trees{}.
collect 4 Chunk of Honeycomb##78881 |q 30081/3 |goto Krasarang Wilds/0 73.04,10.94
step
talk Mei Barrelbottom##57744
turnin Tears of Pandaria##30091 |goto Krasarang Wilds/0 75.84,7.61
accept Securing the Province##30083 |goto Krasarang Wilds/0 75.84,7.61
accept Borderlands##30084 |goto Krasarang Wilds/0 75.84,7.61
step
talk Ken-Ken##56115
turnin Materia Medica##30081 |goto Krasarang Wilds/0 76.22,7.07
accept Why So Serious?##30088 |goto Krasarang Wilds/0 76.22,7.07
stickystart "Slay_Wildscale_Sauroks"
step
Enter the cave |goto Valley of the Four Winds/0 77.07,57.28 < 15 |walk |notravel
click Jar of Pigment##210228
|tip Upstairs inside the cave.
collect Jar of Pigment##78942 |q 30088/2 |goto Valley of the Four Winds/0 73.88,56.41
step
label "Slay_Wildscale_Sauroks"
kill Wildscale Herbalist##58216, Wildscale Saurok##58215
|tip They look like {o}lizard people{}.
|tip Inside and outside the cave. |notinsticky
Slay #10# Wildscale Sauroks |q 30083/1 |goto Valley of the Four Winds/0 77.07,57.28
stickystart "Collect_Huge_Panther_Fangs"
step
Leave the cave |goto Valley of the Four Winds/0 77.07,57.28 < 15 |walk |only if subzone("Winds' Edge")
use the Flame of Zhu's Watch##78928
Light the Memorial Flame of Rin |q 30084/3 |goto Krasarang Wilds/0 71.28,17.47 |notravel
step
use the Flame of Zhu's Watch##78928
Light the Memorial Flame of Zhu |q 30084/1 |goto Krasarang Wilds/0 72.70,18.11
step
use the Flame of Zhu's Watch##78928
Light the Memorial Flame of Po |q 30084/2 |goto Krasarang Wilds/0 73.88,16.95
step
label "Collect_Huge_Panther_Fangs"
kill Krasari Stalker##58221+
|tip They look like {o}black tigers{}.
|tip They can be {o}stealthed{}.
collect 18 Huge Panther Fang##78941 |q 30088/1 |goto Krasarang Wilds/0 72.28,17.29
step
talk Mei Barrelbottom##57744
turnin Securing the Province##30083 |goto Krasarang Wilds/0 75.84,7.60
turnin Borderlands##30084 |goto Krasarang Wilds/0 75.84,7.60
step
talk Ken-Ken##56115
turnin Why So Serious?##30088 |goto Krasarang Wilds/0 76.22,7.07
accept Apply Directly to the Forehead##30089 |goto Krasarang Wilds/0 76.22,7.07
step
use Ken-Ken's Mask##79021
|tip Use it on {o}Despondent Wardens of Zhu{}.
|tip They look like {o}pandas in black armor{}.
kill Manifestation of Despair##58312+
Cure #8# Despondent Wardens of Zhu |q 30089/1 |goto Krasarang Wilds/0 76.44,8.55
'|clicknpc Despondent Warden of Zhu##57457
step
talk Ken-Ken##56115
turnin Apply Directly to the Forehead##30089 |goto Krasarang Wilds/0 76.22,7.07
accept Zhu's Despair##30090 |goto Krasarang Wilds/0 76.22,7.07
step
kill 8 Essence of Despair##58409 |q 30090/1 |goto Krasarang Wilds/0 76.40,8.58
step
use Ken-Ken's Mask##79057
|tip Use it on {o}Yi-Mo Longbrow{}.
kill Quintessence of Despair##58360
Cure Yi-Mo |q 30090/2 |goto Krasarang Wilds/0 76.49,8.77
'|clicknpc Yi-Mo Longbrow##58410
step
Watch the dialogue
talk Ken-Ken##56115
turnin Zhu's Despair##30090 |goto Krasarang Wilds/0 76.21,7.07
step
talk Mei Barrelbottom##57744
accept Into the Wilds##30133 |goto Krasarang Wilds/0 75.84,7.59
step
talk Chezin Dawnchaser##58160
accept Poisoned!##30179 |goto Krasarang Wilds/0 68.80,22.24
step
kill Krasari Tormentor##58377, Krasari Runekeeper##65598
|tip They look like {o}bulky humanoids{}.
collect 5 Mogu Poisoned Blade##79252 |q 30179/1 |goto Krasarang Wilds/0 68.53,22.27
step
talk Daggle Bombstrider##58779
accept Crane Mastery##30352 |goto Krasarang Wilds/0 67.63,25.73
accept Profit Mastery##30353 |goto Krasarang Wilds/0 67.63,25.73
stickystart "Kill_Carp_Hunters"
stickystart "Collect_Vials_Of_Tiger_Blood"
step
clicknpc Zhu's Watch Courier##59151
Select _"Take the supplies."_ |gossip 125965
Find the Zhu's Watch Courier |q 30133/1 |goto Krasarang Wilds/0 62.55,25.45
step
label "Kill_Carp_Hunters"
kill 12 Carp Hunter##58116 |q 30352/1 |goto Krasarang Wilds/0 64.06,29.35
|tip They look like {o}green birds{}.
step
label "Collect_Vials_Of_Tiger_Blood"
kill Krasari Huntress##58070+
|tip They look like {o}tigers{}
|tip They are {o}usually stealthed{}.
collect 12 Vial of Tiger Blood##78914 |q 30353/1 |goto Krasarang Wilds/0 64.06,29.35
step
talk Daggle Bombstrider##58779
turnin Crane Mastery##30352 |goto Krasarang Wilds/0 67.63,25.73
accept Crane Mastery: Needlebeak##31262 |goto Krasarang Wilds/0 67.63,25.73
turnin Profit Mastery##30353 |goto Krasarang Wilds/0 67.63,25.73
accept Profit Mastery: Chasheen##31260 |goto Krasarang Wilds/0 67.63,25.73
step
kill Chasheen##63767
|tip He walks around this area.
collect Ancient Tiger's Blood##85774 |q 31260/1 |goto Krasarang Wilds/0 61.89,32.00
step
kill Needlebeak##63796
|tip He walks around this area.
collect The Needlebeak##85854 |q 31262/1 |goto Krasarang Wilds/0 62.90,20.17
step
talk Daggle Bombstrider##58779
turnin Crane Mastery: Needlebeak##31262 |goto Krasarang Wilds/0 67.63,25.73
turnin Profit Mastery: Chasheen##31260 |goto Krasarang Wilds/0 67.63,25.73
step
talk Kang Bramblestaff##56112
turnin Kang Bramblestaff##29875 |goto Krasarang Wilds/0 60.09,25.01
step
talk Sunwalker Dezco##58113
turnin Poisoned!##30179 |goto Krasarang Wilds/0 59.89,24.70
step
talk Kor Bloodtusk##58114
accept Blind Them!##30124 |goto Krasarang Wilds/0 59.88,24.81
step
talk Kang Bramblestaff##56112
accept Skitterer Stew##30123 |goto Krasarang Wilds/0 60.09,25.01
step
talk Lira Skysplitter##59046
fpath Thunder Cleft |goto Krasarang Wilds/0 59.20,24.67
step
kill Jungle Skitterer##58067+
|tip They look like {o}large insects{}.
collect 5 Intact Skitterer Glands##78911 |q 30123/1 |goto Krasarang Wilds/0 62.99,22.03
step
kill Darnassian Outrider##58857 |q 30124/1 |goto Krasarang Wilds/0 61.80,30.48
|tip It walks around this area, {o}stealthed{}.
step
talk Kang Bramblestaff##56112
turnin Skitterer Stew##30123 |goto Krasarang Wilds/0 60.09,25.01
step
talk Kor Bloodtusk##58114
turnin Blind Them!##30124 |goto Krasarang Wilds/0 59.88,24.81
accept Threat from Dojan##30127 |goto Krasarang Wilds/0 59.88,24.81
step
talk Sunwalker Dezco##58113
accept Herbal Remedies##30130 |goto Krasarang Wilds/0 59.89,24.70
step
talk Kang Bramblestaff##56112
accept The Mogu Agenda##30129 |goto Krasarang Wilds/0 60.09,25.01
stickystart "Kill_Dojani_Enforcers"
stickystart "Kill_Dojani_Reclaimers"
stickystart "Kill_Dojani_Surveyors"
stickystart "Collect_Imperial_Lotus_Leaves"
step
kill Dojani Dominator##58165
|tip At the top of the ruins.
collect Dojani Orders##78917 |q 30129/1 |goto Krasarang Wilds/0 55.51,34.46
step
_Next to you:_
talk Kang Bramblestaff##58206
turnin The Mogu Agenda##30129
accept The Pools of Youth##30128
step
Cross the bridge |goto Krasarang Wilds/0 54.47,32.91 < 15 |only if walking
talk Na Lek##55597
|tip At the top of the ruins.
Select _"Attempt to free Na Lek from his prison."_ |gossip 125699
Watch the dialogue
Kill the enemies that attack
click Water of Youth##210229+
|tip They look like {o}blue spots in the water{}.
|tip They {o}appear after killing the enemies{}.
collect The Water of Youth##78934 |q 30128/1 |goto Krasarang Wilds/0 51.91,32.72
step
label "Kill_Dojani_Enforcers"
kill 4 Dojani Enforcer##65626 |q 30127/3 |goto Krasarang Wilds/0 54.56,38.41
|tip They look like {o}bulky humanoids{} carrying a {o}large sword{}.
step
label "Kill_Dojani_Reclaimers"
kill 6 Dojani Reclaimer##58117 |q 30127/1 |goto Krasarang Wilds/0 54.56,38.41
|tip They look like {o}bulky humanoids{} wearing a {o}cloak and carrying a staff{}.
step
label "Kill_Dojani_Surveyors"
kill 8 Dojani Surveyor##58068 |q 30127/2 |goto Krasarang Wilds/0 54.56,38.41
|tip They look like {o}bulky humanoids{} carrying a {o}spear{}.
step
label "Collect_Imperial_Lotus_Leaves"
click Imperial Lotus##210209+
|tip They look like {o}plants with white flowers{}.
collect 20 Imperial Lotus Leaves##78918 |q 30130/1 |goto Krasarang Wilds/0 54.56,38.41
step
talk Kor Bloodtusk##58114
turnin Threat from Dojan##30127 |goto Krasarang Wilds/0 59.88,24.81
step
talk Sunwalker Dezco##58113
|tip He walks around this area.
turnin Herbal Remedies##30130 |goto Krasarang Wilds/0 59.89,24.71
turnin The Pools of Youth##30128 |goto Krasarang Wilds/0 59.89,24.71
accept Life##30131 |goto Krasarang Wilds/0 59.89,24.71
step
talk Sunwalker Dezco##58113
Select _"Go, stand by your wife's side. I will protect the tent from invaders."_ |gossip 125838
Stand by Dezco's Side |q 30131/1 |goto Krasarang Wilds/0 59.89,24.71
step
talk Sunwalker Dezco##58113
|tip Inside the building.
turnin Life##30131 |goto Krasarang Wilds/0 60.42,25.57
accept Going West##30132 |goto Krasarang Wilds/0 60.42,25.57
step
talk Koro Mistwalker##58547
turnin Into the Wilds##30133 |goto Krasarang Wilds/0 44.21,42.89
accept Unsafe Passage##30269 |goto Krasarang Wilds/0 44.21,42.89
step
clicknpc Sunwalker Scout##59136
collect Sunwalker Scout's Report##79745 |q 30132/1 |goto Krasarang Wilds/0 43.79,42.78
step
talk Koro Mistwalker##58547
Select _"I'm ready, Koro."_ |gossip 125926
Watch the dialogue
Begin Following Koro |goto Krasarang Wilds/0 44.20,42.89 > 25 |c |q 30269
step
Watch the dialogue
|tip Follow {o}Koro Mistwalker{} and {o}protect him{} as he walks.
|tip He eventually walks to this location.
kill Riverblade Bloodletter##58983+
|tip They attack in waves.
|tip Click {o}Koro Mistwalker{} when he {o}says he's pinned down{} to {o}help him back up{}.
Accompany Koro to Crane Wing Refuge |q 30269/1 |goto Krasarang Wilds/0 43.88,36.85
'|clicknpc Koro Mistwalker##58978
step
Watch the dialogue
talk Koro Mistwalker##59138
|tip He runs to this location.
turnin Unsafe Passage##30269 |goto Krasarang Wilds/0 40.58,33.68
accept Blinding the Riverblades##30270 |goto Krasarang Wilds/0 40.58,33.68
accept Tread Lightly##30694 |goto Krasarang Wilds/0 40.58,33.68
step
talk Anduin Wrynn##58609
accept The Murksweats##30268 |goto Krasarang Wilds/0 40.49,34.65
stickystart "Poke_Traps"
stickystart "Kill_Riverblade_Pathstalkers"
step
kill Murkscale Striker##58631+
|tip They look like {o}snakes{}.
|tip Underwater.
collect 6 Murkscale Head##79199 |q 30268/1 |goto Krasarang Wilds/0 35.81,38.05
You can find more around [39.46,36.36]
step
label "Poke_Traps"
click Riverblade Spike Trap+
|tip They look like {o}spiked metal balls{}.
|tip {o}Don't get too close{} to them, they {o}explode{}.
Poke #10# Traps |q 30694/1 |goto Krasarang Wilds/0 44.65,35.01
step
label "Kill_Riverblade_Pathstalkers"
kill 8 Riverblade Pathstalker##58858 |q 30270/1 |goto Krasarang Wilds/0 44.65,35.01
|tip They look like {o}lizard people{}.
step
talk Anduin Wrynn##58609
turnin The Murksweats##30268 |goto Krasarang Wilds/0 40.49,34.65
step
talk Koro Mistwalker##59138
turnin Blinding the Riverblades##30270 |goto Krasarang Wilds/0 40.58,33.68
turnin Tread Lightly##30694 |goto Krasarang Wilds/0 40.58,33.68
accept Ahead on the Way##30695 |goto Krasarang Wilds/0 40.58,33.68
accept Striking the Rain##30272 |goto Krasarang Wilds/0 40.58,33.68
step
_Next to you:_
talk Anduin Wrynn##59189
accept Sha Can Awe##30271
stickystart "Inspire_Hopeless_Crane_Wing_Defenders"
stickystart "Slay_Sha_Manifestations"
step
kill Maw of Despair##59315
|tip It walks around this area.
Cleanse the West Pagoda |q 30695/1 |goto Krasarang Wilds/0 37.79,54.16
step
kill Maw of Despair##59315
|tip It walks around this area.
Cleanse the East Pagoda |q 30695/2 |goto Krasarang Wilds/0 43.04,54.29
step
_Next to you:_
talk Anduin Wrynn##59608
turnin Ahead on the Way##30695
step
label "Inspire_Hopeless_Crane_Wing_Defenders"
Inspire #10# Hopeless Crane Wing Defenders |q 30271/1 |goto Krasarang Wilds/0 40.48,49.41
|tip Kill enemies near {o}Hopeless Crane Wing Defenders{}.
|tip They look like {o}various shadow pandas{}.
'|clicknpc Hopeless Monk##58968, Hopeless Acolyte##58969
step
label "Slay_Sha_Manifestations"
kill Incarnation of Despair##65872, Haunt of Despair##59236, Source of Despair##65873
|tip They look like {o}shadow aliens{}.
Slay #18# Sha Manifestations |q 30272/1 |goto Krasarang Wilds/0 40.48,49.41
step
_Next to you:_
talk Anduin Wrynn##59608
turnin Striking the Rain##30272
turnin Sha Can Awe##30271
accept In the House of the Red Crane##30273
step
Enter the building |goto Krasarang Wilds/0 40.43,52.13 < 20 |walk
talk Chi-Ji##59653
|tip Downstairs inside the building.
|tip {o}Follow the stairs down{} to reach the {o}lower level{}.
Select _"<Reach out to touch Chi-Ji.>"_ |gossip 126048
Watch the dialogue
kill Sha of Despair##59651 |q 30273/1 |goto Krasarang Wilds/0 40.44,54.49
|tip Fight him until he {o}returns to the middle of the room{}.
|tip When he does that, {o}run a bit up the stairs{} nearby and {o}wait until his AoE attack finishes{}.
|tip {o}Repeat{} this process.
|tip Also {o}kill the enemies he spawns{}, if you can.
step
Run back up the stairs and leave the building |goto Krasarang Wilds/0 40.43,52.13 < 20 |walk |only if subzone("Temple of the Red Crane") and indoors()
talk Chi-Ji##59719
turnin In the House of the Red Crane##30273 |goto Krasarang Wilds/0 40.42,49.22
step
talk Munch Windhoof##59047
fpath Dawnchaser Retreat |goto Krasarang Wilds/0 29.00,50.31
step
talk Kor Bloodtusk##58114
turnin Going West##30132 |goto Krasarang Wilds/0 28.69,50.88
step
talk Feather Keeper Li##65189
fpath Cradle of Chi-Ji |goto Krasarang Wilds/0 31.14,63.16
step
talk Tony Tuna##60182
accept Particular Plumage##30667 |goto Krasarang Wilds/0 51.66,75.30
step
talk Jay Cloudfall##60173
accept Sudden, Unexpected Crocolisk Aggression##30666 |goto Krasarang Wilds/0 51.53,76.85
step
talk Nan-Po##60441
fpath Marista |goto Krasarang Wilds/0 52.48,76.60
stickystart "Collect_Emerald_Tailfeathers"
stickystart "Collect_Dusky_Tailfeathers"
stickystart "Slay_Mortbreath_Crocolisks"
step
kill Crimson Lory##60198+
|tip They look like {o}red birds{}.
collect 6 Crimson Tailfeather##80678 |q 30667/2 |goto Krasarang Wilds/0 45.15,68.68
step
label "Collect_Emerald_Tailfeathers"
kill Emerald Lory##60200+
|tip They look like {o}green birds{}.
collect 6 Emerald Tailfeather##80677 |q 30667/1 |goto Krasarang Wilds/0 45.15,68.68
step
label "Collect_Dusky_Tailfeathers"
kill Dusky Lory##60196+
|tip They look like {o}brown birds{}.
collect 6 Dusky Tailfeather##80679 |q 30667/3 |goto Krasarang Wilds/0 45.15,68.68
step
label "Slay_Mortbreath_Crocolisks"
kill Mortbreath Skulker##60202, Mortbreath Snapper##60201
|tip They look like {o}alligators{}.
Slay #8# Mortbreath Crocolisks |q 30666/1 |goto Krasarang Wilds/0 45.15,68.68
step
talk Tony Tuna##60182
turnin Particular Plumage##30667 |goto Krasarang Wilds/0 51.66,75.30
step
talk Jay Cloudfall##60173
turnin Sudden, Unexpected Crocolisk Aggression##30666 |goto Krasarang Wilds/0 51.53,76.85
accept Build Your Own Raft##30668 |goto Krasarang Wilds/0 51.53,76.85
step
click Spare Plank##211379
collect 4 Spare Plank##80685 |q 30668/1 |goto Krasarang Wilds/0 52.40,76.15
step
click Tough Kelp##211382
collect Tough Kelp##80804 |q 30668/2 |goto Krasarang Wilds/0 52.25,77.90
step
talk Jay Cloudfall##60173
turnin Build Your Own Raft##30668 |goto Krasarang Wilds/0 51.53,76.85
accept The Lorewalker on the Lake##30669 |goto Krasarang Wilds/0 51.53,76.85
step
click Your Raft##211392
Pick Up Your Raft |q 30669/1 |goto Krasarang Wilds/0 51.67,76.56
step
talk Wise Ana Wu##60139
turnin The Lorewalker on the Lake##30669 |goto Krasarang Wilds/0 45.98,78.91
accept Wisdom Has A Price##30671 |goto Krasarang Wilds/0 45.98,78.91
accept Misery##30691 |goto Krasarang Wilds/0 45.98,78.91
stickystart "Collect_Shark_Fillets"
step
Enter the underwater cave |goto Krasarang Wilds/0 46.03,80.00 < 20 |walk
kill Nahassa##60203
|tip Inside the underwater cave.
|tip {o}Don't worry about the crocolisks{} that appear.
Put Nahassa out of His Misery |q 30691/1 |goto Krasarang Wilds/0 46.20,83.46
step
_Click the Complete Quest Box:_
turnin Misery##30691
step
label "Collect_Shark_Fillets"
kill Great Grey Shark##60204, Nayeli Hammerhead##60432
|tip They look like {o}sharks{}.
|tip Underwater. |notinsticky
collect 5 Shark Fillet##80810 |q 30671/1 |goto Krasarang Wilds/0 46.61,78.63
step
talk Wise Ana Wu##60139
turnin Wisdom Has A Price##30671 |goto Krasarang Wilds/0 45.98,78.91
accept Balance##30672 |goto Krasarang Wilds/0 45.98,78.91
stickystart "Accept_Buried_Hozen_Treasure"
stickystart "Kill_Unga_Fish_Getters"
step
accept Balance Without Violence##30674 |goto Krasarang Wilds/0 45.12,84.91
|tip You will automatically accept this quest.
stickystart "Throw_Flailing_Carps_Back_Into_The_Water"
step
label "Accept_Buried_Hozen_Treasure"
kill Unga Fish-Getter##60299, Unga Treasure-Hider##60357
|tip They look like {o}monkeys{}.
collect Confusing Treasure Map##80827 |n
use Confusing Treasure Map##80827
accept Buried Hozen Treasure##30675 |goto Krasarang Wilds/0 45.12,84.91
step
click Lump of Sand##211420+
|tip They look like {o}brown piles of dirt{}.
|tip You can find them {o}all along the beach{}. |notinsticky
collect Buried Hozen Treasure##80817 |q 30675/1 |goto Krasarang Wilds/0 48.47,87.12
|only if haveq(30675) or completedq(30675)
step
_Click the Complete Quest Box:_
turnin Buried Hozen Treasure##30675
step
label "Throw_Flailing_Carps_Back_Into_The_Water"
clicknpc Flailing Carp##60367+
|tip They look like {o}fish flopping on the ground{}.
|tip They are usually {o}next to piles of fish{}.
|tip You can find them {o}all along the beach{}. |notinsticky
Throw #6# Flailing Carp Back into the Water |q 30674/1 |goto Krasarang Wilds/0 45.12,84.91
step
label "Kill_Unga_Fish_Getters"
kill 10 Unga Fish-Getter##60299 |q 30672/1 |goto Krasarang Wilds/0 45.12,84.91
|tip They look like {o}monkeys carrying spears{}.
step
_Click the Complete Quest Box:_
turnin Balance Without Violence##30674
step
talk Jay Cloudfall##60173
turnin Balance##30672 |goto Krasarang Wilds/0 51.53,76.85
step
talk Kor Bloodtusk##58114
accept For the Tribe##30163 |goto Krasarang Wilds/0 28.69,50.88
accept The Greater Danger##30229 |goto Krasarang Wilds/0 28.69,50.88
step
talk Kang Bramblestaff##56112
accept Re-Reclaim##30230 |goto Krasarang Wilds/0 28.84,50.57
step
talk Tired Shushen##58278
accept Thieving Raiders##30168 |goto Krasarang Wilds/0 29.67,39.06
accept Raid Leader Slovan##30169 |goto Krasarang Wilds/0 29.67,39.06
stickystart "Collect_Pillaged_Jinyu_Loot"
step
kill Slovan##58285 |q 30169/1 |goto Krasarang Wilds/0 31.80,28.99
|tip Inside the {o}cavern{} at the {o}bottom of the waterfall{}.
step
label "Collect_Pillaged_Jinyu_Loot"
kill Riverblade Flesh-hunter##58274+
|tip They look like {o}lizard people{}.
collect 5 Pillaged Jinyu Loot##78958 |q 30168/1 |goto Krasarang Wilds/0 31.20,44.61
step
talk Tired Shushen##58278
turnin Thieving Raiders##30168 |goto Krasarang Wilds/0 29.67,39.06
turnin Raid Leader Slovan##30169 |goto Krasarang Wilds/0 29.67,39.06
stickystart "Kill_Korjan_Reclaimers"
stickystart "Collect_Mogu_Artifacts"
step
clicknpc Dawnchaser Captive##58608+
|tip They look like {o}red glowing tauren{}.
Rescue #8# Captives |q 30163/1 |goto Krasarang Wilds/0 24.83,39.34
You can find more around [25.12,45.46]
step
label "Kill_Korjan_Reclaimers"
kill 8 Korjan Reclaimer##58614 |q 30229/1 |goto Krasarang Wilds/0 24.83,39.34
|tip They look like {o}bulky humanoids wearing cloaks{}.
You can find more around [25.12,45.46]
step
label "Collect_Mogu_Artifacts"
click Mogu Artifact##212765+
|tip They look like {o}various shaped golden objects{}.
collect 10 Mogu Artifact##79120 |q 30230/1 |goto Krasarang Wilds/0 24.83,39.34
You can find more around [23.15,44.53]
step
talk Kang Bramblestaff##56112
turnin Re-Reclaim##30230 |goto Krasarang Wilds/0 28.84,50.57
step
talk Kor Bloodtusk##58114
turnin For the Tribe##30163 |goto Krasarang Wilds/0 28.69,50.88
turnin The Greater Danger##30229 |goto Krasarang Wilds/0 28.69,50.88
step
talk Ambassador Han##58630
accept The Mantid##30175 |goto Krasarang Wilds/0 29.06,51.13
step
talk Sunwalker Dezco##58607
accept The Stoneplow Convoy##30164 |goto Krasarang Wilds/0 15.98,39.79
stickystart "Slay_Ik'thallik_Mantid"
step
clicknpc Stoneplow Envoy##58955+
|tip They look like {o}Pandaren laying on the ground{}.
Save #7# Stoneplow Envoy |q 30164/1 |goto Krasarang Wilds/0 15.47,35.43
You can find more around [16.94,42.67]
step
label "Slay_Ik'thallik_Mantid"
kill Ik'thik Precursor##58367, Ik'thik Vanguard##58368
|tip They look like {o}insect people{}.
Slay #10# Ik'thallik Mantid |q 30175/1 |goto Krasarang Wilds/0 13.91,38.19
step
talk Ambassador Len##58954
turnin The Mantid##30175 |goto Krasarang Wilds/0 15.70,39.72
step
talk Sunwalker Dezco##58607
turnin The Stoneplow Convoy##30164 |goto Krasarang Wilds/0 15.98,39.79
accept For Family##30174 |goto Krasarang Wilds/0 15.98,39.79
step
talk Kor Bloodtusk##58670
Select _"<Try to free Kor Bloodtusk from his bonds.>"_ |gossip 125877
kill Groundbreaker Brojai##58224 |q 30174/1 |goto Krasarang Wilds/0 23.64,48.83
step
talk Sunwalker Dezco##58607
turnin For Family##30174 |goto Krasarang Wilds/0 28.90,50.87
accept Warn Stoneplow##30241 |goto Krasarang Wilds/0 28.90,50.87
step
talk Loon Mai##56720
turnin Warn Stoneplow##30241 |goto Valley of the Four Winds/0 19.55,56.87
step
Watch the dialogue
talk Mei Barrelbottom##59855
accept The Mantidote##30623 |goto Valley of the Four Winds/0 17.96,56.45
step
talk Loon Mai##56720
accept The Swarm Begins##30622 |goto Valley of the Four Winds/0 17.84,56.23
step
talk Mudmug##56474
|tip He walks around this area.
accept It Does You No Good In The Keg##30653 |goto Valley of the Four Winds/0 18.16,55.73
stickystart "Use_Ken_Kens_Mask_On_Ikthik_Wing_Commanders"
stickystart "Slay_Ikthallik_Infestors_Or_Warriors"
step
Deliver Beer to Zhu's Wardens |q 30653/1 |goto Valley of the Four Winds/0 17.45,50.27
step
Deliver Beer to Crane Wing Priests |q 30653/2 |goto Valley of the Four Winds/0 15.14,55.43
step
Deliver Beer to Tauren Settlers |q 30653/4 |goto Valley of the Four Winds/0 12.99,55.98
step
Deliver Beer to Shado-Pan |q 30653/3 |goto Valley of the Four Winds/0 10.63,55.58
step
_Click the Complete Quest Box:_
turnin It Does You No Good In The Keg##30653
step
label "Use_Ken_Kens_Mask_On_Ikthik_Wing_Commanders"
use Ken-Ken's Mask##80337
|tip Use it on {o}Ik'thik Wing Commanders{}.
|tip They look like {o}larger insects{}.
kill Manifestation of Fear##59874+
Use Ken-Ken's Mask on #5# Ik'thik Wing Commanders |q 30623/1 |goto Valley of the Four Winds/0 12.93,54.85
You can find more around [16.35,53.47]
'|clicknpc Ik'thik Wing Commander##56723
step
_Click the Complete Quest Box:_
turnin The Mantidote##30623
step
label "Slay_Ikthallik_Infestors_Or_Warriors"
kill Ik'thik Infestor##56721, Ik'thik Warrior##56722
|tip They look like {o}insect people{}.
Slay #15# Ik'thallik Infestors or Warriors |q 30622/1 |goto Valley of the Four Winds/0 12.93,54.85
step
talk Guard Captain Oakenshield##57198
turnin The Swarm Begins##30622 |goto Valley of the Four Winds/0 11.60,49.52
accept Students No More##30625 |goto Valley of the Four Winds/0 11.60,49.52
step
Watch the dialogue
|tip {o}Follow your allies{} and {o}kill enemies{} around this area.
|tip They {o}may already be in the battlefield{}, so you may have to {o}find them{}.
|tip {o}They will yell at you{} to come over to them {o}when you are near them{}.
kill Ik'thik Bloodrager##59887 |q 30625/1 |goto Valley of the Four Winds/0 9.26,54.09
kill Ik'thik Incubator##59890 |q 30625/2 |goto Valley of the Four Winds/0 9.26,54.09
kill Ik'thik Tendon-Slicer##59888 |q 30625/3 |goto Valley of the Four Winds/0 9.26,54.09
kill Ik'thik Fearmonger##59889 |q 30625/4 |goto Valley of the Four Winds/0 9.26,54.09
'|clicknpc Ken-Ken##59841, Clever Ashyo##59843, Xiao##59839, Lin Tenderpaw##59840, Kang Bramblestaff##59842
step
talk Guard Captain Oakenshield##57198
turnin Students No More##30625 |goto Valley of the Four Winds/0 11.60,49.52
accept Retreat!##30626 |goto Valley of the Four Winds/0 11.60,49.52
step
talk Loon Mai##56720
turnin Retreat!##30626 |goto Valley of the Four Winds/0 17.84,56.23
step
talk Master Bruised Paw##59856
accept The Savior of Stoneplow##30627 |goto Valley of the Four Winds/0 17.91,55.75
step
talk Miss Fanny##59857
Select _"Let's go, Miss Fanny."_ |gossip 126125
Ride Miss Fanny |invehicle |goto Valley of the Four Winds/0 17.93,56.69 |q 30627
step
Reach the Mantid Colossus |outvehicle |goto Valley of the Four Winds/0 7.55,54.76 |q 30627 |notravel
step
Watch the dialogue
|tip Use the ability when the {o}circle on your screen is full and glowing{}.
|tip You will have to use the ability {o}multiple times{}.
kill Mantid Colossus##56703 |q 30627/1 |goto Valley of the Four Winds/0 7.55,54.76
step
talk Loon Mai##56720
turnin The Savior of Stoneplow##30627 |goto Valley of the Four Winds/0 17.84,56.23
accept The Gratitude of Stoneplow##30628 |goto Valley of the Four Winds/0 17.84,56.23
step
click The Commander's Cache##211316
|tip Upstairs inside the building.
turnin The Gratitude of Stoneplow##30628 |goto Valley of the Four Winds/0 19.82,55.92
step
talk Messenger Grummle##63778
|tip He walks around this area.
accept The Road to Kun-Lai##31255 |goto Valley of the Four Winds/0 18.51,56.41
]])
QuestCore:RegisterGuide("Leveling Guides\\Pandaria (85-90)\\Kun-Lai Summit (87-88)",{
expansion="mists",
image="KunLai",
next="Leveling Guides\\Pandaria (85-90)\\Townlong Steppes (88-89)",
startlevel=87,
mopready=true
},[[
step
talk Highroad Grummle##62738
Speak with Highroad Grummle |q 31255/1 |goto Valley of the Four Winds/0 70.05,23.47
|only if haveq(31255) or completedq(31255)
step
talk Shin the Weightless##61759
|tip On top of the mountain.
fpath Tavern in the Mists |goto The Veiled Stair/0 56.72,75.75
step
talk Tong the Fixer##62917
|tip Inside the building.
home Tavern in the Mists |goto The Veiled Stair/0 55.07,72.40
step
talk Len the Whisperer##63484
accept Robbing Robbers of Robbers##31286 |goto The Veiled Stair/0 53.51,65.76
accept Educating Saurok##31287 |goto The Veiled Stair/0 53.51,65.76
stickystart "Collect_Black_Market_Merchandise"
step
Enter the cave |goto The Veiled Stair/0 54.86,55.01 < 15 |walk
Follow the path up |goto The Veiled Stair/0 44.26,47.28 < 15 |walk
kill Leechfingers##63494 |q 31287/1 |goto The Veiled Stair/0 51.12,43.38
|tip Upstairs inside the cave.
step
label "Collect_Black_Market_Merchandise"
click Various Objects
|tip They look like {o}various shaped objects with different names{}.
|tip Inside and outside the cave. |notinsticky
collect 7 Black Market Merchandise##85981 |q 31286/1 |goto The Veiled Stair/0 54.86,55.01
step
Leave the cave |goto The Veiled Stair/0 54.86,55.01 < 15 |walk |only if subzone("Hatescale Burrow") and indoors()
talk Len the Whisperer##63484
turnin Robbing Robbers of Robbers##31286 |goto The Veiled Stair/0 53.51,65.76
turnin Educating Saurok##31287 |goto The Veiled Stair/0 53.51,65.76
step
talk Brewmaster Boof##63367
Speak with Brewmaster Boof |q 31254/2 |goto The Veiled Stair/0 51.91,43.74
step
talk Brewmaster Boof##63367
accept The Spring Drifter##31285 |goto The Veiled Stair/0 51.91,43.74
step
clicknpc The Spring Drifter##63517
Ride the Spring Drifter |invehicle |goto The Veiled Stair/0 52.03,43.08 |q 31285
step
Watch the dialogue
Survive a Ride on the Spring Drifter |q 31285/1 |goto Kun-Lai Summit/0 72.66,93.10 |notravel
step
talk Brewmaster Boof##63367
turnin The Spring Drifter##31285 |goto Kun-Lai Summit/0 72.66,93.02
step
talk Jo the Wind Watcher##61474
fpath Binan Village |goto Kun-Lai Summit/0 72.54,94.17
step
talk Apothecary Cheng##59077
accept Hit Medicine##30460 |goto Kun-Lai Summit/0 71.57,92.83
step
talk Mayor Bramblestaff##59073
turnin The Road to Kun-Lai##31255 |goto Kun-Lai Summit/0 72.27,91.86 |only if haveq(31255) or completedq(31255)
accept Call Out Their Leader##30457 |goto Kun-Lai Summit/0 72.27,91.86
step
talk Commander Hsieh##59076
accept All of the Arrows##30459 |goto Kun-Lai Summit/0 70.75,90.36
stickystart "Slay_Bataari_Tribe_Members"
stickystart "Heal_Injured_Binan_Warriors"
stickystart "Collect_Arrows_Of_Commander_Hsieh"
step
kill Bataari Fire-Warrior##59083 |q 30457/2 |goto Kun-Lai Summit/0 68.01,88.63
|tip He looks like a {o}tauren riding on a large yak{} that walks along this path.
|tip He will appear as a {o}yellow dot{} on your {o}minimap{}.
|tip He appears at this location.
Also check around [69.89,89.45]
step
label "Slay_Bataari_Tribe_Members"
kill Bataari Yaungol##58961, Bataari Flamecaller##59021
|tip They look like {o}tauren{}.
Slay #10# Bataari Tribe Members |q 30457/1 |goto Kun-Lai Summit/0 69.23,89.76
step
label "Heal_Injured_Binan_Warriors"
use the Dit Da Jow##79819
|tip Use it on {o}Injured Binan Warriors{}.
|tip They look like {o}kneeling pandas{}.
Heal #8# Injured Binan Warriors |q 30460/1 |goto Kun-Lai Summit/0 69.23,89.76
'|clicknpc Injured Binan Warrior##59143
step
label "Collect_Arrows_Of_Commander_Hsieh"
click Arrow of Commander Hsieh##210759+
|tip They look like the {o}small sticks with feathers{}.
collect 12 Arrow of Commander Hsieh##79806 |q 30459/1 |goto Kun-Lai Summit/0 69.23,89.76
step
talk Commander Hsieh##59076
turnin All of the Arrows##30459 |goto Kun-Lai Summit/0 70.75,90.36
step
talk Mayor Bramblestaff##59073
turnin Call Out Their Leader##30457 |goto Kun-Lai Summit/0 72.27,91.86
step
talk Apothecary Cheng##59077
turnin Hit Medicine##30460 |goto Kun-Lai Summit/0 71.57,92.83
accept General Nazgrim has Awakened##30511 |goto Kun-Lai Summit/0 71.57,92.83
step
talk General Nazgrim##59442
|tip Upstairs inside the building.
turnin General Nazgrim has Awakened##30511 |goto Kun-Lai Summit/0 71.65,93.10
accept Eastwind Rest##30513 |goto Kun-Lai Summit/0 71.65,93.10
step
talk Merchant Shi##59263
accept Reposesssion##30469 |goto Kun-Lai Summit/0 74.96,88.86
accept My Son...##30467 |goto Kun-Lai Summit/0 74.96,88.86
step
talk Swordmistress Mei##59273
accept Enraged Vengeance##30468 |goto Kun-Lai Summit/0 74.79,88.68
step
talk Waterspeaker Gorai##60973
accept The Waterspeaker's Staff##30496 |goto Kun-Lai Summit/0 75.13,87.94
accept Free the Dissenters##30967 |goto Kun-Lai Summit/0 75.13,87.94
stickystart "Help_Inkgill_Dissenters_Escape"
stickystart "Collect_Stolen_Supplies"
stickystart "Slay_Enraged_Jinyus"
step
talk Wu-Peng##59272
turnin My Son...##30467 |goto Kun-Lai Summit/0 74.68,76.93
accept Father and Child Reunion##30834 |goto Kun-Lai Summit/0 74.68,76.93
step
kill Orachi##59180
|tip He walks around this area.
|tip He will appear as a {o}yellow dot{} on your {o}minimap{}.
collect Stolen Inkgill Ritual Staff##81385 |q 30496/1 |goto Kun-Lai Summit/0 74.45,78.53
step
label "Help_Inkgill_Dissenters_Escape"
talk Inkgill Dissenter##61566+
|tip They look like {o}scared fish people{}.
Select _"There's still hope - Gorai is still alive, to the south. Go!"_ |gossip 126226
Help #6# Inkgill Dissenters Escape |q 30967/1 |goto Kun-Lai Summit/0 74.61,82.83
You can find more around [74.07,78.29]
step
label "Collect_Stolen_Supplies"
click Untainted Supplies##210889+
|tip They look like {o}green and silver metal containers{}.
collect 8 Stolen Supplies##79880 |q 30469/1 |goto Kun-Lai Summit/0 74.61,82.83
You can find more around [74.07,78.29]
step
label "Slay_Enraged_Jinyus"
kill Orachi##59180, Enraged Tideweaver##59181, Enraged Cavalier##61537, Enraged Enforcer##60995, Enraged Spearman##59165, Enraged Priest##59166, Enraged Blacksmith##61130
|tip They look like {o}fish people{}.
Slay #15# Enraged Jinyus |q 30468/1 |goto Kun-Lai Summit/0 74.61,82.83
You can find more around [74.07,78.29]
step
talk Waterspeaker Gorai##60973
turnin The Waterspeaker's Staff##30496 |goto Kun-Lai Summit/0 75.20,88.26
turnin Free the Dissenters##30967 |goto Kun-Lai Summit/0 75.20,88.26
step
Watch the dialogue
Reunite Wu-Peng and Merchant Shi |q 30834/1 |goto Kun-Lai Summit/0 74.96,88.86
step
talk Merchant Shi##59263
turnin Reposesssion##30469 |goto Kun-Lai Summit/0 74.96,88.86
turnin Father and Child Reunion##30834 |goto Kun-Lai Summit/0 74.96,88.86
step
talk Swordmistress Mei##59273
turnin Enraged Vengeance##30468 |goto Kun-Lai Summit/0 74.79,88.68
step
talk Waterspeaker Gorai##60973
accept The Ritual##30480 |goto Kun-Lai Summit/0 75.20,88.26
step
talk Waterspeaker Gorai##60973
Select _"I'm ready. Begin the ritual."_ |gossip 126207
Speak to Waterspeaker Gorai to Begin the Ritual |q 30480/1 |goto Kun-Lai Summit/0 75.20,88.26
step
Watch the dialogue
|tip Follow {o}Waterspeaker Gorai{} as he walks.
|tip He eventually walks to this location.
Lay the Dead Inkgill to Rest |q 30480/2 |goto Kun-Lai Summit/0 74.90,88.58
'|clicknpc Waterspeaker Gorai##61582
step
Watch the dialogue
kill Explosive Hatred##61530
Complete the Ritual |q 30480/3 |goto Kun-Lai Summit/0 74.90,88.58
step
Watch the dialogue
talk Waterspeaker Gorai##60973
turnin The Ritual##30480 |goto Kun-Lai Summit/0 74.90,88.58
accept Cleansing the Mere##30828 |goto Kun-Lai Summit/0 74.90,88.58
step
clicknpc Pool of Corruption##61500+
|tip They look like {o}spots of smoke rising out of the water{}.
Watch the dialogue
kill Boiling Rage##59170+
Cleanse #6# Pools of Corruption |q 30828/1 |goto Kun-Lai Summit/0 71.54,85.29
step
_Next to you:_
talk Waterspeaker Gorai##61065
turnin Cleansing the Mere##30828
accept The Fall of Shai Hu##30855
step
kill Shai Hu##61069 |q 30855/1 |goto Kun-Lai Summit/0 71.24,82.53
|tip You will {o}lose 5% of your health every 5 seconds{}.
|tip Kill {o}Explosive Hatred enemies{} near him to {o}remove his shield{}.
|tip Keep in mind to land a killing blow yourself for the kill to count.
step
talk Waterspeaker Gorai##60973
turnin The Fall of Shai Hu##30855 |goto Kun-Lai Summit/0 74.91,88.58
step
talk Farmhand Ko##63751
Select _"I'm from the Horde. We're here to save you and rebuild your village."_ |gossip 130060
Speak with Farmhand Ko |q 30513/1 |goto Kun-Lai Summit/0 63.68,86.65
step
talk Elder Shiao##63535
Select _"I'm from the Horde. We're here to save you and rebuild your village."_ |gossip 130071
Speak with Elder Shiao |q 30513/2 |goto Kun-Lai Summit/0 61.20,82.22
step
talk Elder Shiao##63535
turnin Eastwind Rest##30513 |goto Kun-Lai Summit/0 61.20,82.22
accept Challenge Accepted##30515 |goto Kun-Lai Summit/0 61.20,82.22
step
click Yaungol Banner##210933
Watch the dialogue
kill Ur-Bataar##59483 |q 30515/1 |goto Kun-Lai Summit/0 58.19,84.09
step
talk Elder Shiao##63535
turnin Challenge Accepted##30515 |goto Kun-Lai Summit/0 61.57,80.19
step
talk General Nazgrim##59442
|tip Inside the building.
accept Round 'Em Up##31256 |goto Kun-Lai Summit/0 63.00,80.20
step
talk Rivett Clutchpop##59448
accept Best Meals Anywhere!##31251 |goto Kun-Lai Summit/0 62.79,79.90
step
talk Farmhand Ko##63751
accept Trouble on the Farmstead##30570 |goto Kun-Lai Summit/0 62.54,79.44
step
talk Elder Shiao##63535
accept Mogu?! Oh No-gu!##30620 |goto Kun-Lai Summit/0 62.34,79.61
step
talk Soaring Paw##61745
fpath Eastwind Rest |goto Kun-Lai Summit/0 62.44,80.72
step
talk Shademaster Kiryn##59449
accept Deanimate the Reanimated##30594 |goto Kun-Lai Summit/0 62.70,80.72
stickystart "Collect_Kun_Lai_Meaty_Bits"
step
clicknpc Wild Plains Yak##59610+
|tip They look like {o}brown bison{}.
|tip They will {o}follow you{}.
|tip You can have {o}3 following you{} at once.
Round Up #3# Yaks |q 31256/1 |goto Kun-Lai Summit/0 65.02,78.75
Bring them to [62.61,79.36]
step
label "Collect_Kun_Lai_Meaty_Bits"
kill Highlands Calf##59671, Highlands Mushan##59670, Summit Bonestripper##59672, Razorquill Porcupine##65839
|tip They look like {o}various beasts{}.
|tip {o}Wild Plains Yaks{} will not drop the quest item.
collect 160 Kun-Lai Meaty Bits##80245 |q 31251/1 |goto Kun-Lai Summit/0 65.02,78.75
step
talk Rivett Clutchpop##59448
turnin Best Meals Anywhere!##31251 |goto Kun-Lai Summit/0 62.79,79.90
step
talk General Nazgrim##59442
|tip Inside the building.
turnin Round 'Em Up##31256 |goto Kun-Lai Summit/0 63.00,80.20
step
talk Farmer Chow##59573
turnin Trouble on the Farmstead##30570 |goto Kun-Lai Summit/0 60.24,85.79
accept Farmhand Freedom##30571 |goto Kun-Lai Summit/0 60.24,85.79
step
talk Uyen Chow##59636
accept ... and the Pot, Too!##30581 |goto Kun-Lai Summit/0 60.17,85.91
step
click Cast Iron Pot##211023
|tip Inside the building.
collect Cast Iron Pot##80230 |q 30581/2 |goto Kun-Lai Summit/0 60.02,88.44
stickystart "Collect_Root_Vegetables"
step
kill Ordo Overseer##59580+
|tip They look like {o}tauren next to groups of Pandaren{}.
Free #12# Farmstead Slaves |q 30571/1 |goto Kun-Lai Summit/0 58.61,89.25
You can find more around [61.31,87.39]
step
label "Collect_Root_Vegetables"
kill Wascally Wirmen##59655+
|tip They look like {o}small piles of moving dirt{}.
click Root Vegetable##211019+
|tip They look like {o}vegetables in the ground{}.
collect 12 Root Vegetable##80227 |q 30581/1 |goto Kun-Lai Summit/0 58.61,89.25
You can find more around [61.31,87.39]
step
talk Uyen Chow##59636
turnin ... and the Pot, Too!##30581 |goto Kun-Lai Summit/0 60.17,85.91
step
talk Farmer Chow##59573
turnin Farmhand Freedom##30571 |goto Kun-Lai Summit/0 60.24,85.79
accept Back to Eastwind Rest##31253 |goto Kun-Lai Summit/0 60.24,85.79
step
talk Farmhand Ko##63751
turnin Back to Eastwind Rest##31253 |goto Kun-Lai Summit/0 62.54,79.44
step
talk Bao Jian##59821
accept Profiting off of the Past##30595 |goto Kun-Lai Summit/0 59.61,78.22
stickystart "Collect_Mogu_Relics"
stickystart "Destroy_Terracotta_Guardians_Or_Warriors"
step
kill Mogujia Soul-Caller##59797 |q 30620/1 |goto Kun-Lai Summit/0 58.12,70.89
step
label "Collect_Mogu_Relics"
kill Terracotta Warrior##59758, Terracotta Guardian##59773
|tip They look like {o}bulky humanoids and lions{}.
click Mogu Relic##211148+
|tip They look like {o}various shaped stone objects{}.
collect 12 Mogu Relic##80294 |q 30595/1 |goto Kun-Lai Summit/0 58.58,75.71
step
label "Destroy_Terracotta_Guardians_Or_Warriors"
kill Terracotta Warrior##59758, Terracotta Guardian##59773 |notinsticky
|tip They look like {o}bulky humanoids and lions{}. |notinsticky
Destroy #14# Terracotta Guardians or Warriors |q 30594/1 |goto Kun-Lai Summit/0 58.58,75.71
step
talk Bao Jian##59821
turnin Profiting off of the Past##30595 |goto Kun-Lai Summit/0 59.61,78.22
step
talk Elder Shiao##63535
turnin Mogu?! Oh No-gu!##30620 |goto Kun-Lai Summit/0 62.34,79.61
accept Pandaren Prisoners##30655 |goto Kun-Lai Summit/0 62.34,79.61
step
talk Rivett Clutchpop##59448
accept Barrels of Fun##30656 |goto Kun-Lai Summit/0 62.79,79.90
step
talk General Nazgrim##59442
|tip Inside the building.
accept In Tents Channeling##30657 |goto Kun-Lai Summit/0 63.00,80.20
step
talk Shademaster Kiryn##59449
turnin Deanimate the Reanimated##30594 |goto Kun-Lai Summit/0 62.70,80.72
stickystart "Rescue_Pandaren_Prisoners"
step
clicknpc Explosives Barrel##60095
collect Explosives Barrel##80528 |goto Kun-Lai Summit/0 51.23,79.31 |q 30656
step
use the Explosives Barrel##80528
Destroy the Eastern Oil Rig |q 30656/1 |goto Kun-Lai Summit/0 51.05,79.41
step
kill Musaan the Blazecaster##59969 |q 30657/1 |goto Kun-Lai Summit/0 50.45,78.59
|tip Inside the tent.
step
kill Harala the Firespeaker##60030 |q 30657/3 |goto Kun-Lai Summit/0 49.43,78.48
|tip Inside the tent.
step
clicknpc Explosives Barrel##60095
collect Explosives Barrel##80528 |goto Kun-Lai Summit/0 49.57,78.97 |q 30656
step
kill Pao-kun the Pyromancer##60031 |q 30657/4 |goto Kun-Lai Summit/0 49.13,80.31
|tip Inside the tent.
step
use the Explosives Barrel##80528
Destroy the Southern Oil Rig |q 30656/2 |goto Kun-Lai Summit/0 49.61,80.94
step
clicknpc Explosives Barrel##60095
collect Explosives Barrel##80528 |q 30656 |goto Kun-Lai Summit/0 49.34,81.10
step
use the Explosives Barrel##80528
Destroy the Western Oil Rig |q 30656/3 |goto Kun-Lai Summit/0 47.87,81.39
step
kill Akonu the Embercaller##60032 |q 30657/2 |goto Kun-Lai Summit/0 47.71,80.01
|tip Inside the tent.
step
_Click the Complete Quest Box:_
turnin In Tents Channeling##30657
accept The Ordo Warbringer##30661
step
label "Rescue_Pandaren_Prisoners"
clicknpc Pandaren Prisoner##60038+
|tip They look like {o}panda people with ball and chains{}.
|tip They can also be inside {o}wooden cages{}.
Rescue #8# Pandaren Prisoners |q 30655/1 |goto Kun-Lai Summit/0 49.88,79.97
step
kill Ordo Warbringer##60127 |q 30661/1 |goto Kun-Lai Summit/0 48.35,76.72
|tip When his {o}shield appears{}, {o}kill the enemies{} that appear to {o}remove it{}.
|tip Inside the small cave.
step
talk Rivett Clutchpop##59448
turnin Barrels of Fun##30656 |goto Kun-Lai Summit/0 62.79,79.90
step
talk General Nazgrim##59442
|tip He walks around this area.
turnin Pandaren Prisoners##30655 |goto Kun-Lai Summit/0 62.31,80.63
turnin The Ordo Warbringer##30661 |goto Kun-Lai Summit/0 62.31,80.63
accept The Shado-Pan##31453 |goto Kun-Lai Summit/0 62.31,80.63
step
talk Mai the Sleepy##62883 |goto Kun-Lai Summit/0 62.73,80.49
Select _"Make this inn your home."_ |gossip 93527
home Eastwind Rest
step
talk Farmhand Ko##63751
accept Muskpaw Ranch##31457 |goto Kun-Lai Summit/0 62.54,79.44
step
talk Shademaster Kiryn##59449
accept Cho's Missive##31459 |goto Kun-Lai Summit/0 62.70,80.72
step
talk Lao Muskpaw##59353
|tip He walks around this area.
turnin Muskpaw Ranch##31457 |goto Kun-Lai Summit/0 71.34,69.68
accept The Missing Muskpaw##30488 |goto Kun-Lai Summit/0 71.34,69.68
accept Fresh Needle Scent##30489 |goto Kun-Lai Summit/0 71.34,69.68
stickystart "Collect_Pungent_Sprite_Needles"
step
Enter the cave |goto Kun-Lai Summit/0 72.99,73.44 < 15 |walk
talk Muskpaw Jr.##61693
|tip He runs around this area inside the cave.
|tip {o}Kill the enemies attacking him{} to be able to {o}talk to him{}.
turnin The Missing Muskpaw##30488 |goto Kun-Lai Summit/9 64.23,61.16
accept At the Yak Wash##30491 |goto Kun-Lai Summit/9 64.23,61.16
step
clicknpc Tuffi##61874
|tip Inside the cave.
Ride Tuffi |invehicle |goto Kun-Lai Summit/9 65.54,58.89 |q 30491
step
Wash an Escaped Yak |q 30491/1 |goto Kun-Lai Summit/0 71.36,69.15 |count 1 |notravel
step
label "Collect_Pungent_Sprite_Needles"
kill Needle Sprite##55593+
|tip They look like {o}imps{}.
|tip Inside and outside the cave. |notinsticky
collect 100 Pungent Sprite Needles##79952 |q 30489/1 |goto Kun-Lai Summit/0 73.16,73.57
step
Leave the cave |goto Kun-Lai Summit/0 72.99,73.44 < 15 |walk |only if subzone("Pranksters' Hollow") and indoors()
accept Yakity Yak##30587 |goto Kun-Lai Summit/0 69.41,74.15
|tip You will automatically accept this quest.
stickystart "Slay_Burilgi_Despoilers"
step
kill Burilgi Despoiler##59335+
|tip They look like {o}tauren{}.
collect Muskpaw's Keepsake##80241 |n
use Muskpaw's Keepsake##80241
accept The Late Mrs. Muskpaw##30582 |goto Kun-Lai Summit/0 68.17,73.63
step
clicknpc Escaped Yak##59319+
|tip They look like {o}brown bison{}.
Wash #6# Escaped Yaks |q 30491/1 |goto Kun-Lai Summit/0 68.17,73.63
Ride them to [71.36,69.15]
step
talk Muskpaw Jr.##59354
turnin At the Yak Wash##30491 |goto Kun-Lai Summit/0 71.39,69.28
step
talk Lao Muskpaw##59353
|tip He walks around this area.
turnin Fresh Needle Scent##30489 |goto Kun-Lai Summit/0 71.51,69.94
turnin The Late Mrs. Muskpaw##30582 |goto Kun-Lai Summit/0 71.51,69.94
accept The Fearmaster##30804 |goto Kun-Lai Summit/0 71.51,69.94
step
kill The Fearmaster##59656 |q 30804/1 |goto Kun-Lai Summit/0 67.84,73.99
step
label "Slay_Burilgi_Despoilers"
kill Burilgi Despoiler##59335, Burilgi Despoiler##59718, Burilgi Despoiler##59382
Slay #9# Burilgi Despoilers |q 30587/1 |goto Kun-Lai Summit/0 68.17,73.63
|tip They look like {o}tauren{}.
step
talk Lao Muskpaw##59353
|tip He walks around this area.
turnin The Fearmaster##30804 |goto Kun-Lai Summit/0 71.51,69.94
turnin Yakity Yak##30587 |goto Kun-Lai Summit/0 71.51,69.94
step
talk Muskpaw Jr.##59354
accept Back in Yak##30492 |goto Kun-Lai Summit/0 71.39,69.28
step
Bring the Yak Herd to Lucky Eightcoins |q 30492/1 |goto Kun-Lai Summit/0 65.38,61.71
step
talk Slimy Inkstain##59402
accept Oil Stop##30614 |goto Kun-Lai Summit/0 65.49,60.82
step
talk Smokey Sootassle##59597
accept Traffic Issues##30616 |goto Kun-Lai Summit/0 64.88,60.49
step
talk Lucky Eightcoins##59371
turnin Back in Yak##30492 |goto Kun-Lai Summit/0 64.71,61.76
accept A Grummle's Luck##30808 |goto Kun-Lai Summit/0 64.71,61.76
stickystart "Collect_Stolen_Luckydos"
stickystart "Slay_Ruqin_Yaungols"
step
click Yaungol Oil Derrick##211531
collect Filled Oil Vial##80311 |q 30614/1 |goto Kun-Lai Summit/0 63.32,68.45
step
label "Collect_Stolen_Luckydos"
click Stolen Bag of Luckydos##211538+
|tip They look like {o}small tan bags{}.
|tip They can be {o}inside huts{}.
collect 8 Stolen Luckydos##81293 |q 30808/1 |goto Kun-Lai Summit/0 62.80,67.52
step
label "Slay_Ruqin_Yaungols"
kill Ruqin Elder##59826, Ruqin Infantry##59790, Ruqin Outrider##59538
|tip They look like {o}tauren{}.
Slay #8# Ruqin Yaungols |q 30616/1 |goto Kun-Lai Summit/0 62.80,67.52
step
talk Lucky Eightcoins##59371
turnin A Grummle's Luck##30808 |goto Kun-Lai Summit/0 64.71,61.76
step
talk Slimy Inkstain##59402
turnin Oil Stop##30614 |goto Kun-Lai Summit/0 65.49,60.82
step
talk Smokey Sootassle##59597
turnin Traffic Issues##30616 |goto Kun-Lai Summit/0 64.88,60.50
accept Roadside Assistance##30617 |goto Kun-Lai Summit/0 64.88,60.50
step
click Lucky Burlap Incense##211539+
|tip They look like {o}thin sticks{} stuck in the ground {o}along the road{}.
Light #8# Lucky Burlap Incense |q 30617/1 |goto Kun-Lai Summit/0 60.19,65.28
step
talk Brother Lintpocket##59701
turnin Roadside Assistance##30617 |goto Kun-Lai Summit/0 58.09,61.47
step
talk Little Cleankite##61504
fpath One Keg |goto Kun-Lai Summit/0 57.73,59.69
step
talk Lorewalker Cho##61847
turnin Cho's Missive##31459 |goto Kun-Lai Summit/0 57.34,61.69
accept Path Less Traveled##30999 |goto Kun-Lai Summit/0 57.34,61.69
step
talk Uncle Cloverleaf##59696
turnin Path Less Traveled##30999 |goto Kun-Lai Summit/0 57.22,61.20
accept Instant Courage##30601 |goto Kun-Lai Summit/0 57.22,61.20
step
talk Big Sal##59695
|tip Inside the building.
accept Resupplying Onekeg##30618 |goto Kun-Lai Summit/0 57.72,61.77
step
talk Ji-Lu the Lucky##59716
|tip Inside the building.
accept They Stole My Luck!##30621 |goto Kun-Lai Summit/0 57.32,60.20
stickystart "Inspire_Hiding_Guides"
stickystart "Collect_Stolen_Supplies_30618"
step
Enter the cave |goto Kun-Lai Summit/0 59.28,52.68 < 30 |walk
kill Suspicious Snow Pile##59967+
|tip They look like {o}white mounds{}.
|tip Inside the cave.
kill Mischievous Snow Sprite##59693+
|tip They look like {o}imps{}.
collect Lucky Virmen's Foot##80316 |q 30621/1 |goto Kun-Lai Summit/8 70.02,86.55
collect Lucky Yak Shoe##80317 |q 30621/2 |goto Kun-Lai Summit/8 70.02,86.55
collect Lucky Four Winds Clover##90318 |q 30621/3 |goto Kun-Lai Summit/8 70.02,86.55
collect Lucky "Gold" Coin##80319 |q 30621/4 |goto Kun-Lai Summit/8 70.02,86.55
step
label "Inspire_Hiding_Guides"
talk Hiding Guide##59818+
|tip They look like {o}larger wicker baskets{}.
|tip Inside the cave. |notinsticky
Select _"Are you sure you don't want to come with me?"_ |gossip 126143
Select _"Well you can't just stay in here! You leave me no choice! <Use the Fire Lotus Incense.>"_ |gossip 126142
Inspire #3# Hiding Guides |q 30601/1 |goto Kun-Lai Summit/8 70.02,86.55
step
label "Collect_Stolen_Supplies_30618"
click Stolen Supplies##211270+
|tip They look like {o}various shaped objects{}.
|tip Inside the cave. |notinsticky
collect 8 Stolen Supplies##80315 |q 30618/1 |goto Kun-Lai Summit/8 70.02,86.55
step
Leave the cave |goto Kun-Lai Summit/0 59.28,52.68 < 30 |walk |only if subzone("Howlingwind Cavern") and indoors()
talk Ji-Lu the Lucky##59716
|tip Inside the building.
turnin They Stole My Luck!##30621 |goto Kun-Lai Summit/0 57.32,60.20
step
talk Uncle Cloverleaf##59696
turnin Instant Courage##30601 |goto Kun-Lai Summit/0 57.22,61.20
step
talk Big Sal##59695
|tip Inside the building.
turnin Resupplying Onekeg##30618 |goto Kun-Lai Summit/0 57.72,61.77
step
talk Uncle Cloverleaf##59696
accept Comin' Round the Mountain##30487 |goto Kun-Lai Summit/0 57.22,61.20
step
clicknpc Ji-Lu's Cart##60094
Jump in Ji-Lu's Cart |q 30487/1 |goto Kun-Lai Summit/0 57.32,61.58
step
kill Knucklethump Attacker##60138, Rampaging Yeti##59694
|tip They {o}attack in waves{} as you ride the cart.
Survive the Mountain Pass |q 30487/2 |goto Kun-Lai Summit/0 48.10,49.01 |notravel
step
talk Lucky Bluestring##60175
turnin Comin' Round the Mountain##30487 |goto Kun-Lai Summit/0 48.14,49.04
accept One Traveler's Misfortune##30683 |goto Kun-Lai Summit/0 48.14,49.04
step
click Abandoned Wreckage##212903
Search the Abandoned Wreckage for Supplies |q 30683/1 |goto Kun-Lai Summit/0 50.06,49.24
step
Watch the dialogue
Kill the enemies that attack
kill General Sho Lien##60769 |q 30683/2 |goto Kun-Lai Summit/0 50.06,49.24
step
talk Lucky Bluestring##60175
turnin One Traveler's Misfortune##30683 |goto Kun-Lai Summit/0 48.14,49.04
accept Seeker's Folly##30684 |goto Kun-Lai Summit/0 48.14,49.04 |or
'|accept Seeker's Folly##31306 |goto Kun-Lai Summit/0 48.14,49.04 |or
step
click Shrine of the Seeker's Body##211597
|tip {o}Avoid the falling snowballs{}.
Honor the Shrine of the Seeker's Body |q 30684/1 |goto Kun-Lai Summit/0 44.79,49.17 |only if haveq(30684) or completedq(30684)
Honor the Shrine of the Seeker's Body |q 31306/1 |goto Kun-Lai Summit/0 44.79,49.17 |only if haveq(31306) or completedq(31306)
step
click Shrine of the Seeker's Breath##211601
|tip {o}Avoid the tornados{}.
Honor the Shrine of the Seeker's Breath |q 30684/2 |goto Kun-Lai Summit/0 42.69,50.02 |only if haveq(30684) or completedq(30684)
Honor the Shrine of the Seeker's Breath |q 31306/2 |goto Kun-Lai Summit/0 42.69,50.02 |only if haveq(31306) or completedq(31306)
step
click Shrine of the Seeker's Heart##211602
Honor the Shrine of the Seeker's Heart |q 30684/3 |goto Kun-Lai Summit/0 43.18,51.98 |only if haveq(30684) or completedq(30684)
Honor the Shrine of the Seeker's Heart |q 31306/3 |goto Kun-Lai Summit/0 43.18,51.98 |only if haveq(31306) or completedq(31306)
step
talk Lorewalker Cho##60795
turnin Seeker's Folly##30684 |or |goto Kun-Lai Summit/0 43.79,51.05 |only if haveq(30684) or completedq(30684)
turnin Seeker's Folly##31306 |or |goto Kun-Lai Summit/0 43.79,51.05 |only if haveq(31306) or completedq(31306)
accept The Tongue of Ba-Shon##30829 |goto Kun-Lai Summit/0 43.79,51.05
step
talk Lorewalker Cho##60795
Select _"Go ahead with the binding, Cho."_ |gossip 126165
Watch the dialogue
kill Reclaimer Zuan##61305
Bind the Tongue of Ba-Shon |q 30829/1 |goto Kun-Lai Summit/0 43.79,51.05
step
talk Lorewalker Cho##60795
turnin The Tongue of Ba-Shon##30829 |goto Kun-Lai Summit/0 43.76,51.11
accept Staying Connected##30795 |goto Kun-Lai Summit/0 43.76,51.11
step
talk Mishi##60796
Select _"I'm ready to leave."_ |gossip 126167
Begin Flying to the Valley of Emperors |invehicle |goto Kun-Lai Summit/0 43.74,51.32 |q 30795
step
Fly to the Valley of Emperors |outvehicle |goto Kun-Lai Summit/0 57.87,48.97 |q 30795 |notravel
step
use The Tongue of Ba-Sho##81712
Use the Tongue of Ba-Shon in the Valley of Emperors |q 30795/1 |goto Kun-Lai Summit/0 57.87,48.97
step
_Next to you:_
talk Image of Lorewalker Cho##61297
turnin Staying Connected##30795
accept An End to Everything##30796
stickystart "Kill_Tormented_Spirits"
step
click Curious Text##211780
accept It Was Almost Alive##30797 |goto Kun-Lai Summit/0 57.11,47.90
step
click Curious Text##211780
collect Torn Page##81892 |q 30797/1 |goto Kun-Lai Summit/0 57.11,47.90
step
label "Kill_Tormented_Spirits"
kill 5 Tormented Spirits##60825 |q 30796/1 |goto Kun-Lai Summit/0 57.31,48.01
|tip They look like {o}banshees{}.
step
use The Tongue of Ba-Sho##81712
talk Image of Lorewalker Cho##61297
|tip He appears next to you.
turnin An End to Everything##30796
turnin It Was Almost Alive##30797
accept The Tomb of Shadows##30799
step
Enter the building |goto Kun-Lai Summit/0 55.89,46.18 < 10 |walk
click Shen Dynasty Tablet##211770
|tip Inside the building.
collect Shen Dynasty Rubbing##82393 |q 30799/1 |goto Kun-Lai Summit/0 57.14,43.49
step
click Qiang Dynasty Tablet##211794
|tip Inside the building.
collect Qiang Dynasty Rubbing##82394 |q 30799/3 |goto Kun-Lai Summit/0 57.07,45.04
step
click Wai Dynasty Tablet##211793
|tip Inside the building.
collect Wai Dynasty Rubbing##82395 |q 30799/2 |goto Kun-Lai Summit/0 56.37,43.43
step
use The Tongue of Ba-Sho##81712
talk Image of Lorewalker Cho##61297
|tip He appears next to you.
turnin The Tomb of Shadows##30799
accept Breaking the Emperor's Shield##30798
step
Leave the building |goto Kun-Lai Summit/0 55.89,46.18 < 10 |walk |only if subzone("Tomb of Shadows") and indoors()
Run up the stairs and enter the building |goto Kun-Lai Summit/0 53.33,49.29 < 10 |walk
Watch the dialogue
|tip Inside the building.
kill Imperial Guard##60826+
|tip They {o}attack in waves{}.
kill Nakk'rakas##60572
Interrupt the Spiritbinding Ritual |q 30798/1 |goto Kun-Lai Summit/0 52.96,51.39
step
use The Tongue of Ba-Sho##81712
talk Image of Lorewalker Cho##61297
|tip He appears next to you.
turnin Breaking the Emperor's Shield##30798
accept Stealing Their Thunder... King##30800
step
_NOTE:_
During the Next Steps
|tip {o}Avoid the tiles{} on the floor with {o}colorful designs{}, they are {o}traps{}.
Click Here to Continue |confirm |q 30800
step
Leave the building |goto Kun-Lai Summit/0 53.33,49.29 < 10 |walk |only if subzone("Tomb of Secrets") and indoors()
Enter the building |goto Kun-Lai Summit/0 52.96,46.59 < 10 |walk
click King's Coffer##211967
|tip Inside the building.
collect Bottom Fragment of Lei Shen's Tablet##82764 |q 30800/1 |goto Kun-Lai Summit/17 58.65,72.68
step
click Top Fragment of Lei Shen's Tablet##211968
|tip Inside the building.
Repair the Tablet of Thunder |q 30800/2 |goto Kun-Lai Summit/17 34.15,61.48
step
use The Tongue of Ba-Sho##81712
talk Image of Lorewalker Cho##61297
|tip He appears next to you.
turnin Stealing Their Thunder... King##30800
accept Lessons from History##30801
step
click Tablet of Thunder
|tip Inside the building.
Read the Tablet of Thunder |q 30801/1 |goto Kun-Lai Summit/17 34.15,61.48
step
Watch the dialogue
use The Tongue of Ba-Sho##81712
talk Image of Lorewalker Cho##61297
|tip He appears next to you.
turnin Lessons from History##30801
accept Chasing the Storm##30802
step
kill Zandalari Warrior##61842+
|tip They look like {o}trolls{}.
|tip Inside the building.
collect Blood-Revealed Map##81890 |q 30802/1 |goto Kun-Lai Summit/17 59.51,72.19
step
use The Tongue of Ba-Sho##81712
talk Image of Lorewalker Cho##61297
|tip He appears next to you.
turnin Chasing the Storm##30802
accept Fisherman's Tale##30935
step
Leave the building |goto Kun-Lai Summit/0 52.96,46.59 < 10 |walk |only if subzone("Tomb of Conquerors") and indoors()
talk Mishi##61382
Select _"I'm ready to leave."_ |gossip 126190
Speak to Mishi Outside of Lei Shen's Tomb |q 30935/1 |goto Kun-Lai Summit/0 52.97,46.39
step
Begin Flying to the Path of Conquerors |invehicle |goto Kun-Lai Summit/0 52.97,46.39 |q 30935
step
Fly to the Path of Conquerors |outvehicle |goto Kun-Lai Summit/0 63.92,47.85 |q 30935 |notravel
step
Follow the path up |goto Kun-Lai Summit/0 66.91,57.69 < 30 |only if walking
talk Sunwalker Dezco##64542
|tip Inside the building.
turnin Temple of the White Tiger##31393 |goto Kun-Lai Summit/0 68.73,43.01 |only if haveq(31393) or completedq(31393)
accept A Celestial Experience##31395 |goto Kun-Lai Summit/0 68.73,43.01
step
talk Xuen##64528
|tip Inside the building.
Speak to Xuen |q 31395/1 |goto Kun-Lai Summit/0 68.88,42.79
step
Watch the dialogue
|tip Inside the building.
kill Spirit of Violence##64656
Pass the First Test |q 31395/2 |goto Kun-Lai Summit/0 68.78,43.98
step
Watch the dialogue
|tip Inside the building.
kill Spirit of Anger##64684
Pass the Second Test |q 31395/3 |goto Kun-Lai Summit/0 68.78,43.98
step
Watch the dialogue
|tip Inside the building.
kill Spirit of Hatred##64744
Pass the Third Test |q 31395/4 |goto Kun-Lai Summit/0 68.78,43.98
step
talk Sunwalker Dezco##64542
|tip Inside the building.
turnin A Celestial Experience##31395 |goto Kun-Lai Summit/0 68.73,43.01
accept A Witness to History##31511 |goto Kun-Lai Summit/0 68.73,43.01
step
talk Big Greenfeather##61118
|tip At the top of the mountain.
fpath Temple of the White Tiger |goto Kun-Lai Summit/0 66.31,50.66
step
Run down the mountain and run through the tunnel |goto Kun-Lai Summit/0 63.94,49.59 < 30 |only if walking
talk Shin Whispercloud##61380
Select _"I'm ready to leave."_ |gossip 126192
Speak to Shin Whispercloud to access Zouchin Province |q 30935/2 |goto Kun-Lai Summit/0 63.32,40.22
step
Begin Flying to the Zouchin Province |invehicle |goto Kun-Lai Summit/0 63.32,40.22 |q 30935
step
Fly to the Zouchin Province |outvehicle |goto Kun-Lai Summit/0 63.59,34.88 |q 30935 |notravel
step
talk Bo the Wind Claimer##61511
fpath Zouchin Village |goto Kun-Lai Summit/0 62.42,30.12
step
talk Lorewalker Cho##61371
|tip Inside the building.
turnin Fisherman's Tale##30935 |goto Kun-Lai Summit/0 62.32,29.06
accept It Takes A Village##30944 |goto Kun-Lai Summit/0 62.32,29.06
step
talk Li Hai##60436
accept Checking In##30816 |goto Kun-Lai Summit/0 63.17,29.37
step
talk Elder Shu##61495
|tip He walks around on {o}both floors{}.
|tip Inside the building.
accept Handle With Care##30943 |goto Kun-Lai Summit/0 63.37,28.75
step
talk Steelbender Doshu##61496
|tip He walks around this area.
accept What's Yours Is Mine##30945 |goto Kun-Lai Summit/0 63.36,30.74
step
talk Shomi##61503
accept Make A Fighter Out of Me##30942 |goto Kun-Lai Summit/0 63.73,30.71
stickystart "Kill_Amani_Skirmishers"
step
talk Exhausted Defender##61417+
|tip They look like {o}Pandaren{}.
|tip Around the {o}perimeter of the village{}.
Select _"I'll cover your post. Go rest and be with your family."_ |gossip 129572,129571
Relieve #5# Exhausted Defenders |q 30944/1 |goto Kun-Lai Summit/0 63.35,29.30
'|talk Exhausted Defender##61381
step
label "Kill_Amani_Skirmishers"
kill 4 Amani Skirmisher##66165 |q 30942/1 |goto Kun-Lai Summit/0 64.35,29.07
|tip They look like{o} trolls with large axes{}.
|tip Around the {o}perimeter of the village{}. |notinsticky
stickystart "Kill_Drakkari_Frostweavers"
stickystart "Kill_Gurubashi_Hexxers"
stickystart "Collect_Handful_Of_Volatile_Blooms"
step
kill Amani Skullbreaker##60580, Amani Raptor-Handler##60581
|tip Only {o}Skullbreakers{} and {o}Raptor-Handlers{} will drop the {o}quest item{}.
|tip They look like {o}trolls carrying a large sword{}, and {o}trolls walking with raptors{}.
collect 8 Blood-Stained Blade##82299 |q 30945/1 |goto Kun-Lai Summit/0 69.94,27.15
step
label "Kill_Drakkari_Frostweavers"
kill 3 Drakkari Frostweaver##66707 |q 30942/3 |goto Kun-Lai Summit/0 69.94,27.15
|tip They look like {o}trolls channeling a blue spell{}.
step
label "Kill_Gurubashi_Hexxers"
kill 4 Gurubashi Hexxer##64202 |q 30942/2 |goto Kun-Lai Summit/0 69.94,27.15
|tip They look like {o}trolls carrying staves{}.
step
label "Collect_Handful_Of_Volatile_Blooms"
click Volatile Blooms##211684+
|tip They look like {o}red bushes{}.
collect 50 Handful of Volatile Blooms##82298 |q 30943/1 |goto Kun-Lai Summit/0 69.94,27.15
step
_Next to you:_
talk Shomi##61534
turnin Make A Fighter Out of Me##30942
step
talk Lorewalker Cho##61371
|tip Inside the building.
turnin It Takes A Village##30944 |goto Kun-Lai Summit/0 62.33,29.06
step
talk Elder Shu##61495
|tip He walks around on {o}both floors{}.
|tip Inside the building.
turnin Handle With Care##30943 |goto Kun-Lai Summit/0 63.37,28.75
step
talk Steelbender Doshu##61496
|tip He walks around this area.
turnin What's Yours Is Mine##30945 |goto Kun-Lai Summit/0 63.36,30.74
step
talk Lorewalker Cho##61371
|tip Inside the building.
accept Enemies At Our Door##31011 |goto Kun-Lai Summit/0 62.33,29.06
stickystart "Kill_Zandalari_Berserkers"
step
clicknpc Blasting Barrel##62591+
|tip They look like {o}wooden barrels{}.
|tip {o}Keep clicking them{} as they reappear.
kill 5 Zandalari Behemoth##63516 |q 31011/2 |goto Kun-Lai Summit/0 61.18,29.05
step
kill 3 Zandalari Bloodrider##62362 |q 31011/3 |goto Kun-Lai Summit/0 64.40,29.04
|tip They look like {o}trolls riding raptors{}.
|tip You {o}may have to wait{} for a group of them to appear.
You can find more around [63.87,32.39]
step
label "Kill_Zandalari_Berserkers"
kill 10 Zandalari Berserker##62299 |q 31011/1 |goto Kun-Lai Summit/0 62.77,30.10
|tip They look like {o}troll soldiers{}.
step
talk Lorewalker Cho##61371
|tip Inside the building.
turnin Enemies At Our Door##31011 |goto Kun-Lai Summit/0 62.33,29.06
accept Revelations##30946 |goto Kun-Lai Summit/0 62.33,29.06
step
talk Zandalari Prisoner##62629
|tip Upstairs inside the building.
Select _"Where have the Thunder King's Remains been taken?!"_ |gossip 129496
Watch the dialogue
Question the Zandalari Prisoner |q 30946/1 |goto Kun-Lai Summit/0 62.48,28.84
step
talk Lorewalker Cho##63750
|tip Inside the building.
turnin Revelations##30946 |goto Kun-Lai Summit/0 62.32,29.06
accept Prophet Khar'zul##31228 |goto Kun-Lai Summit/0 62.32,29.06
step
talk Sage Liao##60694
turnin Checking In##30816 |goto Kun-Lai Summit/0 60.61,21.34
accept Emergency Care##30794 |goto Kun-Lai Summit/0 60.61,21.34
step
click Sage Liao's Belongings##211510
|tip Inside the building.
collect Pandaren Healing Draught##81177 |goto Kun-Lai Summit/0 61.02,21.52 |q 30794
step
use the Pandaren Healing Draught##81177
|tip Use it on {o}Sage Liao{}.
Heal Sage Liao |q 30794/1 |goto Kun-Lai Summit/0 60.61,21.34
'|clicknpc Sage Liao##60694
step
talk Sage Liao##60785
turnin Emergency Care##30794 |goto Kun-Lai Summit/0 60.61,21.34
accept Justice##30805 |goto Kun-Lai Summit/0 60.61,21.34
accept The Scent of Life##30806 |goto Kun-Lai Summit/0 60.61,21.34
accept By the Falls, For the Fallen##30807 |goto Kun-Lai Summit/0 60.61,21.34
step
click Waterfall-Polished Stone##211526+
|tip They look like {o}large grey rocks underwater{}.
collect 3 Waterfall-Polished Stone##81269 |q 30807/1 |goto Kun-Lai Summit/0 59.05,27.22
You can find more around [58.91,24.56]
stickystart "Collect_Stolen_Pandaren_Spices_And_Slay_Blackmane_Mercenaries"
stickystart "Collect_Opalescent_Blue_Crab_Shells"
step
kill Captain Ripflesh##60767 |q 30805/1 |goto Kun-Lai Summit/0 62.13,23.57
|tip He walks around this area.
step
label "Collect_Stolen_Pandaren_Spices_And_Slay_Blackmane_Mercenaries"
kill Blackmane Brigand##60560, Blackmane Pillager##60846, Blackmane Tracker##60434
|tip They look like {o}gnolls{}.
click Blackmane Booty Barrel##211521+
|tip They look like {o}brown wooden barrels{}.
collect 8 Stolen Pandaren Spices##81261 |q 30806/2 |goto Kun-Lai Summit/0 62.52,21.25
Slay #6# Blackmane Mercenaries |q 30805/2 |goto Kun-Lai Summit/0 62.52,21.25
step
label "Collect_Opalescent_Blue_Crab_Shells"
kill Azure Prickly Crawler##60437+
|tip They look like {o}blue crabs{}.
|tip Underwater and along the beach around this area. |notinsticky
collect Opalescent Blue Crab Shell##80907 |q 30806/1 |goto Kun-Lai Summit/0 60.15,20.45
step
talk Sage Liao##60785
turnin Justice##30805 |goto Kun-Lai Summit/0 60.61,21.34
turnin The Scent of Life##30806 |goto Kun-Lai Summit/0 60.61,21.34
turnin By the Falls, For the Fallen##30807 |goto Kun-Lai Summit/0 60.61,21.34
accept Preparing the Remains##30819 |goto Kun-Lai Summit/0 60.61,21.34
step
talk Li Hai##60436
turnin Preparing the Remains##30819 |goto Kun-Lai Summit/0 63.17,29.37
accept Honoring the Dead##30820 |goto Kun-Lai Summit/0 63.17,29.37
step
click Incense of Life##211545
Light the Incense of Life |q 30820/1 |goto Kun-Lai Summit/0 66.94,33.32
step
talk Sage Liao##60757
turnin A Funeral##30820 |goto Kun-Lai Summit/0 67.04,33.35
step
talk Mishi##65855
Select _"I'm ready to leave."_ |gossip 130072
Speak with Mishi in Zouchin Village |q 31228/1 |goto Kun-Lai Summit/0 62.30,29.32
step
Begin Flying to the Isle of Reckoning |invehicle |goto Kun-Lai Summit/0 62.30,29.32 |q 31228
step
Fly to the Isle of Reckoning |outvehicle |goto Kun-Lai Summit/0 76.48,19.38 |q 31228 |notravel
stickystart "Slay_Zandalari_Forces"
step
kill Prophet Khar'zul##61541 |q 31228/2 |goto Kun-Lai Summit/0 76.43,9.05
|tip {o}Jump onto the stone table{} when the {o}floor turns purple{}.
step
label "Slay_Zandalari_Forces"
kill Amani Outrider##64639, Gurubashi Witch Doctor##64631, Gurubashi Worshipper##64642, Gurubashi Headsplitter##64643
|tip They look like {o}trolls{}.
Slay #12# Zandalari Forces |q 31228/3 |goto Kun-Lai Summit/0 76.25,13.40
step
talk Mishi##65858
Select _"I'm ready to leave."_ |gossip 130074
Begin Flying to Zouchin Village |invehicle |goto Kun-Lai Summit/0 76.17,11.45 |q 31228
|tip If Mishi would not be visible there, run up the stairs where the Prophet Khar'zul was and check again for Mishi next (tends to vanish if Khar'zul is not the last kill on the list).
step
Fly to Zouchin Village |outvehicle |goto Kun-Lai Summit/0 63.93,29.51 |q 31228 |notravel
step
talk Lorewalker Cho##63784
|tip Inside the building.
turnin Prophet Khar'zul##31228 |goto Kun-Lai Summit/0 62.32,29.06
step
talk Elder Shiao##63535
accept Beyond the Wall##31695 |goto Kun-Lai Summit/0 62.34,79.61
step
talk Brother Lintpocket##59701
accept The Burlap Trail: To Burlap Waystation##30592 |goto Kun-Lai Summit/0 58.09,61.47
step
Locate the Grummles
|tip They look like a {o}group of small friendly npcs{} that walk along this {o}road heading west{}.
|tip They {o}appear at this location{} when they die, if they aren't protected.
|tip You can either {o}wait here{} until they appear, or {o}try to find them{} along the road.
Click Here After You Locate the Grummles |confirm |goto Kun-Lai Summit/0 58.13,61.46 |q 30592
'|clicknpc Trail Packer##59527, Trail Yakker##59526
step
Escort the Grummles to the Burlap Waystation |q 30592/1 |goto Kun-Lai Summit/0 52.92,66.58
|tip Follow the {o}Grummles{} and {o}protect them{} as they walk.
|tip They eventually walk to this location.
'|clicknpc Trail Packer##59527, Trail Yakker##59526
step
talk Brother Trailscenter##59703
turnin The Burlap Trail: To Burlap Waystation##30592 |goto Kun-Lai Summit/0 51.66,67.83
accept The Rabbitsfoot##30602 |goto Kun-Lai Summit/0 51.66,67.83
step
talk Brother Rabbitsfoot##59806
Rescue Brother Rabbitsfoot |q 30602/1 |goto Kun-Lai Summit/0 49.10,70.45
step
talk Brother Rabbitsfoot##59806
accept The Broketooth Ravage##30603 |goto Kun-Lai Summit/0 49.10,70.45
step
kill Mo Mo##59805
|tip Inside the small cave up on the mountain.
collect Rabbitsfoot's Luckydo##81137 |q 30603/1 |goto Kun-Lai Summit/0 48.02,73.27
step
talk Brother Rabbitsfoot##59452
turnin The Rabbitsfoot##30602 |goto Kun-Lai Summit/0 51.97,67.21
turnin The Broketooth Ravage##30603 |goto Kun-Lai Summit/0 51.97,67.21
accept A Monkey Idol##30599 |goto Kun-Lai Summit/0 51.97,67.21
accept No Pack Left Behind##30600 |goto Kun-Lai Summit/0 51.97,67.21
accept Breaking Broketooth##30604 |goto Kun-Lai Summit/0 51.97,67.21
stickystart "Collect_Grummlepacks"
stickystart "Kill_Broketooth_Tossers"
stickystart "Kill_Broketooth_Chargers"
step
kill Hateful Ko Ko##59430
|tip He walks around this area.
collect Corpse of Ko Ko##80429 |goto Kun-Lai Summit/0 52.37,71.40 |q 30599
step
click Ko Ko's Altar##211275
Destroy Ko Ko's Altar |q 30599/2 |goto Kun-Lai Summit/0 52.26,71.43
step
Enter the cave |goto Kun-Lai Summit/0 52.85,71.46 < 20 |walk
kill Dak Dak##59424
|tip He looks like a {o}larger armored monkey{}.
|tip He walks around {o}throughout the cave{}.
collect Corpse Of Dak Dak##80428 |goto Kun-Lai Summit/11 54.57,26.69 |q 30599
step
click Dak Dak's Altar##210931
|tip Downstairs inside the cave.
Destroy Dak Dak's Altar |q 30599/1 |goto Kun-Lai Summit/12 49.55,39.77
step
label "Collect_Grummlepacks"
clicknpc Dead Packer##59896+
|tip They look like {o}dead grummles{}.
|tip Inside the cave. |notinsticky
collect 8 Grummlepack##80307 |q 30600/1 |goto Kun-Lai Summit/12 56.46,18.57
step
Leave the cave |goto Kun-Lai Summit/0 52.85,71.46 < 20 |walk |only if subzone("The Deeper") and indoors()
kill Tak Tak##59958
|tip He walks around this area.
collect Corpse of Tak Tak##80430 |goto Kun-Lai Summit/0 56.74,70.98 |q 30599
step
click Tak Tak's Altar##211276
Destroy Tak Tak's Altar |q 30599/3 |goto Kun-Lai Summit/0 56.83,70.98
step
label "Kill_Broketooth_Tossers"
kill 6 Broketooth Tosser##59416 |q 30604/2 |goto Kun-Lai Summit/0 52.85,71.46
|tip They look like {o}monkeys carrying small daggers{}.
|tip Inside and outside the cave. |notinsticky
step
label "Kill_Broketooth_Chargers"
kill 8 Broketooth Charger##59414 |q 30604/1 |goto Kun-Lai Summit/0 52.85,71.46
|tip They look like {o}monkeys carrying spears{}.
|tip Inside and outside the cave. |notinsticky
step
talk Brother Rabbitsfoot##59452
turnin A Monkey Idol##30599 |goto Kun-Lai Summit/0 51.97,67.21
turnin No Pack Left Behind##30600 |goto Kun-Lai Summit/0 51.97,67.21
accept Bros before Hozen##30605 |goto Kun-Lai Summit/0 51.97,67.21
turnin Breaking Broketooth##30604 |goto Kun-Lai Summit/0 51.97,67.21
step
clicknpc Mok Mok##60008
|tip On top of the hill.
Rescue Brother Yakshoe |q 30605/1 |goto Kun-Lai Summit/0 50.53,64.19
step
talk Brother Yakshoe##59894
turnin Bros before Hozen##30605 |goto Kun-Lai Summit/0 50.57,64.07
accept Hozen Love Their Keys##30607 |goto Kun-Lai Summit/0 50.57,64.07
accept The Snackrifice##30608 |goto Kun-Lai Summit/0 50.57,64.07
accept Thumping Knucklethump##30606 |goto Kun-Lai Summit/0 50.57,64.07
stickystart "Rescue_Imprisoned_Grummles"
stickystart "Slay_Silverback_Hozens"
step
Enter the cave |goto Kun-Lai Summit/0 50.30,61.67 < 15 |walk
kill Cho Cho the Wicked##60090
|tip He walks around this area inside the cave.
collect Yeti Shackle Key##80535 |q 30607/1 |goto Kun-Lai Summit/10 33.44,13.54
step
click Ball and Chain##207079
|tip It looks like a {o}large grey ball{} next to a {o}huge yeti{}.
|tip Inside the cave.
Release Old Poot Poot |q 30607/2 |goto Kun-Lai Summit/10 38.61,23.04
step
Begin Returning to Brother Yakshoe |invehicle |goto Kun-Lai Summit/10 38.61,23.04 |q 30607
step
Watch the dialogue
Return to Brother Yakshoe |outvehicle |goto Kun-Lai Summit/0 52.09,67.42 |q 30607 |notravel
stickystop "Rescue_Imprisoned_Grummles"
stickystop "Slay_Silverback_Hozens"
step
talk Brother Yakshoe##59894
turnin Hozen Love Their Keys##30607 |goto Kun-Lai Summit/0 52.02,67.18
stickystart "Slay_Silverback_Hozens"
step
label "Rescue_Imprisoned_Grummles"
clicknpc Prisoner Bindings##60027+
|tip They look like {o}ropes tied to people hanging from trees{}.
click Grummle Cage##211307+
|tip They look like {o}wooden cages{}.
|tip Inside and outside the cave. |notinsticky
Rescue #5# Imprisoned Grummles |q 30608/1 |goto Kun-Lai Summit/0 50.30,61.67
'|clicknpc Imprisoned Grummle##60012
step
label "Slay_Silverback_Hozens"
kill Knucklethump Smasher##59495, Knucklethump Smasher##59410, Knucklethump Jibstabber##59412
|tip They look like {o}monkeys{}.
|tip Inside and outside the cave. |notinsticky
Slay #8# Silverback Hozens |q 30606/1 |goto Kun-Lai Summit/0 50.30,61.67
step
talk Brother Yakshoe##59894
turnin The Snackrifice##30608 |goto Kun-Lai Summit/0 52.02,67.18
accept Grummle! Grummle! Grummle!##30610 |goto Kun-Lai Summit/0 52.02,67.18
step
talk Brother Rabbitsfoot##59452
turnin Thumping Knucklethump##30606 |goto Kun-Lai Summit/0 51.97,67.21
accept Unleash The Yeti!##30611 |goto Kun-Lai Summit/0 51.97,67.21
stickystart "Pack_Packers"
step
kill 4 Cagemaster##60169 |q 30611/1 |goto Kun-Lai Summit/0 46.10,64.11
|tip Around the {o}perimeter{} of the {o}huge cage{}.
step
label "Pack_Packers"
click Grummle Gear##211686+
|tip They look like {o}wooden boxes{}.
Pack #5# Packers |q 30610/1 |goto Kun-Lai Summit/0 46.10,64.11
step
talk Brother Yakshoe##59894
turnin Grummle! Grummle! Grummle!##30610 |goto Kun-Lai Summit/0 45.94,64.05
step
talk Brother Rabbitsfoot##59452
turnin Unleash The Yeti!##30611 |goto Kun-Lai Summit/0 45.91,64.05
accept The Leader Hozen##30612 |goto Kun-Lai Summit/0 45.91,64.05
step
Watch the dialogue
Enrage Chomp Chomp |q 30612/1 |goto Kun-Lai Summit/0 46.01,63.25
'|clicknpc Chomp Chomp##60217
step
Watch the dialogue
kill The Ook of Dook##60188 |q 30612/2 |goto Kun-Lai Summit/0 46.01,63.25
step
talk Brother Rabbitsfoot##59452
turnin The Leader Hozen##30612 |goto Kun-Lai Summit/0 51.97,67.21
step
talk Brother Trailscenter##59703
accept The Burlap Trail: To Kota Basecamp##30692 |goto Kun-Lai Summit/0 51.66,67.83
step
Locate the Grummles
|tip They look like a {o}group of small friendly npcs{} that walk along this {o}road heading west{}.
|tip They {o}appear at this location{} when they die, if they aren't protected.
|tip You can either {o}wait here{} until they appear, or {o}try to find them{} along the road.
Click Here After You Locate the Grummles |confirm |goto Kun-Lai Summit/0 51.69,67.70 |q 30692
'|clicknpc Grummle Trail Guide##59593, Trail Packer##59527, Trail Yakker##59526
step
Escort the Grummles to the Kota Basecamp |q 30692/1 |goto Kun-Lai Summit/0 43.76,68.91
|tip Follow the {o}Grummles{} and {o}protect them{} as they walk.
|tip They eventually walk to this location.
'|clicknpc Grummle Trail Guide##59593, Trail Packer##59527, Trail Yakker##59526
step
talk Uncle Eastwind##60416
fpath Kota Basecamp |goto Kun-Lai Summit/0 42.81,69.63
step
talk Cousin Gootfur##60596
|tip He walks around this area.
accept Shut it Down##30742 |goto Kun-Lai Summit/0 42.34,69.78
accept Gourmet Kafa##30743 |goto Kun-Lai Summit/0 42.34,69.78
step
talk Uncle Keenbean##60503
accept Kota Blend##30744 |goto Kun-Lai Summit/0 42.42,69.66
accept Trouble Brewing##30745 |goto Kun-Lai Summit/0 42.42,69.66
step
talk Brother Oilyak##59755
turnin The Burlap Trail: To Kota Basecamp##30692 |goto Kun-Lai Summit/0 42.45,68.91
stickystart "Collect_Kafakota_Berries"
stickystart "Kill_Kafa_Crazed_Mountain_Goats"
stickystart "Mark_Kafagoot_Deposits"
step
Follow the path of flags up the mountain |goto Kun-Lai Summit/0 41.66,71.41 < 20 |only if walking
kill 8 Kafa-Crazed Yeti##60564 |q 30745/1 |goto Kun-Lai Summit/0 37.32,77.82
|tip Inside and outside the cave, up on the mountain.
step
label "Collect_Kafakota_Berries"
click Kafa'kota Bush##211454+
|tip They look like {o}small bushes with red berries{}.
|tip All over the mountain. |notinsticky
click Kafa'kota Berries##211480+
|tip They look like {o}small piles of red berries{}.
|tip Inside the cave, up on the mountain. |notinsticky
collect 100 Kafa'kota Berry##81054 |q 30744/1 |goto Kun-Lai Summit/0 37.32,77.82
step
_Click the Complete Quest Box:_
turnin Kota Blend##30744
accept A Fair Trade##30746
step
label "Kill_Kafa_Crazed_Mountain_Goats"
Leave the cave |goto Kun-Lai Summit/0 37.32,77.82 < 15 |walk |only if subzone("Kota Peak") and indoors()
kill 12 Kafa-Crazed Mountain Goat##60493 |q 30742/1 |goto Kun-Lai Summit/0 38.47,78.31
|tip All over the mountain. |notinsticky
step
label "Mark_Kafagoot_Deposits"
click Kafa'goot "Deposit"##211456+
|tip They look like {o}small piles of poop{}.
|tip All over the mountain. |notinsticky
Mark #15# Kafa'goot "Deposits" |q 30743/1 |goto Kun-Lai Summit/0 38.47,78.31
step
talk Nephew Burrberry##60679
|tip Inside the small cave.
|tip {o}Higher up on the mountain{}.
turnin A Fair Trade##30746 |goto Kun-Lai Summit/0 36.93,76.22
step
Watch the dialogue
|tip Inside the small cave.
Ride with Kota Kon |invehicle |goto Kun-Lai Summit/0 36.93,76.22 |q 30742
step
Return to Kota Basecamp |outvehicle |goto Kun-Lai Summit/0 42.68,70.09 |q 30742 |notravel
step
talk Uncle Keenbean##60503
turnin Trouble Brewing##30745 |goto Kun-Lai Summit/0 42.53,69.43
step
talk Nephew Burrberry##60679
accept The Burlap Grind##30747 |goto Kun-Lai Summit/0 42.52,69.34
step
talk Cousin Gootfur##60596
turnin Shut it Down##30742 |goto Kun-Lai Summit/0 42.46,69.35
turnin Gourmet Kafa##30743 |goto Kun-Lai Summit/0 42.46,69.35
step
talk Kota Kon##60587
Select _"<Unscrew the flask and offer it to her.>"_ |gossip 126162
Ride with Kota Kon |invehicle |goto Kun-Lai Summit/0 42.62,69.16 |q 30747
step
kill Broketooth Ravager##60743, Silverback Smasher##60749, Ookin Shaman##60752, Ookin Marauder##60753, Silverback Piker##60746, Broketooth Leaper##60742
|tip They look like {o}monkeys{}.
Slay #100# Burlap Trail Hozens |q 30747/1 |goto Kun-Lai Summit/0 48.80,68.13
If Kota Kon dies, you can get her again at [42.62,69.16]
step
Stop Riding with Kota Kon |outvehicle |q 30747
|tip {o}Get to a safe place first{}.
|tip Click the arrow on your action bar.
step
talk Nephew Burrberry##60679
turnin The Burlap Grind##30747 |goto Kun-Lai Summit/0 42.52,69.34
step
talk Sunwalker Dezco##64853
Select _"There's only one way to find out..."_ |gossip 129782
Speak with Dezco at the Gate of the August Celestials |q 31511/1 |goto Kun-Lai Summit/0 56.18,91.56
step
talk Zhi the Harmonious##59905
turnin A Witness to History##31511 |goto Vale of Eternal Blossoms/0 56.84,43.37
step
talk Sun Tenderheart##58468
accept The Shrine of Two Moons##30649 |goto Vale of Eternal Blossoms/0 56.74,42.63
step
Run up the ramp |goto Vale of Eternal Blossoms/0 75.36,29.71 < 15  |only if walking
talk Jaluu the Generous##59908
Select _"Have you seen anything suspicious?"_ |gossip 134508
Speak to Jaluu the Generous |q 30649/1 |goto Vale of Eternal Blossoms/0 74.15,42.61
step
talk Madam Vee Luo##62996
|tip {o}Up on the platform{}.
|tip Inside the building, {o}on the ground floor{}.
Select _"What can I find here in the city?"_ |gossip 129860
Speak to Madam Vee Luo |q 30649/3 |goto Shrine of Two Moons/1 68.44,47.64
step
talk Tania Summerbreeze##61122
|tip Up on the platform.
fpath Shrine of Two Moons |goto Vale of Eternal Blossoms/0 62.85,21.79
step
talk Mokimo the Strong##59959
|tip Up on the platform.
Select _"How are the refugees settling in?"_ |gossip 126096
Speak to Mokimo the Strong |q 30649/2 |goto Vale of Eternal Blossoms/0 61.25,22.61
step
talk Elder Liao##63996
|tip Inside the buiding, {o}beneath the platform{}.
Select _"What is this place?"_ |gossip 129858
Speak to Elder Liao |q 30649/4 |goto Vale of Eternal Blossoms/0 62.03,20.59
step
talk Weng the Merciful##64007
|tip Inside the buiding, {o}beneath the platform{}.
turnin The Shrine of Two Moons##30649 |goto Vale of Eternal Blossoms/0 63.19,22.31
step
talk Shado-Master Chong##60161
|tip Inside the building.
|tip {o}Click the red doors{} to enter the building.
turnin The Shado-Pan##31453 |goto Kun-Lai Summit/0 44.48,89.93
accept Turnabout##30670 |goto Kun-Lai Summit/0 44.48,89.93
accept The Defense of Shado-Pan Fallback##30665 |goto Kun-Lai Summit/0 44.48,89.93
step
talk Kite Master Ni##61473
|tip Outside the building, {o}up on the wall{}.
|tip Run up the stairs inside the building to find her.
fpath Shado-Pan Fallback |goto Kun-Lai Summit/0 43.91,89.54
stickystart "Collect_Blind_Rage_Essences"
stickystart "Slay_Sha_Infested_Yaungols"
step
talk Sya Zhong##60178
|tip Inside the building.
accept Holed Up##30682 |goto Kun-Lai Summit/0 42.93,88.31
step
Rescue Sya Zhong |q 30682/4 |goto Kun-Lai Summit/0 42.93,88.31
step
talk Ya Firebough##60189
|tip Inside the building.
Select _"...That's enough. Let's go."_ |gossip 126136
Rescue Ya Firebough |q 30682/2 |goto Kun-Lai Summit/0 41.04,86.96
step
talk Old Lady Fung##60190
|tip Inside the building.
Select _"Yes... why don't you "escort" me out of here."_ |gossip 126137
Rescue Old Lady Fung |q 30682/3 |goto Kun-Lai Summit/0 42.84,85.70
step
talk Jin Warmkeg##60187
|tip Inside the building.
Select _"Let's get out of here."_ |gossip 126135
Rescue Jin Warmkeg |q 30682/1 |goto Kun-Lai Summit/0 43.87,86.17
step
label "Collect_Blind_Rage_Essences"
kill Blind Rage##61224+
|tip They look like {o}shadow aliens{}.
collect 5 Blind Rage Essence##81713 |q 30670/1 |goto Kun-Lai Summit/0 43.31,87.02
step
label "Slay_Sha_Infested_Yaungols"
kill Sha-Infested Yaungol##60164, Sha-Infested Yaungol##68241
|tip They look like {o}grey tauren{}.
Slay #15# Sha-Infested Yaungols |q 30665/1 |goto Kun-Lai Summit/0 44.82,87.44
step
talk Shado-Master Chong##60161
|tip Inside the building.
turnin Turnabout##30670 |goto Kun-Lai Summit/0 44.48,89.93
turnin The Defense of Shado-Pan Fallback##30665 |goto Kun-Lai Summit/0 44.48,89.93
turnin Holed Up##30682 |goto Kun-Lai Summit/0 44.48,89.93
accept Unmasking the Yaungol##30690 |goto Kun-Lai Summit/0 44.48,89.93
step
use the Blinding Rage Trap##81741
|tip {o}Lure Kobai into it{} after you use it.
|tip He walks around this area.
|tip Use the {o}Steal Mask{} button ability on {o}Kobai{} after you {o}lure him into the trap{}.
Lure Kobai into the Trap and Steal His Mask |q 30690/1 |goto Kun-Lai Summit/0 45.51,86.32
|tip You will be {o}attacked{}.
'|clicknpc Kobai##61303
step
kill Malevolent Fury##61333 |q 30690/2 |goto Kun-Lai Summit/0 45.51,86.32
step
talk Shado-Master Chong##60161
|tip Inside the building.
turnin Unmasking the Yaungol##30690 |goto Kun-Lai Summit/0 44.48,89.93
accept To Winter's Blossom##30699 |goto Kun-Lai Summit/0 44.48,89.93
step
talk Lin Silentstrike##61816
turnin To Winter's Blossom##30699 |goto Kun-Lai Summit/0 34.95,59.40
accept Honor, Even in Death##30723 |goto Kun-Lai Summit/0 34.95,59.40
step
talk Ban Bearheart##61819
accept A Line Unbroken##30715 |goto Kun-Lai Summit/0 35.12,59.65
step
talk Kite Master Len##61512
fpath Winter's Blossom |goto Kun-Lai Summit/0 34.54,59.12
stickystart "Kill_Kun_Lai_Corpsepickers"
step
clicknpc Shado-Master Zhiyao##61808
Release Shado-Master Zhiyao from His Oath |q 30715/1 |goto Kun-Lai Summit/0 30.34,60.05
step
clicknpc Liu of the Thousand Blows##61806
Release Liu of the Thousand Blows from His Oath |q 30715/2 |goto Kun-Lai Summit/0 30.18,62.47
step
clicknpc Shiya Boldblade##61810
Release Shiya Boldblade from Her Oath |q 30715/3 |goto Kun-Lai Summit/0 29.97,64.44
step
label "Kill_Kun_Lai_Corpsepickers"
kill 12 Kun-Lai Corpsepicker##61843 |q 30723/1 |goto Kun-Lai Summit/0 30.85,62.22
|tip They look like {o}birds on the ground and flying{}.
step
talk Ban Bearheart##61819
turnin A Line Unbroken##30715 |goto Kun-Lai Summit/0 35.12,59.65
step
talk Lin Silentstrike##61816
turnin Honor, Even in Death##30723 |goto Kun-Lai Summit/0 34.95,59.30
accept To the Wall!##30724 |goto Kun-Lai Summit/0 34.95,59.30
step
talk Kite Master Len##61512
Select _"I need a kite to get up to the wall!"_ |gossip 126264
Speak to Kite-Master Len to Take a Kite to the Wall |q 30724/1 |goto Kun-Lai Summit/0 34.54,59.12
step
Begin Traveling to Serpent's Spine |invehicle |goto Kun-Lai Summit/0 34.54,59.12 |q 30724
step
Travel to Serpent's Spine |outvehicle |goto Kun-Lai Summit/0 29.30,62.32 |q 30724 |notravel
step
talk Suna Silentstrike##61454
|tip Inside the building.
turnin To the Wall!##30724 |goto Kun-Lai Summit/0 29.30,62.29
accept Off the Wall!##30750 |goto Kun-Lai Summit/0 29.30,62.29
step
talk Lao-Chin the Iron Belly##61820
|tip Inside the building.
accept A Terrible Sacrifice##30751 |goto Kun-Lai Summit/0 29.24,62.30
stickystart "Slay_Veteran_Archers_Or_Fire_Warriors"
step
click Yaungol Oil Barrel##212003+
|tip They look like l{o}arge blue and brown pots{}.
collect 6 Yaungol Oil Barrel##82799 |q 30751/1 |goto Kun-Lai Summit/0 27.53,60.70
step
label "Slay_Veteran_Archers_Or_Fire_Warriors"
kill Osul Fire-Warrior##63576, Osul Veteran Archer##61886
|tip They look like {o}tauren{}.
Slay #12# Veteran Archers or Fire-Warriors |q 30750/1 |goto Kun-Lai Summit/0 27.53,60.70
step
talk Lao-Chin the Iron Belly##61820
|tip Inside the building.
turnin A Terrible Sacrifice##30751 |goto Kun-Lai Summit/0 29.24,62.30
step
talk Suna Silentstrike##61454
|tip Inside the building.
turnin Off the Wall!##30750 |goto Kun-Lai Summit/0 29.30,62.29
accept Lao-Chin's Gambit##30994 |goto Kun-Lai Summit/0 29.30,62.29
step
talk Suna Silentstrike##61454
|tip Inside the building.
Select _"Alright, I'm ready to get back to the front."_ |gossip 126267
Talk with Suna Silentstrike to Take a Kite to Lao-Chin |q 30994/1 |goto Kun-Lai Summit/0 29.30,62.29
step
Begin Returning to Winter's Blossom |invehicle |goto Kun-Lai Summit/0 29.30,62.29 |q 30994
step
Return to Winter's Blossom |outvehicle |goto Kun-Lai Summit/0 31.85,60.18 |q 30994 |notravel
step
talk Lao-Chin the Iron Belly##61820
turnin Lao-Chin's Gambit##30994 |goto Kun-Lai Summit/0 31.82,60.11
accept Do a Barrel Roll!##30991 |goto Kun-Lai Summit/0 31.82,60.11
step
clicknpc Keg Bomb##60553
|tip Use the ability {o}near enemies as you roll down the hill{}.
|tip Do this {o}repeatedly{}.
kill 50 Osul Invader##60455 |q 30991/1 |goto Kun-Lai Summit/0 32.06,60.58
kill 4 Osul Treelauncher##60483 |q 30991/2 |goto Kun-Lai Summit/0 32.06,60.58
step
talk Lao-Chin the Iron Belly##61820
turnin Do a Barrel Roll!##30991 |goto Kun-Lai Summit/0 31.82,60.11
accept Finish This!##30992 |goto Kun-Lai Summit/0 31.82,60.11
step
kill Gong Da##62165
|tip He runs around this area.
Complete the Battle for The Ox Gate |q 30992/1 |goto Kun-Lai Summit/0 31.19,61.76
step
talk Ban Bearheart##61819
turnin Finish This!##30992 |goto Kun-Lai Summit/0 31.29,61.50
accept Where are My Reinforcements?##30993 |goto Kun-Lai Summit/0 31.29,61.50
step
talk Ban Bearheart##61819
Select _"I'm ready to leave. Let's go!"_ |gossip 126265
Tell Ban You are Ready to Leave |q 30993/1 |goto Kun-Lai Summit/0 31.29,61.50
step
talk Ban Bearheart##61819
Select _"Alright, let's go up to the monastery."_ |gossip 126266
Ride Ban's Balloon to the Shado-Pan Monastery |q 30993/2 |goto Kun-Lai Summit/0 33.96,58.61
step
talk Ban Bearheart##61819
turnin Where are My Reinforcements?##30993 |goto Kun-Lai Summit/0 35.31,49.55
accept Unbelievable!##30752 |goto Kun-Lai Summit/0 35.31,49.55
step
talk Shado-Pan Sentinel##62220
Select _"I am here with Ban Bearheart, and we demand an audience with Taran Zhu!"_ |gossip 126269
Watch the dialogue
kill Shado-Pan Sentinel##62220
Gain Access to the Monastery |q 30752/1 |goto Kun-Lai Summit/0 36.69,47.72
step
_Next to you:_
talk Ban Bearheart##62227
turnin Unbelievable!##30752
]])
QuestCore:RegisterGuide("Leveling Guides\\Pandaria (85-90)\\Townlong Steppes (88-89)",{
expansion="mists",
image="TownlongSteppes",
next="Leveling Guides\\Pandaria (85-90)\\Dread Wastes (89-90)",
startlevel=88,
mopready=true
},[[
step
talk Taran Zhu##60688
turnin Beyond the Wall##31695 |goto Townlong Steppes/0 71.15,56.69 |only if haveq(31695) or completedq(31695)
accept A Foot in the Door##30814 |goto Townlong Steppes/0 71.15,56.69
step
talk Kite Master Wong##62901
fpath Longying Outpost |goto Townlong Steppes/0 71.08,57.31
step
talk Saito the Sleeping Shadow##62873
|tip Inside the building.
home Longying Outpost |goto Townlong Steppes/0 71.07,57.92 |q 30814 |future
step
kill 8 Osul Charger##60713 |q 30814/1 |goto Townlong Steppes/0 70.00,53.66
|tip They look like {o}tauren{}.
step
talk Taran Zhu##60688
turnin A Foot in the Door##30814 |goto Townlong Steppes/0 71.15,56.69
accept First Assault##30769 |goto Townlong Steppes/0 71.15,56.69
accept Running Rampant##30770 |goto Townlong Steppes/0 71.15,56.69
accept Perfect Pitch##30771 |goto Townlong Steppes/0 71.15,56.69
stickystart "Kill_Osul_Sharphorns"
stickystart "Collect_Dark_Pitches"
step
clicknpc Long-Haired Yak##60669+
|tip They look like {o}brown bisons{}.
clicknpc Steppebeast##60739+
|tip They look like {o}blue dinosaurs{}.
Free #8# Yaks or Steppebeasts |q 30770/1 |goto Townlong Steppes/0 68.64,52.01
step
label "Kill_Osul_Sharphorns"
kill 6 Osul Sharphorn##60647 |q 30769/1 |goto Townlong Steppes/0 68.25,53.38
|tip They look like {o}tauren{}.
step
label "Collect_Dark_Pitches"
click Pitch Pot##211507+
|tip They look like {o}brown and blue pots{}.
collect 8 Dark Pitch##81174 |q 30771/1 |goto Townlong Steppes/0 68.25,53.38
step
talk Suna Silentstrike##60684
turnin First Assault##30769 |goto Townlong Steppes/0 67.25,52.22
step
talk Ban Bearheart##60687
turnin Running Rampant##30770 |goto Townlong Steppes/0 67.20,52.27
turnin Perfect Pitch##30771 |goto Townlong Steppes/0 67.20,52.27
accept Pitching In##30773 |goto Townlong Steppes/0 67.20,52.27
step
talk Suna Silentstrike##60684
accept Seeing Red##30772 |goto Townlong Steppes/0 67.25,52.22
accept Ranger Rescue##30774 |goto Townlong Steppes/0 67.25,52.22
stickystart "Destroy_Osul_Ballistas"
stickystart "Rescue_Longying_Rangers"
stickystart "Slay_Osul_Marauders"
step
talk Katak the Defeated##60735
accept The Exile##30775 |goto Townlong Steppes/0 67.00,51.41
step
kill Battat##60728 |q 30775/1 |goto Townlong Steppes/0 65.70,51.65
|tip Inside the building.
step
kill Urang##60725 |q 30775/2 |goto Townlong Steppes/0 64.79,50.13
|tip Inside the building.
step
talk Lin Silentstrike##60899
Select _"Examine the body."_ |gossip 126172
Free Lin Silentstrike |q 30774/2 |goto Townlong Steppes/0 66.59,49.16
step
kill Ku-Tong##60726 |q 30775/3 |goto Townlong Steppes/0 66.96,48.24
|tip Inside the building.
step
label "Destroy_Osul_Ballistas"
use Ban's Explosives##81193
|tip Use it on {o}Osul Ballistas{}.
|tip They look like {o}smaller wooden machines with wheels{}.
Destroy #6# Osul Ballistas |q 30773/1 |goto Townlong Steppes/0 66.87,49.81
step
label "Rescue_Longying_Rangers"
kill Osul Spitfire##66289, Osul Marauder##60692
|tip They look like {o}tauren{}.
collect Stone Key##81178+ |n
click Drywood Cage+
|tip They look like {o}small brown wooden buildings{}.
Rescue #4# Longying Rangers |q 30774/1 |goto Townlong Steppes/0 66.87,49.81
step
label "Slay_Osul_Marauders"
kill Osul Spitfire##66289, Osul Marauder##60692
|tip They look like {o}tauren{}.
Slay #8# Osul Marauders |q 30772/1 |goto Townlong Steppes/0 66.87,49.81
step
talk Katak the Defeated##60735
turnin The Exile##30775 |goto Townlong Steppes/0 67.00,51.41
step
talk Ban Bearheart##60687
turnin Pitching In##30773 |goto Townlong Steppes/0 67.20,52.27
turnin Seeing Red##30772 |goto Townlong Steppes/0 67.20,52.27
turnin Ranger Rescue##30774 |goto Townlong Steppes/0 67.20,52.27
step
talk Suna Silentstrike##60684
accept Jung Duk##30776 |goto Townlong Steppes/0 67.25,52.22
step
click Ceremonial Pile##211524
kill Jung Duk##60801 |q 30776/1 |goto Townlong Steppes/0 66.66,51.01
step
talk Ban Bearheart##60687
turnin Jung Duk##30776 |goto Townlong Steppes/0 71.02,56.56
accept In Search of Suna##30777 |goto Townlong Steppes/0 71.02,56.56
step
clicknpc Shado-Pan Caravan##61205
Begin Traveling to Hatred's Vice |invehicle |goto Townlong Steppes/0 70.70,56.53 |q 30777
step
Watch the dialogue
Travel to Hatred's Vice |outvehicle |goto Townlong Steppes/0 82.44,73.51 |q 30777 |notravel
step
talk Ban Bearheart##61261
turnin In Search of Suna##30777 |goto Townlong Steppes/0 82.68,73.02
accept Dust to Dust##30778 |goto Townlong Steppes/0 82.68,73.02
accept Slaying the Scavengers##30779 |goto Townlong Steppes/0 82.68,73.02
step
talk Yalia Sagewhisper##60864
accept Totemic Research##30780 |goto Townlong Steppes/0 82.59,73.02
step
talk Xiao Tu##60903
accept Last Toll of the Yaungol##30781 |goto Townlong Steppes/0 82.71,73.17
stickystart "Collect_Palewind_Totems"
stickystart "Kill_Ashfang_Hyenas"
stickystart "Burn_Palewind_Villagers"
step
Watch the dialogue
Examine the Southern Smoke Trail |q 30781/3 |goto Townlong Steppes/0 83.51,78.49
If Xiao Tu isn't next to you, get him again at [82.70,73.17]
'|clicknpc Xiao Tu##60903
step
Watch the dialogue
Examine the Eastern Smoke Trail |q 30781/1 |goto Townlong Steppes/0 84.83,71.50
If Xiao Tu isn't next to you, get him again at [82.70,73.17]
'|clicknpc Xiao Tu##60903
step
Watch the dialogue
Examine the Northwestern Smoke Trail |q 30781/4 |goto Townlong Steppes/0 84.02,70.89
If Xiao Tu isn't next to you, get him again at [82.70,73.17]
'|clicknpc Xiao Tu##60903
step
Watch the dialogue
Examine the Western Smoke Trail |q 30781/2 |goto Townlong Steppes/0 81.29,72.13
If Xiao Tu isn't next to you, get him again at [82.70,73.17]
'|clicknpc Xiao Tu##60903
step
label "Collect_Palewind_Totems"
click Palewind Totem##211566+
|tip They look like {o}short wooden totem poles{}.
collect 9 Palewind Totem##81355 |q 30780/1 |goto Townlong Steppes/0 83.03,74.05
step
label "Kill_Ashfang_Hyenas"
kill 12 Ashfang Hyena##60932 |q 30779/1 |goto Townlong Steppes/0 83.03,74.05
step
label "Burn_Palewind_Villagers"
use the Shado-Pan Torch##81356
|tip Use it on {o}Palewind Villagers{}.
|tip They look like {o}tauren laying on the ground{}.
Burn #20# Palewind Villagers |q 30778/1 |goto Townlong Steppes/0 83.03,74.05
'|clicknpc Palewind Villager##60925
step
talk Yalia Sagewhisper##60864
turnin Totemic Research##30780 |goto Townlong Steppes/0 82.59,73.02
step
talk Ban Bearheart##61261
turnin Dust to Dust##30778 |goto Townlong Steppes/0 82.68,73.02
turnin Slaying the Scavengers##30779 |goto Townlong Steppes/0 82.68,73.02
turnin Last Toll of the Yaungol##30781 |goto Townlong Steppes/0 82.68,73.02
step
talk Yalia Sagewhisper##60864
accept What Lies Beneath##30827 |goto Townlong Steppes/0 82.59,73.02
step
talk Yalia Sagewhisper##60864
Select _"I am ready to begin the ritual."_ |gossip 126177
Speak to Yalia Sagewhisper |q 30827/1 |goto Townlong Steppes/0 82.59,73.02
step
Watch the dialogue
clicknpc Totem of Tranquility##60990
Activate the Totem of Tranquility |q 30827/3 |goto Townlong Steppes/0 82.41,73.56
step
clicknpc Totem of Serenity##60991
Activate the Totem of Serenity |q 30827/4 |goto Townlong Steppes/0 82.69,73.63
step
clicknpc Totem of Kindness##60933
Activate the Totem of Kindness |q 30827/2 |goto Townlong Steppes/0 82.58,73.25
step
Watch the dialogue
Complete the Ritual |q 30827/5 |goto Townlong Steppes/0 82.58,73.25
step
talk Yalia Sagewhisper##60864
turnin What Lies Beneath##30827 |goto Townlong Steppes/0 82.59,73.02
accept Hatred Becomes Us##30783 |goto Townlong Steppes/0 82.59,73.02
step
talk Ban Bearheart##61261
accept Spiteful Spirits##30782 |goto Townlong Steppes/0 82.68,73.02
stickystart "Kill_Spiteful_Spirits"
step
use the Totem of Harmony##81417
|tip Use it on {o}Crazed Shado-Pan Rangers{}.
|tip They looke like {o}pandas in black armor{}.
|tip {o}Stand in the Pools of Harmony{} that appear to {o}reduce the Hatred bar{} at the bottom of the screen.
kill Seething Hatred##61054+
Purify #8# Crazed Shado-Pan Rangers |q 30783/1 |goto Townlong Steppes/0 83.29,73.65
'|clicknpc Crazed Shado-Pan Ranger##61050
step
label "Kill_Spiteful_Spirits"
use the Totem of Harmony##81417 |notinsticky
|tip Use it on the ground as you walk around. |notinsticky
|tip {o}Stand in the Pools of Harmony{} that appear to {o}reduce the Hatred bar{} at the bottom of the screen. |notinsticky
kill 10 Spiteful Spirit##63839 |q 30782/1 |goto Townlong Steppes/0 83.29,73.65
|tip They look like {o}tauren ghosts{}.
step
talk Ban Bearheart##61261
turnin Spiteful Spirits##30782 |goto Townlong Steppes/0 82.68,73.02
step
talk Yalia Sagewhisper##60864
turnin Hatred Becomes Us##30783 |goto Townlong Steppes/0 82.59,73.02
step
talk Ban Bearheart##61261
accept The Point of No Return##30784 |goto Townlong Steppes/0 82.68,73.02
step
use the Totem of Harmony##81430
|tip Use it on the ground.
|tip {o}Stand in the circles{} on the ground to {o}gain a buff{}.
kill Suna Silentstrike##61055
|tip Inside the building.
|tip She will {o}eventually surrender{}.
Find Suna Silentstrike |q 30784/1 |goto Townlong Steppes/0 84.08,70.54
step
talk Ban Bearheart##61261
turnin The Point of No Return##30784 |goto Townlong Steppes/0 82.68,73.02
accept Gao-Ran Battlefront##30785 |goto Townlong Steppes/0 82.68,73.02
step
talk Yalia Sagewhisper##60864
accept A Delicate Balance##31894 |goto Townlong Steppes/0 82.59,73.02
step
talk Orbiss##60857
turnin A Delicate Balance##31894 |goto Townlong Steppes/0 67.94,67.67
accept A Spear Through My Side, A Chain Through My Soul##30786 |goto Townlong Steppes/0 67.94,67.67
step
kill Dmong Naruuk##60683 |q 30786/1 |goto Townlong Steppes/0 68.42,71.46
|tip Up on the cliff.
step
talk Orbiss##60857
turnin A Spear Through My Side, A Chain Through My Soul##30786 |goto Townlong Steppes/0 67.94,67.67
accept The Torches##30787 |goto Townlong Steppes/0 67.94,67.67
step
kill Osul Mist-Shaman##60697+
|tip Kill the ones {o}next to Mist-Shaman's Torches{}.
|tip They look like {o}poles with fire at the top of them{}.
clicknpc Mist-Shaman's Torch##60698+
collect 6 Mist-Shaman's Torch##81176 |q 30787/1 |goto Townlong Steppes/0 65.81,68.87
step
talk Orbiss##60857
turnin The Torches##30787 |goto Townlong Steppes/0 67.94,67.67
accept Golgoss##30788 |goto Townlong Steppes/0 67.94,67.67
accept Arconiss##30789 |goto Townlong Steppes/0 67.94,67.67
step
click Peat Clump##211513
Kill the enemies that attack in waves
Summon Golgoss |q 30788/1 |goto Townlong Steppes/0 70.51,69.65
step
click Peat Mound##211515
Kill the enemies that attack in waves
Summon Arconiss |q 30789/1 |goto Townlong Steppes/0 71.49,72.29
step
talk Orbiss##60857
turnin Golgoss##30788 |goto Townlong Steppes/0 67.94,67.67
turnin Arconiss##30789 |goto Townlong Steppes/0 67.94,67.67
accept The Death of Me##30815 |goto Townlong Steppes/0 67.94,67.67
step
talk Orbiss##60857
Select _"<Remove the spear from Orbiss' side.>"_ |gossip 126170
Remove the Spear from Orbiss |q 30815/1 |goto Townlong Steppes/0 67.94,67.67
step
talk Orbiss##60622
turnin The Death of Me##30815 |goto Townlong Steppes/0 67.94,67.67
accept Golgoss Hungers##30790 |goto Townlong Steppes/0 67.94,67.67
accept Arconiss Thirsts##30791 |goto Townlong Steppes/0 67.94,67.67
accept Orbiss Fades##30792 |goto Townlong Steppes/0 67.94,67.67
stickystart "Collect_Gushing_Mist"
stickystart "Collect_Snarlvines"
step
kill Swamp Rodent##60733+
|tip They look like {o}beavers{}.
collect 4 Clotted Rodent's Blood##81260 |q 30791/1 |goto Townlong Steppes/0 72.85,71.13
step
label "Collect_Gushing_Mist"
Collect #8# Gushing Mist |q 30792/1 |goto Townlong Steppes/0 72.85,71.13
|tip Stand in the {o}small clouds of steam{}.
step
label "Collect_Snarlvines"
click Snarlvine##211518+
|tip They look like {o}small bushes with purple flowers on them{}.
collect 10 Snarlvine##81250 |q 30790/1 |goto Townlong Steppes/0 72.85,71.13
step
talk Orbiss##60622
turnin Golgoss Hungers##30790 |goto Townlong Steppes/0 67.94,67.67
turnin Arconiss Thirsts##30791 |goto Townlong Steppes/0 67.94,67.67
turnin Orbiss Fades##30792 |goto Townlong Steppes/0 67.94,67.67
accept Mists' Opportunity##30793 |goto Townlong Steppes/0 67.94,67.67
step
kill Jahesh of Osul##60802 |q 30793/1 |goto Townlong Steppes/0 76.68,72.89
step
talk Orbiss##60622
turnin Mists' Opportunity##30793 |goto Townlong Steppes/0 76.19,72.91
step
talk Kite Master Nenshi##62903
fpath Gao-Ran Battlefront |goto Townlong Steppes/0 74.39,81.46
step
talk Taran Zhu##61066
turnin Gao-Ran Battlefront##30785 |goto Townlong Steppes/0 76.42,82.43
accept Behind the Blockade##30884 |goto Townlong Steppes/0 76.42,82.43
step
talk Septi the Herbalist##61470
accept Treatment for the Troops##30891 |goto Townlong Steppes/0 75.86,83.14
stickystart "Collect_Violet_Citrons"
step
talk Taoshi##61469
turnin Behind the Blockade##30884 |goto Townlong Steppes/0 76.94,78.79
accept Unwelcome Intruders##30887 |goto Townlong Steppes/0 76.94,78.79
stickystart "Kill_Krikthik_Deep_Scouts"
step
label "Collect_Violet_Citrons"
click Violet Citron##211721+
|tip They look like {o}bushes with blue flowers on them{}.
collect 10 Violet Citron##82342 |q 30891/1 |goto Townlong Steppes/0 77.81,77.22
step
label "Kill_Krikthik_Deep_Scouts"
kill 12 Krik'thik Deep-Scout##61374 |q 30887/1 |goto Townlong Steppes/0 77.81,77.22
|tip They look like {o}insect people{}.
step
talk Septi the Herbalist##61470
turnin Treatment for the Troops##30891 |goto Townlong Steppes/0 75.86,83.14
step
talk Taoshi##61468
turnin Unwelcome Intruders##30887 |goto Townlong Steppes/0 79.46,84.46
accept Breach in the Defenses##30888 |goto Townlong Steppes/0 79.46,84.46
accept The Restless Watch##30890 |goto Townlong Steppes/0 79.46,84.46
step
talk Mao the Lookout##61467
accept Trap Setting##30889 |goto Townlong Steppes/0 79.38,84.44
stickystart "Rearm_Shadow_Pan_Spike_Traps"
stickystart "Kill_Krikthik_Scentlayers"
step
talk Scout Jai-gan##61397
Select _"I have orders for you to return to the battlefront."_ |gossip 126219
Deliver Orders to Scout Jai-gan |q 30890/4 |goto Townlong Steppes/0 79.01,90.16
step
talk Scout Ying##61396
Select _"I have orders for you to return to the battlefront."_ |gossip 126220
Deliver Orders to Scout Ying |q 30890/3 |goto Townlong Steppes/0 82.52,89.55
step
talk Scout Long##61395
Select _"I have orders for you to return to the battlefront."_ |gossip 126221
Deliver Orders to Scout Long |q 30890/2 |goto Townlong Steppes/0 81.27,86.18
step
talk Scout Wei-Chin##61378
Select _"I have orders for you to return to the battlefront."_ |gossip 126205
Deliver Orders to Scout Wei-Chin |q 30890/1 |goto Townlong Steppes/0 82.21,84.12
step
label "Rearm_Shadow_Pan_Spike_Traps"
clicknpc Shado-Pan Spike Trap##61426+
|tip They look like {o}spiked grey metal balls{}.
Rearm #8# Shado-Pan Spike Traps |q 30889/1 |goto Townlong Steppes/0 80.79,86.06
step
label "Kill_Krikthik_Scentlayers"
use the Shado-Pan Flare##81925
|tip Use it {o}near the moving trails of yellow smoke{} on the ground.
kill 10 Krik'thik Scentlayer##61373 |q 30888/1 |goto Townlong Steppes/0 80.79,86.06
step
talk Mao the Lookout##61467
turnin Trap Setting##30889 |goto Townlong Steppes/0 79.38,84.44
step
talk Taoshi##61468
turnin Breach in the Defenses##30888 |goto Townlong Steppes/0 79.46,84.46
turnin The Restless Watch##30890 |goto Townlong Steppes/0 79.46,84.46
accept Returning from the Pass##30960 |goto Townlong Steppes/0 79.46,84.46
step
talk Taran Zhu##61066
turnin Returning from the Pass##30960 |goto Townlong Steppes/0 76.42,82.43
accept The Endless Swarm##30893 |goto Townlong Steppes/0 76.42,82.43
step
talk Septi the Herbalist##61470
accept Back on Their Feet##30892 |goto Townlong Steppes/0 75.86,83.14
accept Rummaging Through the Remains##30894 |goto Townlong Steppes/0 75.86,83.14
stickystart "Slay_Krikthik_Attackers_And_Collect_Krikthik_Limbs"
step
use the Citron-Infused Bandages##82787
|tip Use them on {o}Injured Gao-Ran Blackguards{}.
|tip They look like {o}pandaren laying on the ground{}.
Heal #8# Injured Gao-Ran Blackguards |q 30892/1 |goto Townlong Steppes/0 74.20,86.57
'|clicknpc Injured Gao-Ran Blackguard##61692
step
label "Slay_Krikthik_Attackers_And_Collect_Krikthik_Limbs"
kill Krik'thik Limbpincer##61181, Krik'thik Locust-Guard##61365
|tip They look like {o}insect people{}.
Slay #12# Krik'thik Attackers |q 30893/1 |goto Townlong Steppes/0 74.20,86.57
click Krik'thik Limb##214820+
|tip They look like {o}insect arms and legs{} that {o}appear on the ground{} after you {o}kill Krik'thik enemies{}.
collect 22 Krik'thik Limb##82722 |q 30894/1 |goto Townlong Steppes/0 74.20,86.57
step
talk Septi the Herbalist##61470
turnin Back on Their Feet##30892 |goto Townlong Steppes/0 75.86,83.14
turnin Rummaging Through the Remains##30894 |goto Townlong Steppes/0 75.86,83.14
step
talk Taran Zhu##61066
turnin The Endless Swarm##30893 |goto Townlong Steppes/0 76.42,82.43
accept Improvised Ammunition##30895 |goto Townlong Steppes/0 76.42,82.43
step
talk Initiate Chao##61880
accept In the Wrong Hands##30897 |goto Townlong Steppes/0 70.34,86.67
step
talk Initiate Feng##61881
accept Thieves and Troublemakers##30896 |goto Townlong Steppes/0 70.45,86.37
stickystart "Slay_Agitated_Root_Sprites"
stickystart "Collect_Volatile_Dread_Orbs"
step
kill Needlebottom##61818
collect Initiate Chao's Sword##82783 |q 30897/1 |goto Townlong Steppes/0 63.07,87.68
step
label "Slay_Agitated_Root_Sprites"
kill Agitated Nettleskin##61811, Agitated Seedstealer##61302
|tip They look like {o}sprites{}.
Slay #10# Agitated Root Sprites |q 30896/1 |goto Townlong Steppes/0 66.93,87.01
step
label "Collect_Volatile_Dread_Orbs"
kill kill Agitated Nettleskin##61811, Agitated Seedstealer##61302 |notinsticky
|tip They look like {o}sprites{}. |notinsticky
click Dread Orb##211873+
|tip They look like {o}smaller orange globes on the tree roots{} on the ground.
collect 16 Volatile Dread Orb##82723 |q 30895/1 |goto Townlong Steppes/0 66.93,87.01
step
talk Initiate Feng##61881
|tip Up on the cliff.
turnin Thieves and Troublemakers##30896 |goto Townlong Steppes/0 70.45,86.37
step
talk Initiate Chao##61880
turnin In the Wrong Hands##30897 |goto Townlong Steppes/0 70.34,86.67
step
talk Taran Zhu##61066
turnin Improvised Ammunition##30895 |goto Townlong Steppes/0 76.42,82.43
accept Cutting the Swarm##30898 |goto Townlong Steppes/0 76.42,82.43
step
clicknpc Dragon Launcher##61746
Control the Dragon Launcher |invehicle |goto Townlong Steppes/0 74.81,84.69 |q 30898
step
kill Krik'thik Drone##61960, Krik'thik Acidslinger##62014
|tip They look like {o}insect people{} on the {o}battlefield{} nearby to the {o}south{}.
Slay #50# Krik'thik Drones |q 30898/1 |goto Townlong Steppes/0 74.81,84.69
step
talk Taoshi##62444
turnin Cutting the Swarm##30898 |goto Townlong Steppes/0 74.23,85.04
accept Terror of the Dread Wastes##30900 |goto Townlong Steppes/0 74.23,85.04
step
kill Norvakess##62324 |q 30900/1 |goto Townlong Steppes/0 74.18,87.42
|tip Kill the enemies that appear when it {o}burrows in the ground{}.
step
talk Taran Zhu##61066
turnin Terror of the Dread Wastes##30900 |goto Townlong Steppes/0 76.42,82.43
accept Along the Southern Front##30901 |goto Townlong Steppes/0 76.42,82.43
step
talk Taoshi##62436
turnin Along the Southern Front##30901 |goto Townlong Steppes/0 67.32,80.85
accept Enraged By Hatred##30970 |goto Townlong Steppes/0 67.32,80.85
step
talk Initiate Pao-Me##62124
accept Taking Stock##30971 |goto Townlong Steppes/0 67.36,80.68
stickystart "Collect_Shado_Pan_Fire_Arrows"
step
kill 9 Seething Fleshripper##61299 |q 30970/1 |goto Townlong Steppes/0 66.00,82.44
|tip They look like {o}scorpions{}.
step
label "Collect_Shado_Pan_Fire_Arrows"
click Shado-Pan Fire Arrows##212136+
|tip They look like {o}bundles of arrows{}.
collect 120 Shado-Pan Fire Arrows##83024 |q 30971/1 |goto Townlong Steppes/0 66.00,82.44
step
talk Taoshi##62436
turnin Enraged By Hatred##30970 |goto Townlong Steppes/0 67.32,80.85
step
talk Initiate Pao-Me##62124
turnin Taking Stock##30971 |goto Townlong Steppes/0 67.36,80.68
accept Joining the Fight##30972 |goto Townlong Steppes/0 67.36,80.68
step
talk Lao-Chin the Iron Belly##61016
turnin Joining the Fight##30972 |goto Townlong Steppes/0 61.59,79.35
step
talk Taran Zhu##62273
accept Up In Flames##30973 |goto Townlong Steppes/0 61.64,79.32
step
clicknpc Keg Bomb##62192+
|tip They look like {o}wooden barrels{}.
|tip {o}Face enemies{} before you click them.
|tip They look like {o}insect people{}.
|tip The {o}barrels will roll into enemies{} and make them {o}weaker{}, if you aim well.
kill 10 Kor'thik Timberhusk##61355 |q 30973/1 |goto Townlong Steppes/0 59.06,80.98
step
talk Taran Zhu##62273
turnin Up In Flames##30973 |goto Townlong Steppes/0 61.64,79.32
step
talk Lao-Chin the Iron Belly##61016
accept The Taking of Dusklight Bridge##30975 |goto Townlong Steppes/0 61.59,79.35
step
click Tasty Brew##214848+
|tip They look like {o}wooden barrels{}.
|tip To {o}heal yourself{}, {o}run through the bubbles{} that appear.
kill 12 Kor'thik Bloodletter##62680 |q 30975/1 |goto Dread Wastes/0 44.87,9.87
|tip {o}Let Lao-Chin tank the enemies for you{}.
'|clicknpc Lao-Chin the Iron Belly##61016
step
kill Hulking Kor'thik Fleshrender##62686 |q 30975/2 |goto Dread Wastes/0 44.87,9.87
step
talk Taran Zhu##62736
turnin The Taking of Dusklight Bridge##30975 |goto Townlong Steppes/0 61.11,83.06
accept Joining the Hunt##30976 |goto Townlong Steppes/0 61.11,83.06
step
talk Taran Zhu##62274
turnin Joining the Hunt##30976 |goto Townlong Steppes/0 54.03,78.06
accept In Skilled Hands##30899 |goto Townlong Steppes/0 54.03,78.06
step
talk Rensai Oakhide##62278
accept Grounded Welcome##30977 |goto Townlong Steppes/0 53.93,78.12
step
talk Kite Master Li-Sen##62898
fpath Rensai's Watchpost |goto Townlong Steppes/0 54.29,79.05
stickystart "Kill_Korthik_Fleetwings"
step
talk Marksman Ye##62573
accept Choking the Skies##31032 |goto Townlong Steppes/0 51.26,83.02
stickystart "Burn_Korthik_Fleetwing_Corpses"
step
talk Hawkmaster Nurong##61020
turnin In Skilled Hands##30899 |goto Townlong Steppes/0 51.66,87.25
accept Hostile Skies##30978 |goto Townlong Steppes/0 51.66,87.25
stickystop "Kill_Korthik_Fleetwings"
stickystop "Burn_Korthik_Fleetwing_Corpses"
step
clicknpc Nurong's Cannon##62747
Control Nurong's Cannon |invehicle |goto Townlong Steppes/0 51.67,87.32 |q 30978
step
kill Kor'thik Swarmer##62300+
|tip They look like {o}insect people{o} flying across the canyon nearby.
Shoot Down #50# Korthi'thik Swarmers |q 30978/1 |goto Townlong Steppes/0 51.70,87.30
step
kill Voress'thalik##62269
|tip It looks like a {o}huge orange insect{} flying across the canyon nearby.
Shoot Down Voress'thalik |q 30978/2 |goto Townlong Steppes/0 51.70,87.30
step
Stop Controlling Nurong's Cannon |outvehicle |q 30978
|tip Click the arrow on your action bar.
step
talk Hawkmaster Nurong##61020
turnin Hostile Skies##30978 |goto Townlong Steppes/0 51.66,87.25
accept Devastation Below##30979 |goto Townlong Steppes/0 51.66,87.25
step
kill Voress'thalik##62270 |q 30979/1 |goto Townlong Steppes/0 53.77,87.39
|tip It walks around this area.
step
talk Hawkmaster Nurong##62786
turnin Devastation Below##30979 |goto Townlong Steppes/0 53.99,86.97
accept Heroes of the Shado-Pan##30980 |goto Townlong Steppes/0 53.99,86.97
stickystart "Kill_Korthik_Fleetwings"
step
label "Burn_Korthik_Fleetwing_Corpses"
kill Kor'thik Fleetwing##62128+
|tip They look like {o}insect people{}.
use the Wu Kao Torch##83768
|tip Use it {o}near their corpses{}.
Burn #10# Kor'thik Fleetwing Corpses |q 31032/1 |goto Townlong Steppes/0 51.36,84.20
step
label "Kill_Korthik_Fleetwings"
kill 12 Kor'thik Fleetwing##62128 |q 30977/1 |goto Townlong Steppes/0 51.36,84.20
|tip They look like {o}insect people{}.
step
talk Marksman Ye##62573
turnin Choking the Skies##31032 |goto Townlong Steppes/0 51.26,83.02
step
talk Rensai Oakhide##62278
turnin Grounded Welcome##30977 |goto Townlong Steppes/0 53.93,78.12
step
talk Taran Zhu##62274
turnin Heroes of the Shado-Pan##30980 |goto Townlong Steppes/0 54.06,77.87
accept Buried Beneath##31065 |goto Townlong Steppes/0 54.06,77.87
step
click Wukao Spyglass
Watch the dialogue
Look Through Taoshi's Spyglass |q 31065/1 |goto Townlong Steppes/0 53.50,77.41
step
talk Taran Zhu##62274
turnin Buried Beneath##31065 |goto Townlong Steppes/0 54.06,77.87
accept Taoshi and Korvexxis##30981 |goto Townlong Steppes/0 54.06,77.87
accept Lao-Chin and Serevex##31063 |goto Townlong Steppes/0 54.06,77.87
accept Nurong and Rothek##31064 |goto Townlong Steppes/0 54.06,77.87
step
talk Rensai Oakhide##62278
accept Thinning the Sik'thik##31687 |goto Townlong Steppes/0 53.93,78.12
accept The Search for Restless Leng##31688 |goto Townlong Steppes/0 53.93,78.12
stickystart "Search_Sikthik_Cages_And_Find_Restless_Leng"
stickystart "Slay_Sikthik_Mantids"
step
kill Korvexxis##62579 |q 30981/1 |goto Townlong Steppes/0 46.60,83.06
|tip An ally will {o}help you fight{} him.
step
kill Serevex##62580 |q 31063/1 |goto Townlong Steppes/0 45.38,77.42
|tip An ally will {o}help you fight{} him.
step
kill Rothek##62581 |q 31064/1 |goto Townlong Steppes/0 39.84,75.59
|tip An ally will {o}help you fight{} him.
step
label "Search_Sikthik_Cages_And_Find_Restless_Leng"
click Sik'thik Cage##214734+
|tip They look like {o}pointed metal structures with yellow windows{}.
Search #8# Sik'thik Cages |q 31688/1 |goto Townlong Steppes/0 43.32,77.01
Find Restless Leng |q 31688/2 |goto Townlong Steppes/0 43.32,77.01
|tip You will {o}find him{} in the {o}last one you open{}.
step
label "Slay_Sikthik_Mantids"
kill kill Sik'thik Venomspitter##62575, Sik'thik Vess-Guard##61354, Sik'thik Drone##62576
|tip They look like {o}insect people{}.
Slay #12# Sik'thik Mantids |q 31687/1 |goto Townlong Steppes/0 43.32,77.01
step
talk Taran Zhu##62275
turnin Taoshi and Korvexxis##30981 |goto Townlong Steppes/0 47.48,78.87
turnin Lao-Chin and Serevex##31063 |goto Townlong Steppes/0 47.48,78.87
turnin Nurong and Rothek##31064 |goto Townlong Steppes/0 47.48,78.87
accept The Sha of Hatred##30968 |goto Townlong Steppes/0 47.48,78.87
step
Watch the dialogue
|tip {o}Follow your allies{} when they enter the building.
kill Sha of Hatred##62541 |q 30968/1 |goto Townlong Steppes/0 45.92,82.86
|tip Inside the building {o}beneath the huge tree{}.
|tip {o}Avoid the circles{} on the ground.
|tip Kill the enemies it summons.
step
talk Taoshi##62802
|tip Inside the building {o}beneath the huge tree{}.
turnin The Sha of Hatred##30968 |goto Townlong Steppes/0 46.12,82.46
step
Leave the building |goto Townlong Steppes/0 47.31,79.28 < 15 |walk |only if subzone("Sik'vess Lair") and indoors()
talk Rensai Oakhide##62278
turnin Thinning the Sik'thik##31687 |goto Townlong Steppes/0 53.92,78.12
turnin The Search for Restless Leng##31688 |goto Townlong Steppes/0 53.92,78.12
step
talk Kite Master Yao-Li##62909
fpath Shado-Pan Garrison |goto Townlong Steppes/0 50.08,71.98
step
talk Provisioner Bamfu##61625
|tip He walks around this area.
accept Natural Antiseptic##30922 |goto Townlong Steppes/0 49.14,71.32
accept The Field Armorer##30963 |goto Townlong Steppes/0 49.14,71.32
accept A Proper Poultice##30964 |goto Townlong Steppes/0 49.14,71.32
step
talk Tai Ho##61482
accept The Motives of the Mantid##30921 |goto Townlong Steppes/0 49.13,71.24
accept Set the Mantid Back##30923 |goto Townlong Steppes/0 49.13,71.24
stickystart "Discover_The_Clues"
stickystart "Collect_Full_Mushan_Bladders"
stickystart "Collect_Mao_Willows"
stickystart "Collect_Rankbite_Shell_Fragments"
step
use the Gunpowder Casks##81891
|tip {o}Go around the huge tree{}.
Explode the Kri'thik Supplies |q 30923/2 |goto Townlong Steppes/0 56.59,54.02
step
use the Gunpowder Casks##81891
Explode the Kri'thik Weapons |q 30923/1 |goto Townlong Steppes/0 55.42,53.13
step
label "Discover_The_Clues"
kill Kri'thik Screamer##61377, Kri'thik Boneslicer##61376
|tip They look like {o}insect people{}.
Discover the First Clue |q 30921/1 |goto Townlong Steppes/0 56.46,52.65
Discover the Second Clue |q 30921/2 |goto Townlong Steppes/0 56.46,52.65
Discover the Third Clue |q 30921/3 |goto Townlong Steppes/0 56.46,52.65
Discover the Fourth Clue |q 30921/4 |goto Townlong Steppes/0 56.46,52.65
step
label "Collect_Full_Mushan_Bladders"
kill Longshadow Bull##66463, Longshadow Mushan##61618
|tip They look like {o}dinosaurs{}.
collect 5 Full Mushan Bladder##82387 |q 30922/1 |goto Townlong Steppes/0 60.35,53.59
You can find more around [51.10,63.64]
step
label "Collect_Mao_Willows"
click Mao-Willow##211779+
|tip They look like {o}purple plants with white bulbs{}.
collect 11 Mao-Willow##82389 |q 30964/1 |goto Townlong Steppes/0 60.35,53.59
step
label "Collect_Rankbite_Shell_Fragments"
kill Rankbite Ancient##66462, Rankbite Tortoise##61619, Rankbite Tortoise##61619, Rankbite Ancient##66462
|tip They look like {o}turtles{}.
collect 120 Rankbite Shell Fragment##82388 |q 30963/1 |goto Townlong Steppes/0 60.35,53.59
You can find more around [51.10,63.64]
step
talk Tai Ho##61482
turnin The Motives of the Mantid##30921 |goto Townlong Steppes/0 49.14,71.23
turnin Set the Mantid Back##30923 |goto Townlong Steppes/0 49.14,71.23
accept The Wisdom of Niuzao##30924 |goto Townlong Steppes/0 49.14,71.23
step
talk Provisioner Bamfu##61625
|tip He walks around this area.
turnin Natural Antiseptic##30922 |goto Townlong Steppes/0 49.14,71.32
turnin The Field Armorer##30963 |goto Townlong Steppes/0 49.14,71.32
turnin A Proper Poultice##30964 |goto Townlong Steppes/0 49.14,71.32
step
talk Ku-Mo##61539
accept My Father's Crossbow##30931 |goto Townlong Steppes/0 43.87,65.76
step
kill Et'kil##61540
|tip Outside, behind the building.
collect Father's Crossbow##82332 |q 30931/1 |goto Townlong Steppes/0 38.67,65.31
step
talk Ku-Mo##61539
turnin My Father's Crossbow##30931 |goto Townlong Steppes/0 43.87,65.76
step
talk Sentinel Commander Qipan##61584
|tip At the top of the stairs.
accept Father's Footsteps##30932 |goto Townlong Steppes/0 39.41,61.96
step
talk Ogo the Younger##61581
turnin The Wisdom of Niuzao##30924 |goto Townlong Steppes/0 39.33,62.22
accept Niuzao's Price##30925 |goto Townlong Steppes/0 39.33,62.22
step
talk Bluesaddle##61161
accept Bad Yak##30929 |goto Townlong Steppes/0 39.21,62.01
step
clicknpc Ruthers##61163
Gently Pet Ruthers |q 30929/1 |goto Townlong Steppes/0 39.27,61.93
step
clicknpc Ruthers##61163
Offer Ruthers an Apple |q 30929/2 |goto Townlong Steppes/0 39.27,61.93
step
clicknpc Ruthers##61163
Lightly Nudge Ruthers |q 30929/3 |goto Townlong Steppes/0 39.27,61.93
step
clicknpc Ruthers##61163
Attempt to Mount Ruthers |q 30929/4 |goto Townlong Steppes/0 39.27,61.93
step
talk Bluesaddle##61161
turnin Bad Yak##30929 |goto Townlong Steppes/0 39.21,62.01
step
clicknpc Sentinel Yalo##61683
|tip He walks around this area.
Find Sentinel Yalo |q 30932/4 |goto Townlong Steppes/0 39.19,61.07
step
click Father's Shield##211836
|tip At the top of the stairs.
Find Father's Shield |q 30932/2 |goto Townlong Steppes/0 37.54,61.37
step
click Father's Shield##211836
|tip At the top of the stairs.
Find Father's Shield |q 30932/2 |goto Townlong Steppes/0 37.54,61.37
step
click Father's Bedroll##211837
|tip Inside the building at the {o}top of the temple{}.
Find Father's Bedroll |q 30932/1 |goto Townlong Steppes/0 37.36,60.90
step
clicknpc Ha-Cha##61685
|tip At the {o}top of the temple{}.
Find Ha-Cha |q 30932/3 |goto Townlong Steppes/0 37.66,63.95
step
talk Ku-Mo##61539
|tip At the top of the stairs.
turnin Father's Footsteps##30932 |goto Townlong Steppes/0 39.45,61.93
step
talk Bluesaddle##61161
accept Pick a Yak##30930 |goto Townlong Steppes/0 35.40,56.65
step
use the Yak Lasso##82468
|tip Use it on {o}Wild Townlong Yaks{}.
|tip They look like {o}bison{}.
|tip You can find them all {o}around the pond{}.
kill Wild Townlong Yak##61635+
|tip {o}Most will run away{}, but {o}one{} of them will {o}eventually be suitable{}.
Find a Suitable Yak |q 30930/1 |goto Townlong Steppes/0 36.13,52.22
step
talk Bluesaddle##61161
turnin Pick a Yak##30930 |goto Townlong Steppes/0 35.40,56.65
step
kill Sra'thik Guard##61518, Sra'thik Wound-Mender##61517, Sra'thik Wound-Mender##61517, Sra'thik Drone##61516
|tip They look like {o}insect people{}.
Find the Statuette Head |q 30925/1 |goto Townlong Steppes/0 41.86,46.06
Find the Statuette Body |q 30925/2 |goto Townlong Steppes/0 41.86,46.06
Find the Statuette Legs |q 30925/3 |goto Townlong Steppes/0 41.86,46.06
Find the Statuette Tail |q 30925/4 |goto Townlong Steppes/0 41.86,46.06
step
talk Ogo the Younger##61581
|tip At the top of the stairs.
turnin Niuzao's Price##30925 |goto Townlong Steppes/0 39.34,62.21
step
talk Ogo the Elder##61580
accept The Terrible Truth##30926 |goto Townlong Steppes/0 39.35,62.29
step
talk Yak-Keeper Kyana##61585
accept A Trail of Fear##30928 |goto Townlong Steppes/0 39.15,62.07
step
talk Sentinel Commander Qipan##61584
accept Give Them Peace##30927 |goto Townlong Steppes/0 39.41,61.96
step
Find the Catacombs |q 30926/1 |goto Townlong Steppes/0 33.12,61.56
|tip At the entrance of the cave.
stickystart "Give_Fear_Stricken_Sentinels_Peace"
stickystart "Kill_Dreadlings"
step
Enter the cave |goto Townlong Steppes/0 33.12,61.56 < 30 |walk
Investigate the Niuzao Catacombs |q 30926/2 |goto Townlong Steppes/13 60.71,40.22
|tip Inside the cave.
step
kill Dread Shadow##62307 |q 30926/3 |goto Townlong Steppes/13 50.25,24.92
|tip Inside the cave.
step
talk Tai Ho##61482
|tip Inside the cave.
turnin The Terrible Truth##30926 |goto Townlong Steppes/13 56.15,20.22
step
label "Give_Fear_Stricken_Sentinels_Peace"
clicknpc Fear-Stricken Sentinel##62276+
|tip They look like {o}armored pandaren laying on the ground{}.
|tip Inside the cave. |notinsticky
Give #10# Fear-Stricken Sentinels Peace |q 30927/1 |goto Townlong Steppes/0 33.12,61.56
'|clicknpc Fear-Stricken Sentinel##62281
step
label "Kill_Dreadlings"
kill 12 Dreadling##62306 |q 30928/1 |goto Townlong Steppes/0 33.12,61.56
|tip They look like {o}larger shadow aliens{}.
|tip Inside the cave. |notinsticky
step
Leave the cave |goto Townlong Steppes/0 33.12,61.56 < 30 |walk |only if subzone("Niuzao Catacombs") and indoors()
talk Sentinel Commander Qipan##61584
|tip At the top of the stairs.
turnin Give Them Peace##30927 |goto Townlong Steppes/0 39.41,61.96
step
talk Yak-Keeper Kyana##61585
turnin A Trail of Fear##30928 |goto Townlong Steppes/0 39.15,62.07
]])
QuestCore:RegisterGuide("Leveling Guides\\Pandaria (85-90)\\Dread Wastes (89-90)",{
expansion="mists",
image="DreadWastes",
startlevel=89,
mopready=true
},[[
step
_NOTE:_
Learn Flying When You Reach Level 90
|tip Once you reach {o}level 90{}, you can {o}learn flying in Pandaria{}.
|tip Talk to {o}Skydancer Shun{} in the {o}Shrine of Two Moons{} in {o}Vale of Eternal Blossoms{}.
|tip You will need {o}2,500 gold{}.
Click Here to Continue |confirm |q 31847 |future
step
talk Kite Master Len##61512
accept Better Dead than Dread##31847 |goto Kun-Lai Summit/0 34.54,59.12
step
talk Kite Master Len##61512
fpath Serpent's Spine |goto Kun-Lai Summit/0 34.54,59.12
step
talk Bowmistress Li##62112
turnin Better Dead than Dread##31847 |goto Vale of Eternal Blossoms/0 14.15,76.96 |only if haveq(31847) or completedq(31847)
accept Falling Down##31001 |goto Vale of Eternal Blossoms/0 14.15,76.96
accept Nope##31002 |goto Vale of Eternal Blossoms/0 14.15,76.96
step
click Shado-Pan Rope
Climb Down the Wall |invehicle |goto Vale of Eternal Blossoms/0 14.20,76.73 |q 31001
|only if walking
stickystart "Destroy_Dreadspinner_Eggs"
step
kill 6 Dreadspinner Tender##61981 |q 31002/2 |goto Dread Wastes/0 72.96,22.81
|tip They look like {o}spiders{}.
You can find more around [Dread Wastes/0 71.72,27.95]
step
label "Destroy_Dreadspinner_Eggs"
use the Shado-Pan Dragon Gun##82807
|tip Use it on {o}Dreadspinner Eggs{}.
|tip They look like {o}clusters of white spider eggs{o}.
Destroy #20# Dreadspinner Eggs |q 31002/1 |goto Dread Wastes/0 72.96,22.81
You can find more around [71.72,27.95]
'|clicknpc Dreadspinner Egg##62077
step
talk Marksman Lann##62166
Find Marksman Lann |q 31001/1 |goto Dread Wastes/0 72.56,28.67
step
talk Marksman Lann##62166
turnin Falling Down##31001 |goto Dread Wastes/0 72.56,28.67
turnin Nope##31002 |goto Dread Wastes/0 72.56,28.67
accept Psycho Mantid##31003 |goto Dread Wastes/0 72.56,28.67
step
kill Adjunct Kree'zot##62301 |q 31003/1 |goto Dread Wastes/0 73.47,27.48
|tip Inside the small cave.
step
talk Klaxxi'va Tik##62203
|tip Inside the small cave.
turnin Psycho Mantid##31003 |goto Dread Wastes/0 73.67,27.58
accept Preserved in Amber##31004 |goto Dread Wastes/0 73.67,27.58
step
click Ancient Amber Chunk##212980
Use the Klaxxi Tuning Fork on the Amber |q 31004/1 |goto Dread Wastes/0 70.24,25.70
step
Watch the dialogue
talk Kil'ruk the Wind-Reaver##62202
turnin Preserved in Amber##31004 |goto Dread Wastes/0 70.20,25.64
accept Wakening Sickness##31005 |goto Dread Wastes/0 70.20,25.64
accept Ancient Vengeance##31676 |goto Dread Wastes/0 70.20,25.64
stickystart "Collect_Sapfly_Bits"
step
kill 6 Vengeful Gurthani Spirit##65452 |q 31676/1 |goto Dread Wastes/0 67.75,29.72
|tip They look like {o}banshees{}.
You can find more around [71.43,36.86]
step
label "Collect_Sapfly_Bits"
kill Sapfly##62386+
|tip They look like {o}small yellow flying insects{}.
collect 100 Sapfly Bits##83075 |q 31005/1 |goto Dread Wastes/0 67.75,29.72
You can find more around [71.43,36.86]
step
talk Kil'ruk the Wind-Reaver##62202
turnin Wakening Sickness##31005 |goto Dread Wastes/0 70.20,25.64
turnin Ancient Vengeance##31676 |goto Dread Wastes/0 70.20,25.64
accept The Klaxxi Council##31006 |goto Dread Wastes/0 70.20,25.64
step
talk Kil'ruk the Wind-Reaver##62413
Select _"Take me to Klaxxi'vess."_ |gossip 126270
Begin Traveling to Klaxxi'vess |invehicle |goto Dread Wastes/0 70.20,25.64 |q 31006
step
Watch the dialogue
Travel to Klaxxi'vess |q 31006/1 |goto Dread Wastes/0 55.01,33.99 |notravel
step
talk Kil'ruk the Wind-Reaver##62538
turnin The Klaxxi Council##31006 |goto Dread Wastes/0 54.98,34.05
accept The Dread Clutches##31007 |goto Dread Wastes/0 54.98,34.05
accept Not Fit to Swarm##31660 |goto Dread Wastes/0 54.98,34.05
step
talk Kor'ik##64815
accept Dead Zone##31009 |goto Dread Wastes/0 54.77,34.06
step
talk Ambersmith Zikk##64599
accept Amber Arms##31008 |goto Dread Wastes/0 55.02,35.56
step
talk Kik'tik##63501
fpath Klaxxi'vess |goto Dread Wastes/0 55.83,34.88
step
talk Zit'tix##65220
home Klaxxi'vess |goto Dread Wastes/0 55.92,32.32 |q 31010 |future
step
talk Kil'ruk the Wind-Reaver##62538
Select _"Please fly me to the Clutches of Shek'zeer"_ |gossip 126271
Begin Flying to the Clutches of Shek'zeer |invehicle |goto Dread Wastes/0 54.98,34.05 |q 31009
step
Fly to the Clutches of Shek'zeer |outvehicle |goto Dread Wastes/0 39.01,40.52 |q 31009 |notravel
stickystart "Collect_Amber_Blades"
stickystart "Kill_Shekzeer_Clutch_Keepers"
stickystart "Kill_Shekzeer_Swarmborn"
step
click Inactive Sonic Relay
Activate the Sonic Relay |q 31009/1 |goto Dread Wastes/0 40.03,39.05
step
_Click the Complete Quest Box:_
turnin Dead Zone##31009
accept In Her Clutch##31010
step
click Sha-Haunted Crystal##214562
accept A Source of Terrifying Power##31661 |goto Dread Wastes/0 44.59,41.36
step
click Ancient Amber Chunk##212980
Watch the dialogue
Kill the enemies that attack in waves
Waken the Paragon |q 31010/1 |goto Dread Wastes/0 44.74,41.55
step
label "Collect_Amber_Blades"
kill Shek'zeer Bladesworn##62563+
|tip They look like {o}insect people with large swords{}.
|tip Some of them {o}ride on large scorpions{}.
collect 6 Amber Blade##83135 |q 31008/1 |goto Dread Wastes/0 43.29,43.41
step
label "Kill_Shekzeer_Clutch_Keepers"
kill 6 Shek'zeer Clutch-Keeper##64559 |q 31007/1 |goto Dread Wastes/0 44.43,41.77
|tip They look like {o}insect people casting a shadow spell{}.
step
label "Kill_Shekzeer_Swarmborn"
kill 30 Shek'zeer Swarmborn##62582 |q 31660/1 |goto Dread Wastes/0 44.43,41.77
|tip They look like {o}small insect people{}.
step
talk Kil'ruk the Wind-Reaver##62538
turnin The Dread Clutches##31007 |goto Dread Wastes/0 54.99,34.04
turnin Not Fit to Swarm##31660 |goto Dread Wastes/0 54.99,34.04
step
talk Malik the Unscathed##62774
turnin In Her Clutch##31010 |goto Dread Wastes/0 54.94,34.13
step
talk Kor'ik##64815
accept A Cry From Darkness##31066 |goto Dread Wastes/0 54.77,34.06
step
talk Ambersmith Zikk##64599
turnin Amber Arms##31008 |goto Dread Wastes/0 55.02,35.56
turnin A Source of Terrifying Power##31661 |goto Dread Wastes/0 55.02,35.56
accept Concentrated Fear##31108 |goto Dread Wastes/0 55.02,35.56
step
talk Malik the Unscathed##62774
|tip He walks to this location.
accept The Dreadsworn##31689 |goto Dread Wastes/0 55.06,35.47
accept Citizens of a New Empire##31107 |goto Dread Wastes/0 55.06,35.47
stickystart "Collect_Dread_Amber_Focuses"
stickystart "Kill_Vorthik_Dreadsworn"
stickystart "Collect_Vorthik_Eggs"
step
kill Qi'tar the Deathcaller##62863 |q 31066/1 |goto Dread Wastes/0 59.36,18.41
step
label "Collect_Dread_Amber_Focuses"
kill Vor'thik Fear-Shaper##62814+
|tip They look like {o}larger insect people casting a shadow spell{}.
collect 4 Dread Amber Focus##86616 |q 31108/1 |goto Dread Wastes/0 58.16,14.62
step
label "Kill_Vorthik_Dreadsworn"
kill 6 Vor'thik Dreadsworn##62813 |q 31689/1 |goto Dread Wastes/0 58.16,14.62
|tip They look like {o}larger insect people carrying polearms{}.
step
label "Collect_Vorthik_Eggs"
click Vor'thik Egg##214170+
|tip They look like {o}squirming yellow cocoons{}.
collect 10 Vor'thik Eggs##86598 |q 31107/1 |goto Dread Wastes/0 59.65,16.99
step
talk Kor'ik##64815
turnin A Cry From Darkness##31066 |goto Dread Wastes/0 54.77,34.06
accept Extending Our Coverage##31087 |goto Dread Wastes/0 54.77,34.06
step
talk Malik the Unscathed##62774
turnin The Dreadsworn##31689 |goto Dread Wastes/0 55.06,35.47
turnin Citizens of a New Empire##31107 |goto Dread Wastes/0 55.06,35.47
step
talk Ambersmith Zikk##64599
turnin Concentrated Fear##31108 |goto Dread Wastes/0 55.02,35.56
step
talk Kil'ruk the Wind-Reaver##62538
accept Amber Is Life##31019 |goto Dread Wastes/0 55.06,35.85
step
talk Kik'tik##63501
Select _"Take me to the Lake of Stars."_ |gossip 129851
Begin Flying to the Lake of Stars |invehicle |goto Dread Wastes/0 55.83,34.88 |q 31023 |future
step
Fly to the Lake of Stars |outvehicle |goto Dread Wastes/0 61.66,61.17 |q 31023 |future
stickystart "Kill_Mistblade_Rippers"
step
kill Mistblade Ripper##61970+
|tip They look like {o}lizard people{}.
collect Strange Relic##82870 |n
use Strange Relic##82870
accept Relics of the Swarm##31023 |goto Dread Wastes/0 63.05,61.18
stickystart "Collect_Mantid_Relics"
step
label "Kill_Mistblade_Rippers"
kill 7 Mistblade Ripper##61970 |q 31019/1 |goto Dread Wastes/0 65.38,63.64
|tip They look like {o}lizard people{}.
step
label "Collect_Mantid_Relics"
click Mantid Relic##212079+
|tip They look like {o}broken stone tablets{}.
|tip You can find more on the {o}shore around the lake{}.
collect 8 Mantid Relic##82867 |q 31023/1 |goto Dread Wastes/0 65.07,60.14
|only if haveq(31023) or completedq(31023)
step
Enter the underground cave |goto Dread Wastes/0 66.76,63.84 < 15 |walk
kill Mistblade Scale-Lord##63179 |q 31019/2 |goto Dread Wastes/0 66.42,66.11
|tip Inside the underground cave.
step
clicknpc Ancient Amber Chunk##65354
|tip Inside the underground cave.
turnin Amber Is Life##31019 |goto Dread Wastes/0 66.84,65.39
step
Watch the dialogue
|tip Inside the underground cave.
_Next to you:_
talk Korven the Prime##62232 |usename Korven the Prime##62180
accept Feeding the Beast##31020 |goto Dread Wastes/0 66.84,65.39
accept Living Amber##31021 |goto Dread Wastes/0 66.84,65.39
stickystart "Kill_Coldbite_Crocolisks"
step
Leave the underground cave |goto Dread Wastes/0 66.76,63.84 < 15 |walk |only if subzone("Mistblade Den") and indoors()
click Amber Fragment##212011+
|tip They look like {o}orange rocks underwater{}.
collect Living Amber##82864+ |n
use the Living Amber##82864
Feed Korven the Prime #9# Living Amber |q 31021/1 |goto Dread Wastes/0 65.19,58.75
step
label "Kill_Coldbite_Crocolisks"
kill 8 Coldbite Crocolisk##62023 |q 31020/1 |goto Dread Wastes/0 65.19,58.75
|tip Underwater. |notinsticky
step
_Next to you:_
talk Korven the Prime##62232 |usename Korven the Prime##62180
turnin Feeding the Beast##31020
turnin Living Amber##31021
accept Kypari Zar##31022
step
click Sonar Tower##212933
Examine the Sonar Tower |q 31022/1 |goto Dread Wastes/0 59.81,59.47
step
Watch the dialogue
Kill the enemies that attack in waves
Defend Korven the Prime |q 31022/2 |goto Dread Wastes/0 59.98,59.40
step
_Next to you:_
talk Korven the Prime##63328 |usename Korven the Prime##62180
turnin Kypari Zar##31022
accept The Root of the Problem##31026
step
Enter the underground cave |goto Dread Wastes/0 58.60,59.45 < 15 |walk
kill Coldbite Matriarch##62008 |q 31026/1 |goto Dread Wastes/0 57.36,57.78
|tip Inside the underground cave.
|tip {o}Avoid{} stepping on the {o}purple eggs{}, they {o}spawn enemies{}.
step
_Next to you:_
talk Korven the Prime##62232
turnin The Root of the Problem##31026
step
Leave the underground cave |goto Dread Wastes/0 58.60,59.45 < 15 |walk |only if subzone("Coldbite Burrow") and indoors()
Enter the building |goto Dread Wastes/0 46.24,53.14 < 20 |walk
Locate Amberglow Hollow |q 31087/1 |goto Dread Wastes/0 46.54,52.60
|tip Inside the building.
step
kill Adjunct Zet'uk##65478 |q 31087/2 |goto Dread Wastes/0 48.09,49.77
|tip Inside the building.
step
click Silent Beacon##213250
|tip Inside the building.
Use the Resonating Crystal on the Silent Beacon |q 31087/3 |goto Dread Wastes/0 48.16,49.75
step
talk Kor'ik##65365
|tip Inside the building.
turnin Extending Our Coverage##31087 |goto Dread Wastes/0 48.11,49.64
accept Isolating the Frequency##31088 |goto Dread Wastes/0 48.11,49.64
accept The Color of Our Energy##31090 |goto Dread Wastes/0 48.11,49.64
stickystart "Kill_Ikthik_Harvesters"
step
Leave the building |goto Dread Wastes/0 46.24,53.14 < 20 |walk |only if subzone("Amberglow Hollow") and indoors()
click Amber Collector##212923+
|tip They look like {o}hanging orange bags{}.
|tip They are on the {o}side of trees{}.
collect 7 Amber-Filled Jar##85159 |q 31090/1 |goto Dread Wastes/0 40.84,51.34
step
label "Kill_Ikthik_Harvesters"
kill 8 Ik'thik Harvester##63206 |q 31088/1 |goto Dread Wastes/0 40.84,51.34
|tip They look like {o}insect people{}.
step
talk Infiltrator Ik'thal##65511
fpath The Briny Muck |goto Dread Wastes/0 42.53,55.75
step
Enter the building |goto Dread Wastes/0 46.24,53.14 < 20 |walk
talk Kor'ik##65365
|tip Inside the building.
turnin Isolating the Frequency##31088 |goto Dread Wastes/0 48.11,49.64
turnin The Color of Our Energy##31090 |goto Dread Wastes/0 48.11,49.64
accept By the Sea, Nevermore##31089 |goto Dread Wastes/0 48.11,49.64
step
Leave the building |goto Dread Wastes/0 46.24,53.14 < 20 |walk |only if subzone("Amberglow Hollow") and indoors()
use the Klaxxi Tuning Fork##84119
Awaken Kaz'tik the Manipulator |q 31089/1 |goto Dread Wastes/0 43.50,63.26
'|clicknpc Kaz'tik the Manipulator##62540
step
Watch the dialogue
talk Kaz'tik the Manipulator##63758
turnin By the Sea, Nevermore##31089 |goto Dread Wastes/0 43.32,63.49
accept Reunited##31091 |goto Dread Wastes/0 43.32,63.49
step
talk Kaz'tik the Manipulator##63876
Select _"I'm ready to help you find your weapon."_ |gossip 129709
Watch the dialogue
Follow Kaz'tik the Manipulator |goto Dread Wastes/0 43.32,63.49 > 10 |c |q 31091
step
Watch the dialogue
|tip Follow {o}Kaz'tik the Manipulator{} and {o}protect him{} as he walks.
|tip He eventually walks to this location.
Escort Kaz'tik the Manipulator to the Undisturbed Dirt |q 31091/1 |goto Dread Wastes/0 41.76,72.02
'|clicknpc Kaz'tik the Manipulator##64013
step
Watch the dialogue
Find Kaz'tik's Greatest Weapon |q 31091/2 |goto Dread Wastes/0 41.76,72.02
step
talk Kaz'tik the Manipulator##63876
turnin Reunited##31091 |goto Dread Wastes/0 41.76,72.02
accept The Kunchong Whisperer##31359 |goto Dread Wastes/0 41.76,72.02
accept Feed or Be Eaten##31092 |goto Dread Wastes/0 41.76,72.02
stickystart "Feed_Succulent_Turtle_Filets_To_Kovok"
stickystart "Slay_Muckscale_Tribe_Members"
step
kill Oracle Hiss'ir##63998 |q 31359/1 |goto Dread Wastes/0 41.93,63.77
|tip He walks around this area.
step
click Glowing Amber##214062
accept Falling to Pieces##31398 |goto Dread Wastes/0 41.88,63.72
step
label "Feed_Succulent_Turtle_Filets_To_Kovok"
kill Brineshell Snapper##63981, Trained Brineshell Snapper##65330
|tip They look like {o}turtles{}.
collect Succulent Turtle Filet##86489+ |n
use the Succulent Turtle Filet##86489+
Feed #6# Succulent Turtle Filets to Kovok |q 31092/1 |goto Dread Wastes/0 37.63,62.58
step
label "Slay_Muckscale_Tribe_Members"
kill Muckscale Slayer##63999, Muckscale Flesh-Hunter##63997, Muckscale Shaman##64008, Muckscale Ripper##63993
|tip They look like {o}lizard people{}.
Slay #10# Muckscale Tribe Members |q 31359/2 |goto Dread Wastes/0 37.63,62.58
step
talk Kaz'tik the Manipulator##63758
turnin The Kunchong Whisperer##31359 |goto Dread Wastes/0 54.25,35.78
turnin Feed or Be Eaten##31092 |goto Dread Wastes/0 54.25,35.78
turnin Falling to Pieces##31398 |goto Dread Wastes/0 54.25,35.78
step
talk Ambersmith Zikk##64599
turnin Relics of the Swarm##31023 |goto Dread Wastes/0 55.02,35.56
accept Gambling Problem##31727 |goto Dread Wastes/0 55.02,35.56
step
talk Kil'ruk the Wind-Reaver##62538
accept A Not So Friendly Request##31730 |goto Dread Wastes/0 55.06,35.85
step
talk Jin the Flying Keg##63500
fpath The Sunset Brewgarden |goto Dread Wastes/0 50.21,12.24
step
talk Sapmaster Vu##62666
turnin A Not So Friendly Request##31730 |goto Dread Wastes/0 51.21,11.39
accept The Heavens Hum With War##31067 |goto Dread Wastes/0 51.21,11.39
step
Enter the building |goto Dread Wastes/0 53.60,15.45 < 15 |walk
click Scroll of Auspice##212389
|tip Inside the building.
accept Sacred Recipe##31068 |goto Dread Wastes/0 53.09,12.36
step
kill Azzix K'tai##62843 |q 31067/1 |goto Dread Wastes/0 52.74,10.27
|tip He walks around this area.
|tip Inside the building.
step
Leave the building |goto Dread Wastes/0 53.60,15.45 < 15 |walk |only if subzone("The Amber Vault") and indoors()
talk Lya of Ten Songs##62667
turnin Sacred Recipe##31068 |goto Dread Wastes/0 50.73,11.71
step
talk Sapmaster Vu##62666
turnin The Heavens Hum With War##31067 |goto Dread Wastes/0 51.21,11.39
accept Bound With Shade##31069 |goto Dread Wastes/0 51.21,11.39
step
talk Olon##62668
accept Daggers of the Great Ones##31070 |goto Dread Wastes/0 51.16,11.22
step
talk Thirsty Missho##62859
accept I Bring Us Great Shame##31071 |goto Dread Wastes/0 51.13,11.11
step
Watch the dialogue
talk Lya of Ten Songs##62667
|tip She runs to this location.
accept Rending Daggers##31072 |goto Dread Wastes/0 50.73,11.71
step
talk Chen Stormstout##62779
accept Fate of the Stormstouts##31129 |goto Dread Wastes/0 50.45,12.05
step
talk Lya of Ten Songs##62667
Select _"Have you seen any Stormstouts here in the Brewgarden?"_ |gossip 127538
Speak with Lya of Ten Songs |q 31129/2 |goto Dread Wastes/0 50.73,11.71
step
talk Big Dan Stormstout##62845
Select _"Is your name really Stormstout?"_ |gossip 127524
Speak with Big Dan Stormstout |q 31129/3 |goto Dread Wastes/0 50.90,11.36
step
talk Sapmaster Vu##62666
Select _"Have you seen anybody named Stormstout come through here?"_ |gossip 127526
Speak with Sapmaster Vu |q 31129/1 |goto Dread Wastes/0 51.21,11.39
step
talk Chen Stormstout##62779
turnin Fate of the Stormstouts##31129 |goto Dread Wastes/0 50.45,12.05
stickystart "Harvest_Shade"
step
talk Chen Stormstout##62779
accept Evie Stormstout##31077 |goto Dread Wastes/0 54.11,20.48
step
click Lost Keg##212540
collect Lost Keg##83781 |q 31071/2 |goto Dread Wastes/0 54.43,20.27
step
click Lost Picnic Supplies##212556
collect Lost Picnic Supplies##83783 |q 31071/3 |goto Dread Wastes/0 56.01,19.44
step
kill Kz'Kzik##62832
|tip He looks like a {o}larger insect person{}.
|tip He walks around this area.
collect Blade of Kz'Kzik##84111 |q 31072/1 |goto Dread Wastes/0 53.29,19.98
step
click Lost Mug##212548
collect Lost Mugs##83782 |q 31071/1 |goto Dread Wastes/0 51.70,19.07
step
kill Ilikkax##62833
|tip He looks like a {o}larger insect person{}.
|tip He walks around this area.
collect Blade of Ilikkax##84112 |q 31072/2 |goto Dread Wastes/0 50.98,21.02
step
label "Harvest_Shade"
kill Dread Lurker##62751, Nagging Dreadling##65996
|tip Only enemies that look like {o}shadow aliens{} will {o}count for the quest goal{}.
Harvest #100# Shade |q 31069/1 |goto Dread Wastes/0 55.21,18.18
step
kill Frightened Mushan##62760+
|tip They look like {o}dinosaurs{}.
collect 3 Large Mushan Tooth##84107 |q 31070/1 |goto Dread Wastes/0 49.15,19.15
step
talk Lya of Ten Songs##62667
turnin Rending Daggers##31072 |goto Dread Wastes/0 50.73,11.71
accept Wood and Shade##31074 |goto Dread Wastes/0 50.73,11.71
step
talk Sapmaster Vu##62666
turnin Bound With Shade##31069 |goto Dread Wastes/0 51.21,11.39
step
talk Olon##62668
turnin Daggers of the Great Ones##31070 |goto Dread Wastes/0 51.16,11.22
step
talk Thirsty Missho##62859
turnin I Bring Us Great Shame##31071 |goto Dread Wastes/0 51.13,11.11
step
talk Sapmaster Vu##62666
accept Bound With Wood##31073 |goto Dread Wastes/0 51.21,11.39
step
talk Defender Azzo##63218
accept Kor'thik Aggression##31133 |goto Dread Wastes/0 50.19,12.44
step
Meet up with Chen |q 31077/1 |goto Dread Wastes/0 50.18,10.20
step
Watch the dialogue
Eulogize Evie |q 31077/2 |goto Dread Wastes/0 50.18,10.20
step
talk Chen Stormstout##62779
turnin Evie Stormstout##31077 |goto Dread Wastes/0 50.18,10.20
accept Han Stormstout##31078 |goto Dread Wastes/0 50.18,10.20
stickystart "Slay_Korthik_Mantids"
step
Enter the building |goto Dread Wastes/0 47.00,16.82 < 15 |walk
|clicknpc Han Stormstout##62776
|tip Inside the building.
|tip You {o}can't run through the orange beams{o}.
|tip {o}Follow the path{} in and out of the rooms so that you {o}never touch the orange beams{}.
|tip You will eventually be able to reach him.
Find Han Stormstout |q 31078/1 |goto Dread Wastes/0 43.75,16.75
step
talk Chen Stormstout##62779
|tip Inside the building.
|tip Run through the {o}splashing water{} and it will {o}knock you toward him{}.
turnin Han Stormstout##31078 |goto Dread Wastes/0 44.41,16.81
step
Leave the building |goto Dread Wastes/0 47.00,16.82 < 15 |walk |only if subzone("Morrowchamber") and indoors()
Enter the building |goto Dread Wastes/0 44.79,15.86 < 10 |walk
Find the Mark of the Empress |q 31074/1 |goto Dread Wastes/0 44.51,16.78
|tip Inside the building.
step
Leave the building |goto Dread Wastes/0 44.79,15.86 < 10 |walk |only if subzone("Kor'vess") and indoors()
Enter the building |goto Dread Wastes/0 43.05,14.00 < 10 |walk
Find the Heartroot of Kypari Kor |q 31074/2 |goto Dread Wastes/0 43.22,14.96
|tip Inside the building.
step
Leave the building |goto Dread Wastes/0 43.05,14.02 < 10 |walk |only if subzone("Kor'vess") and indoors()
clicknpc Withered Husk##62876+
|tip They look like {o}dead trees chopped in half{}.
|tip You can do it from your mount!
collect 8 Fragrant Corewood##84118 |q 31073/1 |goto Dread Wastes/0 46.29,13.10
step
label "Slay_Korthik_Mantids"
kill Kor'thik Havoc##62757, Kor'thik Chitinel##62756, Kor'thik Battlesinger##62758
|tip They look like {o}insect people{}.
Slay #17# Kor'thik Mantids |q 31133/1 |goto Dread Wastes/0 43.72,12.83
step
talk Defender Azzo##63218
turnin Kor'thik Aggression##31133 |goto Dread Wastes/0 50.19,12.44
step
talk Lya of Ten Songs##62667
turnin Wood and Shade##31074 |goto Dread Wastes/0 50.73,11.71
step
talk Sapmaster Vu##62666
turnin Bound With Wood##31073 |goto Dread Wastes/0 51.21,11.39
accept Sunset Kings##31075 |goto Dread Wastes/0 51.21,11.39
step
talk Sapmaster Vu##62666
turnin Sunset Kings##31075 |goto Dread Wastes/0 38.18,17.18
step
talk Olon##62668
accept Fiery Wings##31080 |goto Dread Wastes/0 38.20,17.12
step
talk Boggeo##62772
accept The Horror Comes A-Rising##31079 |goto Dread Wastes/0 38.16,17.34
step
talk Lya of Ten Songs##62667
accept Incantations Fae and Primal##31081 |goto Dread Wastes/0 38.30,17.13
step
talk Chief Rikkitun##62771
accept Great Vessel of Salvation##31082 |goto Dread Wastes/0 38.65,17.25
stickystart "Collect_Flittering_Dust"
stickystart "Kill_Kyparites"
stickystart "Kill_Shuffling_Mistlurkers"
step
kill Mygoness##62766 |q 31081/2 |goto Dread Wastes/0 32.92,19.36
|tip He walks around this area.
step
kill Ahgunoss##62765 |q 31081/1 |goto Dread Wastes/0 32.10,17.37
step
use the Rikkitun Bell##84267
|tip Use it if you {o}lose your sprites{} and {o}can't click the Motherseeds{}.
clicknpc Motherseed##62601+
|tip They look like {o}huge acorns{}.
|tip They are located {o}near the enemies{} surrounding this location.
|tip {o}Bring them{} to this location.
Bring #3# Motherseeds Back to the Motherseed Pit |q 31082/1 |goto Dread Wastes/0 36.88,17.22
step
label "Collect_Flittering_Dust"
clicknpc Rikkilea Flitterling##62764+
|tip They look like {o}fae dragons{}.
|tip Run into the {o}colorful sparks{} that {o}fly off of them{} to collect them.
collect 88 Flitterling Dust##84239 |q 31080/1 |goto Dread Wastes/0 37.26,20.61
step
label "Kill_Kyparites"
kill 2 Kyparite##63007 |q 31079/2 |goto Dread Wastes/0 34.70,20.99
|tip They look like {o}moving spots of brown splashing water{}.
|tip {o}Get close to them{} and they will come out of the ground.
step
label "Kill_Shuffling_Mistlurkers"
kill 7 Shuffling Mistlurker##65404 |q 31079/1 |goto Dread Wastes/0 34.70,20.99
|tip They look like {o}swamp elementals{}.
step
talk Boggeo##62772
turnin The Horror Comes A-Rising##31079 |goto Dread Wastes/0 38.16,17.33
step
talk Olon##62668
turnin Fiery Wings##31080 |goto Dread Wastes/0 38.20,17.12
step
talk Lya of Ten Songs##62667
turnin Incantations Fae and Primal##31081 |goto Dread Wastes/0 38.30,17.13
step
talk Chief Rikkitun##62771
turnin Great Vessel of Salvation##31082 |goto Dread Wastes/0 38.65,17.25
accept Bind the Glamour##31084 |goto Dread Wastes/0 38.65,17.25
step
talk Chief Rikkitun##62771
Select _"The forked blade is ready, and we have given our gift. Please perform your incantation."_ |gossip 129468
Follow Chief Rikkitum |goto Dread Wastes/0 38.65,17.25 > 10 |c |q 31084
step
Watch the dialogue
|tip Follow {o}Chief Rikkitum{} as he walks.
|tip He eventually walks to this location.
Allow Chief Rikkitun to Enchant the Forked Blade |q 31084/1 |goto Dread Wastes/0 39.67,23.18
'|clicknpc Chief Rikkitun##62771
step
talk Chief Rikkitun##62771
turnin Bind the Glamour##31084 |goto Dread Wastes/0 38.65,17.25
step
talk Lya of Ten Songs##62667
accept Fires and Fears of Old##31085 |goto Dread Wastes/0 38.30,17.13
step
talk Sapmaster Vu##62666
accept Blood of Ancients##31086 |goto Dread Wastes/0 38.18,17.18
step
click Solidified Amber##212902
collect Chunk of Solidified Amber##84779 |q 31086/1 |goto Dread Wastes/0 30.22,30.58
step
click Enormous Landslide
Click Here After the Landslide Moves |confirm |goto Dread Wastes/0 30.06,30.89 |q 31085
step
Enter the building |goto Dread Wastes/0 30.18,31.69 < 15 |walk
use the Ruining Fork##84771
|tip Inside the building.
Use the Ruining Fork on Iyyokuk the Lucid |q 31085/1 |goto Dread Wastes/0 32.39,33.65
step
Watch the dialogue
|tip Inside the building.
Kill the enemies that attack
|tip They {o}appear{} and start {o}channeling on Iyyokuk the Lucid{}.
Protect Iyyokuk the Lucid Until He Escapes |q 31085/2 |goto Dread Wastes/0 32.39,33.65
step
Leave the building |goto Dread Wastes/0 30.25,31.73 < 15 |walk |only if subzone("The Amber Hibernal") and indoors()
talk Lya of Ten Songs##62667
turnin Fires and Fears of Old##31085 |goto Dread Wastes/0 50.28,12.07
step
talk Sapmaster Vu##62666
turnin Blood of Ancients##31086 |goto Dread Wastes/0 50.22,12.11
step
talk Min the Breeze Rider##63498
fpath Soggy's Gamble |goto Dread Wastes/0 56.10,70.18
step
talk Deck Boss Arie##63349
turnin Soggy's Gamble##31727 |goto Dread Wastes/0 54.72,72.17
accept Mazu's Breath##31265 |goto Dread Wastes/0 54.72,72.17
step
use the Potion of Mazu's Breath##85869
Drink the Potion of Mazu's Breath |q 31265/1 |goto Dread Wastes/0 54.72,72.17
step
talk Deck Boss Arie##63349
turnin Mazu's Breath##31265 |goto Dread Wastes/0 54.72,72.17
accept Fresh Pots##31181 |goto Dread Wastes/0 54.72,72.17
accept You Otter Know##31182 |goto Dread Wastes/0 54.72,72.17
stickystart "Bait_Crab_Pots"
step
use the Bag of Clams##85231
|tip Use it on {o}Coldwhisker Otters{} underwater.
Feed #8# Coldwhisker Otters |q 31182/1 |goto Dread Wastes/0 59.48,81.84
'|clicknpc Coldwhisker Otter##63376
step
label "Bait_Crab_Pots"
kill Sea Monarch##63470+
|tip They look like {o}large fish{} underwater.
collect 2 Sea Monarch Chunks##85230 |n
click Empty Crab Pot+
|tip They look like {o}red and brown cages{} underwater.
|tip You need {o}2 Sea Monarch Chunks{} to bait {o}each crab pot{}.
Bait #10# Crab Pots |q 31181/1 |goto Dread Wastes/0 59.48,81.84
step
talk Deck Boss Arie##63349
turnin Fresh Pots##31181 |goto Dread Wastes/0 54.72,72.16
turnin You Otter Know##31182 |goto Dread Wastes/0 54.72,72.16
accept Meet the Cap'n##31183 |goto Dread Wastes/0 54.72,72.16
step
talk Captain "Soggy" Su-Dao##63317
|tip Inside the building.
turnin Meet the Cap'n##31183 |goto Dread Wastes/0 55.66,72.50
accept Walking Dog##31185 |goto Dread Wastes/0 55.66,72.50
accept Old Age and Treachery##31184 |goto Dread Wastes/0 55.66,72.50
step
talk Deck Boss Arie##63349
accept On the Crab##31187 |goto Dread Wastes/0 54.72,72.16
accept Shark Week##31188 |goto Dread Wastes/0 54.72,72.16
step
use the Dog's Whistle##85955
_Next to you:_
talk Dog##63955
accept Dog Food##31186 |goto Dread Wastes/0 50.72,78.38
stickystart "Feed_Dog"
stickystart "Collect_Thresher_Teeth"
stickystart "Send_Full_Crab_Pots_To_The_Surface"
step
use the Dog's Whistle##85955
|tip Use it if {o}Dog isn't following you{}.
Bring Dog to the Silt Vents |q 31185/1 |goto Dread Wastes/0 46.40,74.06
|tip Underwater.
step
use the Dog's Whistle##85955
|tip Use it if {o}Dog isn't following you{}.
Bring Dog to the Wreck of the Mist-Hopper |q 31185/2 |goto Dread Wastes/0 44.90,78.00
|tip Underwater.
step
click Soggy's Footlocker##213454
|tip It looks like a {o}small brown wooden chest{}.
|tip Underwater on this {o}sunken ship{}.
|tip It can {o}appear in other locations{} on this {o}sunken ship{}.
collect Sealed Charter Tube##85886 |q 31184/1 |goto Dread Wastes/0 44.73,78.66
step
use the Dog's Whistle##85955
|tip Use it if {o}Dog isn't following you{}.
Bring Dog to the Whale Corpse |q 31185/3 |goto Dread Wastes/0 40.08,78.68
|tip Underwater.
step
label "Send_Full_Crab_Pots_To_The_Surface"
click Full Crab Pot##213508+
|tip They look like {o}red and brown cages{}.
|tip Underwater. |notinsticky
Send #8# Full Crab Pots to the Surface |q 31187/1 |goto Dread Wastes/0 44.75,76.21
step
label "Feed_Dog"
use the Dog's Whistle##85955 |notinsticky
|tip Use it if {o}Dog isn't following you{}. |notinsticky
kill Rockshell Snapclaw##63369+
|tip They look like {o}green lobsters{}.
|tip Underwater. |notinsticky
|tip {o}Dog will eat their corpses{}.
Feed Dog #10# Times |q 31186/1 |goto Dread Wastes/0 44.75,76.21
step
label "Collect_Thresher_Teeth"
kill Longfin Thresher##63944+
|tip They look like {o}sharks{}.
|tip Underwater. |notinsticky
collect Thresher Jaw##85998+ |n
use the Thresher Jaw##85998+
collect 200 Thresher Teeth##85999 |q 31188/1 |goto Dread Wastes/0 44.75,76.21
step
use the Dog's Whistle##85955
_Next to you:_
talk Dog##63955
turnin Dog Food##31186
step
talk Deck Boss Arie##63349
turnin On the Crab##31187 |goto Dread Wastes/0 54.72,72.16
turnin Shark Week##31188 |goto Dread Wastes/0 54.72,72.16
step
talk Captain "Soggy" Su-Dao##63317
|tip Inside the building.
turnin Walking Dog##31185 |goto Dread Wastes/0 55.66,72.50
turnin Old Age and Treachery##31184 |goto Dread Wastes/0 55.66,72.50
step
talk Deck Boss Arie##63349
accept Reeltime Strategy##31189 |goto Dread Wastes/0 54.72,72.16
step
talk Master Angler Ju Lien##64259
Speak with Master Angler Ju Lien |q 31189/1 |goto Dread Wastes/0 53.64,76.05
step
talk Master Angler Ju Lien##64259
Select _"Deck Boss said you needed some help."_ |gossip 129688
Watch the dialogue
|tip Click the {o}various fishing rods{} nearby.
|tip They look like {o}fishing poles leaning on wooden stands{}.
Kill the enemies that attack
Assist Master Angler Ju Lien |q 31189/2 |goto Dread Wastes/0 53.64,76.05
step
talk Deck Boss Arie##63349
turnin Reeltime Strategy##31189 |goto Dread Wastes/0 54.72,72.16
step
talk Captain "Soggy" Su-Dao##63317
accept The Mariner's Revenge##31190 |goto Dread Wastes/0 54.77,72.11
step
clicknpc Mist-Hopper Jr.##64350
Control the Mist-Hopper Jr. |invehicle |goto Dread Wastes/0 56.17,76.29 |q 31190
step
kill Jiao##63330
|tip It looks like a {o}huge octopus{} in the water.
|tip {o}Aim at the red crosshairs{}.
Land #25# Bow Hits |q 31190/1 |goto Dread Wastes/0 53.35,80.89
Land #25# Port Side Hits |q 31190/2 |goto Dread Wastes/0 53.35,80.89
Land #25# Starboard Hits |q 31190/3 |goto Dread Wastes/0 53.35,80.89
Land #25# Stern Hits |q 31190/4 |goto Dread Wastes/0 53.35,80.89
step
Stop Controlling the Mist-Hopper Jr. |outvehicle |goto Dread Wastes/0 56.20,76.30 |q 31190
|tip Click the arrow on your action bar.
step
talk Captain "Soggy" Su-Dao##63317
turnin The Mariner's Revenge##31190 |goto Dread Wastes/0 56.57,75.92
step
talk Deck Boss Arie##63349
accept Mazu's Bounty##31354 |goto Dread Wastes/0 56.57,75.82
step
talk Master Angler Ju Lien##64259
turnin Mazu's Bounty##31354 |goto Dread Wastes/0 54.90,72.83
accept Once in a Hundred Lifetimes##32030 |goto Dread Wastes/0 54.90,72.83
step
talk Klaxxi'va Ik##65395
turnin Once in a Hundred Lifetimes##32030 |goto Dread Wastes/0 54.71,34.75
accept Overthrone##31782 |goto Dread Wastes/0 54.71,34.75
step
Watch the dialogue
Witness the Klaxxi Ritual |q 31782/1 |goto Dread Wastes/0 54.71,34.75
step
talk Klaxxi'va Vor##62519
turnin Overthrone##31782 |goto Dread Wastes/0 55.11,34.27
step
talk Kor'ik##64815
accept The Zan'thik Dig##31605 |goto Dread Wastes/0 54.77,34.06
step
talk Kil'ruk the Wind-Reaver##62538
accept Skeer the Bloodseeker##31175 |goto Dread Wastes/0 55.06,35.85
step
Enter the underwater cave |goto Dread Wastes/0 25.76,53.85 < 30 |walk
click Ancient Amber Chunk##212980
|tip Inside the underwater cave.
Awaken Skeer the Bloodseeker |q 31175/1 |goto Dread Wastes/0 25.70,50.40
step
Watch the dialogue
|tip Inside the underwater cave.
talk Skeer the Bloodseeker##63071
turnin Skeer the Bloodseeker##31175 |goto Dread Wastes/0 25.71,50.30
accept A Strange Appetite##31176 |goto Dread Wastes/0 25.71,50.30
accept Fine Dining##31177 |goto Dread Wastes/0 25.71,50.30
accept A Bloody Delight##31178 |goto Dread Wastes/0 25.71,50.30
stickystart "Collect_Starfish_Meat"
stickystart "Collect_Volatile_Blood"
step
kill Briny Clacker##63348+
|tip They look like {o}small lobsters{}.
|tip Underwater.
collect 8 Clacker Tail##85212 |q 31177/1 |goto Dread Wastes/0 25.02,61.12
step
label "Collect_Starfish_Meat"
click Spiny Starfish##212988+
|tip They look like {o}pink starfish{}.
|tip Underwater. |notinsticky
collect 12 Starfish Meat##85211 |q 31176/1 |goto Dread Wastes/0 25.02,61.12
step
label "Collect_Volatile_Blood"
Leave the underwater cave |goto Dread Wastes/0 25.72,53.98 < 30 |walk |only if subzone("Muckscale Grotto") and indoors()
kill Dread Remora##63353+
|tip They look like {o}sharks{}.
|tip Underwater. |notinsticky
collect 100 Volatile Blood##85229 |q 31178/1 |goto Dread Wastes/0 25.02,61.12
step
Enter the underwater cave |goto Dread Wastes/0 25.76,53.85 < 30 |walk
talk Skeer the Bloodseeker##63071
|tip Inside the underwater cave.
turnin A Strange Appetite##31176 |goto Dread Wastes/0 25.71,50.62
turnin Fine Dining##31177 |goto Dread Wastes/0 25.71,50.62
turnin A Bloody Delight##31178 |goto Dread Wastes/0 25.71,50.62
accept The Scent of Blood##31179 |goto Dread Wastes/0 25.71,50.62
step
kill 12 Muckscale Flesheater##63465 |q 31179/1 |goto Dread Wastes/0 25.71,50.97
|tip They attack in waves.
|tip Inside the underwater cave.
step
Watch the dialogue
|tip Inside the underwater cave.
kill Muckscale Serpentus##63466 |q 31179/2 |goto Dread Wastes/0 25.71,50.97
step
Leave the underwater cave |goto Dread Wastes/0 25.72,53.98 < 30 |walk |only if subzone("Muckscale Grotto") and indoors()
talk Rik'kal the Dissector##65253
turnin The Zan'thik Dig##31605 |goto Dread Wastes/0 31.80,88.95
accept The Dissector Wakens##31606 |goto Dread Wastes/0 31.80,88.95
step
Kill the enemies that attack
Waken the Paragon |q 31606/1 |goto Dread Wastes/0 31.80,88.95
step
talk Rik'kal the Dissector##65253
turnin The Dissector Wakens##31606 |goto Dread Wastes/0 31.80,88.95
step
talk Kil'ruk the Wind-Reaver##62538
turnin The Scent of Blood##31179 |goto Dread Wastes/0 55.06,35.85
]])
QuestCore:RegisterGuide("Leveling Guides\\Pandaria (85-90)\\Dominance Offensive",{
expansion="mists",
startlevel=90,
description="This guide will take you through quests for the Dominance Offensive.",
patch='50500',
mopready=true
},[[
step
talk Sunwalker Dezco##64566
accept Meet the Scout##32249 |goto Vale of Eternal Blossoms/0 61.00,22.81
step
talk Scout Rokla##67812
turnin Meet the Scout##32249 |goto Krasarang Wilds/0 8.73,64.36
step
Watch the dialogue
talk Garrosh Hellscream##62092
|tip He will eventually reach the beach.
accept The Might of the Warchief##32250 |goto Krasarang Wilds/0 8.67,64.45
stickystart "Slay_Alliance_Troops"
step
talk Blood Guard Gro'tash##67927
|tip Kill any enemies he is attacking.
Find Blood Guard Gro'tash |q 32250/2 |goto Krasarang Wilds/0 10.70,53.16
step
talk Grizzle Gearslip##67926
|tip Kill any enemies he is attacking.
Find Grizzle Gearslip |q 32250/3 |goto Krasarang Wilds/0 15.73,57.76
step
label "Slay_Alliance_Troops"
kill Alliance Sentinel##67900, Alliance Footman##67901, Alliance Priest##67902
Slay #25# Alliance |q 32250/1 |goto Krasarang Wilds/0 11.51,61.24
step
_Next to you:_
talk Garrosh Hellscream##62092
turnin The Might of the Warchief##32250 |goto Krasarang Wilds/0 11.51,61.24
accept Domination Point##32108 |goto Krasarang Wilds/0 11.51,61.24
step
click Signal Fire##216274
turnin Domination Point##32108 |goto Krasarang Wilds/0 8.46,63.92
step
talk Kromthar##67785
fpath Domination Point |goto Krasarang Wilds/0 9.69,52.51
step
Complete the _"Dagger in the Dark"_ Scenario
|tip Refer to the scenario guide to accomplish this.
Click Here to Load the "Dagger in the Dark" Scenario Guide |loadguide "Dungeon Guides\\Pandaria Scenarios\\Dagger in the Dark"
|tip
Click here if you have completed the scenario |confirm
step
Reach 950/6000 Friendly with the Dominance Offensive Faction |complete repval("Dominance Offensive",Friendly) >= 950
step
talk General Nazgrim##67939
accept Rise Of An Empire##32256 |goto Krasarang Wilds/0 10.38,53.71
step
talk Tak-Tak##68681
Select _"Take me to the Valley of Emperors."_ |gossip 130595
Ride Tak-Tak's Kite |invehicle |goto Krasarang Wilds/0 9.90,52.40 |q 32256
step
Watch the dialogue
Reach The Golden Terrace |outvehicle |goto Vale of Eternal Blossoms/0 59.10,20.19 |q 32256 |notravel
step
Find Garrosh at the Shrine of Two Moons |q 32256/1 |goto Shrine of Two Moons/2 32.20,84.59
|tip Upstairs inside the building.
step
talk Garrosh Hellscream##67840
|tip Upstairs inside the building.
turnin Rise Of An Empire##32256 |goto Shrine of Two Moons/2 32.20,84.59
accept Buried Secrets##32242 |goto Shrine of Two Moons/2 32.20,84.59
step
talk Fanlyr Silverthorn##67834
turnin Buried Secrets##32242 |goto Vale of Eternal Blossoms/0 20.95,15.58
accept Voice of the Gods##32257 |goto Vale of Eternal Blossoms/0 20.95,15.58
step
click Mercurial Guardian
Investigate the Mercurial Guardian |q 32257/1 |goto Vale of Eternal Blossoms/0 18.11,11.85
step
kill Mercurial Guardian##67833
|tip It will come to life and attack you.
collect Ancient Korune Tablet##92425 |q 32257/2 |goto Vale of Eternal Blossoms/0 18.11,11.85
step
talk Fanlyr Silverthorn##67834
turnin Voice of the Gods##32257 |goto Vale of Eternal Blossoms/0 20.95,15.58
step
Reach 4900/6000 Friendly with the Dominance Offensive Faction |complete repval("Dominance Offensive",Friendly) >= 4900
step
talk Messenger Grummle##67865
accept Someone You Should See##32284 |goto Krasarang Wilds/0 10.69,53.69
step
talk Tak-Tak##68681
Select _"Take me to Binan Village."_ |gossip 130593
Ride Tak-Tak's Kite |invehicle |goto Krasarang Wilds/0 9.90,52.40 |q 32284
step
Watch the dialogue
Reach Binan Village |outvehicle |goto Kun-Lai Summit/0 72.44,94.11 |q 32284 |notravel
step
Find Chen Stormstout at Binan Village |q 32284/1 |goto Kun-Lai Summit/0 71.66,93.22
|tip Inside the building.
step
talk Chen Stormstout##67866
|tip Inside the building.
turnin Someone You Should See##32284 |goto Kun-Lai Summit/0 71.66,93.22
accept Regeneration Takes Time##32318 |goto Kun-Lai Summit/0 71.66,93.22
step
Kill enemies around this area |kill Summit Sprite##68026,Sinister Needle##68027
|tip All over the cliffs.
collect 10 Sturdy Needle##92499 |q 32318/1 |goto Kun-Lai Summit/0 77.56,91.52
step
talk Chen Stormstout##67866
|tip Inside the building.
turnin Regeneration Takes Time##32318 |goto Kun-Lai Summit/0 71.66,93.22
step
talk Vol'jin##68023
|tip Inside the building.
accept Find Thrall!##32319 |goto Kun-Lai Summit/0 71.63,93.20
step
use Vol'jin's Hearthstone##92510
Use Vol'jin's Hearthstone |q 32319/1 |goto Kun-Lai Summit/0 71.63,93.20
step
talk Thrall##68025
turnin Find Thrall!##32319 |goto Valley of Trials/0 44.61,66.73
accept The Horde Is Family##32320 |goto Valley of Trials/0 44.61,66.73
step
kill Kor'kron Soulbreaker##68342
|tip Stay close to thrall and follow him to the Echo Isles.
|tip The Kor'kron Soulbreaker will attack you after they talk.
Escort Thrall to the Echo Isles |q 32320/1 |goto Echo Isles/0 38.51,46.45
step
talk Thrall##68025
turnin The Horde Is Family##32320 |goto Echo Isles/0 38.39,46.47
accept De-Subjugation##32372 |goto Echo Isles/0 38.39,46.47
stickystart "Kill_Kor'kron_Overseers"
stickystart "Kill_Kor'kron_Subjugators"
step
kill Gul'tar the Subjugator##68048 |q 32372/3 |goto Echo Isles/0 61.86,66.25
|tip Inside the building.
|tip He is elite, but easy to kill.
|tip You will get help from other NPCs during the battle.
step
label "Kill_Kor'kron_Overseers"
kill 10 Kor'kron Overseer##68041 |q 32372/1 |goto Echo Isles/0 56.53,51.82
step
label "Kill_Kor'kron_Subjugators"
kill 5 Kor'kron Subjugator##68044 |q 32372/2 |goto Echo Isles/0 56.53,51.82
step
talk Thrall##68025
turnin De-Subjugation##32372 |goto Echo Isles/0 58.59,62.02
step
click Portal to Domination Point
Take the Portal to Domination Point |complete subzone("Domination Point") or completedq(32190) |goto Echo Isles/0 58.86,61.16
step
Reach 2850/12000 Honored with the Dominance Offensive Faction |complete repval("Dominance Offensive",Honored) >= 2850
step
talk General Nazgrim##67939
accept To Mogujia##32190 |goto Krasarang Wilds 10.40,53.70
step
talk Tak-Tak##68681
Select _"Take me to Mogujia."_ |gossip 130594
Ride Tak-Tak's Kite |invehicle |goto Krasarang Wilds 9.90,52.40 |q 32190
step
Watch the dialogue
Take Tak-Tak's kite to Mogujia |q 32190/1 |goto Kun-Lai Summit/0 57.40,78.80 |notravel
step
talk Lor'themar Theron##67581
turnin To Mogujia##32190 |goto Kun-Lai Summit/0 57.07,79.01
accept Bloodlines##32192 |goto Kun-Lai Summit/0 57.07,79.01
step
talk Fanlyr Silverthorn##67603
accept Ancient Guardians##32191 |goto Kun-Lai Summit/0 57.12,78.59
accept The Korune##32244 |goto Kun-Lai Summit/0 57.12,78.59
stickystart "Free_Blood_elves"
stickystart "Kill_Korune_Guardians"
step
kill Korune Spellweaver##67752
|tip Loot it from the spellweaver.
collect Korune Codex##92072 |q 32244/1 |goto Kun-Lai Summit/0 58.12,70.92
step
label "Free_Blood_elves"
kill Korune Warden##67587+
|tip They are next to floating captive Blood Elves.
Free #6# Blood Elves |q 32192/1 |goto Kun-Lai Summit/0 58.13,75.19
step
label "Kill_Korune_Guardians"
kill 5 Korune Guardian##67574+ |q 32191/1 |goto Kun-Lai Summit/0 58.13,75.19
step
talk Fanlyr Silverthorn##67603
turnin Ancient Guardians##32191 |goto Kun-Lai Summit/0 57.12,78.59
turnin The Korune##32244 |goto Kun-Lai Summit/0 57.12,78.59
step
talk Lor'themar Theron##67581
turnin Bloodlines##32192 |goto Kun-Lai Summit/0 57.07,79.01
step
Reach 6800/12000 Honored with the Dominance Offensive Faction |complete repval("Dominance Offensive",Honored) >= 6800
step
talk General Nazgrim##67939
accept To the Valley!##32376 |goto Krasarang Wilds/0 10.38,53.71
step
talk Tak-Tak##68681
Select _"Take me to the Valley of Emperors."_ |gossip 40752
Ride Tak-Tak's Kite |invehicle |goto Krasarang Wilds/0 9.90,52.40 |q 32376
step
Watch the dialogue
Find Your "Friend From Silvermoon" |q 32376/1 |goto Kun-Lai Summit/0 53.84,49.01 |notravel
step
talk Lor'themar Theron##68370
turnin To the Valley!##32376 |goto Kun-Lai Summit/0 53.83,49.23
accept Legacy of the Korune##32379 |goto Kun-Lai Summit/0 53.83,49.23
accept Clearing a Path##32378 |goto Kun-Lai Summit/0 53.83,49.23
stickystart "Collect_Sealed_Korune_Artifact"
stickystart "Slay_Korune_Mogu"
step
click Legacy of the Korune
collect Legacy of the Korune##92802 |q 32379/2 |goto Kun-Lai Summit/0 56.93,47.74
step
kill Korune Mutilator##68401+
collect Korune Orders##92801 |q 32379/1 |goto Kun-Lai Summit/0 55.43,47.25
step
label "Collect_Sealed_Korune_Artifact"
kill Korune Sha-weaver##68410+
collect Sealed Korune Artifact##92803 |q 32379/3 |goto Kun-Lai Summit/0 55.43,47.25
step
label "Slay_Korune_Mogu"
Kill Korune enemies around this area |kill Korune Sha-weaver##68410,Korune Mutilator##68401
Slay #10# Korune Enemies |q 32378/1 |goto Kun-Lai Summit/0 55.43,47.25
step
talk Lor'themar Theron##68370
turnin Clearing a Path##32378 |goto Kun-Lai Summit/0 53.83,49.23
turnin Legacy of the Korune##32379 |goto Kun-Lai Summit/0 53.83,49.23
accept Trapping the Leader##32384 |goto Kun-Lai Summit/0 53.83,49.23
step
Enter the tomb here |goto Kun-Lai Summit/0 55.91,46.15 < 15 |walk
kill Shan Kien##68378
|tip Inside the tomb.
Weaken Shan Kien |q 32384/1 |goto Kun-Lai Summit/0 56.74,44.10
step
talk Lor'themar Theron##68370
turnin Trapping the Leader##32384 |goto Kun-Lai Summit/0 53.83,49.23
step
Reach 10750/12000 Honored with the Dominance Offensive Faction |complete repval("Dominance Offensive",Honored) >= 10750
step
talk General Nazgrim##67939
accept Echoes of Thunder##32351 |goto Krasarang Wilds/0 10.38,53.71
step
talk Tak-Tak##68681
Select _"Take me to the Shrine of Two Moons."_ |gossip 130596
Ride Tak-Tak's Kite |invehicle |goto Krasarang Wilds/0 9.90,52.40 |q 32351
step
Watch the dialogue
Reach the Shrine of Two Moons |outvehicle |goto Vale of Eternal Blossoms/0 59.10,20.30 |q 32351 |notravel
step
Find Baine Bloodhoof at the Shrine of Two Moons |q 32351/1 |goto Shrine of Two Moons/2 68.58,43.85
|tip Upstairs inside the building.
step
talk Baine Bloodhoof##68287
|tip Upstairs inside the building.
turnin Echoes of Thunder##32351 |goto Shrine of Two Moons/2 68.58,43.85
accept A Gathering Storm##32352 |goto Shrine of Two Moons/2 68.58,43.85
step
clicknpc Sha-Touched Grunt##68284+
|tip They look like black and white NPCs laying on the ground on shifting patches of black inside the building.
kill Sha-Touched Grunt##68284+
Save #6# Sha-Touched Grunts |q 32352/1 |goto Shrine of Two Moons/1 51.12,62.76
step
talk Garrosh Hellscream##67840
|tip Upstairs inside the building.
turnin A Gathering Storm##32352 |goto Shrine of Two Moons/2 65.38,46.37
step
Reach 2700/12000 Revered with the Dominance Offensive Faction |complete repval("Dominance Offensive",Revered) >= 2700
step
talk General Nazgrim##67939
accept Get My Results!##32329 |goto Krasarang Wilds/0 10.38,53.71
step
talk Lor'themar Theron##16802
turnin Get My Results!##32329 |goto Silvermoon City/0 53.81,20.26
accept What's in the Box?##32330 |goto Silvermoon City/0 53.81,20.26
step
talk Arcanis Mechanica##68430
Locate the Arcanis Mechanica |q 32330/1 |goto Silvermoon City/0 86.60,32.70
step
talk Archmage Aethas Sunreaver##68086
|tip Jump down the hole in the upper rome.
Select _"Lor'themar wants a status update on the experiment."_ |gossip 130521
Speak with Archmage Aethas Sunreaver |q 32330/2 |goto Silvermoon City/0 92.24,37.82
step
talk Grand Magister Rommath##68085
Select _"Lor'themar wants a status update on the experiment."_ |gossip 130522
Speak with Grand Magister Rommath |q 32330/3 |goto Silvermoon City/0 92.32,37.15
step
click Intensifier Disc
|tip On the face of the large box.
Watch the dialogue
kill Concentrated Sha##68259 |q 32330/4 |goto Silvermoon City/0 92.46,37.57
step
talk Lor'themar Theron##68084
turnin What's in the Box?##32330 |goto Silvermoon City/0 91.13,37.52
step
click Portal to Domination Point
Return to Domination Point |complete subzone("Domination Point") or completedq(32363) |goto Silvermoon City/0 86.37,32.92
step
Reach 6650/12000 Revered with the Dominance Offensive Faction |complete repval("Dominance Offensive",Revered) >= 6650
step
talk General Nazgrim##67939
accept The Kun-Lai Expedition##32363 |goto Krasarang Wilds/0 10.38,53.71
step
talk Tak-Tak##68681
Select _"Take me to Garrosh'ar Advance."_ |gossip 130597
Ride Tak-Tak's Kite |invehicle |goto Krasarang Wilds/0 9.90,52.40 |q 32363
step
Watch the dialogue
Take Tak-Tak's Kite to Garrosh'ar Advance |q 32363/1 |goto Kun-Lai Summit/0 60.58,55.09 |notravel
step
talk Baine Bloodhoof##68287
turnin The Kun-Lai Expedition##32363 |goto Kun-Lai Summit/0 60.35,55.14
accept Ties with the Past##32448 |goto Kun-Lai Summit/0 60.35,55.14
step
Enter the cave |goto Kun-Lai Summit/0 63.20,42.18 < 20
kill Varatus the Conqueror##68907
|tip Inside the cave.
collect Spirit Essence of Varatus##93212 |q 32448/1 |goto Kun-Lai Summit/0 63.92,45.12
step
talk Baine Bloodhoof##68287
turnin Ties with the Past##32448 |goto Kun-Lai Summit/0 60.35,55.14
accept Memory Wine##32368 |goto Kun-Lai Summit/0 60.35,55.14
step
use the Memory Wine##92756
Drink the Memory Wine |q 32368/1 |goto Kun-Lai Summit/0 60.35,55.14
step
Watch the dialogue
Witness Shan Kien's Past |q 32368/2
step
talk Baine Bloodhoof##68287
turnin Memory Wine##32368 |goto Kun-Lai Summit/0 60.35,55.14
step
Reach 8665/12000 Revered with the Dominance Offensive Faction |complete repval("Dominance Offensive",Revered) >= 8665
step
talk General Nazgrim##67939
accept The Ruins of Korune##32391 |goto Krasarang Wilds/0 10.38,53.71
step
talk Tak-Tak##68681
Select _"Take me to the Ruins of Korune."_ |gossip 130598
Ride Tak-Tak's Kite |invehicle |goto Krasarang Wilds/0 9.90,52.40 |q 32391
step
Watch the dialogue
Take Tak-Tak's Kite to the Ruins of Korune |q 32391/1 |goto Kun-Lai Summit/0 32.72,25.82 |notravel
step
talk Ishi##68337
turnin The Ruins of Korune##32391 |goto Kun-Lai Summit/0 32.88,26.35
accept The Divine Bell##32392 |goto Kun-Lai Summit/0 32.88,26.35
step
Follow the path |goto Kun-Lai Summit/20 39.70,58.24 < 10 |walk
|tip Walk on blue tiles only, avoiding the yellow and red tiles, and tiles with arrows on them.
|tip Avoid big round red circles on the ground.
|tip Large Mogu statues will slam the ground in front of them after a few seconds.
|tip Each area where you encounter Sarannha, enemies will jump out and attack you.
kill Sarannha Skyglaive##68472 |q 32392/1 |goto Kun-Lai Summit/21 60.40,23.49
|tip Downstairs inside the building.
step
talk Ishi##68337
turnin The Divine Bell##32392 |goto Kun-Lai Summit/21 61.79,25.59
step
Reach 15500/12000 Revered with the Dominance Offensive Faction |complete repval("Dominance Offensive",Revered) >= 15500
step
talk General Nazgrim##67939
accept Insertion##32326 |goto Krasarang Wilds/0 10.38,53.71
step
click Sunreaver Portal: Darnassus
Take the Portal to Darnassus |q 32326/1 |goto Krasarang Wilds/0 9.77,53.30
step
talk Fanlyr Silverthorn##68077
turnin Insertion##32326 |goto Teldrassil/0 40.06,50.44
accept The Darnassus Mission##32327 |goto Teldrassil/0 40.06,50.44
step
talk Fanlyr Silverthorn##68077
Select _"Yes."_ |gossip 130507
|tip You will gain a steal buff allowing you to infiltrate the hostile city safely.
Become a Darnassus Invader |complete hasbuff(134053) or completedq(32327) |goto Teldrassil/0 40.06,50.44
step
Find the Cenarion Enclave |q 32327/1 |goto Darnassus/0 38.18,33.37
|tip Go down inside the tree.
|tip Avoid going near guards, who will see through your invisibility.
step
extraaction Sunreavers' Portal-Charm##134055
|tip Use this ability if you get in trouble.
|tip It will teleport you back to Fanlyr.
|tip It appears as a button on your screen.
click Divine Bell##216678
|tip Down inside the tree.
|tip Avoid going near guards, who will see through your invisibility.
|tip You can safely walk within 5 yards or so of them.
|tip You will be teleported back to Fanlyr once you locate the bell.
Locate the Devine Bell |q 32327/2 |goto Darnassus/0 39.91,39.69
step
extraaction Sunreavers' Portal-Charm##134055
|tip Use it to teleport you back to Fanlyr.
|tip It appears as a button on your screen.
Teleport back to Teldrassil |complete subzone("Teldrassil") or completedq(32327)
step
talk Fanlyr Silverthorn##68077
turnin The Darnassus Mission##32327 |goto Teldrassil/0 40.06,50.44
accept Victorious Return##32328 |goto Teldrassil/0 40.06,50.44
step
click Portal: Domination Point
Return to Domination Point |complete subzone("Domination Point") or completedq(32328) |goto Teldrassil/0 40.01,50.55
step
talk General Nazgrim##67939
turnin Victorious Return##32328 |goto Krasarang Wilds/0 10.38,53.71
step
Reach 18500/12000 Revered with the Dominance Offensive Faction |complete repval("Dominance Offensive",Revered) >= 18500
step
talk General Nazgrim##67939
accept The Situation in Dalaran##32402 |goto Krasarang Wilds/0 10.38,53.71
step
talk Tak-Tak##68681
Select _"I need to get to Dalaran."_ |gossip 130606
Ride Tak-Tak's Kite |invehicle |goto Krasarang Wilds/0 9.90,52.40 |q 32402
step
talk Kromthar##67785
Select _"I need to get to Dalaran."_ |gossip 40692
Obtain a Ride to Dalaran |q 32402/1 |goto Krasarang Wilds/0 9.69,52.51 |notravel
step
Watch the dialogue
Arrive In Dalaran |complete subzone("The Underbelly") or completedq(32402)
step
talk Grand Magister Rommath##68586
turnin The Situation in Dalaran##32402 |goto Dalaran P Sewers/0 31.45,50.12
accept It Starts in the Sewers##32403 |goto Dalaran P Sewers/0 31.46,50.09
step
talk Sunreaver Citizen##68695
|tip You can find them all over the sewer.
Select _"It's not safe here anymore. You need to evacuate Dalaran."_ |gossip 130603
Evacuate #9# Sunreaver Citizens |q 32403/1 |goto Dalaran P Sewers/0 38.89,50.59
step
talk Grand Magister Rommath##68586
turnin It Starts in the Sewers##32403 |goto Dalaran P Sewers/0 45.61,53.55
accept Violence in the Arena##32404 |goto Dalaran P Sewers/0 45.61,53.55
stickystart "Kill_Silver_Covenant_Spellbows"
step
kill 6 Silver Covenant Enforcer##68042 |q 32404/1 |goto Dalaran P Sewers/0 48.88,45.58
step
label "Kill_Silver_Covenant_Spellbows"
kill 4 Silver Covenant Spellbow##68043 |q 32404/2 |goto Dalaran P Sewers/0 47.06,45.25
step
talk Grand Magister Rommath##68586
turnin Violence in the Arena##32404 |goto Dalaran P Sewers/0 54.52,27.97
accept Hand of the Silver Covenant##32405 |goto Dalaran P Sewers/0 54.52,27.97
step
kill Sorin Magehand##32405 |q 32405/1 |goto Dalaran P Sewers/0 62.68,13.08
step
talk Grand Magister Rommath##68586
turnin Hand of the Silver Covenant##32405 |goto Dalaran P Sewers/0 64.63,48.67
accept A Tactical Assault##32406 |goto Dalaran P Sewers/0 64.63,48.67
step
Leave the Dalaran Sewers |goto Dalaran P Sewers/0 65.39,46.86 < 10
talk Grand Magister Rommath##68586
|tip Run through the building with Rommath.
turnin A Tactical Assault##32406 |goto Dalaran P/0 50.58,48.09
accept The Silver Covenant's Stronghold##32408 |goto Dalaran P/0 50.58,48.09
accept The Kirin Tor's True Colors##32409 |goto Dalaran P/0 50.58,48.09
accept Krasus' Landing##32410 |goto Dalaran P/0 50.58,48.09
stickystart "Slay_Stormwind_Troops"
step
kill Arcanist Rathaella##68049 |q 32408/1 |goto Dalaran P/0 36.15,64.06
step
kill Lieutenant Corwin##68047 |q 32409/1 |goto Dalaran P/0 46.11,19.67
|tip He walks around this area.
step
label "Slay_Stormwind_Troops"
Kill Stormwind enemies around this area |kill Stormwind Footman##68707,Stormwind Cleric##68708
Slay #10# Stormwind Troops |q 32409/2 |goto Dalaran P/0 49.45,26.43
step
clicknpc Sunreaver Dragonhawk##68728
Free #6# Sunreaver Dragonhawks |q 32410/1 |goto Dalaran P/0 72.68,45.65
step
talk Grand Magister Rommath##68586
turnin The Silver Covenant's Stronghold##32408 |goto Dalaran P/0 50.58,48.09
turnin The Kirin Tor's True Colors##32409 |goto Dalaran P/0 50.58,48.09
turnin Krasus' Landing##32410 |goto Dalaran P/0 50.58,48.09
accept The Remaining Sunreavers##32411 |goto Dalaran P/0 50.58,48.09
step
use the Tear of the Sin'dorei##93124
|tip Upstairs inside the building.
Rescue Magister Surdiel |q 32411/4 |goto Dalaran P/0 58.70,27.82
step
use the Tear of the Sin'dorei##93124
|tip Upstairs inside the building.
Rescue High Arcanist Savor |q 32411/2 |goto Dalaran P/0 60.36,14.16
step
use the Tear of the Sin'dorei##93124
|tip Inside the building.
Rescue Magistrix Vesara |q 32411/5 |goto Dalaran P/0 65.78,23.06
step
use the Tear of the Sin'dorei##93124
|tip Inside the building.
Rescue Uda the Beast |q 32411/1 |goto Dalaran P/0 70.08,34.35
step
use the Tear of the Sin'dorei##93124
|tip Upstairs inside the building.
Rescue Magister Hathorel |q 32411/3 |goto Dalaran P/0 66.95,35.36
step
talk Grand Magister Rommath##68586
turnin The Remaining Sunreavers##32411 |goto Dalaran P/0 50.58,48.09
accept One Last Grasp##32412 |goto Dalaran P/0 50.58,48.09
step
kill Mage-Commander Zuros##68632 |q 32412/1 |goto Dalaran P/0 29.48,48.39
|tip Inside the building.
step
Watch the dialogue
click Rommath's Portal
|tip Inside the building.
Return to the Sewers |complete subzone("Cantrips & Crows") or completedq(32412) |goto Dalaran P/0 29.00,48.29
step
Escape from Dalaran |q 32412/2 |goto Dalaran P Sewers/0 8.96,88.64
|tip Jump out of the sewer.
|tip A Dragonhawk will catch you before you die.
step
talk Lor'themar Theron##16802
turnin One Last Grasp##32412 |goto Silvermoon City/0 71.02,41.26
step
click Portal to Domination Point
Return to Domination Point |complete subzone("Domination Point") or completedq(32398) |goto Silvermoon City/0 70.28,41.68
step
talk General Nazgrim##67939
accept The Bell Speaks##32398 |goto Krasarang Wilds/0 10.38,53.71
step
talk Tak-Tak##68681
Select _"Take me to Emperor's Reach."_ |gossip 130599
Ride Tak-Tak's Kite |invehicle |goto Krasarang Wilds/0 9.90,52.40 |q 32398
step
Watch the dialogue
Take Tak-Tak's Kite to Emperor's Reach |q 32398/1 |goto Kun-Lai Summit/0 55.92,33.83 |notravel
step
talk Malkorok##67844
turnin The Bell Speaks##32398 |goto Kun-Lai Summit/0 55.89,34.07
accept Breath of Darkest Shadow##32399 |goto Kun-Lai Summit/0 55.89,34.07
step
Watch the dialogue
kill Kor'kron Reaver##68940+
|tip Wait until the Horde become afflicted by the Sha.
|tip Once the Juggernauts are defeated, Ishi will get possessed.
kill Ishi##68225 |q 32399/1 |goto Kun-Lai Summit/0 55.82,31.93
|tip Run through gold orbs for healing.
|tip Stay out of shadow areas on the ground.
step
Watch the dialogue
kill Anduin Wrynn##68224 |q 32399/2 |goto Kun-Lai Summit/0 56.01,31.92
|tip Garrosh will break free and defeat him.
step
talk Garrosh Hellscream##68223
turnin Breath of Darkest Shadow##32399 |goto Kun-Lai Summit/0 55.96,32.00
]])
QuestCore:RegisterGuide("Leveling Guides\\Pandaria (85-90)\\Trial of the Black Prince",{
expansion="mists",
condition_end="achieved(7533)",
description="Prove your worth to Wrathion and acquire a sha-touched gem upgrade.",
},[[
step
talk Kurong Caskhead##64047
accept Stranger in a Strange Land##31488 |goto Shrine of Two Moons/1 62.2,13.2
step
turnin Wrathion##64616
|tip Inside the building.
turnin Stranger in a Strange Land##31488 |goto The Veiled Stair/0 54.6,72.6
accept A Legend in the Making##31454 |goto The Veiled Stair/0 54.6,72.6
step
Share a Drink with Wrathion |q 31454/1 |goto The Veiled Stair/0 54.6,72.6
step
turnin Wrathion##64616
|tip Inside the building.
turnin A Legend in the Making##31454 |goto The Veiled Stair/0 54.6,72.6
accept The Strength of One's Foes##31473 |goto The Veiled Stair/0 54.5,72.6
accept Trial of the Black Prince##31468 |goto The Veiled Stair/0 54.5,72.6
stickystart "Collect_Sigil_of_Wisdom"
stickystart "Reach_Honored_with_the_Black_Prince"
step
collect 10 Sigil of Power##87208 |q 31473/1
|tip You will need to gather these from raids.
|tip Mogu'shan Vaults, Heart of Fear, and Terrace of Endless Spring bosses drop these.
step
label "Collect_Sigil_of_Wisdom"
collect 10 Sigil of Wisdom##87209 |q 31473/2
|tip You will need to gather these from raids. |notinsticky
|tip Mogu'shan Vaults, Heart of Fear, and Terrace of Endless Spring bosses drop these. |notinsticky
step
label "Reach_Honored_with_the_Black_Prince"
kill Krik'thik Needler##63976, Krik'thik Locust-Guard##63974
Reach Honored with the Black Prince. |q 31468/1 |goto Vale of Eternal Blossoms/0 11.5,58.4
|tip This will take a lot of grinding.
|tip You start out Neutral with The Black Prince, and you will have to gain about 6,200 rep in order to reach Honored.
step
talk Wrathion##64616
|tip Inside the building.
turnin The Strength of One's Foes##31473 |goto The Veiled Stair/0 54.5,72.6
turnin Trial of the Black Prince##31468 |goto The Veiled Stair/0 54.5,72.6
accept Fear Itself##31481 |goto The Veiled Stair/0 54.5,72.6
step
This will require you to go into the _Terrace of Endless Spring_ and take down the _Sha of Fear_.
|tip You can use the Raid finder to take down this boss.
|confirm
step
kill Sha of Fear##60999
|tip You can kill it on any raid difficulty.
collect Chimera of Fear##87210 |q 31481/1 |goto Terrace of Endless Spring/0 39.1,48.3
|tip Loot it from the Sha of Fear.
step
talk Wrathion##64616
|tip Inside the building.
turnin Fear Itself##31481 |goto The Veiled Stair/0 54.5,72.6
accept Breath of the Black Prince##31482 |goto The Veiled Stair/0 54.5,72.6
step
talk Wrathion##64616
|tip Inside the building.
accept Incoming...##31483 |goto The Veiled Stair/0 54.5,72.6
step
talk Sunwalker Dezco##64566
accept Meet the Scout##32249 |goto Vale of Eternal Blossoms/0 62.92,28.17
step
talk Scout Rokla##67812
turnin Meet the Scout##32249 |goto Krasarang Wilds/0 8.73,64.36
step
Watch the dialogue
talk Garrosh Hellscream##62092
|tip He will eventually reach the beach.
accept The Might of the Warchief##32250 |goto Krasarang Wilds/0 8.67,64.45
stickystart "Slay_Alliance_Troops"
step
talk Blood Guard Gro'tash##67927
|tip Kill any enemies he is attacking.
Find Blood Guard Gro'tash |q 32250/2 |goto Krasarang Wilds/0 10.70,53.16
step
talk Grizzle Gearslip##67926
|tip Kill any enemies he is attacking.
Find Grizzle Gearslip |q 32250/3 |goto Krasarang Wilds/0 15.73,57.76
step
label "Slay_Alliance_Troops"
kill Alliance Sentinel##67900, Alliance Footman##67901, Alliance Priest##67902
Slay #25# Alliance |q 32250/1 |goto Krasarang Wilds/0 11.51,61.24
step
_Next to you:_
talk Garrosh Hellscream##62092
turnin The Might of the Warchief##32250 |goto Krasarang Wilds/0 11.51,61.24
accept Domination Point##32108 |goto Krasarang Wilds/0 11.51,61.24
step
click Signal Fire##216274
turnin Domination Point##32108 |goto Krasarang Wilds/0 8.46,63.92
step
talk Kromthar##67785
fpath Domination Point |goto Krasarang Wilds/0 9.69,52.51
step
talk Wrathion##64616
|tip Inside the building.
turnin Incoming...##31483 |goto The Veiled Stair/0 54.5,72.6
accept A Test of Valor##32476 |goto The Veiled Stair/0 54.5,72.6
accept The Measure of a Leader##32427 |goto The Veiled Stair/0 54.5,72.6
step
talk Wrathion##64616
Talk to Wrathion about the Horde |q 32427/1 |goto The Veiled Stair/0 54.5,72.6
step
talk Wrathion##64616
turnin The Measure of a Leader##32427 |goto The Veiled Stair/0 54.5,72.6
accept The Prince's Pursuit##32429 |goto The Veiled Stair/0 54.5,72.6
step
kill Lion's Landing Priest##67512, Dwarven Mortar Team Engineer##67545, Shieldwall Rifleman##67297, Shieldwall Vindicator##67296, Shieldwall Footman##67304, Thane Stonehearth##67636
Earn Revered Status with The Black Prince |q 32429/1 |goto Krasarang Wilds/0 82.3,25.6
step
talk Wrathion##64616
turnin The Prince's Pursuit##32429 |goto The Veiled Stair/0 54.5,72.6
step
Earn 3,000 Valor |q 32476/1
|tip You will need to acquire 3,000 Valor Points from the time you pick up the A Test of Valor quest.
|tip This quest will take around 3 weeks to complete if you hit the valor cap every week.
|tip Previous valor points you acquired before accepting this quest will not count.
step
talk Wrathion##64616
turnin A Test of Valor##32476 |goto The Veiled Stair/0 54.5,72.6
accept Glory to the Horde##32431 |goto The Veiled Stair/0 54.5,72.6
accept A Change of Command##32430 |goto The Veiled Stair/0 54.5,72.6
label "Win_a_Battle_at_Silvershard_Mines"
step
Win a Battle at Temple of Kotmogu |q 32431/1
|tip Open your PvP menu and queue up for either Temple of Kotmogu or Silvershard Mines.
|tip You will need to win a battle at both locations to complete this quest.
step
label "Win_a_Battle_at_Silvershard_Mines"
Win a Battle at Silvershard Mines |q 32431/2
|tip Open your PvP menu and queue up for either Temple of Kotmogu or Silvershard Mines. |notinsticky
|tip You will need to win a battle at both locations to complete this quest. |notinsticky
step
kill High Marshal Twinbraid##67801 |q 32430/1 |goto Krasarang Wilds 86.6,25.4
|tip You may need help with this.
step
talk Wrathion##64616
turnin Glory to the Horde##32431 |goto The Veiled Stair/0 54.5,72.6
turnin A Change of Command##32430 |goto The Veiled Stair/0 54.5,72.6
accept The Soul of the Horde##32432 |goto The Veiled Stair/0 54.5,72.6
step
talk Wrathion##64616
turnin The Soul of the Horde##32432 |goto The Veiled Stair/0 54.9,72.6
step
talk Wrathion##64616
accept Meet Me Upstairs##32590 |goto The Veiled Stair/0 54.5,72.6
step
talk Wrathion##64616 |tip Upstairs in this Tavern.
turnin Meet Me Upstairs##32590 |goto The Veiled Stair/0 54.6,71.8
accept Secrets of the First Empire##32591 |goto The Veiled Stair/0 54.6,71.8
accept I Need a Champion##32592 |goto The Veiled Stair/0 54.6,71.8
step
buy 40 Trillium Bar##102167 |next "done"
|tip You can either buy these materials from the auction house or farm them:
Click Here to Farm These Materials Yourself |confirm |next |only if skill("Mining") >= 600
step
map Townlong Steppes
path	61.6,76.3	59.6,68.3	59.2,58.7
path	63.3,51.7	62.2,44.1	66.8,39.5
path	73.2,46.9	73.2,55.5	75.0,62.7
path	70.5,67.1	68.5,70.7
collect 80 Black Trillium Ore##72094 |q 32592
collect 80 White Trillium Ore##72103 |q 32592
|tip Follow the path Mining along the way.
step
create 40 Trillium Bar##102167 |goto Vale of Eternal Blossoms/3 71.5,51.0 |q 32592
step
label "done"
collect 20 Secrets of the Empire##94593 |q 32592
|tip You will need to run Throne of Thunder and kill bosses to obtain these.
|tip You can go through the raid finder to get these items.
step
kill Animated Warrior##67473+, Shan'ze Bloodseeker##69431+, Shan'ze Animator##70069+
Reach Exalted with The Black Prince |q 32592/1 |goto Isle of Thunder 43.0,55.2
step
talk Wrathion##64616
turnin Secrets of the First Empire##32591 |goto The Veiled Stair/0 54.5,72.6
turnin I Need a Champion##32592 |goto The Veiled Stair/0 54.5,72.6
accept The Thunder Forge##32593 |goto The Veiled Stair/0 54.5,72.6
step
Unlock the Thunder Forge |q 32593/1
|tip Use the Isle of Thunder guide to progress to this point.
|loadguide "Leveling Guides\\Pandaria (85-90)\\Isle of Thunder (90)"
step
talk Wrathion##64616
|tip Tell him you're ready to go.
Complete Wrathion's Task |q 32593/2 |goto The Veiled Stair/0 54.5,72.6
|tip Complete the scenario.
step
talk Wrathion##64616
turnin The Thunder Forge##32593 |goto The Veiled Stair/0 54.5,72.6
accept Spirit of the Storm Lord##32594 |goto The Veiled Stair/0 54.5,72.6
step
use the Lightning Lance##95432
|tip Use it on Nalak.
kill Nalak##69099
collect Tempered Lightning Lance##95433 |goto Isle of Thunder 60.0,37.4
step
talk Wrathion##64616
turnin Spirit of the Storm Lord##32594 |goto The Veiled Stair/0 54.5,72.6
accept The Crown of Heaven##32595 |goto The Veiled Stair/0 54.5,72.6
step
talk Wrathion##64616
turnin The Crown of Heaven##32595 |goto The Veiled Stair/0 75.2,76.4
step
talk Wrathion##64616
accept Echoes of the Titans##32596 |goto The Veiled Stair/0 54.5,72.6
accept Heart of the Thunder King##32597 |goto The Veiled Stair/0 54.5,72.6
stickystart "Collect_Heart_of_the_Thunder_King"
step
collect 12 Titan Runestone##94594 |q 32596/1
|tip You will need to run Throne of Thunder and kill bosses to obtain these.
|tip You will need to kill Lei Shen in the Throne of Thunder for the Heart of the Thunder King.
|tip You can go through the raid finder to get these items.
step
label "Collect_Heart_of_the_Thunder_King"
collect Heart of the Thunder King##94867 |q 32597/1
|tip You will need to kill Lei Shen in the Throne of Thunder for the Heart of the Thunder King.
|tip You can go through the raid finder to get this item. |notinsticky
step
talk Wrathion##64616
turnin Echoes of the Titans##32596 |goto The Veiled Stair/0 54.5,72.6
turnin Heart of the Thunder King##32597 |goto The Veiled Stair/0 54.5,72.6
step
talk Wrathion##64616
accept A Reckoning##32598 |goto The Veiled Stair/0 54.5,72.6
step
talk Wrathion##64616
turnin A Reckoning##32598 |goto The Veiled Stair/0 54.5,72.6
accept Celestial Blessings##32805 |goto The Veiled Stair/0 54.5,72.6
step
Click Here if You Wish to Do the _Healing_ Challenge |confirm |next "heals"
Click Here if You Wish to Do the _Tanking_ Challenge |confirm |next "tank"
Click Here if You Wish to Do the _Melee DPS_ Challenge |confirm |next "meldps"
Click Here if You Wish to Do the _Ranged DPS_ Challenge |confirm |next "randps"
step
label "heals"
talk Yu'lon##70989
Speak with Yu'lon |q 32805/1 |goto The Jade Forest 59.2,59.4
step
talk Xuen##71107
Speak with Xuen |q 32805/3 |goto Kun-Lai Summit 68.8,43.0
step
talk Niuzao##71144
Speak with Niuzao |q 32805/4 |goto Townlong Steppes 41.8,59.2
step
talk Chi-Ji##71169
Speak with Chi-Ji |q 32805/2 |goto Krasarang Wilds 40.4,53.4
step
talk Chi-Ji##71169 |goto Krasarang Wilds 40.4,53.4
Accept Chi-Ji's Challenge
|confirm
step
During this challenge, you will be fighting the humanoid Deathwing alongside Wrathion
|tip You will need to keep both Wrathion and yourself alive during this fight.
|tip Deathwing has 4 main abilities:
|tip Eyes of the Destroyer will cause Deathwing to fixate on Wrathion.
|tip Deathwing deals bonus damage to Wrathion, so heal him as much as possible.
|tip Molten Fury is a stacking DoT that will be cast on you every time you are struck by Deathwing.
|tip Reign of Fire summons a large fire storm which does a lot of damage. This attack is fairly easy to avoid.
|tip Blood of the Deathborn is an interruptable spell, that will spawn a pool of dark red, and deal a ton of damage.
Defeat Deathwing Alongside Wrathion |q 32805/5
step
talk Wrathion##71404
turnin Celestial Blessings##32805 |goto Krasarang Wilds 40.4,54.2
|next "chalcomp"
step
label "tank"
talk Xuen##71107
Speak with Xuen |q 32805/3 |goto Kun-Lai Summit 68.8,43.0
step
talk Yu'lon##70989
Speak with Yu'lon |q 32805/1 |goto The Jade Forest 59.2,59.4
step
talk Chi-Ji##71169
Speak with Chi-Ji |q 32805/2 |goto Krasarang Wilds 40.4,53.4
step
talk Niuzao##71144
Speak with Niuzao |q 32805/4 |goto Townlong Steppes 41.8,59.2
step
talk Niuzao##71144 |goto Townlong Steppes 41.8,59.2
Accept Niuzao's challenge
|confirm
step
During this challenge, you will be fighting the humanoid Deathwing alongside Wrathion
|tip You will need to keep both Wrathion and yourself alive during this fight.
|tip Deathwing has 4 main abilities:
|tip Eyes of the Destroyer will cause Deathwing to fixate on Wrathion.
|tip Deathwing deals bonus damage to Wrathion, so taunt him when this is casted.
|tip Molten Fury is a stacking DoT that will be cast on you every time you are struck by Deathwing.
|tip Reign of Fire summons a large fire storm which does a lot of damage. This attack is fairly easy to avoid.
|tip Blood of the Deathborn is an interruptable spell, that will spawn a pool of dark red, and deal a ton of damage.
Defeat Deathwing Alongside Wrathion |q 32805/5
step
talk Wrathion##71387
turnin Celestial Blessings##32805 |goto Townlong Steppes 41.4,59.6
|next "chalcomp"
step
label "meldps"
talk Yu'lon##70989
Speak with Yu'lon |q 32805/1 |goto The Jade Forest 59.2,59.4
step
talk Chi-Ji##71169
Speak with Chi-Ji |q 32805/2 |goto Krasarang Wilds 40.4,53.4
step
talk Niuzao##71144
Speak with Niuzao |q 32805/4 |goto Townlong Steppes 41.8,59.2
step
talk Xuen##71107
Speak with Xuen |q 32805/3 |goto Kun-Lai Summit 68.8,43.0
step
talk Xuen##71107 |goto Kun-Lai Summit 68.8,43.0
Accept Xuen's Challenge
|confirm
step
During this challenge, you will be fighting against Wrathion
|tip You will need to keep yourself alive during this fight, and dps Wrathion as much as possible.
|tip He has roughly 31 million health and 5 main abilities:
|tip Blindside allows you to do bonus damage to Wrathion while you're behind him.
|tip Crumbling Arc is a frontal cone attack that will deal roughly 200k to you. Move out of this immediately.
|tip Reign of Fire summons a large fire storm which does a lot of damage.
|tip Blood of the Deathborn is an interruptable spell that will spawn a pool of dark blood and deal a ton of damage.
|tip Run out of this if you can't interrupt it.
Defeat Wrathion |q 32805/5
step
talk Wrathion##71317
turnin Celestial Blessings##32805 |goto Kun-Lai Summit 68.8,43.4
|next "chalcomp"
step
label "randps"
talk Xuen##71107
Speak with Xuen |q 32805/3 |goto Kun-Lai Summit 68.8,43.0
step
talk Niuzao##71144
Speak with Niuzao |q 32805/4 |goto Townlong Steppes 41.8,59.2
step
talk Chi-Ji##71169
Speak with Chi-Ji |q 32805/2 |goto Krasarang Wilds 40.4,53.4
step
talk Yu'lon##70989
Speak with Yu'lon |q 32805/1 |goto The Jade Forest 59.2,59.4
step
talk Yu'lon##70989 |goto The Jade Forest 59.2,59.4
Accept Yu'lon's Challenge
|confirm
step
During this challenge, you will be fighting against Wrathion
|tip You will need to keep yourself alive during this fight, and dps Wrathion as much as possible.
|tip He has roughly 31 million health and 5 main abilities:
|tip Blindside allows you to do bonus damage to Wrathion while you're behind him.
|tip Crumbling Arc is a frontal cone attack that will deal roughly 200k to you. Move out of this immediately.
|tip Reign of Fire summons a large fire storm which does a lot of damage.
|tip Blood of the Deathborn is an interruptable spell that will spawn a pool of dark blood and deal a ton of damage.
|tip Run out of this if you can't interrupt it.
Defeat Wrathion |q 32805/5
step
talk Wrathion##71352
turnin Celestial Blessings##32805 |goto The Jade Forest 58.6,59.2
|next "chalcomp"
step
label "chalcomp"
talk Wrathion##71424
accept Cloak of Virtue##32861 |goto The Veiled Stair 73.2,79.4
step
talk Wrathion##71424
turnin Cloak of Virtue##32861 |goto The Veiled Stair 75.2,76.4
accept Preparing to Strike##32870 |goto The Veiled Stair 75.2,76.4
step
talk Wrathion##64616
turnin Preparing to Strike##32870 |goto The Veiled Stair/0 54.5,72.6
accept A Timeless Discovery##33088 |goto The Veiled Stair/0 54.5,72.6
step
talk Wrathion##72695
turnin A Timeless Discovery##33088 |goto Timeless Isle/0 34.4,53.9
accept Secrets of the Timeless Isle##33098 |goto Timeless Isle/0 34.4,53.9
accept The Emperor's Way##33100 |goto Timeless Isle/0 34.4,53.9
step
earn 5000 Timeless Coin##777 |q 33098/1
|tip Kill any creatures on Timeless Isle and loot treasure chests to get Timeless Coins.
step
kill Yu'lon##71955 |q 33100/1 |goto Timeless Isle/0 38.1,54.7
kill Niuzao##71954 |q 33100/4 |goto Timeless Isle/0 38.1,54.7
kill Chi-Ji##71952 |q 33100/2 |goto Timeless Isle/0 38.1,54.7
kill Xuen##71953 |q 33100/3 |goto Timeless Isle/0 38.1,54.7
|tip You will need a group for this.
step
talk Wrathion##72695
turnin Secrets of the Timeless Isle##33098 |goto Timeless Isle/0 34.4,53.9
turnin The Emperor's Way##33100 |goto Timeless Isle/0 34.4,53.9
accept A Pandaren Legend##33104 |goto Timeless Isle/0 34.4,53.9
step
talk Wrathion##72695
turnin A Pandaren Legend##33104 |goto Vale of Eternal Blossoms 83.2,29.6
accept Judgement of the Black Prince##33105 |goto Vale of Eternal Blossoms 83.2,29.6
step
use the Timeless Essence of the Black Dragonflight##102457
|tip Use it on your quest cloak.
|confirm
step
kill Garrosh Hellscream##71865 |q 33105/1
|tip Inside the Siege of Orgrimmar raid.
|tip You can complete this on any difficulty.
step
talk Wrathion##72695
turnin Judgement of the Black Prince##33105 |goto Vale of Eternal Blossoms 83.2,29.6
]])
QuestCore:RegisterGuide("Leveling Guides\\Pandaria (85-90)\\Peak of Serenity\\Monk Daily",{
expansion="mists",
image="WanderingIsle",
monkquest=1,
condition_valid=function() return raceclass('Monk') end,
condition_valid_msg="Monk only.",
condition_suggested=function() return raceclass('Monk') and not completedq(31840) or not completedq(31841) or not completedq(31842) or not completedq(31843) or not completedq(31844) or not completedq(31845) or not completedq(31846) and level >= 20 end,
condition_end=function() return completedq(31840) end,
description="This guide will walk you through the Monk daily for extra experience.",
},[[
mopready=true
step
talk Master Hight##66260
|tip Inside the building.
accept Practice Makes Perfect: Master Cheng##31840	|goto Kun-Lai Summit 48.59,42.70	|or
accept Practice Makes Perfect: Master Woo##31841	|goto Kun-Lai Summit 48.59,42.70	|or
accept Practice Makes Perfect: Master Kistane##31842	|goto Kun-Lai Summit 48.59,42.70	|or
accept Practice Makes Perfect: Master Yoon##31843	|goto Kun-Lai Summit 48.59,42.70	|or
accept Practice Makes Perfect: Master Cheng##31844	|goto Kun-Lai Summit 48.59,42.70	|or
accept Practice Makes Perfect: Master Tsang##31845	|goto Kun-Lai Summit 48.59,42.70	|or
accept Practice Makes Perfect: Master Hsu##31846	|goto Kun-Lai Summit 48.59,42.70	|or
step
talk Master Cheng##66138
Select _"I wish to challenge you."_ |gossip 130192
|tip Follow him as he walks.
kill Master Cheng##66138
|tip Use the {o}/bow{} emote on him to begin the fight. |script DoEmote("BOW")
Complete Master Cheng's Training |q 31840/1 |goto Kun-Lai Summit/0 47.07,40.15
|only if haveq(31840)
step
talk Master Woo##66254
|tip She walks around this area.
Select _"I wish to challenge you."_ |gossip 130188
|tip Follow her as she walks.
kill Master Woo##65960
|tip Use the {o}/bow{} emote on her to begin the fight. |script DoEmote("BOW")
Complete Master Woo's Training |q 31841/1 |goto Kun-Lai Summit/0 48.60,39.52
|only if haveq(31841)
step
talk Master Kistane##66253
Select _"I wish to challenge you."_ |gossip 130187
|tip Follow her as she walks.
kill Master Kistane##65899
|tip Use the {o}/bow{} emote on her to begin the fight. |script DoEmote("BOW")
Complete Master Kistane's Training |q 31842/1 |goto Kun-Lai Summit/0 48.04,39.01
|only if haveq(31842)
step
talk Master Yoon##66255
|tip He walks around this area.
Select _"I wish to challenge you."_ |gossip 130189
|tip Follow him as he walks.
kill Master Yoon##66073
|tip Use the {o}/bow{} emote on him to begin the fight. |script DoEmote("BOW")
Complete Master Yoon's Training |q 31843/1 |goto Kun-Lai Summit/0 48.85,40.53
|only if haveq(31843)
step
talk Master Cheng##66138
|tip She walks around this area.
Select _"I wish to challenge you."_ |gossip 130190
|tip Follow her as he walks.
kill Master Cheng##66138
|tip Use the {o}/bow{} emote on her to begin the fight. |script DoEmote("BOW")
Complete Master Cheng's Training |q 31844/1 |goto Kun-Lai Summit/0 48.57,41.24
|only if haveq(31844)
step
talk Master Tsang##66257
Select _"I wish to challenge you."_ |gossip 130191
|tip Follow him as he walks.
kill Monk Trainee##66101+
|tip Use the {o}/bow{} emote on Master Tsang to begin the fight. |script DoEmote("BOW")
|tip Use your Crackling Jade Lightning ability on them to knock them off the poles.
kill Master Tsang##66149
Complete Master Tsang's Training |q 31845/1 |goto Kun-Lai Summit/0 48.06,41.37
|only if haveq(31845)
step
talk Master Hsu##66207
Select _"I wish to challenge you."_
|tip Follow him as he walks.
kill Master Hsu##65977
|tip Use the {o}/bow{} emote on him to begin the fight. |script DoEmote("BOW")
Complete Master Hsu's Training |q 31846/1 |goto Kun-Lai Summit/0 47.49,40.93
|only if haveq(31846)
step
talk Master Hight##66260
|tip Inside the building.
turnin Practice Makes Perfect: Master Cheng##31840	|goto Kun-Lai Summit 48.59,42.70		|only if haveq(31840) or completedq(31840)
turnin Practice Makes Perfect: Master Woo##31841	|goto Kun-Lai Summit 48.59,42.70		|only if haveq(31841) or completedq(31841)
turnin Practice Makes Perfect: Master Kistane##31842	|goto Kun-Lai Summit 48.59,42.70		|only if haveq(31842) or completedq(31842)
turnin Practice Makes Perfect: Master Yoon##31843	|goto Kun-Lai Summit 48.59,42.70		|only if haveq(31843) or completedq(31843)
turnin Practice Makes Perfect: Master Cheng##31844	|goto Kun-Lai Summit 48.59,42.70		|only if haveq(31844) or completedq(31844)
turnin Practice Makes Perfect: Master Tsang##31845	|goto Kun-Lai Summit 48.59,42.70		|only if haveq(31845) or completedq(31845)
turnin Practice Makes Perfect: Master Hsu##31846	|goto Kun-Lai Summit 48.59,42.70		|only if haveq(31846) or completedq(31846)
]])
QuestCore:RegisterGuide("Leveling Guides\\Pandaria (85-90)\\Peak of Serenity\\Monk Quests",{
expansion="mists",
image="Serenity_Peak",
monkquest=20,
condition_valid=function() return raceclass('Monk') end,
condition_valid_msg="Monk only.",
condition_suggested=function() return raceclass('Monk') and not completedq(31834) and level >= 10 end,
condition_end=function() return completedq(31834) end,
description="This guide will walk you through the Monk daily for extra experience.",
mopready=true
},[[
step
ding 20
step
accept The Peak of Serenity - Begin Your Training##31856
|tip You will accept this automatically.
step
talk Master Hight##66260
|tip Inside the building.
turnin The Peak of Serenity - Begin Your Training##31856 |goto Kun-Lai Summit/0 48.59,42.70
accept Begin Your Training: Master Cheng##31834 |goto Kun-Lai Summit/0 48.59,42.70
step
talk Master Cheng##66138
Select _"I wish to challenge you."_ |gossip 130192
|tip Follow him as he walks.
kill Master Cheng##66258
|tip Use the {o}/bow{} emote on him to begin the fight. |script DoEmote("BOW")
Complete Master Cheng's Training |q 31834/1 |goto Kun-Lai Summit/0 47.07,40.15
step
talk Master Hight##66260
|tip Inside the building.
turnin Begin Your Training: Master Cheng##31834 |goto Kun-Lai Summit/0 48.59,42.70
step
ding 30
step
accept The Peak of Serenity - Continue Your Training##31855
|tip You will accept this automatically.
step
talk Master Hight##66260
|tip Inside the building.
turnin The Peak of Serenity - Continue Your Training##31855 |goto Kun-Lai Summit/0 48.59,42.70
accept Continue Your Training: Master Woo##31833 |goto Kun-Lai Summit/0 48.59,42.70
step
talk Master Woo##66254
|tip She walks around this area.
Select _"I wish to challenge you."_ |gossip 130188
|tip Follow her as she walks.
kill Master Woo##65960
|tip Use the {o}/bow{} emote on her to begin the fight. |script DoEmote("BOW")
Complete Master Woo's Training |q 31833/1 |goto Kun-Lai Summit/0 48.60,39.52
step
talk Master Hight##66260
|tip Inside the building.
turnin Continue Your Training: Master Woo##31833 |goto Kun-Lai Summit/0 48.59,42.70
step
ding 40
step
accept The Peak of Serenity - Continue Your Training##31857
|tip You will accept this automatically.
step
talk Master Hight##66260
|tip Inside the building.
turnin The Peak of Serenity - Continue Your Training##31857 |goto Kun-Lai Summit/0 48.59,42.70
accept Continue Your Training: Master Kistane##31835 |goto Kun-Lai Summit/0 48.59,42.70
step
talk Master Kistane##66253
Select _"I wish to challenge you."_ |gossip 130187
|tip Follow her as she walks.
kill Master Kistane##65899
|tip Use the {o}/bow{} emote on her to begin the fight. |script DoEmote("BOW")
Complete Master Kistane's Training |q 31835/1 |goto Kun-Lai Summit/0 48.04,39.01
step
talk Master Hight##66260
|tip Inside the building.
turnin Continue Your Training: Master Kistane##31835 |goto Kun-Lai Summit/0 48.59,42.70
step
ding 50
step
accept The Peak of Serenity - Continue Your Training##31858
|tip You will accept this automatically.
step
talk Master Hight##66260
|tip Inside the building.
turnin The Peak of Serenity - Continue Your Training##31858 |goto Kun-Lai Summit/0 48.59,42.70
accept Continue Your Training: Master Yoon##31836 |goto Kun-Lai Summit/0 48.59,42.70
step
talk Master Yoon##66255
|tip He walks around this area.
Select _"I wish to challenge you."_ |gossip 130189
|tip Follow him as he walks.
kill Master Yoon##66073
|tip Use the {o}/bow{} emote on him to begin the fight. |script DoEmote("BOW")
Complete Master Yoon's Training |q 31836/1 |goto Kun-Lai Summit/0 48.85,40.53
step
talk Master Hight##66260
|tip Inside the building.
turnin Continue Your Training: Master Yoon##31836 |goto Kun-Lai Summit/0 48.59,42.70
step
ding 60
step
accept The Peak of Serenity - Continue Your Training##31859
|tip You will accept this automatically.
step
talk Master Hight##66260
|tip Inside the building.
turnin The Peak of Serenity - Continue Your Training##31859 |goto Kun-Lai Summit/0 48.59,42.70
accept Continue Your Training: Master Cheng##31837 |goto Kun-Lai Summit/0 48.59,42.70
step
talk Master Cheng##66138
|tip She walks around this area.
Select _"I wish to challenge you."_ |gossip 130190
|tip Follow her as he walks.
kill Master Cheng##66138
|tip Use the {o}/bow{} emote on her to begin the fight. |script DoEmote("BOW")
Complete Master Cheng's Training |q 31837/1 |goto Kun-Lai Summit/0 48.57,41.24
step
talk Master Hight##66260
|tip Inside the building.
turnin Continue Your Training: Master Cheng##31837 |goto Kun-Lai Summit/0 48.59,42.70
step
ding 70
step
accept The Peak of Serenity - Continue Your Training##31860
|tip You will accept this automatically.
step
talk Master Hight##66260
|tip Inside the building.
turnin The Peak of Serenity - Continue Your Training##31860 |goto Kun-Lai Summit/0 48.59,42.70
accept Continue Your Training: Master Tsang##31838 |goto Kun-Lai Summit/0 48.59,42.70
step
talk Master Tsang##66257
Select _"I wish to challenge you."_ |gossip 130191
|tip Follow him as he walks.
kill Monk Trainee##66101+
|tip Use the {o}/bow{} emote on Master Tsang to begin the fight. |script DoEmote("BOW")
|tip Use your Crackling Jade Lightning ability on them to knock them off the poles.
kill Master Tsang##66149
Complete Master Tsang's Training |q 31838/1 |goto Kun-Lai Summit/0 48.06,41.37
step
talk Master Hight##66260
|tip Inside the building.
turnin Continue Your Training: Master Tsang##31838 |goto Kun-Lai Summit/0 48.59,42.70
step
ding 80
step
accept The Peak of Serenity - Continue Your Training##31861
|tip You will accept this automatically.
step
talk Master Hight##66260
|tip Inside the building.
turnin The Peak of Serenity - Continue Your Training##31861 |goto Kun-Lai Summit/0 48.59,42.70
accept Continue Your Training: Master Hsu##31839 |goto Kun-Lai Summit/0 48.59,42.70
step
talk Master Hsu##66207
Select _"I wish to challenge you."_ |gossip 130184
|tip Follow him as he walks.
kill Master Hsu##65977
|tip Use the {o}/bow{} emote on him to begin the fight. |script DoEmote("BOW")
|tip Be ready to disarm Master Hsu with Grapple Weapon when you will see the warning.
|tip Afterwards you will need to clense yourself from the poinson using Detox when needed.
cast Glapple Weapon##117368
cast Detox##115450
Complete Master Hsu's Training |q 31839/1 |goto Kun-Lai Summit/0 47.49,40.93
step
talk Master Hight##66260
|tip Inside the building.
turnin Continue Your Training: Master Hsu##31839 |goto Kun-Lai Summit/0 48.59,42.70
step
ding 90
step
accept The Peak of Serenity - Complete Your Training##31889
|tip You will accept this automatically.
step
talk Master Hight##66260
|tip Inside the building.
turnin The Peak of Serenity - Complete Your Training##31889 |goto Kun-Lai Summit/0 48.59,42.70
accept Complete Your Training: The Final Test##31844 |goto Kun-Lai Summit/0 48.59,42.70
step
talk Master Hight##66260
Select _"I wish to challenge you."_
|tip Follow him as he walks.
kill Master Hight##66260
|tip Use the {o}/bow{} emote on him to begin the fight. |script DoEmote("BOW")
Complete Master Hight's Training |q 31844/1 |goto Kun-Lai Summit/0 48.32,41.52
step
talk Master Hight##66260
|tip Inside the building.
turnin Complete Your Training: The Final Test##31844 |goto Kun-Lai Summit/0 48.59,42.70
]])
QuestCore:RegisterGuide("Leveling Guides\\Pandaria (85-90)\\Isle of Thunder (90)",{
expansion="mists",
achieveid={8028},
startlevel=90,
patch='50001',
description="This guide will help you unlock the Isle of Thunder.",
mopready=true
},[[
step
accept Thunder Calls##32678 |goto Vale of Eternal Blossoms/0 62.02,25.71
|tip You should accept this quest automatically.
step
talk Scout Captain Elsia##70358
turnin Thunder Calls##32678 |goto Townlong Steppes/0 50.79,73.39
accept The Storm Gathers##32680 |goto Townlong Steppes/0 50.79,73.39
step
talk Scout Captain Elsia##70358
Select _"I'm ready to go."_ |gossip 130725
Speak with Elsia |q 32680/1 |goto Townlong Steppes/0 50.79,73.39
step
Watch the dialogue
Begin Flying with Elsia |invehicle |q 32680
step
Watch the dialogue
Discover the Isle of Thunder |q 32680/2
step
Watch the dialogue
Land on The Crimson Treader |outvehicle |goto Isle of Thunder/0 28.39,52.33 |q 32680
step
talk Lor'themar Theron##67990
turnin The Storm Gathers##32680
step
talk Lor'themar Theron##67990
accept The Assault on Zeb'tula##32212 |goto Isle of Thunder/0 28.36,52.41
|tip This quest may not be available.
|tip If that's the case, continue with daily quests.
step
talk Lor'themar Theron##67990
|tip He walks a short distance on the ship.
Select _"I am ready! [Queue for solo instance.]"_ |gossip 130672
Speak to Lor'themar Theron |q 32212/1 |goto Isle of Thunder/0 28.36,52.41
step
Enter the The Assault on Zeb'tula Scenario |scenariostart |q 32212
|tip Accept the invitation that pops up.
step
clicknpc Sunreaver Bloodhawk##69487
|tip On the deck of the ship.
Ride the Sunreaver Bloodhawk |scenariogoal 1/22673 |goto Isle of Thunder Scenario/0 28.50,52.34 |q 32212
step
Watch the dialogue
Fly with Scout Captain Elsia |scenariogoal 1/22654 |goto Isle of Thunder Scenario/0 42.69,50.50 |q 32212
step
Rendezvous with Scout Captain Elsia |scenariostage 1 |goto Isle of Thunder Scenario/0 42.69,50.50 |q 32212
step
kill Zeb'tula Raptor##69658, Zeb'tula Beastcaller##69657
|tip Kill the enemies that attack you.
Survive the Ambush |scenariogoal 2/22655 |goto Isle of Thunder Scenario/0 42.69,50.50 |q 32212
step
Survive the Ambush |scenariostage 2 |goto Isle of Thunder Scenario/0 42.69,50.50 |q 32212
step
kill Zeb'tula Stoneshield##69517, Zandalari Barricade##69516, Zeb'tula Spearanger##69518
Destroy the Barricades and Defenders  |scenariogoal 3/22656 |goto Isle of Thunder Scenario/0 38.92,43.35 |q 32212
step
Destroy the Barricades |scenariostage 3 |q 32212
step
kill Kresh the Ripper##69474 |scenariogoal 4/22657 |goto Isle of Thunder Scenario/0 38.71,38.55 |q 32212
step
kill Kresh the Ripper##69474  |scenariostage 4 |goto Isle of Thunder Scenario/0 38.71,38.55 |q 32212
step
kill Arcanital Tula'chek##69475 |scenariogoal 5/22659 |goto Isle of Thunder Scenario/0 32.71,35.27 |q 32212
|tip Move him out of the yellow bubbles the mask places on the ground and move into them yourself for damage reduction and silence immunity.
step
Kill Arcanital Tula'chek and His Spirit Mask |scenariostage 5 |goto Isle of Thunder Scenario/0 32.71,35.27 |q 32212
step
Watch the dialogue
Return to Dawnseeker's Promontory |complete subzone("Dawnseeker Promontory") |q 32212
step
talk Lor'themar Theron##67990
turnin The Assault on Zeb'tula##32212 |goto Isle of Thunder/0 32.51,35.58
step
talk Lor'themar Theron##67990
accept Tear Down This Wall!##32276 |goto Isle of Thunder/0 32.51,35.58
|tip This quest may not be available.
|tip If that's the case, continue with daily quests.
step
talk Lor'themar Theron##67990
Select _"I'm ready to tear down the wall! [Queue for solo instance.]"_ |gossip 130673
Speak to Lor'themar Theron to Begin your Mission |q 32276/1 |goto Isle of Thunder/0 32.51,35.58
step
Enter the Tear Down This Wall! Scenario |scenariostart |q 32276
|tip Accept the invitation that pops up.
step
click Heavy Explosives##218197
Acquire the Heavy Explosives |scenariogoal 1/22696 |goto Isle of Thunder Scenario/0 48.41,50.99 |q 32276
step
Acquire the Heavy Explosives |scenariostage 1 |goto Isle of Thunder Scenario/0 48.41,50.99 |q 32276
step
talk Scout Captain Elsia##69565
Select _"Here are the explosives, Elsia."_ |gossip 130692
Deliver the Explosives to Elsia |scenariogoal 2/22700 |goto Isle of Thunder Scenario/0 55.81,57.75 |q 32276
step
Deliver the Explosives to Elsia |scenariostage 2 |goto Isle of Thunder Scenario/0 55.81,57.75 |q 32276
step
Watch the dialogue
|tip Wait for Elsia to set the explosives.
click Heavy Explosives
Detonate the Heavy Explosives |scenariogoal 3/22702 |goto Isle of Thunder Scenario/0 56.26,56.08 |q 32276
step
Detonate the Heavy Explosives |scenariostage 3 |goto Isle of Thunder Scenario/0 56.26,56.08 |q 32276
step
kill War-God Al'chukla##69755 |scenariogoal 4/23004 |goto Isle of Thunder Scenario/0 54.73,45.83 |q 32276
step
Secure the Lower City |scenariostage 4 |q 32276
step
click Portal to Isle of Thunder
Return to the Dawnseeker's Promontory |complete subzone("Dawnseeker's Promontory") |goto Isle of Thunder Scenario/0 54.09,46.27 |q 32276
step
talk Lor'themar Theron##67990
turnin Tear Down This Wall!##32276 |goto Isle of Thunder/0 32.51,35.58
step
talk Lor'themar Theron##67990
accept To the Skies!##32277 |goto Isle of Thunder/0 32.51,35.58
|tip This quest may not be available.
|tip If that's the case, continue with daily quests.
step
talk Lor'themar Theron##67990
Select _"I am ready! [Queue for solo instance.]"_ |gossip 130675
Speak to Lor'themar Theron to Begin your Mission |q 32277/1 |goto Isle of Thunder/0 32.51,35.58
step
Enter the To the Skies! Scenario |scenariostart |q 32277
|tip Accept the invitation that pops up.
step
Watch the Dialogue
clicknpc Thunderwing##69509
Mount the Thunderwing |scenariogoal 1/22666 |goto Isle of Thunder Scenario/0 32.24,34.33 |q 32277
step
Watch the Dialogue
Approach the Mine Entrace |scenariogoal 1/22667 |goto Isle of Thunder Scenario/0 53.70,19.46 |q 32277 |notravel
step
Approach the Mine Entrace |scenariostage 1 |goto Isle of Thunder Scenario/0 53.70,19.46 |q 32277
step
extraaction Jump!##137263
|tip Use the button on the screen to jump to a beastcaller's Thunderwing.
kill Zandalari Beastcaller##69521+
|tip Kill the waves of enemies that attack you and wait to land on the ground after.
Defeat your Attackers! |scenariogoal 2/22668 |q 32277
step
Defeat your Attackers! |scenariostage 2 |q 32277
step
kill Beastmaster Horaki##69559 |scenariogoal 3/22669 |goto Isle of Thunder Scenario/0 47.82,25.63 |q 32277
|tip Move out of areas targeted on the ground.
step
Defeat Beastmaster Horaki |scenariostage 3 |goto Isle of Thunder Scenario/0 47.82,25.63 |q 32277
step
Watch the dialogue
talk Taoshi##69810
|tip She will jump down to this spot.
Select _"Alright. Let's go."_ |gossip 130699
Join with Taoshi |scenariogoal 4/22738 |goto Isle of Thunder Scenario/0 49.31,26.00 |q 32277
step
Join with Taoshi |scenariostage 4 |goto Isle of Thunder Scenario/0 49.31,26.00 |q 32277
step
Watch Taoshi Get Rid of the Cave-in |scenariogoal 5/22740 |goto Isle of Thunder Scenario/0 49.22,25.57 |q 32277
step
Follow the path |goto Isle of Thunder Scenario/1 44.65,41.46 < 20 |walk
Make your Way to the Mine Entrance |scenariogoal 5/22741 |goto Isle of Thunder Scenario/1 32.33,58.00 |q 32277
step
Make your Way to the Mine Entrance |scenariostage 5 |goto Isle of Thunder Scenario/1 32.33,58.00 |q 32277
step
kill Slavemaster Shiaxu##69923 |scenariogoal 6/22672 |goto Isle of Thunder Scenario/1 28.18,67.47 |q 32277
step
Unlock the Mine Door |scenariogoal 6/22739 |goto Isle of Thunder Scenario/1 28.18,67.47 |q 32277
|tip This should happen automatically.
step
Unlock the Mine Door |scenariostage 6 |goto Isle of Thunder Scenario/1 28.18,67.47 |q 32277
|tip This should happen automatically.
step
click Portal to Isle of Thunder
Return to the Dawnseeker's Promontory |complete subzone("Dawnseeker's Promontory") |goto Isle of Thunder Scenario/1 31.40,77.65 |q 32277
step
talk Lor'themar Theron##67990
turnin To the Skies!##32277 |goto Isle of Thunder/0 32.51,35.58
step
talk Taoshi##70297
accept Decisive Action##32278 |goto Isle of Thunder/0 32.89,32.68
|tip This quest may not be available.
|tip If that's the case, continue with daily quests.
step
talk Taoshi##70297
Select _"I'm with you. Let's break into that shipyard! [Queue for solo instance.]"_ |gossip 130724
|tip Accept the invitation that pops up.
Infiltrate Stormsea Landing |scenariostart |goto Isle of Thunder/0 32.89,32.68 |q 32278
step
Watch the dialogue
clicknpc Thunderwing##69458
Mount the Thunderwing |invehicle |goto Isle of Thunder Scenario/0 63.29,54.35 |q 32278
step
Watch the dialogue
Intercept the Zandalari Patrol |scenariogoal 1/22661 |q 32278
step
Watch the dialogue
Intercept the Zandalari Patrol |scenariostage 1 |q 32278
step
Deactvate #10# Sentry Totems |scenariogoal 2/23007 |goto Isle of Thunder Scenario/0 62.35,41.39 |q 32278
|tip Use the "Smoke Bomb" ability on your vehicle bar.
|tip Sentry Totems are at the center of the circles.
|tip Destroy a clear path from the ship, up the hill to the courtyard.
step
Deactvate #10# Sentry Totems |scenariostage 2 |q 32278
step
Watch the dialogue
Reach the Ship |outvehicle |goto Isle of Thunder Scenario/0 68.99,45.00 |notravel |q 32278
stickystart "Trap_Siege_Weapons"
step
kill Veteran Wingrider##69552+
|tip Stay close to Taoshi to maintain stealth.
|tip The red circle around you is the radius in which enemies can see you while facing you.
|tip Follow Taoshi and neutralize the enemies with a red arrow above their head.
extraaction Knock Out##137311
Neutralize #7# Marked Crew Members |scenariogoal 3/23003 |goto Isle of Thunder Scenario/0 67.29,46.79 |q 32278
step
label "Trap_Siege_Weapons"
Trap #4# Siege Weapons |scenariogoal 3/22663 |goto Isle of Thunder Scenario/0 67.29,46.79 |q 32278
|tip Taoshi will do this automatically when she gets near them.
step
Neutralize the Defenses |scenariostage 3 |q 32278
step
Go down into the ship |goto Isle of Thunder Scenario/0 68.60,45.63 < 4 |walk
kill Captain Halu'kal##69482 |scenariogoal 4/22664 |goto Isle of Thunder Scenario/0 67.13,47.47 |q 32278
|tip Follow Taoshi down into the ship.
|tip The captain will wake up and attack you.
|tip Kill any enemies that wake up and move out of stuff on the ground.
step
kill Captain Halu'kal##69482 |scenariostage 4 |goto Isle of Thunder Scenario/0 67.13,47.47 |q 32278
step
Leave the ship |goto Isle of Thunder Scenario/0 67.21,45.36 < 10 |walk
Locate Hu'seng the Gatekeeper |scenariogoal 5/22665 |goto Isle of Thunder Scenario/0 59.04,43.76 |q 32278
|tip Stay near Taoshi to maintain your stealth.
|tip Make your way up the hill and into the courtyard along the path you cleared with the smoke bombs.
|tip Avoid the blue circles on the ground that will reveal your location.
step
Locate Hu'seng the Gatekeeper |scenariostage 5 |goto Isle of Thunder Scenario/0 59.04,43.76 |q 32278
step
kill Hu'seng the Gatekeeper##69483 |scenariogoal 6/22667 |goto Isle of Thunder Scenario/0 59.04,43.76 |q 32278
step
collect Gatekeeper's Orb##94918 |scenariogoal 6/22810 |goto Isle of Thunder Scenario/0 59.04,43.76 |q 32278
|tip Loot it from Hu'seng the Gatekeeper's corpse.
step
Light Up the Night |scenariostage 6 |goto Isle of Thunder Scenario/0 59.04,43.76 |q 32278
step
click Deactivated Access Generator
Open the Gate |scenariogoal 7/22809 |goto Isle of Thunder Scenario/0 58.37,42.78 |q 32278
step
Open the Gate |scenariostage 7 |goto Isle of Thunder Scenario/0 58.37,42.78 |q 32278
step
click Portal to Dawnseeker's Promontory
Return to the Dawnseeker's Promontory |complete subzone("Dawnseeker's Promontory") |goto Isle of Thunder Scenario/0 57.79,41.87 |q 32278
step
talk Lor'themar Theron##67990
turnin Decisive Action##32278 |goto Isle of Thunder/0 32.51,35.58
accept The Fall of Shan Bu##32279 |goto Isle of Thunder/0 32.51,35.58
|tip This quest may not be available.
|tip If that's the case, continue with daily quests.
step
talk Lor'themar Theron##67990
Select _"I am ready to launch the assault [Queue for solo instance.]"_ |gossip 130674
Speak to Lor'themar Theron |q 32279/1 |goto Isle of Thunder/0 32.51,35.58
step
Enter The Fall of Shan Bu Scenario |scenariostart |q 32279
|tip Accept the invitation that pops up.
step
talk Scout Captain Elsia##69620
Select _"I am ready."_ |gossip 130702
Speak with your Assault Leader |scenariogoal 1/22742 |goto Isle of Thunder Scenario/0 56.07,39.20 |q 32279
step
Watch the dialogue
|tip Elsia will open the doors.
Enter the Courtyard |scenariogoal 1/22799 |goto Isle of Thunder Scenario/0 57.09,40.83 |q 32279
step
kill 14 Zandalari Stoneshield##69527 |scenariogoal 1/22675 |goto Isle of Thunder Scenario/0 58.07,40.75 |q 32279
step
Retake the Bloodied Crossing |scenariostage 1 |q 32279
step
kill 2 Palace Gatekeeper##69510 |scenariogoal 2/22685 |goto Isle of Thunder Scenario/0 58.06,40.81 |q 32279
step
kill 2 Palace Gatekeeper##69510 |scenariostage 2 |q 32279
step
Watch the dialogue
|tip Taran Zhu will open the door.
Follow Taran Zhu into the Courtyard |scenariogoal 3/22807 |goto Isle of Thunder Scenario/0 59.76,38.05 |q 32279
step
kill Quilen Guardian##69506, Zandalari Stoneshield##69865, Shan'ze Electrocutioner##69525
|tip Taran Zhu will remove the barrier.
|tip Stand in the light for healing.
Slay #8# Zandalari and Mogu |scenariogoal 3/22734 |goto Isle of Thunder Scenario/0 59.76,38.05 |q 32279
step
Defeat Zandalri and Mogu |scenariostage 3 |q 32279
step
kill Shan Bu##69534 |scenariogoal 4/22683 |goto Isle of Thunder Scenario/0 60.34,37.30 |q 32279
|tip Move out of areas targeted on the ground.
|tip Kill any minor adds that attack.
|tip Stand in the light for healing.
step
kill Shan Bu##69534 |scenariostage 4 |q 32279
step
click Portal to the Isle of Thunder
Return to the Dawnseeker's Promontory |complete subzone("Dawnseeker's Promontory") |goto Isle of Thunder Scenario/0 56.82,40.44 |q 32279
step
talk Lor'themar Theron##67990
turnin The Fall of Shan Bu##32279 |goto Isle of Thunder/0 32.50,35.50
accept Allies in the Shadows##32709 |goto Isle of Thunder/0 32.50,35.50
step
talk Taran Zhu##70160
|tip Inside the cave.
turnin Allies in the Shadows##32709 |goto Isle of Thunder/0 51.42,46.08
accept Secrets in the Isle of Thunder##32707 |goto Isle of Thunder/0 51.42,46.08
step
collect 3 Shan'ze Ritual Stone##94221 |q 32707/1
|tip You can loot these from rares on Isle of Thunder.
|tip These can be looted once per week.
step
talk Taran Zhu##70160
|tip Inside the cave.
turnin Secrets in the Isle of Thunder##32707 |goto Isle of Thunder/0 51.42,46.08
accept Setting the Trap##32708 |goto Isle of Thunder/0 51.42,46.08
]])
QuestCore:RegisterGuide("Leveling\\Mists of Pandaria Quest Stacking\\Launch Turnin Guide",{
expansion="mists",
author="QuestCore",
description="This guide will walk you through turning in the quests you stacked for the MoP release",
},[[
step
talk 3rd Officer Kronkar##48360
turnin A Sticky Task##28684 |goto Tol Barad Peninsula 55.2,81.3 |only if haveq(28684) or completedq(28684)
turnin Boosting Morale##28680 |goto Tol Barad Peninsula 55.2,81.3 |only if haveq(28680) or completedq(28680)
turnin Captain P. Harris##28678 |goto Tol Barad Peninsula 55.2,81.3 |only if haveq(28678) or completedq(28678)
turnin Rattling Their Cages##28679 |goto Tol Barad Peninsula 55.2,81.3 |only if haveq(28679) or completedq(28679)
turnin Shark Tank##28681 |goto Tol Barad Peninsula 55.2,81.3 |only if haveq(28681) or completedq(28681)
turnin Thinning the Brood##28683 |goto Tol Barad Peninsula 55.2,81.3 |only if haveq(28683) or completedq(28683)
step
talk Commander Larmash##48358
turnin Claiming The Keep##28682 |goto Tol Barad Peninsula 53.5,80.6 |only if haveq(28682) or completedq(28682)
turnin Leave No Weapon Behind##28685 |goto Tol Barad Peninsula 53.5,80.6 |only if haveq(28685) or completedq(28685)
turnin Not The Friendliest Town##28686 |goto Tol Barad Peninsula 53.5,80.6 |only if haveq(28686) or completedq(28686)
turnin Teach A Man To Fish.... Or Steal##28687 |goto Tol Barad Peninsula 53.5,80.6 |only if haveq(28687) or completedq(28687)
turnin Walk A Mile In Their Shoes##28721 |goto Tol Barad Peninsula 53.5,80.6 |only if haveq(28721) or completedq(28721)
step
talk Captain Prug##48363
turnin Finish The Job##28693 |goto Tol Barad Peninsula 54.9,79.3 |only if haveq(28693) or completedq(28693)
turnin First Lieutenant Connor##28691 |goto Tol Barad Peninsula 54.9,79.3 |only if haveq(28691) or completedq(28691)
turnin Magnets, How Do They Work?##28692 |goto Tol Barad Peninsula 54.9,79.3 |only if haveq(28692) or completedq(28692)
turnin Salvaging the Remains##28690 |goto Tol Barad Peninsula 54.9,79.3 |only if haveq(28690) or completedq(28690)
turnin The Forgotten##28689 |goto Tol Barad Peninsula 54.9,79.3 |only if haveq(28689) or completedq(28689)
step
talk Private Sarlosk##48361
|tip They offer a different set of dailies each day.
|tip Come back another day if you still need more quests from this step.
turnin Bomb's Away!##28696 |goto Tol Barad Peninsula 55.8,78.5 |only if haveq(28696) or completedq(28696)
turnin Cannonball!##28698 |goto Tol Barad Peninsula 55.8,78.5 |only if haveq(28698) or completedq(28698)
turnin Ghostbuster##28697 |goto Tol Barad Peninsula 55.8,78.5 |only if haveq(28697) or completedq(28697)
turnin Taking the Overlook Back##28700 |goto Tol Barad Peninsula 55.8,78.5 |only if haveq(28700) or completedq(28700)
turnin WANTED: Foreman Wellson##28695 |goto Tol Barad Peninsula 55.8,78.5 |only if haveq(28695) or completedq(28695)
turnin Watch Out For Splinters!##28694 |goto Tol Barad Peninsula 55.8,78.5 |only if haveq(28694) or completedq(28694)
step
talk Commander Zanoth##48069
turnin A Huge Problem##28657 |goto Tol Barad 50.9,49.7 |only if haveq(28657) or completedq(28657)
turnin Swamp Bait##28658 |goto Tol Barad 50.9,49.7 |only if haveq(28658) or completedq(28658)
turnin The Leftovers##28659 |goto Tol Barad 50.9,49.7 |only if haveq(28659) or completedq(28659)
step
talk Drillmaster Razgoth##48070
turnin D-Block##28663 |goto Tol Barad 51.5,49.7 |only if haveq(28663) or completedq(28663)
turnin Svarnos##28664 |goto Tol Barad 51.5,49.7 |only if haveq(28664) or completedq(28664)
turnin Cursed Shackles##28665 |goto Tol Barad 51.5,49.7 |only if haveq(28665) or completedq(28665)
step
talk Private Garnoth##48071
turnin Clearing the Depths##28660 |goto Tol Barad 51.5,49.7 |only if haveq(28660) or completedq(28660)
turnin Learning From The Past##28662 |goto Tol Barad 51.5,49.7 |only if haveq(28662) or completedq(28662)
turnin The Imprisoned Archmage##28661 |goto Tol Barad 51.5,49.7 |only if haveq(28661) or completedq(28661)
step
talk Staff Sergeant Lazgar##48062
turnin Food From Below##28670 |goto Tol Barad 51.5,49.7 |only if haveq(28670) or completedq(28670)
turnin Prison Revolt##28668 |goto Tol Barad 51.5,49.7 |only if haveq(28668) or completedq(28668)
turnin The Warden##28669 |goto Tol Barad 51.5,49.7 |only if haveq(28669) or completedq(28669)
]])
