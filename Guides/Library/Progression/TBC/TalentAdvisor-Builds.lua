-- QuestCore bundled guide (tbc)
if not QuestCore then return end
local QuestCoreTalentAdvisor=QuestCore.TalentAdvisor
if not QuestCoreTalentAdvisor then return end

-- official builds



-- DRUID
	QuestCoreTalentAdvisor:RegisterBuild("DRUID","Feral Combat [Leveling] (DPS) (0/47/14)",2,[[
		1 Ferocity				-- 1/5		Level 10
		1 Ferocity				-- 2/5		Level 11
		1 Ferocity				-- 3/5		Level 12
		1 Ferocity				-- 4/5		Level 13
		1 Ferocity				-- 5/5		Level 14
		
		1 Thick Hide				-- 1/3		Level 15
		1 Thick Hide				-- 2/3		Level 16
		1 Thick Hide				-- 3/3		Level 17

		1 Brutal Impact				-- 1/2		Level 18
		1 Brutal Impact				-- 2/2		Level 19
		
		1 Feral Swiftness			-- 1/2		Level 20
		1 Feral Swiftness			-- 2/2		Level 21
		
		1 Sharpened Claws			-- 1/3		Level 22
		1 Sharpened Claws			-- 2/3		Level 23
		1 Sharpened Claws			-- 3/3		Level 24
		
		1 Predatory Strikes			-- 1/3		Level 25
		1 Predatory Strikes			-- 2/3		Level 26
		1 Predatory Strikes			-- 2/3		Level 27
		
		1 Primal Fury				-- 1/2		Level 28
		1 Primal Fury				-- 2/2		Level 29
		
		1 Faerie Fire (Feral)			-- 1/1		Level 30
		
		1 Savage Fury				-- 1/2		Level 31
		1 Savage Fury				-- 2/2		Level 32

		1 Nurturing Instinct			--1/2		Level 33
		1 Nurturing Instinct			--2/2		Level 34
		
		1 Heart of the Wild			-- 1/5		Level 35
		1 Heart of the Wild			-- 2/5		Level 36
		1 Heart of the Wild			-- 3/5		Level 37
		1 Heart of the Wild			-- 4/5		Level 38
		1 Heart of the Wild			-- 5/5		Level 39
		
		1 Leader of the Pack			-- 1/1		Level 40

		1 Improved Leader of the Pack		--1/2		Level 41
		1 Improved Leader of the Pack		--2/2		Level 42

		1 Survival of the Fittest		-- 1/3		Level 43
		1 Survival of the Fittest		-- 2/3		Level 44

		1 Predatory Instincts			-- 1/5		Level 45
		1 Predatory Instincts			-- 2/5		Level 46
		1 Predatory Instincts			-- 3/5		Level 47
		1 Predatory Instincts			-- 4/5		Level 48
		1 Predatory Instincts			-- 5/5		Level 49

		1 Mangle				-- 1/1		Level 50			

		1 Furor					-- 1/5		Level 51
		1 Furor					-- 2/5		Level 52
		1 Furor					-- 3/5		Level 53
		1 Furor					-- 4/5		Level 54
		1 Furor					-- 5/5		Level 55

		1 Naturalist				-- 1/5		Level 56
		1 Naturalist				-- 2/5		Level 57
		1 Naturalist				-- 3/5		Level 58
		1 Naturalist				-- 4/5		Level 59
		1 Naturalist				-- 5/5		Level 60

		1 Omen of Clarity			-- 1/1		Level 61

		1 Natural Shapeshifter			-- 1/3		Level 62
		1 Natural Shapeshifter			-- 2/3		Level 63
		1 Natural Shapeshifter			-- 3/3		Level 64

		1 Survival of the Fittest		-- 3/3		Level 65

		1 Feral Charge				-- 1/1		Level 66

		1 Shredding Attacks			-- 1/2		Level 67
		1 Shredding Attacks			-- 1/2		Level 68

		1 Feral Instinct			-- 1/3		Level 69
		1 Feral Instinct			-- 2/3		Level 70
	]])

	QuestCoreTalentAdvisor:RegisterBuild("DRUID","Balance [Leveling] (DPS) (47/0/14)",1,[[
		1 Starlight Wrath			-- 1/5		Level 10
		1 Starlight Wrath			-- 1/5		Level 11
		1 Starlight Wrath			-- 1/5		Level 12
		1 Starlight Wrath			-- 1/5		Level 13
		1 Starlight Wrath			-- 1/5		Level 14

		1 Improved Moonfire			-- 1/2		Level 15
		1 Improved Moonfire			-- 2/2		Level 16

		1 Focused Starlight			-- 1/2		Level 17
		1 Focused Starlight			-- 1/2		Level 18
		
		1 Nature's Grasp			-- 1/1		Level 19

		1 Insect Swarm				-- 1/1		Level 20
		
		1 Nature's Reach			-- 1/2		Level 21
		1 Nature's Reach			-- 2/2		Level 22

		1 Brambles				-- 1/3		Level 23
		1 Brambles				-- 2/3		Level 24

		1 Celestial Focus			-- 1/3		Level 25
		1 Celestial Focus			-- 2/3		Level 26
		1 Celestial Focus			-- 3/3		Level 27
		
		1 Vengeance				-- 1/5		Level 28
		1 Vengeance				-- 2/5		Level 29
		
		1 Nature's Grace			-- 1/1		Level 30
		
		1 Moonglow				-- 1/3		Level 31
		1 Moonglow				-- 2/3		Level 32
		1 Moonglow				-- 3/3		Level 33

		1 Lunar Guidance			-- 1/3		Level 34

		1 Balance of Power			-- 1/2		Level 35
		1 Balance of Power			-- 2/2		Level 36
		
		1 Moonfury				-- 1/5		Level 37
		1 Moonfury				-- 2/5		Level 38
		1 Moonfury				-- 3/5		Level 39

		1 Moonkin Form				-- 1/1		Level 40

		1 Moonfury				-- 4/5		Level 41
		1 Moonfury				-- 5/5		Level 42

		1 Vengeance				-- 3/5		Level 43
		1 Vengeance				-- 4/5		Level 44
		1 Vengeance				-- 5/5		Level 45

		1 Dreamstate				-- 1/3		Level 46
		1 Dreamstate				-- 2/3		Level 47
		1 Dreamstate				-- 3/3		Level 48

		1 Lunar Guidance			-- 2/3		Level 49

		1 Force of Nature			-- 1/1		Level 50

		1 Lunar Guidance			-- 3/3		Level 51
		
		1 Wrath of Cenarius			-- 1/5		Level 52
		1 Wrath of Cenarius			-- 2/5		Level 53
		1 Wrath of Cenarius			-- 3/5		Level 54
		1 Wrath of Cenarius			-- 4/5		Level 55
		1 Wrath of Cenarius			-- 5/5		Level 56
		
		1 Improved Mark of the Wild		-- 1/5		Level 57
		1 Improved Mark of the Wild		-- 1/5		Level 58
		1 Improved Mark of the Wild		-- 1/5		Level 59
		1 Improved Mark of the Wild		-- 1/5		Level 60
		1 Improved Mark of the Wild		-- 1/5		Level 61

		1 Natural Shapeshifter			-- 1/3		Level 62
		1 Natural Shapeshifter			-- 2/3		Level 63
		1 Natural Shapeshifter			-- 3/3		Level 64

		1 Naturalist				-- 1/5		Level 65
		1 Naturalist				-- 2/5		Level 66

		1 Intensity				-- 1/3		Level 67
		1 Intensity				-- 2/3		Level 68
		1 Intensity				-- 3/3		Level 69

		1 Omen of Clarity			-- 1/1		Level 70
	]])


