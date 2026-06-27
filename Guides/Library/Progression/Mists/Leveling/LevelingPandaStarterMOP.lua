-- QuestCore bundled guide (mists)
if not QuestCore then return end
QuestCore:RegisterGuide("Leveling Guides\\Starter Guides\\Pandaren (1-12)",{
expansion="mists",
mopready=true,
image="WanderingIsle",
condition_suggested=function() return raceclass('Pandaren') and level <= 12 and not completedq(31450) end,
startlevel=1,
endlevel=12,
},[[
step
accept Much to Learn##30045
|tip You will automatically accept this quest.
|only if Pandaren Warrior
step
talk Master Shang Xi##53566
turnin Much to Learn##30045 |goto The Wandering Isle/0 56.66,18.20
accept The Lesson of the Iron Bough##30038 |goto The Wandering Isle/0 56.66,18.20
|only if Pandaren Warrior
step
click Weapon Rack##210016
Loot and Equip a Trainee's Sword |q 30038/1 |goto The Wandering Isle/0 56.87,19.68
|only if Pandaren Warrior
step
talk Master Shang Xi##53566
turnin The Lesson of the Iron Bough##30038 |goto The Wandering Isle/0 56.66,18.20
|next "All_Classes_Merge"
|only if Pandaren Warrior
step
accept Much to Learn##30041
|tip You will automatically accept this quest.
|only if Pandaren Hunter
step
talk Master Shang Xi##53566
turnin Much to Learn##30041 |goto The Wandering Isle/0 56.66,18.20
accept The Lesson of the Iron Bough##30034 |goto The Wandering Isle/0 56.66,18.20
|only if Pandaren Hunter
step
click Weapon Rack##210016
Loot and Equip a Trainee's Crossbow |q 30034/1 |goto The Wandering Isle/0 56.87,19.68
|only if Pandaren Hunter
step
talk Master Shang Xi##53566
turnin The Lesson of the Iron Bough##30034 |goto The Wandering Isle/0 56.66,18.20
|next "All_Classes_Merge"
|only if Pandaren Hunter
step
accept Much to Learn##30043
|tip You will automatically accept this quest.
|only if Pandaren Rogue
step
talk Master Shang Xi##53566
turnin Much to Learn##30043 |goto The Wandering Isle/0 56.66,18.20
accept The Lesson of the Iron Bough##30036 |goto The Wandering Isle/0 56.66,18.20
|only if Pandaren Rogue
step
click Weapon Rack##210016
Loot and Equip a Trainee's Dagger |q 30036/1 |goto The Wandering Isle/0 56.87,19.68
Loot and Equip a Second Trainee's Dagger |q 30036/2 |goto The Wandering Isle/0 56.87,19.68
|only if Pandaren Rogue
step
talk Master Shang Xi##53566
turnin The Lesson of the Iron Bough##30036 |goto The Wandering Isle/0 56.66,18.20
|next "All_Classes_Merge"
|only if Pandaren Rogue
step
accept Much to Learn##30042
|tip You will automatically accept this quest.
|only if Pandaren Priest
step
talk Master Shang Xi##53566
turnin Much to Learn##30042 |goto The Wandering Isle/0 56.66,18.20
accept The Lesson of the Iron Bough##30035 |goto The Wandering Isle/0 56.66,18.20
|only if Pandaren Priest
step
click Weapon Rack##210016
Loot and Equip a Trainee's Mace |q 30035/1 |goto The Wandering Isle/0 56.87,19.68
Loot and Equip a Trainee's Book of Prayers |q 30035/2 |goto The Wandering Isle/0 56.87,19.68
|only if Pandaren Priest
step
talk Master Shang Xi##53566
turnin The Lesson of the Iron Bough##30035 |goto The Wandering Isle/0 56.66,18.20
|next "All_Classes_Merge"
|only if Pandaren Priest
step
accept Much to Learn##30044
|tip You will automatically accept this quest.
|only if Pandaren Shaman
step
talk Master Shang Xi##53566
turnin Much to Learn##30044 |goto The Wandering Isle/0 56.66,18.20
accept The Lesson of the Iron Bough##30037 |goto The Wandering Isle/0 56.66,18.20
|only if Pandaren Shaman
step
click Weapon Rack##210016
Loot and Equip a Trainee's Axe |q 30037/1 |goto The Wandering Isle/0 56.87,19.68
Loot and Equip a Trainee's Shield |q 30037/2 |goto The Wandering Isle/0 56.87,19.68
|only if Pandaren Shaman
step
talk Master Shang Xi##53566
turnin The Lesson of the Iron Bough##30037 |goto The Wandering Isle/0 56.66,18.20
|next "All_Classes_Merge"
|only if Pandaren Shaman
step
accept Much to Learn##30040
|tip You will automatically accept this quest.
|only if Pandaren Mage
step
talk Master Shang Xi##53566
turnin Much to Learn##30040 |goto The Wandering Isle/0 56.66,18.20
accept The Lesson of the Iron Bough##30033 |goto The Wandering Isle/0 56.66,18.20
|only if Pandaren Mage
step
click Weapon Rack##210016
Loot and Equip a Trainee's Spellblade |q 30033/1 |goto The Wandering Isle/0 56.87,19.68
Loot and Equip a Trainee's Hand-Fan |q 30033/2 |goto The Wandering Isle/0 56.87,19.68
|only if Pandaren Mage
step
talk Master Shang Xi##53566
turnin The Lesson of the Iron Bough##30033 |goto The Wandering Isle/0 56.66,18.20
|next "All_Classes_Merge"
|only if Pandaren Mage
step
accept Much to Learn##30039
|tip You will automatically accept this quest.
|only if Pandaren Monk
step
talk Master Shang Xi##53566
turnin Much to Learn##30039 |goto The Wandering Isle/0 56.66,18.20
accept The Lesson of the Iron Bough##30027 |goto The Wandering Isle/0 56.66,18.20
|only if Pandaren Monk
step
click Weapon Rack##210016
Loot and Equip a Trainee's Staff |q 30027/1 |goto The Wandering Isle/0 56.87,19.68
|only if Pandaren Monk
step
talk Master Shang Xi##53566
turnin The Lesson of the Iron Bough##30027 |goto The Wandering Isle/0 56.66,18.20
|next "All_Classes_Merge"
|only if Pandaren Monk
step
label "All_Classes_Merge"
talk Master Shang Xi##53566
accept The Lesson of the Sandy Fist##29406 |goto The Wandering Isle/0 56.66,18.20
step
kill 5 Training Target##53714 |q 29406/1 |goto The Wandering Isle/0 58.03,19.06
|tip They look like {o}green punching bags{}.
step
talk Master Shang Xi##53566
turnin The Lesson of the Sandy Fist##29406 |goto The Wandering Isle/0 56.66,18.20
accept The Lesson of Stifled Pride##29524 |goto The Wandering Isle/0 56.66,18.20
step
kill Tushui Trainee##54587, Huojin Trainee##65470, Tushui Trainee##65471, Huojin Trainee##54586
|tip They look like {o}various punching Pandaren{}.
|tip Inside the building.
Defeat #6# Sparring Trainees |q 29524/1 |goto The Wandering Isle/0 60.18,19.36
step
talk Master Shang Xi##53566
|tip Inside the building.
turnin The Lesson of Stifled Pride##29524 |goto The Wandering Isle/0 59.68,19.11
accept The Lesson of the Burning Scroll##29408 |goto The Wandering Isle/0 59.68,19.11
step
click Edict of Temperance##210986
|tip On the {o}balcony{} of the building, on the {o}top floor{}.
Burn the Edict of Temperance |q 29408/2 |goto The Wandering Isle/0 59.95,20.41
step
talk Master Shang Xi##53566
|tip Inside the building, on the {o}ground floor{}.
turnin The Lesson of the Burning Scroll##29408 |goto The Wandering Isle/0 59.68,19.11
accept The Disciple's Challenge##29409 |goto The Wandering Isle/0 59.68,19.11
step
kill Jaomin Ro##54611
Defeat Jaomin Ro |q 29409/1 |goto The Wandering Isle/0 67.78,22.76
step
talk Master Shang Xi##53566
turnin The Disciple's Challenge##29409 |goto The Wandering Isle/0 65.97,22.81
accept Aysa of the Tushui##29410 |goto The Wandering Isle/0 65.97,22.81
step
talk Merchant Lorvo##54943
turnin Aysa of the Tushui##29410 |goto The Wandering Isle/0 55.09,32.84
accept Items of Utmost Importance##29424 |goto The Wandering Isle/0 55.09,32.84
accept The Missing Driver##29419 |goto The Wandering Isle/0 55.09,32.84
stickystart "Collect_Stolen_Training_Supplies"
step
kill Amberleaf Scamp##54130+
|tip They look like {o}sprites{}.
Rescue the Cart Driver |q 29419/1 |goto The Wandering Isle/0 54.01,20.91
step
label "Collect_Stolen_Training_Supplies"
kill Amberleaf Scamp##54130+ |notinsticky
|tip They look like {o}sprites{}. |notinsticky
collect 6 Stolen Training Supplies##72071 |q 29424/1 |goto The Wandering Isle/0 53.68,24.77
step
talk Merchant Lorvo##54943
turnin Items of Utmost Importance##29424 |goto The Wandering Isle/0 55.11,32.40
turnin The Missing Driver##29419 |goto The Wandering Isle/0 55.11,32.40
step
talk Aysa Cloudsinger##54567
accept The Way of the Tushui##29414 |goto The Wandering Isle/0 55.11,32.55
step
kill Amberleaf Troublemaker##59637+
|tip They look like {o}sprites{} that {o}attack in waves{}.
|tip Inside the small cave.
Protect Aysa While She Meditates |q 29414/1 |goto The Wandering Isle/0 57.89,36.55
step
talk Master Shang Xi##54608
turnin The Way of the Tushui##29414 |goto The Wandering Isle/0 57.54,34.69
accept Ji of the Huojin##29522 |goto The Wandering Isle/0 57.54,34.69
step
talk Ji Firepaw##54568
turnin Ji of the Huojin##29522 |goto The Wandering Isle/0 50.24,21.26
accept The Way of the Huojin##29417 |goto The Wandering Isle/0 50.24,21.26
step
kill Fe-Feng Brewthief##56730, Fe-Feng Hozen##57205, Fe-Feng Leaper##57164, Fe-Feng Hozen##54131
|tip They look like {o}monkeys{}.
Slay #8# Hozen Attackers |q 29417/1 |goto The Wandering Isle/0 48.51,20.74
step
talk Ji Firepaw##54568
turnin The Way of the Huojin##29417 |goto The Wandering Isle/0 50.24,21.26
accept Kindling the Fire##29418 |goto The Wandering Isle/0 50.24,21.26
accept Fanning the Flames##29523 |goto The Wandering Isle/0 50.24,21.26
stickystart "Collect_Dry_Dogwood_Root"
step
use Wind Stone##72109
kill Living Air##54631
collect Fluttering Breeze##72112 |q 29523/1 |goto The Wandering Isle/0 47.37,31.15
step
label "Collect_Dry_Dogwood_Root"
click Loose Dogwood Root##209327+
|tip They look like {o}brown roots{} near the {o}base of trees{}.
collect 5 Dry Dogwood Root##72111 |q 29418/1 |goto The Wandering Isle/0 47.37,31.15
step
talk Ji Firepaw##54568
turnin Kindling the Fire##29418 |goto The Wandering Isle/0 50.24,21.26
turnin Fanning the Flames##29523 |goto The Wandering Isle/0 50.24,21.26
step
talk Master Shang Xi##54609
accept The Spirit's Guardian##29420 |goto The Wandering Isle/0 50.28,21.47
step
Enter the cave |goto The Wandering Isle/0 41.46,25.02 < 20 |walk
talk Master Li Fei##54135
|tip {o}Avoid the patches of fire patches{}.
|tip Upstairs inside the cave.
turnin The Spirit's Guardian##29420 |goto The Wandering Isle/0 38.80,25.50
accept The Challenger's Fires##29664 |goto The Wandering Isle/0 38.80,25.50
step
click Brazier of the Flickering Flame
|tip Inside inside the cave.
Light the Challenge Torch |q 29664/1 |goto The Wandering Isle/0 38.71,25.40
step
click Brazier of the Violet Flame
|tip Inside inside the cave.
Light the Violet Brazier |q 29664/4 |goto The Wandering Isle/0 38.25,24.86
step
click Brazier of the Red Flame
|tip Inside inside the cave.
Light the Red Brazier |q 29664/2 |goto The Wandering Isle/0 38.99,23.49
step
click Brazier of the Blue Flame
|tip Inside inside the cave.
Light the Blue Brazier |q 29664/3 |goto The Wandering Isle/0 39.19,25.42
step
talk Master Li Fei##54135
|tip Inside inside the cave.
turnin The Challenger's Fires##29664 |goto The Wandering Isle/0 38.80,25.50
accept Only the Worthy Shall Pass##29421 |goto The Wandering Isle/0 38.80,25.50
step
kill Master Li Fei##54734
|tip Inside the cave.
Defeat Master Li Fei |q 29421/1 |goto The Wandering Isle/0 38.87,24.62
step
talk Master Li Fei##54135
|tip Inside the cave.
turnin Only the Worthy Shall Pass##29421 |goto The Wandering Isle/0 38.80,25.50
accept Huo, the Spirit of Fire##29422 |goto The Wandering Isle/0 38.80,25.50
step
use Huo's Offerings##72583
|tip Upstairs inside the cave.
Reignite the Spirit of Fire |q 29422/1 |goto The Wandering Isle/0 39.42,29.55
step
talk Huo##54787
|tip Inside the cave.
turnin Huo, the Spirit of Fire##29422 |goto The Wandering Isle/0 39.41,29.55
accept The Passion of Shen-zin Su##29423 |goto The Wandering Isle/0 39.41,29.55
step
Leave the cave |goto The Wandering Isle/0 41.46,25.02 < 20 |walk
Run up the stairs |goto The Wandering Isle/0 51.05,30.55 < 20 |only if walking
Bring the Spirit of Fire to the Temple of Five Dawns |q 29423/1 |goto The Wandering Isle/0 51.41,46.39
|tip Inside the building.
step
talk Master Shang Xi##54786
|tip Inside the building.
turnin The Passion of Shen-zin Su##29423 |goto The Wandering Isle/0 51.41,46.39
accept The Singing Pools##29521 |goto The Wandering Isle/0 51.41,46.39
step
talk Jojo Ironbrow##55021
accept Something Tough##29662 |goto The Wandering Isle/0 63.50,41.93
step
talk Aysa Cloudsinger##54975
turnin The Singing Pools##29521 |goto The Wandering Isle/0 65.59,42.61
accept The Lesson of Dry Fur##29661 |goto The Wandering Isle/0 65.59,42.61
accept The Lesson of the Balanced Rock##29663 |goto The Wandering Isle/0 65.59,42.61
step
clicknpc Balance Pole##66946
|tip You {o}can't click it{} if you're {o}in the water{}.
Jump on a Balance Pole |invehicle |goto The Wandering Isle/0 63.37,45.18 |q 29663
step
clicknpc Balance Pole##66946+
|tip They look like {o}wooden poles{}.
|tip Click them to {o}move around{}.
kill Tushui Monk##55019, Tushui Monk##65468
|tip They look like {o}Pandaren{}.
Defeat #6# Tushui Monks |q 29663/1 |goto The Wandering Isle/0 62.53,44.84
step
clicknpc Balance Pole##66946+
|tip They look like {o}wooden poles{}.
|tip Click them to {o}move around{}.
Reach the Center Stone |goto The Wandering Isle/0 61.38,47.86 < 5 |q 29661
step
click Training Bell
Ring the Training Bell |q 29661/1 |goto The Wandering Isle/0 61.38,47.86
step
click Hard Tearwood Reeds##209507+
|tip They look like {o}small clusters of bamboo stalks{} in the water.
collect 8 Hard Tearwood Reed##73178 |q 29662/1 |goto The Wandering Isle/0 62.53,44.84
step
talk Jojo Ironbrow##55021
turnin Something Tough##29662 |goto The Wandering Isle/0 63.50,41.93
step
talk Aysa Cloudsinger##54975
turnin The Lesson of Dry Fur##29661 |goto The Wandering Isle/0 65.59,42.61
turnin The Lesson of the Balanced Rock##29663 |goto The Wandering Isle/0 65.59,42.61
accept Finding an Old Friend##29676 |goto The Wandering Isle/0 65.59,42.61
step
talk Old Man Liang##55020
|tip Up on the cliff.
turnin Finding an Old Friend##29676 |goto The Wandering Isle/0 70.62,38.73
accept The Sun Pearl##29677 |goto The Wandering Isle/0 70.62,38.73
accept The Sting of Learning##29666 |goto The Wandering Isle/0 70.62,38.73
step
kill 6 Water Pincer##60411 |q 29666/1 |goto The Wandering Isle/0 73.89,39.80
|tip They look like {o}large insects{}.
step
click Ancient Clam##209584
|tip Underwater.
collect Sun Pearl##73184 |q 29677/1 |goto The Wandering Isle/0 76.25,46.85
step
talk Old Man Liang##55020
turnin The Sun Pearl##29677 |goto The Wandering Isle/0 78.48,42.86
turnin The Sting of Learning##29666 |goto The Wandering Isle/0 78.48,42.86
accept Shu, the Spirit of Water##29678 |goto The Wandering Isle/0 78.48,42.86
step
Reach the Pool of Reflection |complete subzone("Pool of Reflection") |goto The Wandering Isle/0 79.62,41.87 |q 29678
|tip Step onto the {o}blue circle{}.
step
Cross to the Pool of Reflection |q 29678/1 |goto The Wandering Isle/0 79.60,38.64
step
use the Sun Pearl##73791
Coax Shu, the Water Spirit |q 29678/2 |goto The Wandering Isle/0 79.60,38.64
step
_Click the Complete Quest Box:_
turnin Shu, the Spirit of Water##29678
step
talk Aysa Cloudsinger##54975
accept A New Friend##29679 |goto The Wandering Isle/0 79.81,39.31
step
Play with the Spirit of Water #5# Times |q 29679/1 |goto The Wandering Isle/0 78.78,37.73
|tip Walk onto the {o}spots of blue splashing water{}.
|tip You will {o}shoot up into the air{}.
step
talk Aysa Cloudsinger##54975
turnin A New Friend##29679 |goto The Wandering Isle/0 79.82,39.30
accept The Source of Our Livelihood##29680 |goto The Wandering Isle/0 79.82,39.30
step
clicknpc Delivery Cart##57710
Hitch a Ride on the Cart |invehicle |goto The Wandering Isle/0 79.15,45.33 |q 29680
step
Watch the dialogue
Ride the Cart to the Dai-Lo Farmstead |outvehicle |goto The Wandering Isle/0 70.68,65.85 |q 29680 |notravel
step
talk Ji Firepaw##55477
turnin The Source of Our Livelihood##29680 |goto The Wandering Isle/0 68.89,64.98
accept Rascals##29769 |goto The Wandering Isle/0 68.89,64.98
step
talk Gao Summerdraft##55479
accept Still Good!##29770 |goto The Wandering Isle/0 68.12,66.41
stickystart "Slay_Plump_Virmen"
step
click Uprooted Turnip##209640
|tip They look like {o}large uprooted white and pink radishes{}.
collect 3 Uprooted Turnip##74295+ |q 29770/1 |goto The Wandering Isle/0 69.49,80.41
step
Enter the cave |goto The Wandering Isle/0 71.79,70.55 < 15 |walk
kill Plump Carrotcruncher##55504+
click Stolen Carrot##209641+
|tip They look like {o}large uprooted orange carrots{}.
|tip Inside the cave.
collect 3 Stolen Carrot##74296 |q 29770/2 |goto The Wandering Isle/0 74.66,71.91
step
click Pilfered Pumpkin##209645+
|tip They look like {o}various colored pumpkins near trees{}.
collect 3 Pilfered Pumkin##74297+ |q 29770/3 |goto The Wandering Isle/0 77.99,70.92
step
label "Slay_Plump_Virmen"
kill Plump Carrotcruncher##55504, Plump Virmen##55483
|tip They look like {o}rat people{}.
Slay #10# Plump Virmen |q 29769/1 |goto The Wandering Isle/0 72.06,72.99
step
talk Gao Summerdraft##55479
turnin Still Good!##29770 |goto The Wandering Isle/0 68.12,66.41
step
talk Ji Firepaw##55477
turnin Rascals##29769 |goto The Wandering Isle/0 68.89,64.98
accept Missing Mallet##29768 |goto The Wandering Isle/0 68.89,64.98
step
talk Jojo Ironbrow##55478
accept Stronger Than Wood##29771 |goto The Wandering Isle/0 69.15,66.71
stickystart "Collect_Discarded_Wood_Planks"
step
click Dai-Lo Recess Mallet##214406
|tip It looks like a {o}wooden handle with a yellow ball at the top{}.
collect Dai-Lo Recess Mallet##74298 |q 29768/1 |goto The Wandering Isle/0 62.63,77.03
step
label "Collect_Discarded_Wood_Planks"
click Discarded Wood Plank##209646+
|tip They look like {o}small piles of brown wooden boards{}.
collect 12 Discarded Wood Plank##74301 |q 29771/1 |goto The Wandering Isle/0 63.36,77.11
step
talk Jojo Ironbrow##55478
turnin Stronger Than Wood##29771 |goto The Wandering Isle/0 69.15,66.71
step
talk Ji Firepaw##55477
turnin Missing Mallet##29768 |goto The Wandering Isle/0 68.89,64.98
accept Raucous Rousing##29772 |goto The Wandering Isle/0 68.89,64.98
step
click Break Gong##209626
Ring the Town Gong |q 29772/1 |goto The Wandering Isle/0 68.94,64.87
step
talk Ji Firepaw##55477
turnin Raucous Rousing##29772 |goto The Wandering Isle/0 68.89,64.98
accept Not In the Face!##29774 |goto The Wandering Isle/0 68.89,64.98
step
talk Shu##55556
Select _"Shu, can you wake up Wuguo for me?"_ |gossip 125683
Ask Shu for Help |q 29774/1 |goto The Wandering Isle/0 68.98,62.91
step
Watch the dialogue
Wake Wugou |q 29774/2 |goto The Wandering Isle/0 68.83,65.40
step
talk Ji Firepaw##55477
turnin Not In the Face!##29774 |goto The Wandering Isle/0 68.89,64.98
accept The Spirit and Body of Shen-zin Su##29775 |goto The Wandering Isle/0 68.89,64.98
step
clicknpc Delivery Cart##59497
Hitch a Ride on the Cart |invehicle |goto The Wandering Isle/0 67.86,67.26 |q 29775
step
Watch the dialogue
Ride the Cart to the Temple of Five Dawns |outvehicle |goto The Wandering Isle/0 51.96,58.58 |q 29775 |notravel
step
talk Master Shang Xi##54786
|tip Inside the building.
turnin The Spirit and Body of Shen-zin Su##29775 |goto The Wandering Isle/0 51.58,48.34
accept Morning Breeze Village##29776 |goto The Wandering Isle/0 51.58,48.34
step
talk Ji Firepaw##55583
|tip Follow the road {o}west{}.
turnin Morning Breeze Village##29776 |goto The Wandering Isle/0 30.98,36.73
accept Rewritten Wisdoms##29778 |goto The Wandering Isle/0 30.98,36.73
step
talk Elder Shaopai##55588
accept Tools of the Enemy##29777 |goto The Wandering Isle/0 31.78,39.71
step
talk Jojo Ironbrow##55585
accept Stronger Than Stone##29783 |goto The Wandering Isle/0 29.90,39.76
stickystart "Collect_Abandoned_Stone_Blocks"
stickystart "Collect_Paint_Soaked_Brushes"
step
click Defaced Scroll of Wisdom##209663+
|tip They look like {o}white banners with red paint on them{}.
Burn #5# Defaced Scrolls of Wisdom |q 29778/1 |goto The Wandering Isle/0 30.59,49.76
step
label "Collect_Abandoned_Stone_Blocks"
click Abandoned Stone Block##209665+
|tip They look like {o}piles of gray blocks{}.
collect 12 Abandoned Stone Block##74624 |q 29783/1 |goto The Wandering Isle/0 30.60,50.94
step
label "Collect_Paint_Soaked_Brushes"
kill Fe-Feng Wiseman##55601+
|tip They look like {o}monkeys{}.
collect 8 Paint Soaked Brush##74615 |q 29777/1 |goto The Wandering Isle/0 30.59,49.76
step
talk Elder Shaopai##55588
turnin Tools of the Enemy##29777 |goto The Wandering Isle/0 31.78,39.71
step
talk Jojo Ironbrow##55585
turnin Something Really Tough##29783 |goto The Wandering Isle/0 29.90,39.76
step
talk Ji Firepaw##55583
turnin Rewritten Wisdoms##29778 |goto The Wandering Isle/0 30.98,36.73
accept The Direct Solution##29779 |goto The Wandering Isle/0 30.98,36.73
accept Do No Evil##29780 |goto The Wandering Isle/0 30.98,36.73
accept Monkey Advisory Warning##29781 |goto The Wandering Isle/0 30.98,36.73
step
Follow the path |goto The Wandering Isle/0 28.19,38.49 < 25 |only if walking
click Jade Tiger Pillar##209673
accept Stronger Than Bone##29782 |goto The Wandering Isle/0 26.44,33.68
stickystart "Stolen_Firework_Bundles"
stickystart "Slay_FeFeng_Hozen"
step
kill Ruk-Ruk##55634 |q 29780/1 |goto The Wandering Isle/0 21.03,34.37
step
_Next to you:_
talk Ji Firepaw##65558 |usename Ji Firepaw##56134
turnin Do No Evil##29780
step
label "Stolen_Firework_Bundles"
click Stolen Fireworks##209669+
|tip They look like {o}small dark pots on wooden slabs{}.
collect 8 Stolen Firework Bundle##74631 |q 29781/1 |goto The Wandering Isle/0 26.21,30.68
step
label "Slay_FeFeng_Hozen"
kill Fe-Feng Firethief##57466, Fe-Feng Firethief##55633, Fe-Feng Ruffian##55632, Fe-Feng Ruffian##57465
|tip They look like {o}monkeys{}.
Slay #20# Fe-Feng Hozen |q 29779/1 |goto The Wandering Isle/0 26.21,30.68
step
_Next to you:_
talk Ji Firepaw##65558 |usename Ji Firepaw##56134
turnin The Direct Solution##29779
turnin Monkey Advisory Warning##29781
accept Balanced Perspective##29784
step
talk Jojo Ironbrow##55585
turnin Stronger Than Bone##29782 |goto The Wandering Isle/0 29.90,39.76
step
talk Aysa Cloudsinger##55595
|tip {o}Walk carefully on the brown ropes{} to reach her.
turnin Balanced Perspective##29784 |goto The Wandering Isle/0 32.94,35.61
accept Dafeng, the Spirit of Air##29785 |goto The Wandering Isle/0 32.94,35.61
step
Enter the building |goto The Wandering Isle/0 28.20,64.06 < 20 |walk
Locate Dafeng |q 29785/1 |goto The Wandering Isle/0 24.64,69.80
|tip Wait until the {o}wind is not blowing{}, then {o}run through the hallway{}.
|tip Inside the building.
step
talk Dafeng##55592
|tip Inside the building.
turnin Dafeng, the Spirit of Air##29785 |goto The Wandering Isle/0 24.64,69.80
step
talk Aysa Cloudsinger##55595
|tip Inside the building.
accept Battle for the Skies##29786 |goto The Wandering Isle/0 24.78,69.77
step
click Firework Launcher##210004+
|tip They look like {o}dark grey pots{}.
|tip {o}Click them{} to {o}deal damage{}.
kill Zhao-Ren##55786 |q 29786/1 |goto The Wandering Isle/0 30.18,61.86
|tip It looks like a {o}large flying purple dragon{}.
step
talk Master Shang Xi##55586
turnin Battle for the Skies##29786 |goto The Wandering Isle/0 30.00,60.36
accept Worthy of Passing##29787 |goto The Wandering Isle/0 30.00,60.36
step
kill Guardian of the Elders##56274 |q 29787/1 |goto The Wandering Isle/0 22.71,52.80
step
talk Master Shang Xi##55672
turnin Worthy of Passing##29787 |goto The Wandering Isle/0 19.45,51.22
accept Unwelcome Nature##29788 |goto The Wandering Isle/0 19.45,51.22
accept Small, But Significant##29789 |goto The Wandering Isle/0 19.45,51.22
stickystart "Kill_Thornbranch_Scamps"
step
click Kun-pai Ritual Charm##209774+
|tip They look like {o}red ropes hanging from tree branches{}.
|tip You can find them {o}all around this area{}.
collect 8 Kun-Pai Ritual Charm##74634 |q 29789/1 |goto The Wandering Isle/0 21.52,54.59
step
label "Kill_Thornbranch_Scamps"
kill 8 Thornbranch Scamp##55640 |q 29788/1 |goto The Wandering Isle/0 21.45,60.59
|tip They look like {o}sprites{}.
step
talk Master Shang Xi##55672
turnin Unwelcome Nature##29788 |goto The Wandering Isle/0 19.45,51.22
turnin Small, But Significant##29789 |goto The Wandering Isle/0 19.45,51.22
accept Passing Wisdom##29790 |goto The Wandering Isle/0 19.45,51.22
step
Watch the dialogue
Listen to Master Shang Xi |q 29790/1 |goto The Wandering Isle/0 19.45,51.22
step
talk Aysa Cloudsinger##56662
turnin Passing Wisdom##29790 |goto The Wandering Isle/0 15.79,49.11
accept The Suffering of Shen-zin Su##29791 |goto The Wandering Isle/0 15.79,49.11
step
clicknpc Shang Xi's Hot Air Balloon##55918
Board the Hot Air Balloon |q 29791/1 |goto The Wandering Isle/0 15.57,48.91
step
Watch the dialogue
Uncover the Source of Shen-zin Su's Pain |q 29791/2
step
Return to Mandori Village |outvehicle |goto The Wandering Isle/0 49.16,58.55 |q 29791
step
talk Elder Shaopai##56012
|tip Inside the building.
turnin The Suffering of Shen-zin Su##29791 |goto The Wandering Isle/0 51.30,48.28
accept Bidden to Greatness##29792 |goto The Wandering Isle/0 51.30,48.28
step
Watch the dialogue
Open the Mandori Village Gate |q 29792/1 |goto The Wandering Isle/0 51.62,60.91
step
Watch the dialogue
Open the Pei-Wu Forest Gate |q 29792/2 |goto The Wandering Isle/0 52.27,68.19
step
talk Wei Palerage##55943
turnin Bidden to Greatness##29792 |goto The Wandering Isle/0 50.06,76.64
accept Preying on the Predators##30591 |goto The Wandering Isle/0 50.06,76.64
step
talk Korga Strongmane##60042
accept Stocking Stalks##29795 |goto The Wandering Isle/0 50.22,76.65
stickystart "Kill_Pei_Wu_Tigers"
step
click Broken Bamboo Stalk##211400+
|tip They look like {o}bamboo poles and stumps near trees{}.
collect 10 Broken Bamboo Stalk##80806+ |q 29795/1 |goto The Wandering Isle/0 52.85,79.76
step
label "Kill_Pei_Wu_Tigers"
kill 9 Pei-Wu Tiger##55946 |q 30591/1 |goto The Wandering Isle/0 52.85,79.76
|tip They look like {o}orange tigers{}.
step
talk Wei Palerage##55943
turnin Preying on the Predators##30591 |goto The Wandering Isle/0 50.06,76.64
step
talk Korga Strongmane##60042
turnin Stocking Stalks##29795 |goto The Wandering Isle/0 50.22,76.65
accept Wrecking the Wreck##30589 |goto The Wandering Isle/0 50.22,76.65
step
talk Makael Bay##60055
turnin Wrecking the Wreck##30589 |goto The Wandering Isle/0 36.31,72.36
accept Handle With Care##30590 |goto The Wandering Isle/0 36.31,72.36
step
talk Ji Firepaw##55942
accept Evil from the Seas##29793 |goto The Wandering Isle/0 36.37,72.53
stickystart "Darkened_Terrors_Or_Horrors"
step
click Packed Explosion Charge##9539+
|tip They look like {o}small bundles of red dynamite{}.
collect 6 Packed Explosion Charge##74955 |q 30590/1 |goto The Wandering Isle/0 38.32,74.00
step
label "Darkened_Terrors_Or_Horrors"
kill Darkened Horror##56007, Darkened Terror##56008
|tip They look like {o}lizard people{}.
Slay #8# Darkened Terrors or Horrors |q 29793/1 |goto The Wandering Isle/0 40.23,73.93
step
talk Makael Bay##60055
turnin Handle With Care##30590 |goto The Wandering Isle/0 36.31,72.36
step
talk Ji Firepaw##55942
turnin Evil from the Seas##29793 |goto The Wandering Isle/0 36.37,72.53
accept Urgent News##29796 |goto The Wandering Isle/0 36.37,72.53
step
talk Delora Lionheart##55944
turnin Urgent News##29796 |goto The Wandering Isle/0 42.22,86.54
accept None Left Behind##29794 |goto The Wandering Isle/0 42.22,86.54
accept Medical Supplies##29797 |goto The Wandering Isle/0 42.22,86.54
step
talk Jojo Ironbrow##55940
accept From Bad to Worse##29665 |goto The Wandering Isle/0 42.29,86.36
stickystart "Collect_Alliance_Medical_Supplies"
stickystart "Slay_Deepscale_Tormentors"
step
label "Rescue_Injured_Sailors"
clicknpc Injured Sailor##55999
|tip They look like {o}dead Alliance bodies{}.
Rescue #3# Injured Sailors |q 29794/1 |goto The Wandering Isle/0 38.52,86.34
Bring them to [The Wandering Isle/0 42.14,86.70]
step
talk Delora Lionheart##55944
turnin None Left Behind##29794 |goto The Wandering Isle/0 42.22,86.54
step
label "Collect_Alliance_Medical_Supplies"
click Alliance Medical Crate##209793+
|tip They look like {o}wooden boxes with red crosses on them{}.
|tip They can be {o}inside the broken ship{}.
collect 8 Alliance Medical Supplies##74958 |q 29797/1 |goto The Wandering Isle/0 37.18,84.86
step
label "Slay_Deepscale_Tormentors"
kill 8 Deepscale Tormentor##56360 |q 29665/1 |goto The Wandering Isle/0 37.18,84.86
|tip They look like {o}lizard people{}.
step
talk Delora Lionheart##55944
turnin Medical Supplies##29797 |goto The Wandering Isle/0 42.22,86.54
step
talk Jojo Ironbrow##55940
turnin From Bad to Worse##29665 |goto The Wandering Isle/0 42.29,86.36
accept An Ancient Evil##29798 |goto The Wandering Isle/0 42.29,86.36
step
kill Vordraka the Deep Sea Nightmare##56009 |q 29798/1 |goto The Wandering Isle/0 36.93,84.29
step
talk Aysa Cloudsinger##56416
turnin An Ancient Evil##29798 |goto The Wandering Isle/0 36.49,84.22
accept Risking It All##30767 |goto The Wandering Isle/0 36.49,84.22
step
Watch the dialogue
|tip Follow {o}Aysa Cloudsinger{}.
|tip She runs to the {o}top of the crashed airship{}.
Remove Shen-zin Su's Thorn |q 30767/1 |goto The Wandering Isle/0 36.38,87.14
'|clicknpc Aysa Cloudsinger##60729
step
talk Ji Firepaw##56418
turnin Risking It All##30767 |goto The Wandering Isle/0 39.30,86.20
accept The Healing of Shen-zin Su##29799 |goto The Wandering Isle/0 39.30,86.20
step
clicknpc Horde Druid##60834+
clicknpc Alliance Priest##60878+
|tip They look like {o}sheets of grey metal covering NPCs{}.
|tip They will appear on your {o}minimap{} as {o}yellow dots{}.
Protect the Healers |q 29799/1 |goto The Wandering Isle/0 40.71,86.35
step
talk Ji Firepaw##56418
turnin The Healing of Shen-zin Su##29799 |goto The Wandering Isle/0 39.30,86.20
step
Watch the dialogue
talk Ji Firepaw##57739
accept New Allies##29800 |goto The Wandering Isle/0 38.77,86.32
step
clicknpc Delivery Cart##57741
Hitch a Ride on the Cart |invehicle |goto The Wandering Isle/0 41.64,85.49 |q 29800
step
Watch the dialogue
Ride the Cart to Mandori Village |outvehicle |goto The Wandering Isle/0 51.62,59.07 |q 29800 |notravel
step
talk Spiwrit of Master Shang Xi##56013
|tip Inside the building.
turnin New Allies##29800 |goto The Wandering Isle/0 51.45,48.27
accept A New Fate##31450 |goto The Wandering Isle/0 51.45,48.27
step
talk Spirit of Master Shang Xi##56013 |goto The Wandering Isle/0 51.45,48.27
|tip Inside the building.
Select _"I'm ready to decide."_ |gossip 126168
Join the Alliance |complete rep("Stormwind") >= Friendly |next "Alliance" |or
_Or_
Join The Horde |complete rep("Orgrimmar") >= Friendly |next "Horde" |or
step
|tip There is a need to refresh the interface after selecting your faction.
Click here to reload |confirm |script ReloadUI()
|only if not (QC.guidesets.LevelingAMOP or QC.guidesets.LevelingHMOP)
step
label "Alliance"
talk Aysa Cloudsinger##60566
turnin A New Fate##31450 |goto Stormwind City/0 74.19,91.97
accept Joining the Alliance##30987 |goto Stormwind City/0 74.19,91.97
|only if rep('Stormwind') >= Friendly
step
talk King Varian Wrynn##29611
|tip Inside the building.
turnin Joining the Alliance##30987 |goto Stormwind City/0 85.80,31.69
accept The Alliance Way##30988 |goto Stormwind City/0 85.80,31.69
|only if rep('Stormwind') >= Friendly
step
Watch the dialogue
|tip Follow {o}King Varian Wrynn{} as he walks.
|tip He eventually walks to this location.
|tip Inside the building.
Walk with King Varian Wrynn |q 30988/1 |goto Stormwind City/0 82.60,28.05
'|clicknpc King Varian Wrynn##61796
|only if rep('Stormwind') >= Friendly
step
talk King Varian Wrynn##61796
|tip Inside the building.
turnin The Alliance Way##30988 |goto Stormwind City/0 82.60,28.05
accept An Old Pit Fighter##30989 |goto Stormwind City/0 82.60,28.05
|only if rep('Stormwind') >= Friendly
step
kill King Varian Wrynn##61796
|tip Inside the building.
Spar with Varian |q 30989/1 |goto Stormwind City/0 82.60,28.05
|only if rep('Stormwind') >= Friendly
step
talk King Varian Wrynn##29611
|tip Inside the building.
turnin An Old Pit Fighter##30989 |goto Stormwind City/0 85.80,31.69
|only if rep('Stormwind') >= Friendly
step
label "Horde"
talk Ji Firepaw##60570
turnin A New Fate##31450 |goto Durotar/0 45.58,12.61
accept Joining the Horde##31012 |goto Durotar/0 45.58,12.61
|only if rep('Orgrimmar') >= Friendly
step
talk Garrosh Hellscream##39605
|tip Inside the building.
turnin Joining the Horde##31012 |goto Orgrimmar/1 48.09,70.44
accept The Horde Way##31013 |goto Orgrimmar/1 48.09,70.44
|only if rep('Orgrimmar') >= Friendly
step
Watch the dialogue
|tip Follow {o}Garrosh Hellscream{} as he walks.
|tip He eventually walks to this location.
|tip Inside the building.
Walk with Garrosh Hellscream |q 31013/1 |goto Orgrimmar/1 49.05,73.21
'|clicknpc Garrosh Hellscream##62087
|only if rep('Orgrimmar') >= Friendly
step
talk Garrosh Hellscream##62092
|tip Inside the building.
turnin The Horde Way##31013 |goto Orgrimmar/1 70.64,31.39
accept Hellscream's Gift##31014 |goto Orgrimmar/1 70.64,31.39
|only if rep('Orgrimmar') >= Friendly
step
Enter the Brawl'gar Arena |complete subzone("Brawl'gar Arena") |goto Orgrimmar/1 70.59,30.96 |q 31014
|tip Walk into the {o}swirling portal{}.
|only if rep('Orgrimmar') >= Friendly
step
_Inside the Brawl'gar Arena:_
Watch the dialogue
|tip You will eventually be {o}teleported into the fighting area{}.
|tip It may take a {o}couple of minutes{}.
Kill the enemies that attack
|tip Attack the {o}same enemy as Ji Firepaw{}.
Complete Hellscream's Trial |q 31014/1
|only if rep('Orgrimmar') >= Friendly
step
Watch the dialogue
|tip You will will {o}teleported out{}.
Leave the Brawl'gar Arena |complete not subzone("Brawl'gar Arena") |q 31014
|only if rep('Orgrimmar') >= Friendly
step
talk Garrosh Hellscream##39605
|tip Inside the building.
turnin Hellscream's Gift##31014 |goto Orgrimmar/1 48.09,70.44
|only if rep('Orgrimmar') >= Friendly
step
|next "Leveling Guides\\Kalimdor (1-60)\\The Barrens (10-20)"
|only if rep('Orgrimmar') >= Friendly
step
|next "Leveling Guides\\Eastern Kingdoms (1-60)\\Westfall (10-15)"
|only if rep('Stormwind') >= Friendly
]])
if UnitFactionGroup("player")~="Neutral" then return end
QuestCore:RegisterGuide("Alliance Loremaster Guides\\Your guides will load after you choose a faction.",{
expansion="mists",},[[]])
QuestCore:RegisterGuide("Daily Guides\\Your guides will load after you choose a faction.",{
expansion="mists",},[[]])
QuestCore:RegisterGuide("Events Guides\\Your guides will load after you choose a faction.",{
expansion="mists",},[[]])
QuestCore:RegisterGuide("Dungeon Guides\\Your guides will load after you choose a faction.",{
expansion="mists",},[[]])
QuestCore:RegisterGuide("Alliance Gear Guides\\Your guides will load after you choose a faction.",{
expansion="mists",},[[]])
QuestCore:RegisterGuide("Alliance Professions Guides\\Your guides will load after you choose a faction.",{
expansion="mists",},[[]])
QuestCore:RegisterGuide("Achievement Guides\\Your guides will load after you choose a faction.",{
expansion="mists",},[[]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Your guides will load after you choose a faction.",{
expansion="mists",},[[]])
QuestCore:RegisterGuide("Title Guides\\Your guides will load after you choose a faction.",{
expansion="mists",},[[]])
QuestCore:RegisterGuide("Reputation Guides\\Your guides will load after you choose a faction.",{
expansion="mists",},[[]])
