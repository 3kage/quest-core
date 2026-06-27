-- Bundled QuestCore guide
if not QuestCore then return end

if UnitFactionGroup("player")~="Horde" then return end
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Vendor Mounts\\White War Wolf",{
description="Can a wolf's hunger ever be satiated? These lupine brutes seek and devour the enemies of the Horde.",
mounts={414316},
mounttype='Ground',
startlevel=70,
keywords={"Dragonflight"},
patch='100105',
},[[
step
Earn #3000# Paracausal Flakes |earn 3000 Paracausal Flakes##2594 |or
|tip Earn these by completing time rifts.
|tip Use the "Time Rifts" guide to accomplish this.
Click Here to Load the "Time Rifts" Guide |confirm |loadguide "Daily Guides\\Dragonflight (10-70)\\Time Rifts" |or
step
talk Warden Krizzik##208346
buy 1 Horn of the White War Wolf##206673 |goto Thaldraszus/0 51.05,56.68 |or
'|learnmount White War Wolf##414316 |or
step
use the Horn of the White War Wolf##206673 |only Horde
Collect the "White War Wolf" Mount |learnmount White War Wolf##414316
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\PVP Mounts\\Vicious Sabertooth",{
description="The elite Horde forces that use these sabertooth mounts use a battle cry that translates from Thalassian as 'pspspspsps'.",
mounts={394738},
mounttype='Ground',
startlevel=10,
keywords={"Dragonflight"},
patch='100002',
},[[
step
collect Vicious Saddle##103533 |or
|tip Win 100 Arena (3v3) or 40 Rated Battlegrounds.
|tip Fill your honor bar to 2400 twice to get a Vicious Saddle.
'|complete hasmount(394738) |or
step
talk Deathguard Netharian##73151
|tip He is on a mount outside the Hall of Legends in the Valley of Strength in Orgrimmar.
buy a Vicious Sabertooth##201788 |goto Orgrimmar/1 41.84,73.18 |or
'|complete hasmount(394738)
step
use the Vicious Sabertooth##201788
learnmount Vicious Sabertooth##394738
]])