-- HUNTER

	-- Remember, for land/air type pets the corresponding talents are Dash|Dive 
	-- and Charge|Swoop.  Write them like this to allow the text to change dynamically.


	QuestCoreTalentAdvisor:RegisterBuild("HUNTER","Beast Mastery [Leveling] (DPS) (47/14/0)",1,[[
		1 Improved Aspect of the Hawk		-- 1/5		Level 10
		1 Improved Aspect of the Hawk		-- 2/5		Level 11
		1 Improved Aspect of the Hawk		-- 3/5		Level 12
		1 Improved Aspect of the Hawk		-- 4/5		Level 13
		1 Improved Aspect of the Hawk		-- 5/5		Level 14

		1 Improved Revive Pet			-- 1/2		Level 15
		1 Improved Revive Pet			-- 2/2		Level 16

		1 Focused Fire				-- 1/2		Level 17
		1 Focused Fire				-- 2/2		Level 18

		1 Thick Hide				-- 1/3		Level 19

		1 Bestial Swiftness			-- 1/1		Level 20

		1 Unleashed Fury			-- 1/5		Level 21
		1 Unleashed Fury			-- 2/5		Level 22
		1 Unleashed Fury			-- 3/5		Level 23
		1 Unleashed Fury			-- 4/5		Level 24
		1 Unleashed Fury			-- 5/5		Level 25

		1 Improved Mend Pet			-- 1/2		Level 26
		1 Improved Mend Pet			-- 2/2		Level 27

		1 Ferocity				-- 1/5		Level 28
		1 Ferocity				-- 2/5		Level 29
		1 Ferocity				-- 3/5		Level 30
		1 Ferocity				-- 4/5		Level 31
		1 Ferocity				-- 5/5		Level 32

		1 Bestial Discipline			-- 1/2		Level 33
		1 Bestial Discipline			-- 2/2		Level 34

		1 Intimidation				-- 1/1		Level 35

		1 Spirit Bond				-- 1/2		Level 36
		1 Spirit Bond				-- 2/2		Level 37

		1 Animal Handler			-- 1/2		Level 38
		1 Animal Handler			-- 2/2		Level 39

		1 Frenzy				-- 1/5		Level 40
		1 Frenzy				-- 2/5		Level 41
		1 Frenzy				-- 3/5		Level 42
		1 Frenzy				-- 4/5		Level 43

		1 Bestial Wrath				-- 1/1		Level 44

		1 Catlike Reflexes			-- 1/3		Level 45
		1 Catlike Reflexes			-- 2/3		Level 46
		1 Catlike Reflexes			-- 3/3		Level 47

		1 Serpent's Swiftness			-- 1/5		Level 48
		1 Serpent's Swiftness			-- 2/5		Level 49
		1 Serpent's Swiftness			-- 3/5		Level 50
		1 Serpent's Swiftness			-- 4/5		Level 51
		1 Serpent's Swiftness			-- 5/5		Level 52

		1 The Beast Within			-- 1/1		Level 53

		1 Ferocious Inspiration			-- 1/3		Level 54
		1 Ferocious Inspiration			-- 2/3		Level 55
		1 Ferocious Inspiration			-- 3/3		Level 56

		1 Lethal Shots				-- 1/5		Level 57
		1 Lethal Shots				-- 2/5		Level 58
		1 Lethal Shots				-- 3/5		Level 59
		1 Lethal Shots				-- 4/5		Level 60
		1 Lethal Shots				-- 5/5		Level 61

		1 Efficiency				-- 1/5		Level 62
		1 Efficiency				-- 2/5		Level 63
		1 Efficiency				-- 3/5		Level 64
		1 Efficiency				-- 4/5		Level 65
		1 Efficiency				-- 5/5		Level 66

		1 Go for the Throat			-- 1/2		Level 67
		1 Go for the Throat			-- 2/2		Level 68

		1 Aimed Shot				-- 1/1		Level 69

		1 Rapid Killing				-- 1/2		Level 70
	]])

	QuestCoreTalentAdvisor:RegisterBuild("HUNTER","Marksmanship [Leveling] (DPS) (16/45/0)",2,[[
		1 Lethal Shots				-- 1/5		Level 10
		1 Lethal Shots				-- 2/5		Level 11
		1 Lethal Shots				-- 3/5		Level 12
		1 Lethal Shots				-- 4/5		Level 13
		1 Lethal Shots				-- 5/5		Level 14

		1 Efficiency				-- 1/5		Level 15
		1 Efficiency				-- 2/5		Level 16
		1 Efficiency				-- 3/5		Level 17
		1 Efficiency				-- 4/5		Level 18
		1 Efficiency				-- 5/5		Level 19

		1 Aimed Shot				-- 1/1		Level 20

		1 Rapid Killing				-- 1/2		Level 21
		1 Rapid Killing				-- 2/2		Level 22

		1 Go for the Throat			-- 1/2		Level 23
		1 Go for the Throat			-- 2/2		Level 24

		1 Mortal Shots				-- 1/5		Level 25
		1 Mortal Shots				-- 2/5		Level 26
		1 Mortal Shots				-- 3/5		Level 27
		1 Mortal Shots				-- 4/5		Level 28
		1 Mortal Shots				-- 5/5		Level 29

		1 Barrage				-- 1/3		Level 30
		1 Barrage				-- 2/3		Level 31
		1 Barrage				-- 3/3		Level 32

		1 Scatter Shot				-- 1/1		Level 33

		1 Improved Stings			-- 1/5		Level 34

		1 Ranged Weapon Specialization		-- 1/5		Level 35
		1 Ranged Weapon Specialization		-- 2/5		Level 36
		1 Ranged Weapon Specialization		-- 3/5		Level 37
		1 Ranged Weapon Specialization		-- 4/5		Level 38
		1 Ranged Weapon Specialization		-- 5/5		Level 39

		1 Improved Barrage			-- 1/3		Level 40
		1 Improved Barrage			-- 2/3		Level 41
		1 Improved Barrage			-- 3/3		Level 42

		1 Trueshot Aura				-- 1/1		Level 43

		1 Careful Aim				-- 1/3		Level 44
		1 Careful Aim				-- 2/3		Level 45
		1 Careful Aim				-- 3/3		Level 46

		1 Combat Experience			-- 1/2		Level 47
		1 Combat Experience			-- 2/2		Level 48

		1 Master Marksman			-- 1/5		Level 49
		1 Master Marksman			-- 2/5		Level 50
		1 Master Marksman			-- 3/5		Level 51
		1 Master Marksman			-- 4/5		Level 52
		1 Master Marksman			-- 5/5		Level 53

		1 Silencing Shot			-- 1/1		Level 54

		1 Improved Aspect of the Hawk		-- 1/5		Level 55
		1 Improved Aspect of the Hawk		-- 2/5		Level 56
		1 Improved Aspect of the Hawk		-- 3/5		Level 57
		1 Improved Aspect of the Hawk		-- 4/5		Level 58
		1 Improved Aspect of the Hawk		-- 5/5		Level 59

		1 Improved Revive Pet			-- 1/2		Level 60
		1 Improved Revive Pet			-- 2/2		Level 61

		1 Focused Fire				-- 1/2		Level 62
		1 Focused Fire				-- 2/2		Level 63

		1 Thick Hide				-- 1/3		Level 64

		1 Unleashed Fury			-- 1/5		Level 65
		1 Unleashed Fury			-- 2/5		Level 66
		1 Unleashed Fury			-- 3/5		Level 67
		1 Unleashed Fury			-- 4/5		Level 68

		1 Bestial Swiftness			-- 1/1		Level 69

		1 Unleashed Fury			-- 5/5		Level 70
	]])


