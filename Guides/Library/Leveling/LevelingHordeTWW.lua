-- Bundled QuestCore guide
if not QuestCore then return end

if UnitFactionGroup("player")~="Horde" then return end
QuestCore:RegisterGuide("Leveling Guides\\The War Within (70-80)\\Housing Tutorial",{
author="QuestCore",
description="This guide will assist you in completing the housing tutorial quests.",
patch='110207',
},[[
step
accept A House For You##93057 |goto Dornogal/0 46.04,34.51
|tip You will automatically accept this quest.
step
Access a Housing Neighborhood from Your Capital City |q 93057/1 |goto Razorwind Shores/0 54.42,50.06
step
Click the Complete Quest Box
turnin A House For You##93057 |goto Razorwind Shores/0 54.42,50.06
accept My First Home##91863 |goto Razorwind Shores/0 54.42,50.06
|tip You will automatically accept this quest.
step
talk Tocho Cloudhide##233708
Greet the Steward |q 91863/1 |goto Razorwind Shores/0 55.30,57.64
step
talk Tocho Cloudhide##233708
Select _"I'd like to have a look around."_ |gossip 135732
Select _"Let's go!"_ |gossip 135740
Ask the Steward to Join You |q 91863/2 |goto Razorwind Shores/0 55.30,57.64
step
_Next to you:_
talk Tocho Cloudhide##249848
Select _"I want to see other neighborhood options."_ |gossip 135731
Select _"<Open House Finder.>"_ |gossip 135744
|tip Select a neighborhood, then select a plot.
|tip Click the {o}Visit{} button to reserve the plot and visit it.
|tip Click the Cornerstone at the plot and click the {o}Buy{} button.
Acquire a House |q 91863/4
step
_Next to you:_
talk Tocho Cloudhide##249848
turnin My First Home##91863
step
accept Welcome Home##91968
|tip Enter your house and start the tutorial.
step
Remove #4# Decor |q 91968/1
|tip Click the {o}Edit House{} button at the top of the screen.
|tip Click objects around your house and use the {o}R{} key to remove 4 of them.
step
Click the Complete Quest Box
turnin Welcome Home##91968
accept Time to Decorate##91969
|tip You will automatically accept this quest.
step
Place #4# Decor |q 91969/1
|tip Click the {o}Edit House{} button at the top of the screen.
|tip Click objects from the storage window and place them around your home as you like.
step
Click the Complete Quest Box
turnin Time to Decorate##91969
step
talk Tocho Cloudhide##233708
accept Feathering the Nest##94210 |goto Razorwind Shores/0 55.30,57.64
step
talk Xiz'ro##255520
accept Lumber For You##93647 |goto Razorwind Shores/0 54.25,58.05
step
Visit Merchants Selling Flora Decor |q 94210/2 |goto Razorwind Shores/0 53.60,57.49
step
Visit Merchants Selling Elven Decor |q 94210/3 |goto Razorwind Shores/0 53.51,58.52
step
Visit Merchants Selling Local Decor |q 94210/1 |goto Razorwind Shores/0 54.13,59.08
step
talk The Last Architect##253596
Select _"Where else can I find decor?"_ |gossip 137162
Ask the Last Architect About Other Decor Sources |q 94210/4 |goto Razorwind Shores/0 53.69,57.37
step
Visit the Smugglers |q 94210/5 |goto Razorwind Shores/0 39.84,72.77
step
talk "High Tides" Ren##255325
Select _"Okay, let's see what you've got."_ |gossip 137315
buy Sethraliss Priest's Pillow##244778 |q 94210/6 |goto Razorwind Shores/0 39.84,72.77
step
use the Sethraliss Priest's Pillow##244778
Add Sethraliss Priest's Pillow to House Chest |q 94210/7 |goto Razorwind Shores/0 39.84,72.77
step
talk Tocho Cloudhide##233708
turnin Feathering the Nest##94210 |goto Razorwind Shores/0 55.30,57.64
accept This Old Hearth##94379 |goto Razorwind Shores/0 55.30,57.64
step
talk Rotha##254687
Visit the General Contractor |q 94379/1 |goto Razorwind Shores/0 53.53,56.58
step
talk Rotha##254687
Select _"I'd like to upgrade my house."_ |gossip 137156
Select _"Let's do this!"_ |gossip 137153
Level Up Your House |q 94379/2 |goto Razorwind Shores/0 53.53,56.58
step
talk Tocho Cloudhide##233708
turnin This Old Hearth##94379 |goto Razorwind Shores/0 55.30,57.64
]])
