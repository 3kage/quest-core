-- QuestCore bundled guide (mists)
if not QuestCore then return end
if UnitFactionGroup("player")~="Horde" then return end
QuestCore:RegisterGuide("Title Guides\\Wrath of the Lich King Titles\\Ambassador",{
expansion="mists",
mopready=true,
description="Earn Exalted reputation with all six Horde factions to become \"Ambassador.\"",
playertitle=130,
},[[
step
confirm
]])
QuestCore:RegisterGuide("Title Guides\\Wrath of the Lich King Titles\\the Argent Champion",{
expansion="mists",
mopready=true,
description="Earn Exalted reputation with the Argent Dawn and Argent Crusade factions to become "..
"\"the Argent Champion.\"",
playertitle=131,
},[[
step
confirm
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
cast Fishing##18248
'|cast Fishing##7731
|tip Fish in open water locations or in fishing pools.
collect 1 Fangtooth Herring##41810 |goto Howling Fjord 60.20,33.60 |or
'|achieve 1780 |or
step
talk Misensi##31031
buy 2 Simple Flour##30817 |goto Dalaran/1 41.20,65.00 |or
'|achieve 1780 |or
step
kill Voidspawn##17981
collect 1 Mote of Shadow##22577 |goto Nagrand/0 37.80,66.60 |or
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
talk Marogg##42506
|tip Inside the building.
learn Charred Wolf Meat##2538 |goto Orgrimmar/2 56.53,62.49
step
talk Marogg##42506
learn Roasted Boar Meat##2540 |goto Orgrimmar/2 56.53,62.49
step
talk Marogg##42506
|tip Inside the building.
learn Herb Baked Egg##8604 |goto Orgrimmar/2 56.53,62.49
step
talk Marogg##42506
|tip Inside the building.
learn Darkbrew Lager##88015 |goto Orgrimmar/2 56.53,62.49
step
talk Marogg##42506
|tip Inside the building.
learn Blackened Surprise##88006 |goto Orgrimmar/2 56.53,62.49
step
talk Marogg##42506
|tip Inside the building.
learn Spice Bread##37836 |goto Orgrimmar/2 56.53,62.49
step
talk Marogg##42506
|tip Inside the building.
learn Kaldorei Spider Kabob##6412 |goto Orgrimmar/2 56.53,62.49
step
talk Marogg##42506
|tip Inside the building.
learn Spiced Wolf Meat##2539 |goto Orgrimmar/2 56.53,62.49
step
talk Marogg##42506
|tip Inside the building.
learn Venison Jerky##93741 |goto Orgrimmar/2 56.53,62.49
step
talk Marogg##42506
|tip Inside the building.
learn Boiled Clams##6499 |goto Orgrimmar/2 56.53,62.49
step
talk Marogg##42506
|tip Inside the building.
learn Coyote Steak##2541 |goto Orgrimmar/2 56.53,62.49
step
talk Marogg##42506
|tip Inside the building.
learn Fillet of Frenzy##6415 |goto Orgrimmar/2 56.53,62.49
step
talk Marogg##42506
|tip Inside the building.
learn Dry Pork Ribs##2546 |goto Orgrimmar/2 56.53,62.49
step
talk Marogg##42506
|tip Inside the building.
learn Crab Cake##2544 |goto Orgrimmar/2 56.53,62.49
step
talk Marogg##42506
|tip Inside the building.
learn Goblin Deviled Clams##6500 |goto Orgrimmar/2 56.53,62.49
step
talk Marogg##42506
|tip Inside the building.
learn Tasty Lion Steak##3399 |goto Orgrimmar/2 56.53,62.49
step
talk Marogg##42506
|tip Inside the building.
learn Barbecued Buzzard Wing##4094 |goto Orgrimmar/2 56.53,62.49
step
talk Marogg##42506
|tip Inside the building.
learn Soothing Turtle Bisque##3400 |goto Orgrimmar/2 56.53,62.49
step
talk Marogg##42506
|tip Inside the building.
learn Spider Sausage##21175 |goto Orgrimmar/2 56.53,62.49
step
talk Marogg##42506
|tip Inside the building.
learn Spotted Yellowtail##18238 |goto Orgrimmar/2 56.53,62.49
step
talk Marogg##42506
|tip Inside the building.
learn Grilled Squid##18240 |goto Orgrimmar/2 56.53,62.49
step
talk Marogg##42506
|tip Inside the building.
learn Charred Bear Kabobs##46684 |goto Orgrimmar/2 56.53,62.49
step
talk Marogg##42506
|tip Inside the building.
learn Juicy Bear Burger##46688 |goto Orgrimmar/2 56.53,62.49
step
talk Marogg##42506
|tip Inside the building.
learn Nightfin Soup##18243 |goto Orgrimmar/2 56.53,62.49
step
talk Marogg##42506
|tip Inside the building.
learn Poached Sunscale Salmon##18244 |goto Orgrimmar/2 56.53,62.49
step
collect 1 Recipe: Gooey Spider Cake##3683 |n
|tip The following recipes are purchased from Alliance vendors.
|tip Buy them from the Auction House.
|tip You can have a friend list them cheap.
use the Recipe: Gooey Spider Cake##3683
learn Gooey Spider Cake##3377 |or
'|achieve 1798 |or
step
collect 1 Recipe: Crocolisk Steak##3678 |n
|tip The following recipes are purchased from Alliance vendors.
|tip Buy them from the Auction House.
|tip You can have a friend list them cheap.
use the Recipe: Crocolisk Steak##3678
learn Crocolisk Steak##3370 |or
'|achieve 1798 |or
step
collect 1 Recipe: Goretusk Liver Pie##2697 |n
|tip The following recipes are purchased from Alliance vendors.
|tip Buy them from the Auction House.
|tip You can have a friend list them cheap.
use the Recipe: Goretusk Liver Pie##2697
learn Goretusk Liver Pie##2542 |or
'|achieve 1798 |or
step
collect 1 Recipe: Murloc Fin Soup##3680 |n
|tip The following recipes are purchased from Alliance vendors.
|tip Buy them from the Auction House.
|tip You can have a friend list them cheap.
use the Recipe: Murloc Fin Soup##3680
learn Murloc Fin Soup##3372 |or
'|achieve 1798 |or
step
collect 1 Recipe: Redridge Goulash##2699 |n
|tip The following recipes are purchased from Alliance vendors.
|tip Buy them from the Auction House.
|tip You can have a friend list them cheap.
use the Recipe: Redridge Goulash##2699
learn Redridge Goulash##2547 |or
'|achieve 1798 |or
step
collect 1 Recipe: Seasoned Wolf Kabob##2701 |n
|tip The following recipes are purchased from Alliance vendors.
|tip Buy them from the Auction House.
|tip You can have a friend list them cheap.
use the Recipe: Seasoned Wolf Kabob##2701
learn Seasoned Wolf Kabob##2549
step
collect 1 Recipe: Crocolisk Gumbo##3681 |n
|tip The following recipes are purchased from Alliance vendors.
|tip Buy them from the Auction House.
|tip You can have a friend list them cheap.
use the Recipe: Crocolisk Gumbo##3681
learn Crocolisk Gumbo##3373
step
collect 1 Recipe: Succulent Pork Ribs##2700 |n
|tip The following recipes are purchased from Alliance vendors.
|tip Buy them from the Auction House.
|tip You can have a friend list them cheap.
use the Recipe: Succulent Pork Ribs##2700
learn Succulent Pork Ribs##2548
step
collect 1 Recipe: Blood Sausage##3679 |n
|tip The following recipes are purchased from Alliance vendors.
|tip Buy them from the Auction House.
|tip You can have a friend list them cheap.
use the Recipe: Blood Sausage##3679
learn Blood Sausage##3371
step
collect 1 Recipe: Cooked Crab Claw##2698 |n
|tip The following recipes are purchased from Alliance vendors.
|tip Buy them from the Auction House.
|tip You can have a friend list them cheap.
use the Recipe: Cooked Crab Claw##2698
learn Cooked Crab Claw##2545
step
collect 1 Recipe: Westfall Stew##728 |n
|tip The following recipes are purchased from Alliance vendors.
|tip Buy them from the Auction House.
|tip You can have a friend list them cheap.
use the Recipe: Westfall Stew##728
learn Westfall Stew##2543
step
collect Recipe: Roasted Moongraze Tenderloin##27686 |n
use the Recipe: Roasted Moongraze Tenderloin##27686
|tip The following recipes are purchased from Alliance vendors.
|tip Buy them from the Auction House.
|tip You can have a friend list them cheap.
learn Roasted Moongraze Tenderloin##33277
step
collect 1 Recipe: Clam Chowder##5528 |n
|tip The following recipes are purchased from Alliance vendors.
|tip Buy them from the Auction House.
|tip You can have a friend list them cheap.
use the Recipe: Clam Chowder##5528
learn Clam Chowder##6501
step
talk Zonsoa##5942
|tip Inside the building.
buy 1 Recipe: Slitherskin Mackerel##6326 |n
use the Recipe: Slitherskin Mackerel##6326
learn Slitherskin Mackerel##7752 |goto Durotar/0 56.00,73.40
step
talk Uthok##1149
buy 1 Recipe: Spiced Chili Crab##16111 |n
use the Recipe: Spiced Chili Crab##16111
learn Spiced Chili Crab##15915 |goto Northern Stranglethorn/0 34.60,28.00
step
talk Naal Mistrunner##3027
buy 1 Recipe: Longjaw Mud Snapper##6328 |n
use the Recipe: Longjaw Mud Snapper##6328
learn Longjaw Mud Snapper##7753 |goto Thunder Bluff/0 51.00,52.80
step
buy 1 Recipe: Loch Frenzy Delight##6329 |n
|tip The following recipes are purchased from Alliance vendors.
|tip Buy them from the Auction House.
|tip You can have a friend list them cheap.
use the Recipe: Loch Frenzy Delight##6329
learn Loch Frenzy Delight##7754
step
talk Grimtak##3881
buy 1 Recipe: Scorpid Surprise##5483 |n
use the Recipe: Scorpid Surprise##5483
learn Scorpid Surprise##6413 |goto Durotar/0 51.20,42.60
step
talk Goram##46572
|tip Inside the building.
|tip The following recipes require Honored reputation with a guild.
|tip Earn guild reputation by completing quests.
buy 1 Recipe: Broiled Dragon Feast##62799 |n
use the Recipe: Broiled Dragon Feast##62799
learn Broiled Dragon Feast##88011 |goto Orgrimmar/1 48.40,75.80
step
talk Goram##46572
|tip Inside the building.
|tip The following recipes require Honored reputation with a guild.
|tip Earn guild reputation by completing quests.
buy 1 Recipe: Seafood Magnifique Feast##62800 |n
use the Recipe: Seafood Magnifique Feast##62800
learn Seafood Magnifique Feast##88036 |goto Orgrimmar/1 48.40,75.80
step
talk Wunna Darkmane##3081
|tip Inside the building.
buy 1 Recipe: Roasted Kodo Meat##5484 |n
use the Recipe: Roasted Kodo Meat##5484
learn Roasted Kodo Meat##6414 |goto Mulgore/0 46.00,58.20
step
talk Sewa Mistrunner##3029
|tip Inside the building.
buy 1 Recipe: Brilliant Smallfish##6325 |n
use the Recipe: Brilliant Smallfish##6325
learn Brilliant Smallfish##7751 |goto Thunder Bluff/0 55.80,47.60
step
talk Abigail Shiel##2118
buy 1 Recipe: Crispy Bat Wing##12226 |n
use the Recipe: Crispy Bat Wing##12226
learn Crispy Bat Wing##15935 |goto Tirisfal Glades/0 61.00,52.40
step
talk Andrew Hilbert##3556
|tip Inside the building.
buy 1 Recipe: Smoked Bear Meat##6892 |n
use the Recipe: Smoked Bear Meat##6892
learn Smoked Bear Meat##8607|goto Silverpine Forest/0 43.20,40.60
step
talk Tari'qa##3482
buy 1 Recipe: Strider Stew##5486 |n
use the Recipe: Strider Stew##5486
learn Strider Stew##6416 |goto The Barrens/0/0 51.60,30.00
step
talk Tari'qa##3482
buy 1 Recipe: Crispy Lizard Tail##5488 |n
use the Crispy Lizard Tail##5488
learn Crispy Lizard Tail##6418 |goto The Barrens/0/0 51.60,30.00
step
talk Nerrist##1148
collect 1 Recipe: Curiously Tasty Omelet##3682
use the Recipe: Curiously Tasty Omelet##3682
learn Curiously Tasty Omelet##3376 |goto Northern Stranglethorn/0 35.60,29.20
step
talk Nerrist##1148
buy 1 Recipe: Jungle Stew##12231 |n
use the Recipe: Jungle Stew##12231
learn Jungle Stew##15861 |goto Northern Stranglethorn/0 35.60,29.20
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
learn Bristle Whisker Catfish##7755 |goto The Barrens/0/0 68.57,72.60
step
talk Kilxx##3497
buy 1 Recipe: Rainbow Fin Albacore##6368 |n
use the Recipe: Rainbow Fin Albacore##6368
learn Rainbow Fin Albacore##7827 |goto The Barrens/0/0 68.57,72.60 |complete knowsrecipe(7827)
step
talk Zidormi##63546
Select _"Show me Theramore before the destruction."_
Travel to the Past |complete QC.InPhase("Old Dustwallow") |goto Dustwallow Marsh/0 55.91,49.54
step
talk Ogg'marr##4879
buy 1 Recipe: Dragonbreath Chili##12239 |n
use the Recipe: Dragonbreath Chili##12239
learn Dragonbreath Chili##15906 |goto Dustwallow Marsh/0 36.60,31.00
step
talk Ogg'marr##4879
buy 1 Recipe: Roast Raptor##12228 |n
use the Recipe: Roast Raptor##12228
learn Roast Raptor##15855 |goto Dustwallow Marsh/0 36.60,31.00
step
talk Ogg'marr##4879
buy 1 Recipe: Heavy Crocolisk Stew##20075 |n
use the Recipe: Heavy Crocolisk Stew##20075
learn Heavy Crocolisk Stew##24418 |goto Dustwallow Marsh/0 36.60,31.00
step
talk Super-Seller 680##12246
buy 1 Recipe: Mystery Stew##12233 |n
use the Recipe: Mystery Stew##12233
learn Mystery Stew##15865 |goto Desolace/0 40.60,79.20
step
talk Vendor-Tron 1000##12245
buy 1 Recipe: Hot Lion Chops##3735 |n
use the Recipe: Hot Lion Chops##3735
learn Hot Lion Chops##3398 |goto Desolace/0 60.20,38.00
step
talk Vendor-Tron 1000##12245
buy 1 Recipe: Carrion Surprise##12232 |n
use the Recipe: Carrion Surprise##12232
learn Carrion Surprise##15863 |goto Desolace/0 60.20,38.00
step
talk Vendor-Tron 1000##12245
buy 1 Recipe: Heavy Kodo Stew##12240 |n
use the Recipe: Heavy Kodo Stew##12240
learn Heavy Kodo Stew##15910 |goto Desolace/0 60.20,38.00
step
talk Dirge Quikcleave##40589
buy 1 Recipe: Tender Wolf Steak##18046 |n
use the Recipe: Tender Wolf Steak##18046
learn Tender Wolf Steak##22480 |goto Tanaris/0 52.57,29.05 |complete knowsrecipe(22480)
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
talk Sheendra Tallgrass##8145
|tip Inside the building.
buy 1 Recipe: Hot Wolf Ribs##12229 |n
use the Recipe: Hot Wolf Ribs##12229
learn Hot Wolf Ribs##15856 |goto Feralas/0 74.60,42.80
step
talk Sheendra Tallgrass##8145
|tip She walks around this area.
buy 1 Recipe: Baked Salmon##13949 |n
use the Recipe: Baked Salmon##13949
learn Baked Salmon##18247  |goto Feralas/0 74.60,42.80
step
talk Sheendra Tallgrass##8145
|tip She walks around this area.
buy 1 Recipe: Lobster Stew##13947 |n
use the Recipe: Lobster Stew##13947
learn Lobster Stew##18245 |goto Feralas/0 74.60,42.80
step
talk Himmik##11187
|tip Inside the building.
buy 1 Recipe: Monster Omelet##16110 |n
use the Recipe: Monster Omelet##16110
learn Monster Omelet##15933 |goto Winterspring/0 59.82,51.56
step
talk Landraelanis##16262
buy 1 Recipe: Lynx Steak##27685 |n
use the Recipe: Lynx Steak##27685
learn Lynx Steak##33276 |goto Eversong Woods/0 49.00,47.00
step
talk Master Chef Mouldier##16253
buy 1 Recipe: Bat Bites##27687 |n
use the Recipe: Bat Bites##27687
learn Bat Bites##33278 |goto Ghostlands/0 48.40,31.00
step
talk Master Chef Mouldier##16253
buy 1 Recipe: Crunchy Spider Surprise##22647 |goto Ghostlands/0 48.30,31.00 |n
use the Recipe: Crunchy Spider Surprise##22647
learn Crunchy Spider Surprise##28267
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
talk Innkeeper Grilka##18957
|tip Inside the building.
buy 1 Recipe: Blackened Basilisk##27690 |n
use the Recipe: Blackened Basilisk##27690
learn Blackened Basilisk##33286 |goto Terokkar Forest/0 48.80,45.00
step
talk Innkeeper Grilka##18957
|tip Inside the building.
buy 1 Recipe: Warp Burger##27692 |n
use the Recipe: Warp Burger##27692
learn Warp Burger##33288 |goto Terokkar Forest/0 48.80,45.00
step
talk Rungor ##18960
|tip Inside the building.
buy 1 Recipe: Golden Fish Sticks##27699 |n
use the Recipe: Golden Fish Sticks##27699
learn Golden Fish Sticks##33295 |goto Terokkar Forest/0 48.80,46.00
step
talk Rungor ##18960
|tip Inside the building.
buy 1 Recipe: Spicy Crawdad##27700 |n
use the Recipe: Spicy Crawdad##27700
learn Spicy Crawdad##33296 |goto Terokkar Forest/0 48.80,46.00
step
talk Cookie One-Eye##16585
|tip Inside the building.
buy 1 Recipe: Ravager Dog##27688 |n
use the Recipe: Ravager Dog##27688
learn Ravager Dog##33284 |goto Hellfire Peninsula/0 55.00,40.20
step
talk Legassi##19344
accept Ravager Egg Roundup##9349 |goto Hellfire Peninsula/0 49.24,74.83
step
click Ravager Egg##181385
kill Razorfang Ravager##16933, Quillfang Skitterer##19189
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
talk Zurai##18011
buy 1 Recipe: Crunchy Serpent##31674 |n
use the Recipe: Crunchy Serpent##31674
learn Crunchy Serpent##38868 |goto Blade's Edge Mountains/0 85.20,54.60
step
talk Xerintha Ravenoak##20916
buy 1 Recipe: Mok'Nathal Shortribs##31675 |n
use the Recipe: Mok'Nathal Shortribs#31675
learn Mok'Nathal Shortribs##38867 |goto Blade's Edge Mountains/0 62.48,40.34
step
talk Juno Dufrain##18911
buy 1 Recipe: Blackened Sporefish##27696 |n
use the Recipe: Blackened Sporefish##27696
learn Blackened Sporefish##33292 |goto Zangarmarsh/0 78.05,66.09
step
talk Gambarinka ##18015
buy 1 Recipe: Blackened Trout##27694 |n
use the Recipe: Blackened Trout##27694
learn Blackened Trout##33290 |goto Zangarmarsh/0 31.60,49.20
step
talk Zurai##18011
buy 1 Recipe: Feltail Delight##27695 |n
use the Recipe: Feltail Delight##27695
learn Feltail Delight##33291 |goto Zangarmarsh/0 85.20,54.60
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
step
talk Nula the Butcher##20097
buy 1 Recipe: Roasted Clefthoof##27691 |n
use the Recipe: Roasted Clefthoof##27691
learn Roasted Clefthoof##33287 |goto Nagrand/0 58.00,35.60
step
talk Nula the Butcher##20097
buy 1 Recipe: Talbuk Steak##27693 |n
use the Recipe: Talbuk Steak##27693
learn Talbuk Steak##33289 |goto Nagrand/0 58.00,35.60
step
talk Nula the Butcher##20097
buy 1 Recipe: Grilled Mudfish##27697 |n
use the Recipe: Grilled Mudfish##27697
learn Grilled Mudfish##33293 |goto Nagrand/0 58.00,35.60
step
talk Nula the Butcher##20097
buy 1 Recipe: Poached Bluefish##27698 |n
use the Recipe: Poached Bluefish##27698
learn Poached Bluefish##33294 |goto Nagrand/0 58.00,35.60
step
talk Awilo Lon'gomba##29631
|tip Walking around inside the building.
|tip Inside the building.
learn Grilled Bonescale##45561 |goto Dalaran/1 69.95,39.04
step
talk Awilo Lon'gomba##29631
|tip Walking around inside the building.
learn Sauteed Goby##45562 |goto Dalaran/1 69.95,39.04
step
talk Awilo Lon'gomba##29631
|tip Walking around inside the building.
learn Smoked Rockfin##45560 |goto Dalaran/1 69.95,39.04
step
talk Awilo Lon'gomba##29631
|tip Walking around inside the building.
learn Baked Manta Ray##45569 |goto Dalaran/1 69.95,39.04
step
talk Awilo Lon'gomba##29631
|tip Walking around inside the building.
learn Dalaran Clam Chowder##58065 |goto Dalaran/1 69.95,39.04
step
talk Awilo Lon'gomba##29631
|tip Walking around inside the building.
learn Grilled Sculpin##45563 |goto Dalaran/1 69.95,39.04
step
talk Awilo Lon'gomba##29631
|tip Walking around inside the building.
learn Mammoth Meal##45549 |goto Dalaran/1 69.95,39.04
step
talk Awilo Lon'gomba##29631
|tip Walking around inside the building.
learn Pickled Fangtooth##45566 |goto Dalaran/1 69.95,39.04
step
talk Awilo Lon'gomba##29631
|tip Walking around inside the building.
learn Poached Nettlefish##45565 |goto Dalaran/1 69.95,39.04
step
talk Awilo Lon'gomba##29631
|tip Walking around inside the building.
learn Rhino Dogs##45553 |goto Dalaran/1 69.95,39.04
step
talk Awilo Lon'gomba##29631
|tip Walking around inside the building.
learn Roasted Worg##45552 |goto Dalaran/1 69.95,39.04
step
talk Awilo Lon'gomba##29631
|tip Walking around inside the building.
learn Shoveltusk Steak##45550 |goto Dalaran/1 69.95,39.04
step
talk Awilo Lon'gomba##29631
|tip Walking around inside the building.
learn Smoked Salmon##45564 |goto Dalaran/1 69.95,39.04
step
talk Awilo Lon'gomba##29631
|tip Walking around inside the building.
learn Worm Delight##45551 |goto Dalaran/1 69.95,39.04
step
talk Awilo Lon'gomba##29631
|tip Walking around inside the building.
learn Great Feast##45554 |goto Dalaran/1 69.95,39.04
step
talk Awilo Lon'gomba##29631
|tip Walking around inside the building.
learn Black Jelly##64358 |goto Dalaran/1 69.95,39.04
step
talk Orn Tenderhoof##26972
|tip Downstairs in the lowest level of Warsong Hold.
accept Northern Cooking##13090 |goto Dalaran/1 41.98,54.11
step
collect 4 Chilled Meat##43013 |q 13090/1
|tip You collected these in a previous step.
step
talk Orn Tenderhoof##26972
|tip Downstairs in the lowest level of Warsong Hold.
turnin Northern Cooking##13090 |goto Dalaran/1 41.98,54.11
step
Train Northern Stew |learn Northern Stew##57421
|tip You will learn this automatically.
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
Gather #72# Chef's Awards |complete curcount(402) >= 72 |or
step
talk Shazdar##49737
buy 1 Recipe: Whitecrest Gumbo##65406 |n
use the Recipe: Whitecrest Gumbo##65406
learn Whitecrest Gumbo##88047 |goto Orgrimmar/1 56.80,62.60
step
talk Shazdar##49737
buy 1 Recipe: Lavascale Fillet##65407 |n
use the Recipe: Lavascale Fillet##65407
learn Lavascale Fillet##88024 |goto Orgrimmar/1 56.80,62.60
step
talk Shazdar##49737
buy 1 Recipe: Lavascale Minestrone##65409 |n
use the Recipe: Lavascale Minestrone##65409
learn Lavascale Minestrone##88025 |goto Orgrimmar/1 56.80,62.60
step
talk Shazdar##49737
buy 1 Recipe: Salted Eye##65410 |n
use the Recipe: Salted Eye##65410
learn Salted Eye##88035 |goto Orgrimmar/1 56.80,62.60
step
talk Shazdar##49737
buy 1 Recipe: Broiled Mountain Trout##65411 |n
use the Recipe: Broiled Mountain Trout##65411
learn Broiled Mountain Trout##88012 |goto Orgrimmar/1 56.80,62.60
step
talk Shazdar##49737
buy 1 Recipe: Lightly Fried Lurker##65412 |n
use the Recipe: Lightly Fried Lurker##65412
learn Lightly Fried Lurker##88028 |goto Orgrimmar/1 56.80,62.60
step
talk Shazdar##49737
buy 1 Recipe: Seasoned Crab##65413 |n
use the Recipe: Seasoned Crab##65413
learn Seasoned Crab##88037 |goto Orgrimmar/1 56.80,62.60
step
talk Shazdar##49737
buy 1 Recipe: Starfire Espresso##65414 |n
use the Recipe: Starfire Espresso##65414
learn Starfire Espresso##88045 |goto Orgrimmar/1 56.80,62.60
step
talk Shazdar##49737
buy 1 Recipe: Feathered Lure##65408 |n
use the Recipe: Feathered Lure##65408
learn Feathered Lure##88017 |goto Orgrimmar/1 56.80,62.60
step
talk Shazdar##49737
buy 1 Recipe: Highland Spirits##65415 |n
use the Recipe: Highland Spirits##65415
learn Highland Spirits##88022 |goto Orgrimmar/1 56.80,62.60
step
talk Shazdar##49737
buy 1 Recipe: Lurker Lunch##65416 |n
use the Recipe: Lurker Lunch##65416
learn Lurker Lunch##88030 |goto Orgrimmar/1 56.80,62.60
step
talk Shazdar##49737
buy 1 Recipe: Pickled Guppy##65417 |n
use the Recipe: Pickled Guppy##65417
learn Pickled Guppy##88033 |goto Orgrimmar/1 56.80,62.60
step
talk Shazdar##49737
buy 1 Recipe: Hearty Seafood Soup##65418 |n
use the Recipe: Hearty Seafood Soup##65418
learn Hearty Seafood Soup##88021 |goto Orgrimmar/1 56.80,62.60
step
talk Shazdar##49737
buy 1 Recipe: Tender Baked Turtle##65419 |n
use the Recipe: Tender Baked Turtle##65419
learn Tender Baked Turtle##88046 |goto Orgrimmar/1 56.80,62.60
step
talk Shazdar##49737
buy 1 Recipe: Mushroom Sauce Mudfish##65420 |n
use the Recipe: Mushroom Sauce Mudfish##65420
learn Mushroom Sauce Mudfish##88031 |goto Orgrimmar/1 56.80,62.60
step
talk Shazdar##49737
buy 1 Recipe: Severed Sagefish Head##65421 |n
use the Recipe: Severed Sagefish Head##65421
learn Severed Sagefish Head##88039 |goto Orgrimmar/1 56.80,62.60
step
talk Shazdar##49737
buy 1 Recipe: Delicious Sagefish Tail##65422 |n
use the Recipe: Delicious Sagefish Tail##65422
learn Delicious Sagefish Tail##88016 |goto Orgrimmar/1 56.80,62.60
step
talk Shazdar##49737
buy 1 Recipe: Fish Fry##65423 |n
use the Recipe: Fish Fry##65423
learn Fish Fry##88018 |goto Orgrimmar/1 56.80,62.60
step
talk Shazdar##49737
buy 1 Recipe: Scalding Murglesnout##68688 |n
use the Recipe: Scalding Murglesnout##68688
learn Scalding Murglesnout##96133 |goto Orgrimmar/1 56.80,62.60
step
talk Shazdar##49737
buy 1 Recipe: Blackbelly Sushi##65424 |n
use the Recipe: Blackbelly Sushi##65424
learn Blackbelly Sushi##88034 |goto Orgrimmar/1 56.80,62.60
step
talk Shazdar##49737
buy 1 Recipe: Skewered Eel##65425 |n
use the Recipe: Skewered Eel##65425
learn Skewered Eel##88042 |goto Orgrimmar/1 56.80,62.60
step
talk Shazdar##49737
buy 1 Recipe: Baked Rockfish##65426 |n
use the Recipe: Baked Rockfish##65426
learn Baked Rockfish##88003 |goto Orgrimmar/1 56.80,62.60
step
talk Shazdar##49737
buy 1 Recipe: Basilisk Liverdog##65427 |n
use the Recipe: Basilisk Liverdog##65427
learn Basilisk Liverdog##88004 |goto Orgrimmar/1 56.80,62.60
step
talk Shazdar##49737
buy 1 Recipe: Grilled Dragon##65428 |n
use the Recipe: Grilled Dragon##65428
learn Grilled Dragon##88020 |goto Orgrimmar/1 56.80,62.60
]])
QuestCore:RegisterGuide("Achievement Guides\\Professions\\Cooking\\The Outland Gourmet",{
expansion="mists",
mopready=true,
achieveid={1800},
patch='30002',
description="Cook each of the Outland cooking recipes.",
},[[
step
talk Marogg##42506
|tip Inside the building.
learn Stewed Trout##42296 |goto Orgrimmar/2 56.53,62.49
step
talk Marogg##42506
|tip Inside the building.
learn Fisherman's Feast##42302 |goto Orgrimmar/2 56.53,62.49
step
talk Marogg##42506
|tip Inside the building.
learn Hot Buttered Trout##42305 |goto Orgrimmar/2 56.53,62.49
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
talk Marogg##42506
|tip Inside the building.
learn Dalaran Clam Chowder##58065 |goto Orgrimmar/2 56.53,62.49
step
talk Marogg##42506
|tip Inside the building.
learn Grilled Sculpin##45563 |goto Orgrimmar/2 56.53,62.49
step
talk Marogg##42506
|tip Inside the building.
learn Mammoth Meal##45549 |goto Orgrimmar/2 56.53,62.49
step
talk Marogg##42506
|tip Inside the building.
learn Pickled Fangtooth##45566 |goto Orgrimmar/2 56.53,62.49
step
talk Marogg##42506
|tip Inside the building.
learn Poached Nettlefish##45565 |goto Orgrimmar/2 56.53,62.49
step
talk Marogg##42506
|tip Inside the building.
learn Rhino Dogs##45553 |goto Orgrimmar/2 56.53,62.49
step
talk Marogg##42506
|tip Inside the building.
learn Roasted Worg##45552 |goto Orgrimmar/2 56.53,62.49
step
talk Marogg##42506
|tip Inside the building.
learn Shoveltusk Steak##45550 |goto Orgrimmar/2 56.53,62.49
step
talk Marogg##42506
|tip Inside the building.
learn Smoked Salmon##45564 |goto Orgrimmar/2 56.53,62.49
step
talk Marogg##42506
|tip Inside the building.
learn Worm Delight##45551 |goto Orgrimmar/2 56.53,62.49
step
talk Marogg##42506
|tip Inside the building.
learn Fisherman's Feast##42302 |goto Orgrimmar/2 56.53,62.49
step
talk Marogg##42506
|tip Inside the building.
learn Hot Buttered Trout##42305 |goto Orgrimmar/2 56.53,62.49
step
talk Marogg##42506
|tip Inside the building.
learn Great Feast##45554 |goto Orgrimmar/2 56.53,62.49
step
talk Marogg##42506
|tip Inside the building.
learn Black Jelly##64358 |goto Orgrimmar/2 56.53,62.49
step
talk Marogg##42506
|tip Inside the building.
learn Darkbrew Lager##88015 |goto Orgrimmar/2 56.53,62.49
step
talk Marogg##42506
|tip Inside the building.
learn Blackened Surprise##88006 |goto Orgrimmar/2 56.53,62.49
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
talk Awilo Lon'gomba##29631
|tip Inside the building.
buy 1 Recipe: Mega Mammoth Meal##43018 |n
use the Recipe: Mega Mammoth Meal##43018
learn Mega Mammoth Meal##45555 |goto Dalaran/1 41.60,64.60
step
talk Awilo Lon'gomba##29631
|tip Inside the building.
buy 1 Recipe: Tender Shoveltusk Steak##43019 |n
use the Recipe: Tender Shoveltusk Steak##43019
learn Tender Shoveltusk Steak##45556 |goto Dalaran/1 41.60,64.60
step
talk Awilo Lon'gomba##29631
|tip Inside the building.
buy 1 Recipe: Spiced Worm Burger##43020 |n
use the Recipe: Spiced Worm Burger##43020
learn Spiced Worm Burger##45557 |goto Dalaran/1 41.60,64.60
step
talk Awilo Lon'gomba##29631
|tip Inside the building.
buy 1 Recipe: Very Burnt Worg##43021 |n
use the Recipe: Very Burnt Worg##43021
learn Very Burnt Worg##45558 |goto Dalaran/1 41.60,64.60
step
talk Awilo Lon'gomba##29631
|tip Inside the building.
buy 1 Recipe: Worg Tartare##44954 |n
use the Recipe: Worg Tartare##44954
learn Worg Tartare##62350 |goto Dalaran/1 41.60,64.60
step
talk Awilo Lon'gomba##29631
|tip Inside the building.
buy 1 Recipe: Mighty Rhino Dogs##43022 |n
use the Recipe: Mighty Rhino Dogs##43022
learn Mighty Rhino Dogs##45559 |goto Dalaran/1 41.60,64.60
step
talk Awilo Lon'gomba##29631
|tip Inside the building.
buy 1 Recipe: Poached Northern Sculpin##43023 |n
use the Recipe: Poached Northern Sculpin##43023
learn Poached Northern Sculpin##45567 |goto Dalaran/1 41.60,64.60
step
talk Awilo Lon'gomba##29631
|tip Inside the building.
buy 1 Recipe: Firecracker Salmon##43024 |n
use the Recipe: Firecracker Salmon##43024
learn Firecracker Salmon##45568 |goto Dalaran/1 41.60,64.60
step
talk Awilo Lon'gomba##29631
|tip Inside the building.
buy 1 Recipe: Spicy Blue Nettlefish##43025 |n
use the Recipe: Spicy Blue Nettlefish##43025
learn Spicy Blue Nettlefish##45571 |goto Dalaran/1 41.60,64.60
step
talk Awilo Lon'gomba##29631
|tip Inside the building.
buy 1 Recipe: Imperial Manta Steak##43026 |n
use the Recipe: Imperial Manta Steak##43026
learn Imperial Manta Steak##45570 |goto Dalaran/1 41.60,64.60
step
talk Awilo Lon'gomba##29631
|tip Inside the building.
buy 1 Recipe: Spicy Fried Herring##43027 |n
use the Recipe: Spicy Fried Herring##43027
learn Spicy Fried Herring##57433 |goto Dalaran/1 41.60,64.60
step
talk Awilo Lon'gomba##29631
|tip Inside the building.
buy 1 Recipe: Rhinolicious Wormsteak##43028 |n
use the Recipe: Rhinolicious Wormsteak##43028
learn Rhinolicious Wormsteak##57434 |goto Dalaran/1 41.60,64.60
step
talk Awilo Lon'gomba##29631
|tip Inside the building.
buy 1 Recipe: Critter Bites##43029 |n
use the Recipe: Critter Bites##43029
learn Critter Bites##57435 |goto Dalaran/1 41.60,64.60
step
talk Awilo Lon'gomba##29631
|tip Inside the building.
buy 1 Recipe: Hearty Rhino##43030 |n
use the Recipe: Hearty Rhino##43030
learn Hearty Rhino##57436 |goto Dalaran/1 41.60,64.60
step
talk Awilo Lon'gomba##29631
|tip Inside the building.
buy 1 Recipe: Snapper Extreme##43031 |n
use the Recipe: Snapper Extreme##43031
learn Snapper Extreme##57437 |goto Dalaran/1 41.60,64.60
step
talk Awilo Lon'gomba##29631
|tip Inside the building.
buy 1 Recipe: Blackened Worg Steak##43032 |n
use the Recipe: Blackened Worg Steak##43032
learn Blackened Worg Steak##57438 |goto Dalaran/1 41.60,64.60
step
talk Awilo Lon'gomba##29631
|tip Inside the building.
buy 1 Recipe: Cuttlesteak##43033 |n
use the Recipe: Cuttlesteak##43033
learn Cuttlesteak##57439 |goto Dalaran/1 41.60,64.60
step
talk Awilo Lon'gomba##29631
|tip Inside the building.
buy 1 Recipe: Spiced Mammoth Treats##43034 |n
use the Recipe: Spiced Mammoth Treats##43034
learn Spiced Mammoth Treats##57440 |goto Dalaran/1 41.60,64.60
step
talk Awilo Lon'gomba##29631
|tip Inside the building.
buy 1 Recipe: Blackened Dragonfin##43035 |n
use the Recipe: Blackened Dragonfin##43035
learn Blackened Dragonfin##57441 |goto Dalaran/1 41.60,64.60
step
talk Awilo Lon'gomba##29631
|tip Inside the building.
buy 1 Recipe: Dragonfin Fillet##43036 |n
use the Recipe: Dragonfin Fillet##43036
learn Dragonfin Fillet##57442 |goto Dalaran/1 41.60,64.60
step
talk Awilo Lon'gomba##29631
|tip Inside the building.
buy 1 Recipe: Tracker Snacks##43037 |n
use the Recipe: Tracker Snacks##43037
learn Tracker Snacks##57443 |goto Dalaran/1 41.60,64.60
step
talk Awilo Lon'gomba##29631
|tip Inside the building.
buy 1 Recipe: Gigantic Feast##43505 |n
use the Recipe: Gigantic Feast##43505
learn Gigantic Feast##58527 |goto Dalaran/1 41.60,64.60
step
talk Awilo Lon'gomba##29631
|tip Inside the building.
buy 1 Recipe: Small Feast##43506 |n
use the Recipe: Small Feast##43506
learn Small Feast##58528 |goto Dalaran/1 41.60,64.60
step
talk Awilo Lon'gomba##29631
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
talk Barkeep Morag##5611
buy 4 Ice Cold Milk##1179 |goto Orgrimmar 54.90,78.20 |or
'|achieve 877 |or
step
talk Barkeep Morag##5611
buy 1 Flask of Port##2593 |goto Orgrimmar/1 54.90,78.20 |or
'|achieve 877 |or
step
talk Suja##46708
buy 8 Simple Flour##30817 |goto Orgrimmar/1 56.40,61.30 |or
'|achieve 877 |or
step
talk Suja##46708
buy 4 Mild Spices##2678 |goto Orgrimmar/1 56.40,61.30 |or
'|achieve 877 |or
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
talk Misensi##31031
buy 1 Recipe: Critter Bites##43029 |n
use the Recipe: Critter Bites##43029
learn Critter Bites##57435 |goto Dalaran 70.00,38.60
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
talk Marogg##42506
learn Great Feast##45554 |goto Orgrimmar/2 56.53,62.49
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
QuestCore:RegisterGuide("Title Guides\\Wrath of the Lich King Titles\\Quests\\The Loremaster",{
expansion="mists",
mopready=true,
achieveid={1682},
patch='unknown',
description="\nComplete the various Kalimdor quests in each zone.",
},[[
step
Earn the "Loremaster of Cataclysm" Achievement |achieve 1682/1
step
Earn the "Loremaster of Outland" Achievement |achieve 1682/2
step
Earn the "Loremaster of Northrend" Achievement |achieve 1682/3
step
Earn the "Loremaster of Kalimdor" Achievement |achieve 1682/4
step
Earn the "Loremaster of Eastern Kingdom" Achievement |achieve 1682/5
]])
QuestCore:RegisterGuide("Title Guides\\Wrath of the Lich King Titles\\Quests\\Loremaster of Kalimdor",{
expansion="mists",
mopready=true,
achieveid={1680},
patch='unknown',
description="\nComplete the various Kalimdor quests in each zone.",
},[[
step
Complete the "Thousand Needles Quests" Achievement |achieve 1680/1
|tip Refer to the Thousand Needles leveling guide to accomplish this.
step
Complete the "The Barrens/0 Quests" Achievement |achieve 1680/2
|tip Refer to the The Barrens/0 leveling guide to accomplish this.
step
Complete the "Felwood Quests" Achievement |achieve 1680/3
|tip Refer to the Felwood leveling guide to accomplish this.
step
Complete the "Dustwallow Marsh Quests" Achievement |achieve 1680/4
|tip Refer to the Dustwallow leveling guide to accomplish this.
step
Complete the "Azshara Quests" Achievement |achieve 1680/5
|tip Refer to the Azshara leveling guide to accomplish this.
step
Complete the "Un'Goro Crater Quests" Achievement |achieve 1680/6
|tip Refer to the Un'Goro Crater leveling guide to accomplish this.
step
Complete the "Desolace Quests" Achievement |achieve 1680/7
|tip Refer to the Desolace leveling guide to accomplish this.
step
Complete the "Winterspring Quests" Achievement |achieve 1680/8
|tip Refer to the Winterspring leveling guide to accomplish this.
step
Complete the "Stonetalon Mountains Quests" Achievement |achieve 1680/9
|tip Refer to the Stonetalon Mountains leveling guide to accomplish this.
step
Complete the "Silithus Quests" Achievement |achieve 1680/10
|tip Refer to the Silithus leveling guide to accomplish this.
step
Complete the "Feralas Quests" Achievement |achieve 1680/11
|tip Refer to the Feralas leveling guide to accomplish this.
step
Complete the "Tanaris Quests" Achievement |achieve 1680/12
|tip Refer to the Tanaris leveling guide to accomplish this.
step
Complete the "Ashenvale Quests" Achievement |achieve 1680/13
|tip Refer to the Ashenvale leveling guide to accomplish this.
step
Complete the "Southern Barrens Quests" Achievement |achieve 1680/14
|tip Refer to the Southern Barrens leveling guide to accomplish this.
]])
QuestCore:RegisterGuide("Title Guides\\Wrath of the Lich King Titles\\Quests\\Loremaster of Eastern Kingdoms",{
expansion="mists",
mopready=true,
achieveid={1677},
patch='unknown',
description="\nComplete the various Eastern Kingdoms quests in each zone.",
},[[
step
Complete the "Searing Gorge Quests" Acheivement |achieve 1677/1
|tip Refer to the Searing Gorge leveling guide to accomplish this.
step
Complete the "Arathi Highland Quests" Achievement|achieve 1677/2
|tip Refer to the Arathi Highlands leveling guide to accomplish this.
step
Complete the "Ghostlands Quests" Achievement |achieve 1677/3
|tip Refer to the Ghostlands leveling guide to accomplish this.
step
Complete the "Western Plaguelands Quests" Achievement |achieve 1677/4
|tip Refer to the Western Plaguelands leveling guide to accomplish this.
step
Complete the "Hinterlands Quests" Achievement |achieve 1677/5
|tip Refer to the Hinterlands leveling guide to accomplish this.
step
Complete the "Swamp of Sorrows Quests" Achievement |achieve 1677/6
|tip Refer to the Swamp of Sorrows leveling guide to accomplish this.
step
Complete the "Blasted Lands Quests" Achievement |achieve 1677/7
|tip Refer to the Blasted Lands leveling guide to accomplish this.
step
Complete the "Cape of Stranglethorn Quests" Achievement |achieve 1677/8
|tip Refer to the Cape of Stranglethorn leveling guide to accomplish this.
step
Complete the "Burning Steppes Quests" Achievement |achieve 1677/9
|tip Refer to the Burning Steppes leveling guide to accomplish this.
step
Complete the "Badlands Quests" Achievement |achieve 1677/10
|tip Refer to the Badlands leveling guide to accomplish this.
step
Complete the "Eastern Plaguelands Quests" Achievement |achieve 1677/11
|tip Refer to the Eastern Plaguelands leveling guide to accomplish this.
step
Complete the "Silverpine Forest Quests" Achievement |achieve 1677/12
|tip Refer to the Silverpine Forest leveling guide to accomplish this.
step
Complete the "Hillsbrad Foothills Quests" Achievement |achieve 1677/13
|tip Refer to the Hillsbrad Foothills leveling guide to accomplish this.
step
Complete the "Northern Stranglethorn Quests" Achievement |achieve 1677/14
|tip Refer to the Northern Stranglethorn leveling guide to accomplish this.
]])
QuestCore:RegisterGuide("Title Guides\\Wrath of the Lich King Titles\\Quests\\Loremaster of Outlands",{
expansion="mists",
mopready=true,
achieveid={1274},
patch='unknown',
description="\nComplete the various Eastern Kingdoms quest achievements for each zone.",
},[[
step
Complete the "Mysteries of the Marsh" Achievement |achieve 1274/1
|tip Refer to the Zangarmarsh leveling guide to accomplish this.
step
Complete the "To Hellfire and Back" Achievement |achieve 1274/2
|tip Refer to the Hellfire Peninsula leveling guide to accomplish this.
step
Complete the "Into the Nether" Achievement |achieve 1274/3
|tip Refer to the Netherstorm leveling guide to accomplish this.
step
Complete the "On the Blade's Edge" Achievement |achieve 1274/4
|tip Refer to the Blade's Edge Mountain leveling guide to accomplish this.
step
Complete the "Nagrand Slam" Achievement |achieve 1274/5
|tip Refer to the Nagrand leveling guide to accomplish this.
step
Complete the "Terror of Terokkar" Achievement |achieve 1274/6
|tip Refer to the Terrokar Forest leveling guide to accomplish this.
step
Complete the "Shadow of the Betrayer" Achievement |achieve 1274/7
|tip Refer to the Shadowmoon Valley leveling guide to accomplish this.
]])
QuestCore:RegisterGuide("Title Guides\\Wrath of the Lich King Titles\\Quests\\Loremaster of Northrend",{
expansion="mists",
mopready=true,
achieveid={1360},
patch='unknown',
description="\nComplete the various Northrend quest achievements for each zone.",
},[[
step
Complete the "The Empire of Zul'Drak" Achievement|achieve 1360/1
|tip Refer to the Zul'Drak leveling guide to accomplish this.
step
Complete the "Might of Dragonblight" Achievement|achieve 1360/2
|tip Refer to the Dragonblight leveling guide to accomplish this.
step
Complete the "Into the Basin" Achievement|achieve 1360/3
|tip Refer to the Sholazar Basin leveling guide to accomplish this.
step
Complete the "Fo' Grizzle My Shizzle" Achievement|achieve 1360/4
|tip Refer to the Grizzly Hills leveling guide to accomplish this.
step
Complete the "Icecrown: The Final Goal" Achievement|achieve 1360/5
|tip Refer to the Icecrown leveling guide to accomplish this.
step
Complete the "The Summit of Storm Peaks" Achievement|achieve 1360/6
|tip Refer to the Storm Peaks leveling guide to accomplish this.
step
Complete the "Nothing Boring About Borean" Achievement|achieve 1360/7
|tip Refer to the Borean Tundra leveling guide to accomplish this.
step
Complete the "I've Toured the Fjord" Achievement|achieve 1360/8
|tip Refer to the Howling Fjord leveling guide to accomplish this.
]])
QuestCore:RegisterGuide("Title Guides\\Wrath of the Lich King Titles\\Quests\\Loremaster of Cataclysm",{
expansion="mists",
mopready=true,
achieveid={4983},
patch='unknown',
description="\nComplete the various Cataclysm quest achievements for each zone.",
},[[
step
Complete the "Fading into Twilight" Achievement |achieve 4983/1
|tip Refer to the Twilight Highlands leveling guide to accomplish this.
step
Complete the "Unearthing Uldum" Achievement |achieve 4983/2
|tip Refer to the Uldum leveling guide to accomplish this.
step
Complete the "Deep Into Deepholm" Achievement |achieve 4983/3
|tip Refer to the Deepholm leveling guide to accomplish this.
step
Complete the "Coming Down the Mountain" Achievement |achieve 4983/4
|tip Refer to the Mount Hyjal leveling guide to accomplish this.
step
Complete the "inking into Vash'jir" Achievement |achieve 4983/5
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
QuestCore:RegisterGuide("Reputation Guides\\Wrath of the Lich King Reuptations\\Argent Crusade",{
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
Enter the building |goto Icecrown/0 79.62,72.53 < 10 |walk
talk Warlord Hork Strongbrow##31240
|tip Inside the building.
accept Orgrim's Hammer##13224 |goto Icecrown/0 79.44,72.71
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
QuestCore:RegisterGuide("Title Guides\\Wrath of the Lich King Titles\\Exalted Argent Champion of the Horde",{
expansion="mists",
mopready=true,
playertitle=50,
},[[
step
Earn the "Exalted Champion of Thunder Bluff" Achievement |achieve 2816/1
|tip Refer to the "Champion of Thunder Bluff" guide to accomplish this.
step
Earn the "Exalted Champion of Undercity" Achievement |achieve 2816/2
|tip Refer to the "Champion of Undercity" guide to accomplish this.
step
Earn the "Exalted Champion of Silvermoon City" Achievement |achieve 2816/3
|tip Refer to the "Champion of Silvermoon City" guide to accomplish this.
step
Earn the "Exalted Champion of Sen'jin" Achievement |achieve 2816/4
|tip Refer to the "Champion of Sen'jin" guide to accomplish this.
step
Earn the "Exalted Champion of Orgrimmar" Achievement |achieve 2816/5
|tip Refer to the "Champion of Orgrimmar" guide to accomplish this.
step
Earn the "The Argent Crusade" Achievement |achieve 2816/6
|tip Refer to the "Argent Crusade" reputation guide to accomplish this.
]])
QuestCore:RegisterGuide("Title Guides\\Cataclysm Titles\\Dungeons & Raids\\Blackwing's Bane",{
expansion="mists",
mopready=true,
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
mopready=true,
playertitle=143,
},[[
step
clicknpc Mysterious Camel Figurine##50409
|tip If it's the correct one, you'll be engulf by a whirlwind and transported to Feralas, right in front of the rare spawn.
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