-- MAGE
	QuestCoreTalentAdvisor:RegisterBuild("MAGE","Frost [Leveling] (DPS) (18/0/43)",3,[[
		1 Improved Frostbolt			-- 1/5		Level 10
		1 Improved Frostbolt			-- 2/5		Level 11
		1 Improved Frostbolt			-- 3/5		Level 12
		1 Improved Frostbolt			-- 4/5		Level 13
		1 Improved Frostbolt			-- 5/5		Level 14

		1 Elemental Precision			-- 1/3		Level 15
		1 Elemental Precision			-- 2/3		Level 16
		1 Elemental Precision			-- 3/3		Level 17

		1 Ice Shards				-- 1/5		Level 18
		1 Ice Shards				-- 2/5		Level 19
		1 Ice Shards				-- 3/5		Level 20
		1 Ice Shards				-- 4/5		Level 21
		1 Ice Shards				-- 5/5		Level 22

		1 Icy Veins				-- 1/1		Level 23

		1 Piercing Ice				-- 1/3		Level 24
		1 Piercing Ice				-- 2/3		Level 25
		1 Piercing Ice				-- 3/3		Level 26

		1 Arctic Reach				-- 1/2		Level 27
		1 Arctic Reach				-- 2/2		Level 28

		1 Frost Channeling			-- 1/3		Level 29
		1 Frost Channeling			-- 2/3		Level 30
		1 Frost Channeling			-- 3/3		Level 31

		1 Cold Snap				-- 1/1		Level 32

		1 Improved Cone of Cold			-- 1/3		Level 33
		1 Improved Cone of Cold			-- 2/3		Level 34

		1 Winter's Chill			-- 1/5		Level 35
		1 Winter's Chill			-- 2/5		Level 36
		1 Winter's Chill			-- 3/5		Level 37
		1 Winter's Chill			-- 4/5		Level 38
		1 Winter's Chill			-- 5/5		Level 39

		1 Arctic Winds				-- 1/5		Level 40
		1 Arctic Winds				-- 2/5		Level 41
		1 Arctic Winds				-- 3/5		Level 42
		1 Arctic Winds				-- 4/5		Level 43
		1 Arctic Winds				-- 5/5		Level 44

		1 Empowered Frostbolt			-- 1/5		Level 45
		1 Empowered Frostbolt			-- 2/5		Level 46
		1 Empowered Frostbolt			-- 3/5		Level 47
		1 Empowered Frostbolt			-- 4/5		Level 48
		1 Empowered Frostbolt			-- 5/5		Level 49

		1 Summon Water Elemental		-- 1/1		Level 50

		1 Ice Floes				-- 1/2		Level 51
		1 Ice Floes				-- 2/2		Level 52	

		1 Arcane Subtlety			-- 1/2		Level 53
		1 Arcane Subtlety			-- 2/2		Level 54

		1 Arcane Focus				-- 1/5		Level 55
		1 Arcane Focus				-- 2/5		Level 56
		1 Arcane Focus				-- 3/5		Level 57

		1 Arcane Concentration			-- 1/5		Level 58
		1 Arcane Concentration			-- 2/5		Level 59
		1 Arcane Concentration			-- 3/5		Level 60
		1 Arcane Concentration			-- 4/5		Level 61
		1 Arcane Concentration			-- 5/5		Level 62

		1 Magic Attunement			-- 1/2		Level 63
		1 Magic Attunement			-- 2/2		Level 64

		1 Arcane Impact				-- 1/3		Level 65
		1 Arcane Impact				-- 2/3		Level 66
		1 Arcane Impact				-- 3/3		Level 67

		1 Arcane Meditation			-- 1/3		Level 68
		1 Arcane Meditation			-- 2/3		Level 69
		1 Arcane Meditation			-- 3/3		Level 70
	]])

	QuestCoreTalentAdvisor:RegisterBuild("MAGE","Frost [AOE Leveling] (DPS) (10/0/51)",3,[[
		1 Improved Frostbolt			-- 1/5		Level 10
		1 Improved Frostbolt			-- 2/5		Level 11
		1 Improved Frostbolt			-- 3/5		Level 12
		1 Improved Frostbolt			-- 4/5		Level 13
		1 Improved Frostbolt			-- 5/5		Level 14

		1 Ice Shards				-- 1/5		Level 15
		1 Ice Shards				-- 2/5		Level 16
		1 Ice Shards				-- 3/5		Level 17
		1 Ice Shards				-- 4/5		Level 18
		1 Ice Shards				-- 5/5		Level 19

		1 Improved Frost Nova			-- 1/2		Level 20
		1 Improved Frost Nova			-- 2/2		Level 21

		1 Permafrost				-- 1/3		Level 22
		1 Permafrost				-- 2/3		Level 23
		1 Permafrost				-- 3/3		Level 24

		1 Shatter				-- 1/5		Level 25
		1 Shatter				-- 2/5		Level 26
		1 Shatter				-- 3/5		Level 27
		1 Shatter				-- 4/5		Level 28
		1 Shatter				-- 5/5		Level 29

		1 Improved Blizzard			-- 1/3		Level 30
		1 Improved Blizzard			-- 2/3		Level 31
		1 Improved Blizzard			-- 3/3		Level 32

		1 Arctic Reach				-- 1/2		Level 33
		1 Arctic Reach				-- 2/2		Level 34

		1 Cold Snap				-- 1/1		Level 35
		
		1 Improved Cone of Cold			-- 1/3		Level 36
		1 Improved Cone of Cold			-- 2/3		Level 37
		1 Improved Cone of Cold			-- 3/3		Level 38

		1 Winter's Chill			-- 1/5		Level 39
		1 Winter's Chill			-- 2/5		Level 40
		1 Winter's Chill			-- 3/5		Level 41
		1 Winter's Chill			-- 4/5		Level 42
		1 Winter's Chill			-- 5/5		Level 43

		1 Ice Barrier				-- 1/1		Level 44

		1 Empowered Frostbolt			-- 1/5		Level 45
		1 Empowered Frostbolt			-- 2/5		Level 46
		1 Empowered Frostbolt			-- 3/5		Level 47
		1 Empowered Frostbolt			-- 4/5		Level 48
		1 Empowered Frostbolt			-- 5/5		Level 49

		1 Summon Water Elemental		-- 1/1		Level 50
		
		1 Arcane Subtlety			-- 1/2		Level 51
		1 Arcane Subtlety			-- 2/2		Level 52

		1 Arcane Focus				-- 1/5		Level 53
		1 Arcane Focus				-- 2/5		Level 54
		1 Arcane Focus				-- 3/5		Level 55

		1 Arcane Concentration			-- 1/5		Level 56
		1 Arcane Concentration			-- 2/5		Level 57
		1 Arcane Concentration			-- 3/5		Level 58
		1 Arcane Concentration			-- 4/5		Level 59
		1 Arcane Concentration			-- 5/5		Level 60

		1 Frost Channeling			-- 1/3		Level 61
		1 Frost Channeling			-- 2/3		Level 62
		1 Frost Channeling			-- 3/3		Level 63

		1 Arctic Winds				-- 1/5		Level 64
		1 Arctic Winds				-- 2/5		Level 65
		1 Arctic Winds				-- 3/5		Level 66
		1 Arctic Winds				-- 4/5		Level 67
		1 Arctic Winds				-- 5/5		Level 68

		1 Frostbite				-- 1/3		Level 69
		1 Frostbite				-- 2/3		Level 70
	]])


