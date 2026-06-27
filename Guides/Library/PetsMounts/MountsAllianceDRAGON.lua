-- Bundled QuestCore guide
if not QuestCore then return end

if UnitFactionGroup("player")~="Alliance" then return end
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Vendor Mounts\\White War Wolf",{
description="Can a wolf's hunger ever be satiated? These lupine brutes seek and devour the enemies of the Horde.",
mounts={414316},
mounttype='Ground',
startlevel=70,
keywords={"Dragonflight"},
patch='100105',
},[[
step
Collect the "White War Wolf" Mount |learnmount White War Wolf##414316
|tip To learn this mount, you need to have a Horde player gift it to you.
|tip Find a Horde player with a "Gift of the White War Wolf" item to group with.
|tip While in the same group, have them use it to gift the mount to you.
|tip This mount drops from Time Rift events.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\PVP Mounts\\Vicious Sabertooth",{
description="The elite Alliance forces that use these sabertooth mounts use a battle cry that translates from Darnassian as 'here kitty kitty'.",
mounts={394737},
mounttype='Ground',
startlevel=10,
keywords={"Dragonflight"},
patch='100002',
},[[
step
collect Vicious Saddle##103533 |or
|tip Win 100 Arena (3v3) or 40 Rated Battlegrounds.
|tip Fill your honor bar to 2400 twice to get a Vicious Saddle.
'|complete hasmount(394737) |or
step
talk Necrolord Sipe##73190
|tip He is on a mount outside Champion's Hall in the Old Town section of Stormwind City.
buy a Vicious Sabertooth##201789 |goto Stormwind City/0 77.00,65.82 |or
'|complete hasmount(394737)
step
use the Vicious Sabertooth##201789
learnmount Vicious Sabertooth##394737
]])