-- PALADIN
	QuestCoreTalentAdvisor:RegisterBuild("PALADIN","Retribution [Leveling] (DPS) (5/10/46)",3,[[
		1 Benediction				-- 1/5		Level 10
		1 Benediction				-- 2/5		Level 11
		1 Benediction				-- 3/5		Level 12
		1 Benediction				-- 4/5		Level 13
		1 Benediction				-- 5/5		Level 14

		1 Improved Judgement			-- 1/2		Level 15
		1 Improved Judgement			-- 2/2		Level 16

		1 Improved Seal of the Crusader		-- 1/3		Level 17
		1 Improved Seal of the Crusader		-- 2/3		Level 18
		1 Improved Seal of the Crusader		-- 3/3		Level 19

		1 Conviction				-- 1/5		Level 20
		1 Conviction				-- 2/5		Level 21
		1 Conviction				-- 3/5		Level 22
		1 Conviction				-- 4/5		Level 23
		1 Conviction				-- 5/5		Level 24

		1 Seal of Command			-- 1/1		Level 25

		1 Pursuit of Justice			-- 1/3		Level 26
		1 Pursuit of Justice			-- 2/3		Level 27
		1 Pursuit of Justice			-- 3/3		Level 28

		1 Crusade				-- 1/3		Level 29
		1 Crusade				-- 2/3		Level 30
		1 Crusade				-- 3/3		Level 31

		1 Sanctity Aura				-- 1/1		Level 32

		1 Two-Handed Weapon Specialization	-- 1/3		Level 33
		1 Two-Handed Weapon Specialization	-- 2/3		Level 34
		1 Two-Handed Weapon Specialization	-- 3/3		Level 35

		1 Improved Sanctity Aura		-- 1/2		Level 36
		1 Improved Sanctity Aura		-- 2/2		Level 37

		1 Vengeance				-- 1/5		Level 38
		1 Vengeance				-- 2/5		Level 39
		1 Vengeance				-- 3/5		Level 40
		1 Vengeance				-- 4/5		Level 41
		1 Vengeance				-- 5/5		Level 42

		1 Sanctified Judgement			-- 1/3		Level 43
		1 Sanctified Judgement			-- 2/3		Level 44
		1 Sanctified Judgement			-- 3/3		Level 45

		1 Sanctified Seals			-- 1/3		Level 46
		1 Sanctified Seals			-- 2/3		Level 47
		1 Sanctified Seals			-- 3/3		Level 48

		1 Repentance				-- 1/1		Level 49

		1 Fanaticism				-- 1/5		Level 50
		1 Fanaticism				-- 2/5		Level 51
		1 Fanaticism				-- 3/5		Level 52
		1 Fanaticism				-- 4/5		Level 53
		1 Fanaticism				-- 5/5		Level 54

		1 Crusader Strike			-- 1/1		Level 55

		1 Divine Strength			-- 1/5		Level 56
		1 Divine Strength			-- 2/5		Level 57
		1 Divine Strength			-- 3/5		Level 58
		1 Divine Strength			-- 4/5		Level 59
		1 Divine Strength			-- 5/5		Level 60

		1 Redoubt				-- 1/5		Level 61
		1 Redoubt				-- 2/5		Level 62
		1 Redoubt				-- 3/5		Level 63
		1 Redoubt				-- 4/5		Level 64
		1 Redoubt				-- 5/5		Level 65

		1 Precision				-- 1/3		Level 66
		1 Precision				-- 2/3		Level 67
		1 Precision				-- 3/3		Level 68

		1 Guardian's Favor			-- 1/2		Level 69
		1 Guardian's Favor			-- 2/2		Level 70
	]])


-- PRIEST
	QuestCoreTalentAdvisor:RegisterBuild("PRIEST","Shadow [Leveling] (DPS) (14/0/47)",3,[[		
		1 Blackout				-- 1/5		Level 10
		1 Blackout				-- 2/5		Level 11
		1 Blackout				-- 3/5		Level 12
		1 Blackout				-- 4/5		Level 13
		1 Blackout				-- 5/5		Level 14

		1 Spirit Tap				-- 1/5		Level 15
		1 Spirit Tap				-- 2/5		Level 16
		1 Spirit Tap				-- 3/5		Level 17
		1 Spirit Tap				-- 4/5		Level 18
		1 Spirit Tap				-- 5/5		Level 19

		1 Improved Shadow Word: Pain		-- 1/2		Level 20
		1 Improved Shadow Word: Pain		-- 2/2		Level 21

		1 Improved Psychic Scream		-- 1/2		Level 22
		1 Improved Psychic Scream		-- 2/2		Level 23

		1 Shadow Focus				-- 1/5		Level 24
		1 Shadow Focus				-- 2/5		Level 25
		1 Shadow Focus				-- 3/5		Level 26

		1 Mind Flay				-- 1/1		Level 27

		1 Shadow Reach				-- 1/2		Level 28
		1 Shadow Reach				-- 2/2		Level 29

		1 Shadow Weaving			-- 1/5		Level 30
		1 Shadow Weaving			-- 2/5		Level 31
		1 Shadow Weaving			-- 3/5		Level 32
		1 Shadow Weaving			-- 4/5		Level 33
		1 Shadow Weaving			-- 5/5		Level 34

		1 Vampiric Embrace			-- 1/1		Level 35

		1 Improved Vampiric Embrace		-- 1/2		Level 36
		1 Improved Vampiric Embrace		-- 2/2		Level 37

		1 Darkness				-- 1/5		Level 38
		1 Darkness				-- 2/5		Level 39
		1 Darkness				-- 3/5		Level 40
		1 Darkness				-- 4/5		Level 41
		1 Darkness				-- 5/5		Level 42

		1 Shadowform				-- 1/1		Level 43

		1 Shadow Focus				-- 4/5		Level 44

		1 Misery				-- 1/5		Level 45
		1 Misery				-- 2/5		Level 46
		1 Misery				-- 3/5		Level 47
		1 Misery				-- 4/5		Level 48
		1 Misery				-- 5/5		Level 49

		1 Vampiric Touch			-- 1/1		Level 50

		1 Wand Specialization			-- 1/5		Level 51
		1 Wand Specialization			-- 2/5		Level 52
		1 Wand Specialization			-- 3/5		Level 53
		1 Wand Specialization			-- 4/5		Level 54
		1 Wand Specialization			-- 5/5		Level 55

		1 Improved Power Word: Fortitude	-- 1/2		Level 56
		1 Improved Power Word: Fortitude	-- 2/2		Level 57

		1 Improved Power Word: Shield		-- 1/3		Level 58
		1 Improved Power Word: Shield		-- 2/3		Level 59
		1 Improved Power Word: Shield		-- 3/3		Level 60

		1 Meditation				-- 1/3		Level 61
		1 Meditation				-- 2/3		Level 62
		1 Meditation				-- 3/3		Level 63

		1 Silence				-- 1/1		Level 64

		1 Inner Focus				-- 1/1		Level 65

		1 Shadow Power				-- 1/5		Level 66
		1 Shadow Power				-- 2/5		Level 67
		1 Shadow Power				-- 3/5		Level 68
		1 Shadow Power				-- 4/5		Level 69
		1 Shadow Power				-- 5/5		Level 70
	]])


-- ROGUE
	QuestCoreTalentAdvisor:RegisterBuild("ROGUE","Combat [Leveling] (DPS) (18/43/0)",2,[[
		1 Improved Sinister Strike		-- 1/2		Level 10
		1 Improved Sinister Strike		-- 2/2		Level 11

		1 Lightning Reflexes			-- 1/5		Level 12
		1 Lightning Reflexes			-- 2/5		Level 13
		1 Lightning Reflexes			-- 3/5		Level 14

		1 Deflection				-- 1/5		Level 15
		1 Deflection				-- 2/5		Level 16
		1 Deflection				-- 3/5		Level 17
		1 Deflection				-- 4/5		Level 18
		1 Deflection				-- 5/5		Level 19

		1 Riposte				-- 1/1		Level 20

		1 Precision				-- 1/5		Level 21
		1 Precision				-- 2/5		Level 22
		1 Precision				-- 3/5		Level 23
		1 Precision				-- 4/5		Level 24
		1 Precision				-- 5/5		Level 25

		1 Dual Wield Specialization		-- 1/5		Level 26
		1 Dual Wield Specialization		-- 2/5		Level 27
		1 Dual Wield Specialization		-- 3/5		Level 28
		1 Dual Wield Specialization		-- 4/5		Level 29
		
		1 Blade Flurry				-- 1/1		Level 30

		1 Dual Wield Specialization		-- 5/5		Level 31

		1 Remorseless Attacks			-- 1/2		Level 32
		1 Remorseless Attacks			-- 2/2		Level 33

		1 Sword Specialization			-- 1/5		Level 34
		1 Sword Specialization			-- 2/5		Level 35
		1 Sword Specialization			-- 3/5		Level 36
		1 Sword Specialization			-- 4/5		Level 37
		1 Sword Specialization			-- 5/5		Level 38

		1 Weapon Expertise			-- 1/2		Level 39
		1 Weapon Expertise			-- 2/2		Level 40

		1 Improved Slice and Dice		-- 1/3		Level 41

		1 Adrenaline Rush			-- 1/1		Level 42

		1 Improved Slice and Dice		-- 2/3		Level 43
		1 Improved Slice and Dice		-- 3/3		Level 44

		1 Aggression				-- 1/3		Level 45
		1 Aggression				-- 2/3		Level 46

		1 Combat Potency			-- 1/5		Level 47
		1 Combat Potency			-- 2/5		Level 48
		1 Combat Potency			-- 3/5		Level 49
		1 Combat Potency			-- 4/5		Level 50
		1 Combat Potency			-- 5/5		Level 51

		1 Surprise Attacks			-- 1/1		Level 52

		1 Aggression				-- 3/3		Level 53

		1 Malice				-- 1/5		Level 54
		1 Malice				-- 2/5		Level 55
		1 Malice				-- 3/5		Level 56
		1 Malice				-- 4/5		Level 57
		1 Malice				-- 5/5		Level 58

		1 Murder				-- 1/2		Level 59
		1 Murder				-- 2/2		Level 60

		1 Ruthlessness				-- 1/3		Level 61

		1 Relentless Strikes			-- 1/1		Level 62

		1 Ruthlessness				-- 2/3		Level 63
		1 Ruthlessness				-- 3/3		Level 64

		1 Lethality				-- 1/5		Level 65
		1 Lethality				-- 2/5		Level 66
		1 Lethality				-- 3/5		Level 67
		1 Lethality				-- 4/5		Level 68
		1 Lethality				-- 5/5		Level 69

		1 Improved Kick				-- 1/2		Level 70
	]])


-- SHAMAN
	QuestCoreTalentAdvisor:RegisterBuild("SHAMAN","Enhancement [Leveling] (DPS) (17/44/0)",2,[[
		1 Shield Specialization			-- 1/5		Level 10
		1 Shield Specialization			-- 2/5		Level 11
		1 Shield Specialization			-- 3/5		Level 12
		1 Shield Specialization			-- 4/5		Level 13
		1 Shield Specialization			-- 5/5		Level 14

		1 Improved Ghost Wolf			-- 1/2		Level 15
		1 Improved Ghost Wolf			-- 2/2		Level 16

		1 Thundering Strikes			-- 1/5		Level 17
		1 Thundering Strikes			-- 2/5		Level 18
		1 Thundering Strikes			-- 3/5		Level 19
		
		1 Shamanistic Focus			-- 1/1		Level 20

		1 Thundering Strikes			-- 4/5		Level 21
		1 Thundering Strikes			-- 5/5		Level 22

		1 Enhancing Totems			-- 1/2		Level 23
		1 Enhancing Totems			-- 2/2		Level 24

		1 Flurry				-- 1/5		Level 25
		1 Flurry				-- 2/5		Level 26
		1 Flurry				-- 3/5		Level 27
		1 Flurry				-- 4/5		Level 28
		1 Flurry				-- 5/5		Level 29

		1 Spirit Weapons			-- 1/1		Level 30

		1 Elemental Weapons			-- 1/3		Level 31
		1 Elemental Weapons			-- 2/3		Level 32
		1 Elemental Weapons			-- 3/3		Level 33

		1 Anticipation				-- 1/5		Level 34

		1 Mental Quickness			-- 1/3		Level 35
		1 Mental Quickness			-- 2/3		Level 36
		1 Mental Quickness			-- 3/3		Level 37

		1 Weapon Mastery			-- 1/5		Level 38
		1 Weapon Mastery			-- 2/5		Level 39

		1 Stormstrike				-- 1/1		Level 40

		1 Dual Wield				-- 1/1		Level 41

		1 Dual Wield Specialization		-- 1/3		Level 42
		1 Dual Wield Specialization		-- 2/3		Level 43
		1 Dual Wield Specialization		-- 3/3		Level 44

		1 Weapon Mastery			-- 3/5		Level 45
		1 Weapon Mastery			-- 4/5		Level 46
		1 Weapon Mastery			-- 5/5		Level 47

		1 Unleashed Rage			-- 1/5		Level 48
		1 Unleashed Rage			-- 2/5		Level 49

		1 Shamanistic Rage			-- 1/1		Level 50

		1 Unleashed Rage			-- 3/5		Level 51
		1 Unleashed Rage			-- 4/5		Level 52
		1 Unleashed Rage			-- 5/5		Level 53

		1 Concussion				-- 1/5		Level 54
		1 Concussion				-- 2/5		Level 55
		1 Concussion				-- 3/5		Level 56
		1 Concussion				-- 4/5		Level 57
		1 Concussion				-- 5/5		Level 58

		1 Call of Flame				-- 1/3		Level 59
		1 Call of Flame				-- 2/3		Level 60
		1 Call of Flame				-- 3/3		Level 61

		1 Elemental Warding			-- 1/3		Level 62
		1 Elemental Warding			-- 2/3		Level 63

		1 Elemental Focus			-- 1/1		Level 64

		1 Reverberation				-- 1/5		Level 65
		1 Reverberation				-- 2/5		Level 66
		1 Reverberation				-- 3/5		Level 67
		1 Reverberation				-- 4/5		Level 68

		1 Improved Fire Totems			-- 1/2		Level 69
		1 Improved Fire Totems			-- 2/2		Level 70
	]])
	
	QuestCoreTalentAdvisor:RegisterBuild("SHAMAN","Elemental [Leveling] (DPS) (41/0/20)",1,[[
		1 Convection				-- 1/5		Level 10
		1 Convection				-- 2/5		Level 11
		1 Convection				-- 3/5		Level 12
		1 Convection				-- 4/5		Level 13
		1 Convection				-- 5/5		Level 14

		1 Concussion				-- 1/5		Level 15
		1 Concussion				-- 2/5		Level 16
		1 Concussion				-- 3/5		Level 17
		1 Concussion				-- 4/5		Level 18
		1 Concussion				-- 5/5		Level 19

		1 Elemental Focus			-- 1/1		Level 20

		1 Call of Thunder			-- 1/5		Level 21
		1 Call of Thunder			-- 2/5		Level 22
		1 Call of Thunder			-- 3/5		Level 23
		1 Call of Thunder			-- 4/5		Level 24
		1 Call of Thunder			-- 5/5		Level 25

		1 Eye of the Storm			-- 1/3		Level 26
		1 Eye of the Storm			-- 1/3		Level 27
		1 Eye of the Storm			-- 1/3		Level 28

		1 Elemental Warding			-- 1/3		Level 29

		1 Elemental Fury			-- 1/1		Level 30

		1 Storm Reach				-- 1/2		Level 31
		1 Storm Reach				-- 2/2		Level 32

		1 Unrelenting Storm			-- 1/5		Level 33
		1 Unrelenting Storm			-- 2/5		Level 34

		1 Lightning Mastery			-- 1/5		Level 35
		1 Lightning Mastery			-- 2/5		Level 36
		1 Lightning Mastery			-- 3/5		Level 37
		1 Lightning Mastery			-- 4/5		Level 38
		1 Lightning Mastery			-- 5/5		Level 39

		1 Elemental Mastery			-- 1/1		Level 40

		1 Elemental Precision			-- 1/3		Level 41
		1 Elemental Precision			-- 2/3		Level 42
		1 Elemental Precision			-- 3/3		Level 43

		1 Unrelenting Storm			-- 3/5		Level 44

		1 Lightning Overload			-- 1/5		Level 45
		1 Lightning Overload			-- 2/5		Level 46
		1 Lightning Overload			-- 3/5		Level 47
		1 Lightning Overload			-- 4/5		Level 48
		1 Lightning Overload			-- 5/5		Level 49

		1 Totem of Wrath			-- 1/1		Level 50

		1 Tidal Focus				-- 1/5		Level 51
		1 Tidal Focus				-- 2/5		Level 52
		1 Tidal Focus				-- 3/5		Level 53
		1 Tidal Focus				-- 4/5		Level 54
		1 Tidal Focus				-- 5/5		Level 55

		1 Improved Reincarnation		-- 1/2		Level 56
		1 Improved Reincarnation		-- 2/2		Level 57

		1 Totemic Focus				-- 1/5		Level 58
		1 Totemic Focus				-- 2/5		Level 59
		1 Totemic Focus				-- 3/5		Level 60

		1 Totemic Mastery			-- 1/1		Level 61

		1 Nature's Guidance			-- 1/3		Level 62
		1 Nature's Guidance			-- 2/3		Level 63
		1 Nature's Guidance			-- 3/3		Level 64

		1 Totemic Focus				-- 4/5		Level 65

		1 Tidal Mastery				-- 1/5		Level 66
		1 Tidal Mastery				-- 2/5		Level 67
		1 Tidal Mastery				-- 3/5		Level 68
		1 Tidal Mastery				-- 4/5		Level 69
		1 Tidal Mastery				-- 5/5		Level 70
	]])


-- WARLOCK
	QuestCoreTalentAdvisor:RegisterBuild("WARLOCK","Affliction [Leveling] (DPS) (31/30/0)",1,[[
		1 Improved Corruption			-- 1/5		Level 10
		1 Improved Corruption			-- 2/5		Level 11
		1 Improved Corruption			-- 3/5		Level 12
		1 Improved Corruption			-- 4/5		Level 13
		1 Improved Corruption			-- 5/5		Level 14

		1 Improved Drain Soul			-- 1/2		Level 15
		1 Improved Drain Soul			-- 2/2		Level 16

		1 Improved Life Tap			-- 1/2		Level 17
		1 Improved Life Tap			-- 2/2		Level 18

		1 Soul Siphon				-- 1/2		Level 19
		1 Soul Siphon				-- 2/2		Level 20

		1 Fel Concentration			-- 1/5		Level 21
		1 Fel Concentration			-- 2/5		Level 22
		1 Fel Concentration			-- 3/5		Level 23
		1 Fel Concentration			-- 4/5		Level 24
		1 Fel Concentration			-- 5/5		Level 25

		1 Nightfall				-- 1/2		Level 26
		1 Nightfall				-- 2/2		Level 27

		1 Grim Reach				-- 1/2		Level 28
		1 Grim Reach				-- 2/2		Level 29

		1 Siphon Life				-- 1/1		Level 30

		1 Amplify Curse				-- 1/1		Level 31

		1 Curse of Exhaustion			-- 1/1		Level 32

		1 Shadow Embrace			-- 1/5		Level 33

		1 Improved Curse of Agony		-- 1/2		Level 34

		1 Shadow Mastery			-- 1/5		Level 35
		1 Shadow Mastery			-- 2/5		Level 36
		1 Shadow Mastery			-- 3/5		Level 37
		1 Shadow Mastery			-- 4/5		Level 38
		1 Shadow Mastery			-- 5/5		Level 39

		1 Dark Pact				-- 1/1		Level 40

		1 Improved Healthstone			-- 1/2		Level 41
		1 Improved Healthstone			-- 2/2		Level 42

		1 Demonic Embrace			-- 1/5		Level 43
		1 Demonic Embrace			-- 2/5		Level 44
		1 Demonic Embrace			-- 3/5		Level 45
		1 Demonic Embrace			-- 4/5		Level 46
		1 Demonic Embrace			-- 5/5		Level 47

		1 Fel Intellect				-- 1/3		Level 48
		1 Fel Intellect				-- 2/3		Level 49
		1 Fel Intellect				-- 3/3		Level 50

		1 Demonic Aegis				-- 1/3		Level 51
		1 Demonic Aegis				-- 2/3		Level 52
		1 Demonic Aegis				-- 3/3		Level 53

		1 Improved Succubus			-- 1/3		Level 54
		1 Improved Succubus			-- 2/3		Level 55
		1 Improved Succubus			-- 3/3		Level 56

		1 Unholy Power				-- 1/5		Level 57
		1 Unholy Power				-- 2/5		Level 58
		1 Unholy Power				-- 3/5		Level 59
		1 Unholy Power				-- 4/5		Level 60
		1 Unholy Power				-- 5/5		Level 61

		1 Fel Stamina				-- 1/3		Level 62
		1 Fel Stamina				-- 2/3		Level 63
		1 Fel Stamina				-- 3/3		Level 64

		1 Fel Domination			-- 1/1		Level 65

		1 Mana Feed				-- 1/3		Level 66
		1 Mana Feed				-- 2/3		Level 67
		1 Mana Feed				-- 3/3		Level 68

		1 Master Demonologist			-- 1/5		Level 69
		1 Master Demonologist			-- 2/5		Level 70
	]])


-- WARRIOR
	QuestCoreTalentAdvisor:RegisterBuild("WARRIOR","Fury [Leveling] (DPS) (17/44/0)",2,[[
		1 Cruelty				-- 1/5		Level 10
		1 Cruelty				-- 2/5		Level 11
		1 Cruelty				-- 3/5		Level 12
		1 Cruelty				-- 4/5		Level 13
		1 Cruelty				-- 5/5		Level 14

		1 Booming Voice				-- 1/5		Level 15
		1 Booming Voice				-- 2/5		Level 16
		1 Booming Voice				-- 3/5		Level 17
		1 Booming Voice				-- 4/5		Level 18
		1 Booming Voice				-- 5/5		Level 19

		1 Commanding Presence			-- 1/5		Level 20
		1 Commanding Presence			-- 2/5		Level 21
		1 Commanding Presence			-- 3/5		Level 22
		1 Commanding Presence			-- 4/5		Level 23
		1 Commanding Presence			-- 5/5		Level 24

		1 Enrage				-- 1/5		Level 25
		1 Enrage				-- 2/5		Level 26
		1 Enrage				-- 3/5		Level 27
		1 Enrage				-- 4/5		Level 28
		1 Enrage				-- 5/5		Level 29

		1 Weapon Mastery			-- 1/2		Level 30
		1 Weapon Mastery			-- 2/2		Level 31

		1 Sweeping Strikes			-- 1/1		Level 32

		1 Dual Wield Specialization		-- 1/5		Level 33
		1 Dual Wield Specialization		-- 2/5		Level 34

		1 Flurry				-- 1/5		Level 35
		1 Flurry				-- 2/5		Level 36
		1 Flurry				-- 3/5		Level 37
		1 Flurry				-- 4/5		Level 38
		1 Flurry				-- 5/5		Level 39

		1 Bloodthirst				-- 1/1		Level 40

		1 Improved Heroic Strike		-- 1/3		Level 41
		1 Improved Heroic Strike		-- 2/3		Level 42
		1 Improved Heroic Strike		-- 3/3		Level 43

		1 Deflection				-- 1/5		Level 44
		1 Deflection				-- 2/5		Level 45

		1 Iron Will				-- 1/5		Level 46
		1 Iron Will				-- 2/5		Level 47
		1 Iron Will				-- 3/5		Level 48
		1 Iron Will				-- 4/5		Level 49
		1 Iron Will				-- 5/5		Level 50

		1 Deep Wounds				-- 1/3		Level 51
		1 Deep Wounds				-- 2/3		Level 52
		1 Deep Wounds				-- 3/3		Level 53

		1 Improved Overpower			-- 1/2		Level 54

		1 Anger Management			-- 1/1		Level 55

		1 Impale				-- 1/2		Level 56
		1 Impale				-- 2/2		Level 57

		1 Dual Wield Specialization		-- 3/5		Level 58
		1 Dual Wield Specialization		-- 4/5		Level 59
		1 Dual Wield Specialization		-- 5/5		Level 60

		1 Improved Whirlwind			-- 1/2		Level 61

		1 Improved Berserker Stance		-- 1/5		Level 62
		1 Improved Berserker Stance		-- 2/5		Level 63
		1 Improved Berserker Stance		-- 3/5		Level 64
		1 Improved Berserker Stance		-- 4/5		Level 65
		1 Improved Berserker Stance		-- 5/5		Level 66

		1 Rampage				-- 1/1		Level 67

		1 Precision				-- 1/3		Level 68
		1 Precision				-- 2/3		Level 69
		1 Precision				-- 3/3		Level 70		
	]])
