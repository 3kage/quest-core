-- Bundled QuestCore guide
if not QuestCore then return end

QC.TalentAdvisor.Builds = {
	DEATHKNIGHT = {
		{
			name = "Blood (Raid)",
			ident = "blood_raid",
			spec = 1,
			hero = "right",		
			classtalents = [[		
				Icebound Fortitude
				Raise Dead
				Runic Attenuation
				Improved Death Strike
				Cleaving Strikes
				Mind Freeze
				Blinding Sleet
				Gloom Ward
				Gloom Ward
				March of Darkness
				Unholy Momentum
				Unholy Momentum
				Permafrost
				Veteran of the Third War
				Brittle
				Icy Talons
				Death Notes
				Anti-Magic Zone
				Unholy Bond
				Asphyxiate
				Assimilation
				Anti-Magic Barrier
				Grip of the Dead
				Suppression
				Unholy Endurance
				Insidious Chill
				Runic Protection
				Blood Draw
				Rune Mastery
				Rune Mastery
				Will of the Necropolis
				Will of the Necropolis
				Null Magic
				Death's Echo
			]],
			spectalents = [[
				Heart Strike
				Marrowrend
				Blood Boil
				Vampiric Blood
				Bone Collector
				Ossuary
				Improved Heart Strike
				Improved Heart Strike
				Relish in Blood
				Heartbreaker
				Dancing Rune Weapon
				Hemostasis
				Perseverance of the Ebon Blade
				Gorefiend's Grasp
				Improved Bone Shield
				Insatiable Blade
				Rapid Decomposition
				Boiling Point
				Everlasting Bond
				Voracious
				Plague Infusion
				Iron Heart
				Coagulopathy
				Blood Mist
				Sanguine Ground
				Bloodshot
				Consumption
				Red Thirst
				Sanguinary Burst
				Purgatory
				Dance of Midnight
				Dance of Midnight
				Dance of Midnight
				Dance of Midnight
			]],
			herorighttalents = [[
				Newly Turned
				Blood-Soaked Ground
				Bloody Fortitude
				Thrill of Blood
				Infliction of Sorrow
				Frenzied Bloodthirst
				The Blood is Life
				Visceral Strength
				Inevitable
				Incite Terror
				Pact of the San'layn
				Transfusion
				Gift of the San'layn
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Blood (Mythic+)",
			ident = "blood_mythic",
			spec = 1,
			hero = "right",		
			classtalents = [[		
				Icebound Fortitude
				Raise Dead
				Runic Attenuation
				Improved Death Strike
				Cleaving Strikes
				Mind Freeze
				Blinding Sleet
				Gloom Ward
				Gloom Ward
				March of Darkness
				Unholy Momentum
				Unholy Momentum
				Permafrost
				Veteran of the Third War
				Brittle
				Icy Talons
				Death Notes
				Anti-Magic Zone
				Unholy Bond
				Asphyxiate
				Assimilation
				Anti-Magic Barrier
				Grip of the Dead
				Suppression
				Unholy Endurance
				Insidious Chill
				Runic Protection
				Blood Draw
				Rune Mastery
				Rune Mastery
				Will of the Necropolis
				Will of the Necropolis
				Null Magic
				Death's Echo
			]],
			spectalents = [[
				Heart Strike
				Marrowrend
				Blood Boil
				Vampiric Blood
				Bone Collector
				Ossuary
				Improved Heart Strike
				Improved Heart Strike
				Relish in Blood
				Heartbreaker
				Dancing Rune Weapon
				Hemostasis
				Gorefiend's Grasp
				Improved Bone Shield
				Insatiable Blade
				Deadly Reach
				Rapid Decomposition
				Boiling Point
				Everlasting Bond
				Voracious
				Plague Infusion
				Iron Heart
				Bloodied Blade
				Coagulopathy
				Blood Mist
				Sanguine Ground
				Bloodshot
				Consumption
				Red Thirst
				Purgatory
				Dance of Midnight
				Dance of Midnight
				Dance of Midnight
				Dance of Midnight
			]],
			herorighttalents = [[
				Newly Turned
				Blood-Soaked Ground
				Vampiric Aura
				Thrill of Blood
				Infliction of Sorrow
				Frenzied Bloodthirst
				The Blood is Life
				Visceral Strength
				Inevitable
				Incite Terror
				Pact of the San'layn
				Transfusion
				Gift of the San'layn
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Blood (Leveling/Delves)",
			spec = 1,
			hero = "left",
			ident = "dk_blood_tank_leveling",
			suggested = true,		
			classtalents = [[		
				Icebound Fortitude
				Raise Dead
				Runic Attenuation
				Improved Death Strike
				Cleaving Strikes
				Mind Freeze
				Blinding Sleet
				Gloom Ward
				Gloom Ward
				March of Darkness
				Unholy Momentum
				Unholy Momentum
				Enfeeble
				Permafrost
				Veteran of the Third War
				Brittle
				Icy Talons
				Anti-Magic Zone
				Unholy Bond
				Asphyxiate
				Assimilation
				Anti-Magic Barrier
				Grip of the Dead
				Suppression
				Unholy Endurance
				Insidious Chill
				Runic Protection
				Blood Draw
				Rune Mastery
				Rune Mastery
				Subduing Grasp
				Will of the Necropolis
				Will of the Necropolis
				Null Magic
			]],
			spectalents = [[
				Heart Strike
				Marrowrend
				Blood Boil
				Vampiric Blood
				Bone Collector
				Ossuary
				Improved Heart Strike
				Improved Heart Strike
				Relish in Blood
				Heartbreaker
				Dancing Rune Weapon
				Hemostasis
				Gorefiend's Grasp
				Improved Bone Shield
				Insatiable Blade
				Deadly Reach
				Rapid Decomposition
				Boiling Point
				Everlasting Bond
				Voracious
				Plague Infusion
				Iron Heart
				Coagulopathy
				Blood Mist
				Sanguine Ground
				Bloodshot
				Consumption
				Red Thirst
				Sanguinary Burst
				Purgatory
				Dance of Midnight
				Dance of Midnight
				Dance of Midnight
				Dance of Midnight
			]],
			herolefttalents = [[
				Wave of Souls
				Wither Away
				Bind in Darkness
				Frigid Resolve
				Soul Rupture
				Grim Reaper
				Rune Carved Plates
				Deathly Blows
				Swift and Painful
				Dark Talons
				Death's Messenger
				Echoing Fury
				Exterminate
			]],
			herorighttalents = [[
			]],
		},

		{
			name = "Frost (Raid)",
			ident = "frost_raid",
			spec = 2,
			hero = "left",		
			classtalents = [[		
				Death Strike
				Raise Dead
				Runic Attenuation
				Improved Death Strike
				Cleaving Strikes
				Mind Freeze
				Gloom Ward
				Gloom Ward
				March of Darkness
				Unholy Momentum
				Unholy Momentum
				Enfeeble
				Permafrost
				Veteran of the Third War
				Death Pact
				Brittle
				Icy Talons
				Death Notes
				Anti-Magic Zone
				Death Defiance
				Unholy Bond
				Death's Reach
				Assimilation
				Anti-Magic Barrier
				Suppression
				Blood Scent
				Insidious Chill
				Runic Protection
				Rune Mastery
				Rune Mastery
				Will of the Necropolis
				Will of the Necropolis
				Null Magic
				Death's Echo
			]],
			spectalents = [[
				Frost Strike
				Obliterate
				Howling Blast
				Killing Machine
				Empower Rune Weapon
				Arctic Assault
				Runic Overflow
				Frostbound Will
				Frostreaper
				Pillar of Frost
				Icy Onslaught
				Murderous Efficiency
				Rage of the Frozen Champion
				Enduring Strength
				Frozen Dominion
				Frigid Executioner
				Howling Blades
				Cryogenic Chamber
				Frostwyrm's Fury
				Northwinds
				Bonegrinder
				Bonegrinder
				Smothering Offense
				Icebreaker
				Icebreaker
				Obliteration
				Icy Death Torrent
				Hyperpyrexia
				Killing Streak
				Breath of Sindragosa
				Chosen of Frostbrood
				Chosen of Frostbrood
				Chosen of Frostbrood
				Chosen of Frostbrood
			]],
			herolefttalents = [[
				Wave of Souls
				Wither Away
				Bind in Darkness
				Frigid Resolve
				Soul Rupture
				Grim Reaper
				Rune Carved Plates
				Deathly Blows
				Swift and Painful
				Dark Talons
				Death's Messenger
				Echoing Fury
				Exterminate
			]],
			herorighttalents = [[
			]],
		},
		{
			name = "Frost (Mythic+)",
			ident = "frost_mythic",
			spec = 2,
			hero = "left",
			classtalents = [[		
				Death Strike
				Raise Dead
				Runic Attenuation
				Improved Death Strike
				Cleaving Strikes
				Mind Freeze
				Blinding Sleet
				Gloom Ward
				Gloom Ward
				March of Darkness
				Unholy Momentum
				Unholy Momentum
				Enfeeble
				Permafrost
				Veteran of the Third War
				Brittle
				Icy Talons
				Death Notes
				Anti-Magic Zone
				Unholy Bond
				Death's Reach
				Assimilation
				Anti-Magic Barrier
				Suppression
				Blood Scent
				Insidious Chill
				Runic Protection
				Rune Mastery
				Rune Mastery
				Will of the Necropolis
				Will of the Necropolis
				Null Magic
				Death's Echo
				Vestigial Shell
			]],
			spectalents = [[
				Frost Strike
				Obliterate
				Howling Blast
				Killing Machine
				Empower Rune Weapon
				Frostscythe
				Arctic Assault
				Runic Overflow
				Runic Overflow
				Frostbound Will
				Frostreaper
				Pillar of Frost
				Icy Onslaught
				Rage of the Frozen Champion
				Enduring Strength
				Frozen Dominion
				Frigid Executioner
				Cryogenic Chamber
				Frostwyrm's Fury
				Northwinds
				Bonegrinder
				Bonegrinder
				Icebreaker
				Icebreaker
				Obliteration
				Shattering Blade
				Hyperpyrexia
				Killing Streak
				Frostbane
				Breath of Sindragosa
				Chosen of Frostbrood
				Chosen of Frostbrood
				Chosen of Frostbrood
				Chosen of Frostbrood
			]],
			herolefttalents = [[
				Wave of Souls
				Wither Away
				Bind in Darkness
				Frigid Resolve
				Soul Rupture
				Grim Reaper
				Rune Carved Plates
				Deathly Blows
				Swift and Painful
				Dark Talons
				Death's Messenger
				Echoing Fury
				Exterminate
			]],
			herorighttalents = [[
			]],
		},
		{
			name = "Frost (Leveling/Delves)",
			spec = 2,
			hero = "left",
			suggested = true, 
			ident = "dk_frost_leveling",		
			classtalents = [[		
				Death Strike
				Raise Dead
				Runic Attenuation
				Improved Death Strike
				Cleaving Strikes
				Mind Freeze
				Blinding Sleet
				Gloom Ward
				Gloom Ward
				March of Darkness
				Unholy Momentum
				Unholy Momentum
				Enfeeble
				Permafrost
				Veteran of the Third War
				Brittle
				Icy Talons
				Death Notes
				Anti-Magic Zone
				Unholy Bond
				Death's Reach
				Assimilation
				Anti-Magic Barrier
				Suppression
				Blood Scent
				Insidious Chill
				Runic Protection
				Rune Mastery
				Rune Mastery
				Will of the Necropolis
				Will of the Necropolis
				Null Magic
				Death's Echo
				Vestigial Shell
			]],
			spectalents = [[
				Frost Strike
				Obliterate
				Howling Blast
				Killing Machine
				Empower Rune Weapon
				Frostscythe
				Arctic Assault
				Frostbound Will
				Biting Cold
				Frostreaper
				Pillar of Frost
				Gathering Storm
				Murderous Efficiency
				Rage of the Frozen Champion
				Enduring Strength
				Frozen Dominion
				Howling Blades
				Cryogenic Chamber
				Frostwyrm's Fury
				Northwinds
				Bonegrinder
				Bonegrinder
				Icebreaker
				Icebreaker
				Obliteration
				Icy Death Torrent
				Hyperpyrexia
				Killing Streak
				The Long Winter
				Breath of Sindragosa
				Chosen of Frostbrood
				Chosen of Frostbrood
				Chosen of Frostbrood
				Chosen of Frostbrood
			]],
			herolefttalents = [[
				Wave of Souls
				Wither Away
				Bind in Darkness
				Frigid Resolve
				Soul Rupture
				Grim Reaper
				Rune Carved Plates
				Deathly Blows
				Swift and Painful
				Dark Talons
				Death's Messenger
				Echoing Fury
				Exterminate
			]],
			herorighttalents = [[
			]],
		},

		{
			name = "Unholy (Raid)",
			ident = "unholy_raid",
			spec = 3,
			hero = "left",
			classtalents = [[		
				Icebound Fortitude
				Death Strike
				Runic Attenuation
				Improved Death Strike
				Cleaving Strikes
				Mind Freeze
				Gloom Ward
				Gloom Ward
				Wraith Walk
				Unholy Momentum
				Unholy Momentum
				Enfeeble
				Permafrost
				Veteran of the Third War
				Brittle
				Icy Talons
				Death Notes
				Anti-Magic Zone
				Unholy Bond
				Death's Reach
				Assimilation
				Anti-Magic Barrier
				Suppression
				Blood Scent
				Unholy Endurance
				Insidious Chill
				Runic Protection
				Rune Mastery
				Rune Mastery
				Subduing Grasp
				Will of the Necropolis
				Will of the Necropolis
				Null Magic
				Death's Echo
			]],
			spectalents = [[
				Outbreak
				Scourge Strike
				Sudden Doom
				Clawing Shadows
				Putrefy
				Dark Transformation
				Foul Infections
				Grave Mastery
				Necromancer's Cunning
				Ebon Fever
				Festering Scythe
				Soul Reaper
				Magus of the Dead
				Infected Claws
				Coil of Devastation
				Army of the Dead
				Reaping
				Morbidity
				Harbinger of Doom
				Summon Gargoyle
				Unholy Devotion
				Blightburst
				Putrid Echoes
				Doomed Bidding
				Unholy Aura
				Unholy Aura
				Commander of the Dead
				Commander of the Dead
				Reanimation
				Outnumber
				Forbidden Knowledge
				Forbidden Knowledge
				Forbidden Knowledge
				Forbidden Knowledge
			]],
			herolefttalents = [[
				Death Charge
				Mograine's Might
				Pact of the Apocalypse
				Ride or Die!
				Whitemane's Famine
				Nazgrim's Conquest
				Trollbane's Icy Fury
				Let Terror Reign
				Hungering Thirst
				Fury of the Horsemen
				Mawsworn Menace
				Unholy Armaments
				Apocalypse Now
			]],
			herorighttalents = [[
			]],
		},
		{
			name = "Unholy (Mythic+)",
			ident = "unholy_mythic",
			spec = 3,
			hero = "left",
			classtalents = [[		
				Icebound Fortitude
				Death Strike
				Runic Attenuation
				Improved Death Strike
				Cleaving Strikes
				Mind Freeze
				Blinding Sleet
				Gloom Ward
				Gloom Ward
				Wraith Walk
				Unholy Momentum
				Unholy Momentum
				Enfeeble
				Coldthirst
				Permafrost
				Veteran of the Third War
				Brittle
				Icy Talons
				Death Notes
				Anti-Magic Zone
				Unholy Bond
				Death's Reach
				Anti-Magic Barrier
				Suppression
				Unholy Endurance
				Insidious Chill
				Runic Protection
				Rune Mastery
				Rune Mastery
				Subduing Grasp
				Will of the Necropolis
				Will of the Necropolis
				Null Magic
				Death's Echo
			]],
			spectalents = [[
				Outbreak
				Scourge Strike
				Sudden Doom
				Clawing Shadows
				Putrefy
				Dark Transformation
				Foul Infections
				Grave Mastery
				Necromancer's Cunning
				Ebon Fever
				Festering Scythe
				Soul Reaper
				Magus of the Dead
				Infected Claws
				Cycle of Death
				Coil of Devastation
				Army of the Dead
				Reaping
				Menacing Magus
				Harbinger of Doom
				Unholy Devotion
				Blightburst
				Putrid Echoes
				Doomed Bidding
				Unholy Aura
				Unholy Aura
				Commander of the Dead
				Commander of the Dead
				Reanimation
				Outnumber
				Forbidden Knowledge
				Forbidden Knowledge
				Forbidden Knowledge
				Forbidden Knowledge
			]],
			herolefttalents = [[
				Death Charge
				Mograine's Might
				Pact of the Apocalypse
				Ride or Die!
				Whitemane's Famine
				Nazgrim's Conquest
				Trollbane's Icy Fury
				Let Terror Reign
				Hungering Thirst
				A Feast of Souls
				Mawsworn Menace
				Unholy Armaments
				Apocalypse Now
			]],
			herorighttalents = [[
			]],
		},
		{
			name = "Unholy (Leveling/Delves)",
			spec = 3,
			hero = "left",
			suggested = true, 
			ident = "dk_uh_leveling",
			classtalents = [[		
				Icebound Fortitude
				Death Strike
				Runic Attenuation
				Improved Death Strike
				Cleaving Strikes
				Mind Freeze
				Gloom Ward
				Gloom Ward
				Wraith Walk
				Unholy Momentum
				Unholy Momentum
				Enfeeble
				Permafrost
				Veteran of the Third War
				Brittle
				Icy Talons
				Death Notes
				Anti-Magic Zone
				Unholy Bond
				Death's Reach
				Assimilation
				Anti-Magic Barrier
				Suppression
				Blood Scent
				Unholy Endurance
				Insidious Chill
				Runic Protection
				Rune Mastery
				Rune Mastery
				Subduing Grasp
				Will of the Necropolis
				Will of the Necropolis
				Null Magic
				Death's Echo
			]],
			spectalents = [[
				Outbreak
				Scourge Strike
				Sudden Doom
				Clawing Shadows
				Putrefy
				Dark Transformation
				Foul Infections
				Grave Mastery
				Necromancer's Cunning
				Ebon Fever
				Festering Scythe
				Soul Reaper
				Magus of the Dead
				Infected Claws
				Cycle of Death
				Coil of Devastation
				Army of the Dead
				Reaping
				Menacing Magus
				Harbinger of Doom
				Summon Gargoyle
				Unholy Devotion
				Putrid Echoes
				Doomed Bidding
				Unholy Aura
				Unholy Aura
				Commander of the Dead
				Commander of the Dead
				Reanimation
				Outnumber
				Forbidden Knowledge
				Forbidden Knowledge
				Forbidden Knowledge
				Forbidden Knowledge
			]],
			herolefttalents = [[
				On a Paler Horse
				Mograine's Might
				Pact of the Apocalypse
				Ride or Die!
				Whitemane's Famine
				Nazgrim's Conquest
				Trollbane's Icy Fury
				Let Terror Reign
				Hungering Thirst
				A Feast of Souls
				Mawsworn Menace
				Unholy Armaments
				Apocalypse Now
			]],
			herorighttalents = [[
			]],
		},
	},

	DEMONHUNTER = {
		{
			name = "Devourer (Raid)",
			ident = "devourer_raid",
			spec = 3,
			hero = "left",
			classtalents = [[		
				Vengeful Retreat
				Sigil of Misery
				Unrestrained Fury
				Shattered Restoration
				Bouncing Glaives
				Imprison
				Void Nova
				Improved Disrupt
				Consume Magic
				Focused Ire
				Disrupting Fury
				Blazing Path
				Aura of Pain
				Pursuit
				Soul Rending
				Soul Rending
				Felfire Haste
				Soul Cleanse
				Illidari Knowledge
				Illidari Knowledge
				Guile
				Will of the Illidari
				Will of the Illidari
				Internal Struggle
				Furious
				Remorseless
				First In, Last Out
				Erratic Felheart
				Final Breath
				Darkness
				Soul Splitter
				Soul Splitter
				Pitch Black
				Demonic Resilience
			]],
			spectalents = [[
				Void Ray
				Soul Immolation
				Predator's Thirst
				Tempered Soul
				Void Metamorphosis
				Feast of Souls
				Collapsing Star
				Moment of Craving
				Entropy
				Waste Not
				Soulshaper
				Sweet Suffering
				Sweet Suffering
				Improved Consume
				Sweet Release
				Sweet Release
				Voidpurge
				Voidrage
				Voidrage
				Focused Ray
				Demonic Instinct
				Demonic Instinct
				Devourer's Edge
				Devourer's Edge
				Rolling Torment
				Impending Apocalypse
				Calamitous
				Star Fragments
				Emptiness
				Eradicate
				Midnight
				Midnight
				Midnight
				Midnight
			]],
			herolefttalents = [[
				Swift Erasure
				Meteoric Rise
				Catastrophe
				Phase Shift
				State of Matter
				Mass Acceleration
				Harness the Cosmos
				Celestial Echoes
				Final Hour
				Meteoric Fall
				Dark Matter
				Otherworldly Focus
				World Killer
			]],
			herorighttalents = [[
			]],
		},
		{
			name = "Devourer (Mythic+)",
			ident = "devourer_mythic",
			spec = 3,
			hero = "left",
			classtalents = [[		
				Vengeful Retreat
				Sigil of Misery
				Unrestrained Fury
				Shattered Restoration
				Bouncing Glaives
				Imprison
				Void Nova
				Improved Disrupt
				Consume Magic
				Focused Ire
				Disrupting Fury
				Blazing Path
				Aura of Pain
				Pursuit
				Soul Rending
				Soul Rending
				Felfire Haste
				Soul Cleanse
				Illidari Knowledge
				Illidari Knowledge
				Guile
				Will of the Illidari
				Will of the Illidari
				Internal Struggle
				Furious
				Remorseless
				First In, Last Out
				Final Breath
				Darkness
				Demon Muzzle
				Soul Splitter
				Soul Splitter
				Pitch Black
				Demonic Resilience
			]],
			spectalents = [[
				Void Ray
				Soul Immolation
				Predator's Thirst
				Tempered Soul
				Void Metamorphosis
				Feast of Souls
				Collapsing Star
				Moment of Craving
				Entropy
				Waste Not
				Soulshaper
				Sweet Suffering
				Sweet Suffering
				Improved Consume
				Sweet Release
				Sweet Release
				Voidpurge
				Voidrage
				Voidrage
				Focused Ray
				Demonic Instinct
				Demonic Instinct
				Devourer's Edge
				Devourer's Edge
				Rolling Torment
				Impending Apocalypse
				Calamitous
				Star Fragments
				Emptiness
				Eradicate
				Midnight
				Midnight
				Midnight
				Midnight
			]],
			herolefttalents = [[
				Swift Erasure
				Meteoric Rise
				Catastrophe
				Phase Shift
				State of Matter
				Mass Acceleration
				Harness the Cosmos
				Celestial Echoes
				Final Hour
				Meteoric Fall
				Dark Matter
				Otherworldly Focus
				World Killer
			]],
			herorighttalents = [[
			]],
		},
		{
			name = "Devourer (Leveling/Delves)",
			ident = "dh_devourer_leveling",
			spec = 3,
			hero = "right",
			classtalents = [[		
				Vengeful Retreat
				Sigil of Misery
				Unrestrained Fury
				Shattered Restoration
				Bouncing Glaives
				Imprison
				Void Nova
				Improved Disrupt
				Consume Magic
				Focused Ire
				Disrupting Fury
				Blazing Path
				Aura of Pain
				Pursuit
				Soul Rending
				Soul Rending
				Felfire Haste
				Soul Cleanse
				Illidari Knowledge
				Illidari Knowledge
				Guile
				Will of the Illidari
				Will of the Illidari
				Internal Struggle
				Furious
				Remorseless
				First In, Last Out
				Erratic Felheart
				Erratic Felheart
				Final Breath
				Soul Splitter
				Soul Splitter
				Wings of Wrath
				Demonic Resilience
			]],
			spectalents = [[
				Void Ray
				Soul Immolation
				Predator's Thirst
				Spontaneous Immolation
				Void Metamorphosis
				Feast of Souls
				Collapsing Star
				Moment of Craving
				Entropy
				Waste Not
				Soulshaper
				Sweet Suffering
				Sweet Suffering
				Improved Consume
				Sweet Release
				Sweet Release
				Hungering Slash
				Voidrage
				Voidrage
				Focused Ray
				Singular Strikes
				Demonic Instinct
				Demonic Instinct
				Devourer's Edge
				Devourer's Edge
				Rolling Torment
				Voidrush
				Devourer's Bite
				Impending Apocalypse
				Calamitous
				Star Fragments
				The Hunt
				Soul Glutton
				Eradicate
			]],
			herorighttalents = [[
				Pursuit of Angriness
				Focused Hatred
				Improved Soul Rending
				Blind Focus
				Burning Blades
				Violent Transformation
				Enduring Torment
				Undying Embers
				Untethered Fury
				Student of Suffering
				Monster Rising
				Volatile Instinct
				Demonic Intensity
			]],
			herolefttalents = [[
			]],
		},

		{
			name = "Havoc (Raid)",
			ident = "havoc_raid",
			spec = 1,
			hero = "right",
			classtalents = [[		
				Felblade
				Sigil of Misery
				Unrestrained Fury
				Shattered Restoration
				Bouncing Glaives
				Imprison
				Charred Warblades
				Chaos Nova
				Improved Disrupt
				Consume Magic
				Master of the Glaive
				Blazing Path
				Aura of Pain
				Pursuit
				Soul Rending
				Soul Rending
				Felfire Haste
				Soul Cleanse
				Illidari Knowledge
				Illidari Knowledge
				Felbound
				Will of the Illidari
				Will of the Illidari
				Internal Struggle
				Furious
				Remorseless
				First In, Last Out
				Erratic Felheart
				Final Breath
				Darkness
				Soul Splitter
				Soul Splitter
				Pitch Black
				Demonic Resilience
			]],
			spectalents = [[
				Eye Beam
				Critical Chaos
				Burning Hatred
				First Blood
				Accelerated Blade
				Demon Hide
				Desperate Instincts
				Deflecting Dance
				Initiative
				Scars of Suffering
				Demonic
				Furious Throws
				Trail of Ruin
				Tactical Retreat
				Blind Fury
				Furious Gaze
				Dancing with Fate
				Dancing with Fate
				Inertia
				The Hunt
				Serrated Glaive
				Chaotic Transformation
				Soulscar
				Know Your Enemy
				Know Your Enemy
				Cycle of Hatred
				Chaotic Disposition
				Chaotic Disposition
				Screaming Brutality
				A Fire Inside
				Eternal Hunt
				Eternal Hunt
				Eternal Hunt
				Eternal Hunt
			]],
			herorighttalents = [[
				Pursuit of Angriness
				Focused Hatred
				Improved Soul Rending
				Blind Focus
				Burning Blades
				Violent Transformation
				Enduring Torment
				Undying Embers
				Untethered Fury
				Student of Suffering
				Monster Rising
				Volatile Instinct
				Demonic Intensity
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Havoc (Mythic+)",
			ident = "havoc_mythic",
			spec = 1,
			hero = "right",
			classtalents = [[		
				Felblade
				Sigil of Misery
				Unrestrained Fury
				Shattered Restoration
				Bouncing Glaives
				Imprison
				Charred Warblades
				Chaos Nova
				Improved Disrupt
				Consume Magic
				Focused Ire
				Master of the Glaive
				Blazing Path
				Aura of Pain
				Pursuit
				Soul Rending
				Soul Rending
				Soul Cleanse
				Illidari Knowledge
				Illidari Knowledge
				Felbound
				Will of the Illidari
				Will of the Illidari
				Internal Struggle
				Furious
				Remorseless
				First In, Last Out
				Final Breath
				Darkness
				Demon Muzzle
				Soul Splitter
				Soul Splitter
				Pitch Black
				Demonic Resilience
			]],
			spectalents = [[
				Eye Beam
				Critical Chaos
				Burning Hatred
				Improved Chaos Strike
				First Blood
				Demon Hide
				Desperate Instincts
				Deflecting Dance
				Initiative
				Scars of Suffering
				Demonic
				Trail of Ruin
				Tactical Retreat
				Blind Fury
				Blind Fury
				Furious Gaze
				Growing Inferno
				Inertia
				The Hunt
				Burning Wound
				Chaotic Transformation
				Ragefire
				Know Your Enemy
				Know Your Enemy
				Cycle of Hatred
				Chaotic Disposition
				Chaotic Disposition
				Glaive Tempest
				Screaming Brutality
				A Fire Inside
				Eternal Hunt
				Eternal Hunt
				Eternal Hunt
				Eternal Hunt
			]],
			herorighttalents = [[
				Wave of Debilitation
				Focused Hatred
				Improved Soul Rending
				Blind Focus
				Burning Blades
				Violent Transformation
				Enduring Torment
				Undying Embers
				Untethered Fury
				Flamebound
				Monster Rising
				Volatile Instinct
				Demonic Intensity
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Havoc (Leveling/Delves)",
			spec = 1,
			hero = "right",
			suggested = true, 
			ident = "dh_havoc_leveling",
			classtalents = [[		
				Felblade
				Sigil of Misery
				Unrestrained Fury
				Shattered Restoration
				Bouncing Glaives
				Imprison
				Charred Warblades
				Chaos Nova
				Improved Disrupt
				Consume Magic
				Focused Ire
				Master of the Glaive
				Blazing Path
				Aura of Pain
				Pursuit
				Soul Rending
				Soul Rending
				Soul Cleanse
				Illidari Knowledge
				Illidari Knowledge
				Felbound
				Will of the Illidari
				Will of the Illidari
				Internal Struggle
				Furious
				Remorseless
				First In, Last Out
				Final Breath
				Darkness
				Demon Muzzle
				Soul Splitter
				Soul Splitter
				Pitch Black
				Demonic Resilience
			]],
			spectalents = [[
				Eye Beam
				Critical Chaos
				Burning Hatred
				Improved Chaos Strike
				First Blood
				Demon Hide
				Desperate Instincts
				Deflecting Dance
				Initiative
				Scars of Suffering
				Demonic
				Trail of Ruin
				Tactical Retreat
				Blind Fury
				Blind Fury
				Furious Gaze
				Growing Inferno
				Inertia
				The Hunt
				Burning Wound
				Chaotic Transformation
				Ragefire
				Know Your Enemy
				Know Your Enemy
				Cycle of Hatred
				Chaotic Disposition
				Chaotic Disposition
				Glaive Tempest
				Screaming Brutality
				A Fire Inside
				Eternal Hunt
				Eternal Hunt
				Eternal Hunt
				Eternal Hunt
			]],
			herorighttalents = [[
				Wave of Debilitation
				Focused Hatred
				Improved Soul Rending
				Blind Focus
				Burning Blades
				Violent Transformation
				Enduring Torment
				Undying Embers
				Untethered Fury
				Flamebound
				Monster Rising
				Volatile Instinct
				Demonic Intensity
			]],
			herolefttalents = [[
			]],
		},

		{
			name = "Vengeance (Raid)",
			ident = "vengeance_raid",
			spec = 2,
			hero = "right",
			classtalents = [[		
				Vengeful Retreat
				Felblade
				Unrestrained Fury
				Shattered Restoration
				Bouncing Glaives
				Charred Warblades
				Improved Disrupt
				Aldrachi Design
				Champion of the Glaive
				Blazing Path
				Aura of Pain
				Live by the Glaive
				Pursuit
				Soul Rending
				Soul Rending
				Felfire Haste
				Infernal Armor
				Infernal Armor
				Illidari Knowledge
				Illidari Knowledge
				Felbound
				Will of the Illidari
				Will of the Illidari
				Internal Struggle
				Furious
				Remorseless
				First In, Last Out
				Erratic Felheart
				Erratic Felheart
				Final Breath
				Darkness
				Soul Splitter
				Soul Splitter
				Demonic Resilience
			]],
			spectalents = [[
				Fel Devastation
				Spirit Bomb
				Fiery Brand
				Perfectly Balanced Glaive
				Ascending Flame
				Tempered Steel
				Calcified Spikes
				Retaliation
				Sigil of Spite
				Agonizing Flames
				Burning Blood
				Frailty
				Fallout
				Volatile Flameblood
				Soul Barrier
				Fel Flame Fortification
				Void Reaver
				Fiery Demise
				Fiery Demise
				Chains of Anger
				Focused Cleave
				Burning Alive
				Vulnerability
				Vulnerability
				Vengeful Beast
				Charred Flesh
				Charred Flesh
				Soulcrush
				Soul Carver
				Down in Flames
				Untethered Rage
				Untethered Rage
				Untethered Rage
				Untethered Rage
			]],
			herorighttalents = [[
				Swift Erasure
				Meteoric Rise
				Catastrophe
				Phase Shift
				Path to Oblivion
				Mass Acceleration
				Harness the Cosmos
				Celestial Echoes
				Final Hour
				Meteoric Fall
				Dark Matter
				Otherworldly Focus
				World Killer
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Vengeance (Mythic+)",
			ident = "vengeance_mythic",
			spec = 2,
			hero = "right",
			classtalents = [[		
				Vengeful Retreat
				Felblade
				Unrestrained Fury
				Shattered Restoration
				Bouncing Glaives
				Imprison
				Charred Warblades
				Chaos Nova
				Improved Disrupt
				Consume Magic
				Aldrachi Design
				Champion of the Glaive
				Blazing Path
				Aura of Pain
				Live by the Glaive
				Soul Rending
				Soul Rending
				Infernal Armor
				Infernal Armor
				Illidari Knowledge
				Illidari Knowledge
				Will of the Illidari
				Will of the Illidari
				Internal Struggle
				Furious
				Remorseless
				First In, Last Out
				Erratic Felheart
				Erratic Felheart
				Final Breath
				Darkness
				Soul Splitter
				Soul Splitter
				Wings of Wrath
			]],
			spectalents = [[
				Fel Devastation
				Spirit Bomb
				Fiery Brand
				Perfectly Balanced Glaive
				Quickened Sigils
				Tempered Steel
				Calcified Spikes
				Sigil of Silence
				Sigil of Spite
				Agonizing Flames
				Feed the Demon
				Burning Blood
				Frailty
				Fallout
				Volatile Flameblood
				Soul Barrier
				Void Reaver
				Painbringer
				Fiery Demise
				Fiery Demise
				Focused Cleave
				Burning Alive
				Vulnerability
				Vulnerability
				Vengeful Beast
				Charred Flesh
				Charred Flesh
				Soulcrush
				Last Resort
				Down in Flames
				Untethered Rage
				Untethered Rage
				Untethered Rage
				Untethered Rage
			]],
			herorighttalents = [[
				Swift Erasure
				Meteoric Rise
				Catastrophe
				Phase Shift
				Path to Oblivion
				Mass Acceleration
				Harness the Cosmos
				Celestial Echoes
				Final Hour
				Meteoric Fall
				Dark Matter
				Otherworldly Focus
				World Killer
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Vengeance (Leveling/Delves)",
			spec = 2,
			hero = "right",
			suggested = true, 
			ident = "dh_veng_leveling",
			classtalents = [[		
				Vengeful Retreat
				Felblade
				Unrestrained Fury
				Shattered Restoration
				Bouncing Glaives
				Imprison
				Charred Warblades
				Chaos Nova
				Improved Disrupt
				Consume Magic
				Aldrachi Design
				Champion of the Glaive
				Blazing Path
				Aura of Pain
				Live by the Glaive
				Pursuit
				Soul Rending
				Soul Rending
				Infernal Armor
				Infernal Armor
				Illidari Knowledge
				Illidari Knowledge
				Felbound
				Will of the Illidari
				Will of the Illidari
				Internal Struggle
				Furious
				Remorseless
				First In, Last Out
				Erratic Felheart
				Erratic Felheart
				Final Breath
				Soul Splitter
				Soul Splitter
			]],
			spectalents = [[
				Fel Devastation
				Spirit Bomb
				Fiery Brand
				Perfectly Balanced Glaive
				Quickened Sigils
				Tempered Steel
				Calcified Spikes
				Sigil of Silence
				Sigil of Spite
				Agonizing Flames
				Feed the Demon
				Burning Blood
				Frailty
				Fallout
				Volatile Flameblood
				Soul Barrier
				Void Reaver
				Painbringer
				Fiery Demise
				Fiery Demise
				Focused Cleave
				Burning Alive
				Vulnerability
				Vulnerability
				Vengeful Beast
				Charred Flesh
				Charred Flesh
				Soulcrush
				Darkglare Boon
				Down in Flames
				Untethered Rage
				Untethered Rage
				Untethered Rage
				Untethered Rage
			]],
			herorighttalents = [[
				Swift Erasure
				Meteoric Rise
				Catastrophe
				Phase Shift
				Path to Oblivion
				Mass Acceleration
				Harness the Cosmos
				Celestial Echoes
				Final Hour
				Meteoric Fall
				Dark Matter
				Otherworldly Focus
				World Killer
			]],
			herolefttalents = [[
			]],
		},
	},

	DRUID = {
		{
			name = "Balance (Raid)",
			ident = "balance_raid",
			spec = 1,
			hero = "right",
			classtalents = [[		
				Frenzied Regeneration
				Ursoc's Spirit
				Verdant Heart
				Killer Instinct
				Killer Instinct
				Improved Barkskin
				Nurturing Instinct
				Nurturing Instinct
				Sunfire
				Thick Hide
				Natural Recovery
				Astral Influence
				Wild Charge
				Soothe
				Aessina's Renewal
				Starlight Conduit
				Feline Swiftness
				Well-Honed Instincts
				Matted Fur
				Matted Fur
				Stampeding Roar
				Typhoon
				Ursol's Vortex
				Oakskin
				Perfectly-Honed Instincts
				Lycara's Teachings
				Lycara's Teachings
				Lore of the Grove
				Gift of the Wild
				Ursine Vigor
				Improved Stampeding Roar
				Circle of the Heavens
				Heart of the Wild
				Innervate
			]],
			spectalents = [[
				Eclipse
				Shooting Stars
				Solar Beam
				Solstice
				Force of Nature
				Twin Moons
				Improved Eclipse
				Nature's Balance
				Wild Surges
				Celestial Alignment
				Sunseeker Mushroom
				Stellar Amplification
				Whirling Stars
				Touch the Cosmos
				Cosmic Rapidity
				Cosmic Rapidity
				Celestial Fire
				Hail of Stars
				Starlord
				Starlord
				Balance of All Things
				Balance of All Things
				Rattle the Stars
				Power of Goldrinn
				Orbit Breaker
				Convoke the Spirits
				Umbral Embrace
				Harmony of the Heavens
				Elune's Guidance
				Denizen of the Dream
				Ascendant Eclipses
				Ascendant Eclipses
				Ascendant Eclipses
				Ascendant Eclipses
			]],
			herorighttalents = [[
				Treants of the Moon
				Expansiveness
				Protective Growth
				Sylvan Beckoning
				Power of Nature
				Cenarius' Might
				Potent Enchantments
				Dryad's Dance
				Bounteous Bloom
				Control of the Dream
				Blooming Infusion
				Spirit of the Thicket
				Harmony of the Grove
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Balance (Mythic+)",
			ident = "balance_mythic",
			spec = 1,
			hero = "left",
			classtalents = [[		
				Frenzied Regeneration
				Ursoc's Spirit
				Verdant Heart
				Remove Corruption
				Killer Instinct
				Killer Instinct
				Improved Barkskin
				Nurturing Instinct
				Nurturing Instinct
				Sunfire
				Thick Hide
				Light of the Sun
				Natural Recovery
				Wild Charge
				Soothe
				Aessina's Renewal
				Starlight Conduit
				Feline Swiftness
				Well-Honed Instincts
				Matted Fur
				Matted Fur
				Stampeding Roar
				Typhoon
				Ursol's Vortex
				Oakskin
				Perfectly-Honed Instincts
				Lycara's Teachings
				Lycara's Teachings
				Lore of the Grove
				Gift of the Wild
				Incapacitating Roar
				Improved Stampeding Roar
				Circle of the Heavens
				Heart of the Wild
			]],
			spectalents = [[
				Eclipse
				Shooting Stars
				Solar Beam
				Solstice
				Twin Moons
				Improved Eclipse
				Umbral Intensity
				Aetherial Kindling
				Wild Surges
				Celestial Alignment
				Sunseeker Mushroom
				Stellar Amplification
				Whirling Stars
				Touch the Cosmos
				Cosmic Rapidity
				Cosmic Rapidity
				Celestial Fire
				Hail of Stars
				Starlord
				Starlord
				Balance of All Things
				Balance of All Things
				Rattle the Stars
				Sundered Firmament
				Incarnation: Chosen of Elune
				Fury of Elune
				Umbral Embrace
				Harmony of the Heavens
				Elune's Guidance
				Radiant Moonlight
				Ascendant Eclipses
				Ascendant Eclipses
				Ascendant Eclipses
				Ascendant Eclipses
			]],
			herolefttalents = [[
				Moon Guardian
				Lunar Insight
				Glistening Fur
				Star Cascade
				Stellar Command
				Atmospheric Exposure
				Elune's Grace
				Penumbral Swell
				Lunar Calling
				The Light of Elune
				Lunation
				Bask in Moonlight
				The Eternal Moon
			]],
			herorighttalents = [[
			]],
		},
		{
			name = "Balance (Leveling/Delves)",
			spec = 1,
			hero = "right",
			suggested = true, 
			ident = "druid_bala_leveling",
			classtalents = [[		
				Frenzied Regeneration
				Ursoc's Spirit
				Verdant Heart
				Remove Corruption
				Killer Instinct
				Killer Instinct
				Improved Barkskin
				Nurturing Instinct
				Nurturing Instinct
				Sunfire
				Thick Hide
				Light of the Sun
				Natural Recovery
				Wild Charge
				Soothe
				Aessina's Renewal
				Starlight Conduit
				Feline Swiftness
				Well-Honed Instincts
				Matted Fur
				Matted Fur
				Stampeding Roar
				Typhoon
				Ursol's Vortex
				Oakskin
				Perfectly-Honed Instincts
				Lycara's Teachings
				Lycara's Teachings
				Lore of the Grove
				Gift of the Wild
				Incapacitating Roar
				Improved Stampeding Roar
				Circle of the Heavens
				Heart of the Wild
			]],
			spectalents = [[
				Eclipse
				Shooting Stars
				Solar Beam
				Solstice
				Force of Nature
				Twin Moons
				Improved Eclipse
				Nature's Balance
				Meteor Storm
				Wild Surges
				Celestial Alignment
				Sunseeker Mushroom
				Stellar Amplification
				Whirling Stars
				Touch the Cosmos
				Cosmic Rapidity
				Cosmic Rapidity
				Celestial Fire
				Hail of Stars
				Starlord
				Starlord
				Balance of All Things
				Balance of All Things
				Starweaver
				Power of Goldrinn
				Orbit Breaker
				Incarnation: Chosen of Elune
				Harmony of the Heavens
				Elune's Guidance
				Denizen of the Dream
				Ascendant Eclipses
				Ascendant Eclipses
				Ascendant Eclipses
				Ascendant Eclipses
			]],
			herorighttalents = [[
				Treants of the Moon
				Expansiveness
				Protective Growth
				Sylvan Beckoning
				Durability of Nature
				Cenarius' Might
				Potent Enchantments
				Dryad's Dance
				Bounteous Bloom
				Control of the Dream
				Blooming Infusion
				Spirit of the Thicket
				Harmony of the Grove
			]],
			herolefttalents = [[
			]],
		},

		{
			name = "Feral (Raid)",
			ident = "feral_raid",
			spec = 2,
			hero = "right",
			classtalents = [[		
				Frenzied Regeneration
				Grievous Wounds
				Ursoc's Spirit
				Verdant Heart
				Remove Corruption
				Killer Instinct
				Killer Instinct
				Improved Barkskin
				Nurturing Instinct
				Nurturing Instinct
				Primal Fury
				Thick Hide
				Skull Bash
				Natural Recovery
				Wild Charge
				Soothe
				Aessina's Renewal
				Feline Swiftness
				Well-Honed Instincts
				Matted Fur
				Matted Fur
				Stampeding Roar
				Typhoon
				Mass Entanglement
				Oakskin
				Instincts of the Claw
				Lycara's Teachings
				Lycara's Teachings
				Lore of the Grove
				Gift of the Wild
				Circle of the Wild
				Lycara's Inspiration
				Fluid Form
				Heart of the Wild
			]],
			spectalents = [[
				Tiger's Fury
				Omen of Clarity
				Merciless Claws
				Predator
				Sabertooth
				Tireless Energy
				Tireless Energy
				Pouncing Strikes
				Taste for Blood
				Survival Instincts
				Dreadful Bleeding
				Sudden Ambush
				Moment of Clarity
				Savage Fury
				Berserk
				Panther's Guile
				Infected Wounds
				Tiger's Tenacity
				Berserk: Heart of the Lion
				Soul of the Forest
				Frantic Momentum
				Frantic Momentum
				Apex Predator's Craving
				Feral Frenzy
				Convoke the Spirits
				Lacerating Claws
				Lunar Inspiration
				Focused Frenzy
				Ashamane's Guidance
				Circle of Life and Death
				Unseen Predator
				Unseen Predator
				Unseen Predator
				Unseen Predator
			]],
			herorighttalents = [[
				Hunt Beneath the Open Skies
				Strategic Infusion
				Wildstalker's Power
				Green Thumb
				Lethal Preservation
				Flower Walk
				Bond with Nature
				Bursting Growth
				Resilient Flourishing
				Patient Custodian
				Implant
				Rampancy
				Vigorous Creepers
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Feral (Mythic+)",
			ident = "feral_mythic",
			spec = 2,
			hero = "left",
			classtalents = [[		
				Frenzied Regeneration
				Grievous Wounds
				Ursoc's Spirit
				Verdant Heart
				Remove Corruption
				Killer Instinct
				Killer Instinct
				Improved Barkskin
				Hibernate
				Primal Fury
				Thick Hide
				Skull Bash
				Natural Recovery
				Wild Charge
				Soothe
				Aessina's Renewal
				Feline Swiftness
				Well-Honed Instincts
				Matted Fur
				Matted Fur
				Stampeding Roar
				Typhoon
				Mass Entanglement
				Oakskin
				Instincts of the Claw
				Lycara's Teachings
				Lycara's Teachings
				Gift of the Wild
				Incapacitating Roar
				Circle of the Wild
				Lycara's Inspiration
				Forestwalk
				Forestwalk
				Heart of the Wild
			]],
			spectalents = [[
				Tiger's Fury
				Omen of Clarity
				Primal Wrath
				Merciless Claws
				Predator
				Sabertooth
				Tireless Energy
				Pouncing Strikes
				Taste for Blood
				Survival Instincts
				Dreadful Bleeding
				Moment of Clarity
				Savage Fury
				Berserk
				Rampant Ferocity
				Tiger's Tenacity
				Wild Slashes
				Berserk: Heart of the Lion
				Blood Spattered
				Soul of the Forest
				Frantic Momentum
				Frantic Momentum
				Apex Predator's Craving
				Feral Frenzy
				Convoke the Spirits
				Lacerating Claws
				Frantic Frenzy
				Ashamane's Guidance
				Hunger for Battle
				Circle of Life and Death
				Unseen Predator
				Unseen Predator
				Unseen Predator
				Unseen Predator
			]],
			herolefttalents = [[
				Fount of Strength
				Dreadful Wound
				Bestial Strength
				Limb from Limb
				Wildshape Mastery
				Exacerbating Wounds
				Pack's Endurance
				Killing Strikes
				Empowered Shapeshifting
				Aggravate Wounds
				Tear Down the Mighty
				Twin Claw
				Claw Rampage
			]],
			herorighttalents = [[
			]],
		},
		{
			name = "Feral (Leveling/Delves)",
			spec = 2,
			hero = "left",
			suggested = true, 
			ident = "druid_feral_leveling",
			classtalents = [[		
				Frenzied Regeneration
				Grievous Wounds
				Ursoc's Spirit
				Verdant Heart
				Remove Corruption
				Killer Instinct
				Killer Instinct
				Improved Barkskin
				Hibernate
				Primal Fury
				Thick Hide
				Skull Bash
				Natural Recovery
				Wild Charge
				Soothe
				Aessina's Renewal
				Feline Swiftness
				Well-Honed Instincts
				Matted Fur
				Matted Fur
				Stampeding Roar
				Typhoon
				Mass Entanglement
				Oakskin
				Instincts of the Claw
				Lycara's Teachings
				Lycara's Teachings
				Gift of the Wild
				Incapacitating Roar
				Circle of the Wild
				Lycara's Inspiration
				Forestwalk
				Forestwalk
				Heart of the Wild
			]],
			spectalents = [[
				Tiger's Fury
				Omen of Clarity
				Primal Wrath
				Merciless Claws
				Predator
				Sabertooth
				Tireless Energy
				Pouncing Strikes
				Taste for Blood
				Survival Instincts
				Dreadful Bleeding
				Moment of Clarity
				Savage Fury
				Berserk
				Rampant Ferocity
				Tiger's Tenacity
				Wild Slashes
				Berserk: Heart of the Lion
				Blood Spattered
				Soul of the Forest
				Frantic Momentum
				Frantic Momentum
				Apex Predator's Craving
				Feral Frenzy
				Convoke the Spirits
				Lacerating Claws
				Frantic Frenzy
				Ashamane's Guidance
				Hunger for Battle
				Circle of Life and Death
				Unseen Predator
				Unseen Predator
				Unseen Predator
				Unseen Predator
			]],
			herolefttalents = [[
				Fount of Strength
				Dreadful Wound
				Bestial Strength
				Limb from Limb
				Wildshape Mastery
				Exacerbating Wounds
				Pack's Endurance
				Killing Strikes
				Empowered Shapeshifting
				Aggravate Wounds
				Tear Down the Mighty
				Twin Claw
				Claw Rampage
			]],
			herorighttalents = [[
			]],
		},

		{
			name = "Guardian (Raid)",
			ident = "guardian_raid",
			spec = 3,
			hero = "left",
			classtalents = [[		
				Rake
				Grievous Wounds
				Ursoc's Spirit
				Remove Corruption
				Killer Instinct
				Killer Instinct
				Ironfur
				Improved Barkskin
				Nurturing Instinct
				Nurturing Instinct
				Primal Fury
				Thick Hide
				Skull Bash
				Natural Recovery
				Wild Charge
				Soothe
				Aessina's Renewal
				Feline Swiftness
				Well-Honed Instincts
				Matted Fur
				Matted Fur
				Stampeding Roar
				Ursol's Vortex
				Oakskin
				Instincts of the Claw
				Lycara's Teachings
				Lycara's Teachings
				Lore of the Grove
				Gift of the Wild
				Improved Stampeding Roar
				Circle of the Wild
				Fluid Form
				Heart of the Wild
				Innervate
			]],
			spectalents = [[
				Maul
				Gore
				Survival Instincts
				Persistence
				Dream of Cenarius
				Innate Resolve
				Berserk
				Vulnerable Flesh
				Survival of the Fittest
				Survival of the Fittest
				Reinvigoration
				After the Wildfire
				Scintillating Moonlight
				Scintillating Moonlight
				Soul of the Forest
				Natural Resilience
				Ursoc's Endurance
				Rend and Tear
				Raze
				Lunar Beam
				Flashing Claws
				Flashing Claws
				Blood Frenzy
				Moonless Night
				Red Moon
				Harnessed Rage
				Incarnation: Guardian of Ursoc
				Killing Blow
				Ursoc's Guidance
				Galactic Guardian
				Wild Guardian
				Wild Guardian
				Wild Guardian
				Wild Guardian
			]],
			herolefttalents = [[
				Fount of Strength
				Dreadful Wound
				Bestial Strength
				Limb from Limb
				Wildshape Mastery
				Exacerbating Wounds
				Pack's Endurance
				Killing Strikes
				Empowered Shapeshifting
				Aggravate Wounds
				Strike for the Heart
				Twin Claw
				Claw Rampage
			]],
			herorighttalents = [[
			]],
		},
		{
			name = "Guardian (Mythic+)",
			ident = "guardian_mythic",
			spec = 3,
			hero = "right",
			classtalents = [[		
				Rake
				Grievous Wounds
				Ursoc's Spirit
				Remove Corruption
				Killer Instinct
				Killer Instinct
				Ironfur
				Improved Barkskin
				Nurturing Instinct
				Nurturing Instinct
				Primal Fury
				Thick Hide
				Skull Bash
				Natural Recovery
				Wild Charge
				Soothe
				Aessina's Renewal
				Feline Swiftness
				Well-Honed Instincts
				Matted Fur
				Stampeding Roar
				Typhoon
				Ursol's Vortex
				Oakskin
				Instincts of the Claw
				Lycara's Teachings
				Lycara's Teachings
				Lore of the Grove
				Gift of the Wild
				Incapacitating Roar
				Improved Stampeding Roar
				Circle of the Wild
				Symbiotic Relationship
				Heart of the Wild
			]],
			spectalents = [[
				Maul
				Gore
				Survival Instincts
				Persistence
				Dream of Cenarius
				Innate Resolve
				Berserk
				Vulnerable Flesh
				Survival of the Fittest
				Survival of the Fittest
				Reinvigoration
				Reinvigoration
				Scintillating Moonlight
				Scintillating Moonlight
				Soul of the Forest
				Natural Resilience
				Ursoc's Endurance
				Rend and Tear
				Raze
				Lunar Beam
				Ursoc's Fury
				Blood Frenzy
				Moonless Night
				Twin Moonfire
				Harnessed Rage
				Incarnation: Guardian of Ursoc
				Elune's Favored
				Killing Blow
				Ursoc's Guidance
				Galactic Guardian
				Wild Guardian
				Wild Guardian
				Wild Guardian
				Wild Guardian
			]],
			herorighttalents = [[
				Moon Guardian
				Lunar Insight
				Glistening Fur
				Star Cascade
				Stellar Command
				Atmospheric Exposure
				Moondust
				Penumbral Swell
				Lunar Calling
				The Light of Elune
				Lunation
				Bask in Moonlight
				The Eternal Moon
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Guardian (Leveling/Delves)",
			spec = 3,
			hero = "right",
			suggested = true, 
			ident = "druid_guardian_leveling",
			classtalents = [[		
				Rake
				Grievous Wounds
				Ursoc's Spirit
				Remove Corruption
				Killer Instinct
				Killer Instinct
				Ironfur
				Improved Barkskin
				Nurturing Instinct
				Nurturing Instinct
				Primal Fury
				Thick Hide
				Skull Bash
				Natural Recovery
				Astral Influence
				Wild Charge
				Soothe
				Aessina's Renewal
				Starlight Conduit
				Feline Swiftness
				Well-Honed Instincts
				Matted Fur
				Stampeding Roar
				Typhoon
				Ursol's Vortex
				Oakskin
				Instincts of the Claw
				Lycara's Teachings
				Lycara's Teachings
				Lore of the Grove
				Gift of the Wild
				Incapacitating Roar
				Circle of the Wild
				Heart of the Wild
			]],
			spectalents = [[
				Maul
				Gore
				Survival Instincts
				Front of the Pack
				Dream of Cenarius
				Innate Resolve
				Berserk
				Vulnerable Flesh
				Survival of the Fittest
				Survival of the Fittest
				Reinvigoration
				After the Wildfire
				Brambles
				Soul of the Forest
				Natural Resilience
				Reinforced Fur
				Gift of an Ancient Guardian
				Rend and Tear
				Raze
				Lunar Beam
				Flashing Claws
				Flashing Claws
				Blood Frenzy
				Moonless Night
				Twin Moonfire
				Harnessed Rage
				Incarnation: Guardian of Ursoc
				Killing Blow
				Ursoc's Guidance
				Galactic Guardian
				Wild Guardian
				Wild Guardian
				Wild Guardian
				Wild Guardian
			]],
			herorighttalents = [[
				Moon Guardian
				Lunar Insight
				Glistening Fur
				Star Cascade
				Stellar Command
				Atmospheric Exposure
				Moondust
				Penumbral Swell
				Lunar Calling
				The Light of Elune
				Lunation
				Bask in Moonlight
				The Eternal Moon
			]],
			herolefttalents = [[
			]],
		},

		{
			name = "Restoration (Raid)",
			ident = "restoration_raid",
			spec = 4,
			hero = "right",
			classtalents = [[		
				Rake
				Frenzied Regeneration
				Ursoc's Spirit
				Rip
				Verdant Heart
				Killer Instinct
				Improved Barkskin
				Nurturing Instinct
				Nurturing Instinct
				Thick Hide
				Natural Recovery
				Astral Influence
				Tiger Dash
				Soothe
				Aessina's Renewal
				Starlight Conduit
				Feline Swiftness
				Well-Honed Instincts
				Matted Fur
				Matted Fur
				Stampeding Roar
				Lingering Healing
				Ursol's Vortex
				Oakskin
				Perfectly-Honed Instincts
				Lycara's Teachings
				Lycara's Teachings
				Gift of the Wild
				Improved Stampeding Roar
				Symbiotic Relationship
				Forestwalk
				Forestwalk
				Heart of the Wild
				Innervate
			]],
			spectalents = [[
				Lifebloom
				Swiftmend
				Nature's Swiftness
				Omen of Clarity
				Verdant Infusion
				Passing Seasons
				Improved Regrowth
				Soul of the Forest
				Efflorescence
				Tranquility
				Ironbark
				Verdancy
				Lifetreading
				Grove Guardians
				Flourish
				Improved Wild Growth
				Renewing Surge
				Rampant Growth
				Power of the Archdruid
				Improved Swiftmend
				Convoke the Spirits
				Intensity
				Master Shapeshifter
				Cenarius' Guidance
				Nature's Bounty
				Thriving Vegetation
				Abundance
				Nurturing Dormancy
				Photosynthesis
				Germination
				Everbloom
				Everbloom
				Everbloom
				Everbloom
			]],
			herorighttalents = [[
				Hunt Beneath the Open Skies
				Strategic Infusion
				Wildstalker's Power
				Green Thumb
				Lethal Preservation
				Flower Walk
				Bond with Nature
				Bursting Growth
				Root Network
				Patient Custodian
				Implant
				Rampancy
				Vigorous Creepers
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Restoration (Mythic+)",
			ident = "restoration_mythic",
			spec = 4,
			hero = "right",
			classtalents = [[		
				Starfire
				Ursoc's Spirit
				Starsurge
				Verdant Heart
				Moonkin Form
				Improved Barkskin
				Nurturing Instinct
				Nurturing Instinct
				Sunfire
				Thick Hide
				Natural Recovery
				Wild Charge
				Soothe
				Aessina's Renewal
				Starlight Conduit
				Feline Swiftness
				Well-Honed Instincts
				Matted Fur
				Matted Fur
				Stampeding Roar
				Lingering Healing
				Typhoon
				Ursol's Vortex
				Oakskin
				Lycara's Teachings
				Lycara's Teachings
				Gift of the Wild
				Incapacitating Roar
				Ursine Vigor
				Circle of the Heavens
				Symbiotic Relationship
				Forestwalk
				Forestwalk
				Heart of the Wild
			]],
			spectalents = [[
				Lifebloom
				Swiftmend
				Nature's Swiftness
				Omen of Clarity
				Verdant Infusion
				Nature's Splendor
				Improved Regrowth
				Soul of the Forest
				Efflorescence
				Tranquility
				Ironbark
				Verdancy
				Lifetreading
				Grove Guardians
				Improved Ironbark
				Renewing Surge
				Rampant Growth
				Wild Synthesis
				Power of the Archdruid
				Regenerative Heartwood
				Convoke the Spirits
				Intensity
				Master Shapeshifter
				Cenarius' Guidance
				Nature's Bounty
				Thriving Vegetation
				Abundance
				Nurturing Dormancy
				Photosynthesis
				Germination
				Everbloom
				Everbloom
				Everbloom
				Everbloom
			]],
			herorighttalents = [[
				Hunt Beneath the Open Skies
				Strategic Infusion
				Wildstalker's Power
				Green Thumb
				Lethal Preservation
				Flower Walk
				Harmonious Constitution
				Bursting Growth
				Resilient Flourishing
				Patient Custodian
				Implant
				Rampancy
				Vigorous Creepers
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Restoration (Leveling/Delves)",
			spec = 4,
			hero = "right",
			suggested = true, 
			ident = "druid_resto_leveling",
			classtalents = [[		
				Rake
				Grievous Wounds
				Swipe
				Ursoc's Spirit
				Rip
				Verdant Heart
				Maim
				Killer Instinct
				Killer Instinct
				Improved Barkskin
				Nurturing Instinct
				Nurturing Instinct
				Thick Hide
				Natural Recovery
				Tiger Dash
				Soothe
				Aessina's Renewal
				Feline Swiftness
				Well-Honed Instincts
				Matted Fur
				Stampeding Roar
				Lingering Healing
				Typhoon
				Ursol's Vortex
				Oakskin
				Lycara's Teachings
				Lycara's Teachings
				Gift of the Wild
				Incapacitating Roar
				Circle of the Wild
				Forestwalk
				Forestwalk
				Fluid Form
				Heart of the Wild
			]],
			spectalents = [[
				Lifebloom
				Swiftmend
				Nature's Swiftness
				Omen of Clarity
				Verdant Infusion
				Improved Regrowth
				Soul of the Forest
				Tranquil Mind
				Efflorescence
				Tranquility
				Ironbark
				Verdancy
				Lifetreading
				Grove Guardians
				Improved Ironbark
				Renewing Surge
				Rampant Growth
				Wild Synthesis
				Power of the Archdruid
				Improved Swiftmend
				Convoke the Spirits
				Call of the Elder Druid
				Intensity
				Liveliness
				Cenarius' Guidance
				Dream of Cenarius
				Thriving Vegetation
				Thriving Vegetation
				Harmonious Blooming
				Germination
				Everbloom
				Everbloom
				Everbloom
				Everbloom
			]],
			herorighttalents = [[
				Hunt Beneath the Open Skies
				Strategic Infusion
				Wildstalker's Power
				Green Thumb
				Lethal Preservation
				Entangling Vortex
				Harmonious Constitution
				Bursting Growth
				Resilient Flourishing
				Patient Custodian
				Twin Sprouts
				Rampancy
				Vigorous Creepers
			]],
			herolefttalents = [[
			]],
		},
	},

	EVOKER = {
		{
			name = "Augmentation (Raid)",
			ident = "augmentation_raid",
			spec = 3,
			hero = "right",		
			classtalents = [[		
				Expunge
				Natural Convergence
				Heavy Wingbeats
				Verdant Embrace
				Innate Magic
				Innate Magic
				Obsidian Bulwark
				Enkindled
				Enkindled
				Scarlet Adaptation
				Inner Radiance
				Tailwind
				Ancient Flame
				Instinctive Arcana
				Instinctive Arcana
				Tip the Scales
				Inherent Resistance
				Inherent Resistance
				Draconic Legacy
				Extended Flight
				Extended Flight
				Blast Furnace
				Renewing Blaze
				Panacea
				Stretch Time
				Foci of Life
				Rescue
				Source of Magic
				Leaping Flames
				Aerial Mastery
				Twin Guardian
				Potent Mana
				Time Spiral
				Zephyr
			]],
			spectalents = [[
				Ebon Might
				Eruption
				Essence Burst
				Quell
				Ricocheting Pyroclast
				Essence Attunement
				Pupil of Alexstrasza
				Upheaval
				Breath of Eons
				Defy Fate
				Ignition Rush
				Power Nexus
				Volcanism
				Improved Defy Fate
				Blistering Scales
				Prescience
				Tectonic Locus
				Regenerative Chitin
				Momentum Shift
				Fate Mirror
				Hoarded Power
				Anachronism
				Accretion
				Imminent Destruction
				Time Skip
				Inferno's Blessing
				Rumbling Earth
				Plot the Future
				Interwoven Threads
				Mighty Inferno
				Duplicate
				Duplicate
				Duplicate
				Duplicate
			]],
			herorighttalents = [[
				Might of the Black Dragonflight
				Bombardments
				Onslaught
				Command Squadron
				Melt Armor
				Wingleader
				Unrelenting Siege
				Concentrated Power
				Hardened Scales
				Extended Battle
				Slipstream
				Refined Essence
				Maneuverability
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Augmentation (Mythic+)",
			ident = "augmentation_mythic",
			spec = 3,
			hero = "right",		
			classtalents = [[		
				Expunge
				Natural Convergence
				Heavy Wingbeats
				Verdant Embrace
				Innate Magic
				Obsidian Bulwark
				Enkindled
				Enkindled
				Scarlet Adaptation
				Inner Radiance
				Clobbering Sweep
				Cauterizing Flame
				Instinctive Arcana
				Instinctive Arcana
				Tip the Scales
				Inherent Resistance
				Inherent Resistance
				Draconic Legacy
				Extended Flight
				Extended Flight
				Blast Furnace
				Renewing Blaze
				Panacea
				Stretch Time
				Foci of Life
				Rescue
				Source of Magic
				Leaping Flames
				Aerial Mastery
				Twin Guardian
				Potent Mana
				Terror of the Skies
				Spatial Paradox
				Zephyr
			]],
			spectalents = [[
				Ebon Might
				Eruption
				Essence Burst
				Quell
				Ricocheting Pyroclast
				Essence Attunement
				Pupil of Alexstrasza
				Upheaval
				Breath of Eons
				Defy Fate
				Ignition Rush
				Power Nexus
				Volcanism
				Improved Defy Fate
				Blistering Scales
				Prescience
				Tectonic Locus
				Regenerative Chitin
				Momentum Shift
				Fate Mirror
				Hoarded Power
				Anachronism
				Accretion
				Imminent Destruction
				Time Skip
				Inferno's Blessing
				Rumbling Earth
				Plot the Future
				Interwoven Threads
				Mighty Inferno
				Duplicate
				Duplicate
				Duplicate
				Duplicate
			]],
			herorighttalents = [[
				Might of the Black Dragonflight
				Bombardments
				Onslaught
				Command Squadron
				Melt Armor
				Wingleader
				Unrelenting Siege
				Concentrated Power
				Hardened Scales
				Extended Battle
				Slipstream
				Refined Essence
				Maneuverability
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Augmentation (Leveling/Delves)",
			spec = 3,
			hero = "right",
			suggested = true, 
			ident = "evoker_aug_leveling",		
			classtalents = [[		
				Expunge
				Natural Convergence
				Heavy Wingbeats
				Verdant Embrace
				Innate Magic
				Obsidian Bulwark
				Enkindled
				Enkindled
				Scarlet Adaptation
				Inner Radiance
				Clobbering Sweep
				Cauterizing Flame
				Instinctive Arcana
				Instinctive Arcana
				Tip the Scales
				Inherent Resistance
				Inherent Resistance
				Draconic Legacy
				Extended Flight
				Extended Flight
				Blast Furnace
				Renewing Blaze
				Panacea
				Stretch Time
				Foci of Life
				Rescue
				Source of Magic
				Leaping Flames
				Aerial Mastery
				Twin Guardian
				Potent Mana
				Terror of the Skies
				Time Spiral
				Zephyr
			]],
			spectalents = [[
				Ebon Might
				Eruption
				Essence Burst
				Quell
				Ricocheting Pyroclast
				Essence Attunement
				Pupil of Alexstrasza
				Upheaval
				Breath of Eons
				Defy Fate
				Ignition Rush
				Power Nexus
				Volcanism
				Improved Defy Fate
				Blistering Scales
				Prescience
				Tectonic Locus
				Regenerative Chitin
				Momentum Shift
				Fate Mirror
				Hoarded Power
				Anachronism
				Accretion
				Imminent Destruction
				Time Skip
				Inferno's Blessing
				Rumbling Earth
				Plot the Future
				Interwoven Threads
				Mighty Inferno
				Duplicate
				Duplicate
				Duplicate
				Duplicate
			]],
			herorighttalents = [[
				Might of the Black Dragonflight
				Bombardments
				Onslaught
				Command Squadron
				Melt Armor
				Wingleader
				Unrelenting Siege
				Concentrated Power
				Hardened Scales
				Extended Battle
				Slipstream
				Refined Essence
				Maneuverability
			]],
			herolefttalents = [[
			]],
		},

		{
			name = "Devastation (Raid)",
			ident = "devastation_raid",
			spec = 1,
			hero = "right",		
			classtalents = [[		
				Obsidian Scales
				Expunge
				Heavy Wingbeats
				Verdant Embrace
				Innate Magic
				Innate Magic
				Obsidian Bulwark
				Enkindled
				Enkindled
				Scarlet Adaptation
				Inner Radiance
				Instinctive Arcana
				Instinctive Arcana
				Tip the Scales
				Protracted Talons
				Inherent Resistance
				Inherent Resistance
				Draconic Legacy
				Extended Flight
				Extended Flight
				Regenerative Magic
				Blast Furnace
				Renewing Blaze
				Panacea
				Stretch Time
				Unravel
				Rescue
				Source of Magic
				Leaping Flames
				Aerial Mastery
				Twin Guardian
				Potent Mana
				Time Spiral
				Zephyr
			]],
			spectalents = [[
				Pyre
				Ruby Essence Burst
				Azure Essence Burst
				Lay Waste
				Quell
				Eternity Surge
				Dragonrage
				Azure Sweep
				Arcane Intensity
				Arcane Intensity
				Animosity
				Essence Attunement
				Heat Wave
				Heat Wave
				Honed Aggression
				Eternity's Span
				Event Horizon
				Catalyze
				Tyranny
				Shattering Stars
				Burnout
				Onyx Legacy
				Spellweaver's Dominance
				Imminent Destruction
				Titanic Wrath
				Azure Celerity
				Power Swell
				Strafing Run
				Causality
				Scintillation
				Rising Fury
				Rising Fury
				Rising Fury
				Rising Fury
			]],
			herorighttalents = [[
				Might of the Black Dragonflight
				Bombardments
				Onslaught
				Command Squadron
				Melt Armor
				Wingleader
				Unrelenting Siege
				Concentrated Power
				Hardened Scales
				Extended Battle
				Slipstream
				Refined Essence
				Maneuverability
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Devastation (Mythic+)",
			ident = "devastation_mythic",
			spec = 1,
			hero = "right",		
			classtalents = [[		
				Obsidian Scales
				Expunge
				Heavy Wingbeats
				Verdant Embrace
				Innate Magic
				Innate Magic
				Obsidian Bulwark
				Scarlet Adaptation
				Inner Radiance
				Clobbering Sweep
				Cauterizing Flame
				Instinctive Arcana
				Instinctive Arcana
				Tip the Scales
				Protracted Talons
				Inherent Resistance
				Inherent Resistance
				Draconic Legacy
				Extended Flight
				Extended Flight
				Regenerative Magic
				Blast Furnace
				Renewing Blaze
				Panacea
				Stretch Time
				Oppressing Roar
				Rescue
				Source of Magic
				Leaping Flames
				Aerial Mastery
				Potent Mana
				Terror of the Skies
				Time Spiral
				Zephyr
			]],
			spectalents = [[
				Pyre
				Ruby Essence Burst
				Azure Essence Burst
				Lay Waste
				Quell
				Eternity Surge
				Volatility
				Volatility
				Dragonrage
				Azure Sweep
				Arcane Intensity
				Arcane Intensity
				Animosity
				Essence Attunement
				Honed Aggression
				Honed Aggression
				Eternity's Span
				Event Horizon
				Tyranny
				Charged Blast
				Burnout
				Onyx Legacy
				Spellweaver's Dominance
				Imminent Destruction
				Titanic Wrath
				Azure Celerity
				Power Swell
				Strafing Run
				Causality
				Scintillation
				Rising Fury
				Rising Fury
				Rising Fury
				Rising Fury
			]],
			herorighttalents = [[
				Might of the Black Dragonflight
				Bombardments
				Onslaught
				Command Squadron
				Melt Armor
				Wingleader
				Unrelenting Siege
				Concentrated Power
				Hardened Scales
				Extended Battle
				Slipstream
				Refined Essence
				Maneuverability
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Devastation (Leveling/Delves)",
			spec = 1,
			hero = "right",
			suggested = right, 
			ident = "evoker_deva_leveling",		
			classtalents = [[		
				Obsidian Scales
				Expunge
				Heavy Wingbeats
				Verdant Embrace
				Forger of Mountains
				Innate Magic
				Innate Magic
				Obsidian Bulwark
				Scarlet Adaptation
				Inner Radiance
				Cauterizing Flame
				Ancient Flame
				Instinctive Arcana
				Instinctive Arcana
				Tip the Scales
				Protracted Talons
				Inherent Resistance
				Inherent Resistance
				Draconic Legacy
				Extended Flight
				Extended Flight
				Regenerative Magic
				Blast Furnace
				Renewing Blaze
				Walloping Blow
				Panacea
				Stretch Time
				Oppressing Roar
				Foci of Life
				Strike from Above
				Leaping Flames
				Aerial Mastery
				Terror of the Skies
				Time Spiral
			]],
			spectalents = [[
				Pyre
				Ruby Essence Burst
				Azure Essence Burst
				Lay Waste
				Quell
				Eternity Surge
				Dragonrage
				Azure Sweep
				Arcane Intensity
				Arcane Intensity
				Animosity
				Essence Attunement
				Heat Wave
				Heat Wave
				Eternity's Span
				Eye of Infinity
				Catalyze
				Tyranny
				Charged Blast
				Shattering Stars
				Burnout
				Onyx Legacy
				Spellweaver's Dominance
				Imminent Destruction
				Titanic Wrath
				Azure Celerity
				Power Swell
				Strafing Run
				Causality
				Scintillation
				Rising Fury
				Rising Fury
				Rising Fury
				Rising Fury
			]],
			herorighttalents = [[
				Might of the Black Dragonflight
				Bombardments
				Onslaught
				Command Squadron
				Melt Armor
				Wingleader
				Unrelenting Siege
				Concentrated Power
				Hardened Scales
				Extended Battle
				Slipstream
				Refined Essence
				Maneuverability
			]],
			herolefttalents = [[
			]],
		},

		{
			name = "Preservation (Raid)",
			ident = "preservation_raid",
			spec = 2,
			hero = "left",		
			classtalents = [[		
				Obsidian Scales
				Heavy Wingbeats
				Innate Magic
				Innate Magic
				Obsidian Bulwark
				Scarlet Adaptation
				Inner Radiance
				Cauterizing Flame
				Ancient Flame
				Instinctive Arcana
				Instinctive Arcana
				Tip the Scales
				Attuned to the Dream
				Attuned to the Dream
				Protracted Talons
				Inherent Resistance
				Inherent Resistance
				Draconic Legacy
				Bountiful Bloom
				Regenerative Magic
				Blast Furnace
				Exuberance
				Renewing Blaze
				Panacea
				Stretch Time
				Rescue
				Lush Growth
				Lush Growth
				Source of Magic
				Leaping Flames
				Aerial Mastery
				Potent Mana
				Spatial Paradox
				Zephyr
			]],
			spectalents = [[
				Echo
				Dream Breath
				Reversion
				Temporal Compression
				Essence Burst
				Rewind
				Lifebind
				Essence Attunement
				Time Dilation
				Unshakable
				Golden Hour
				Temporal Anomaly
				Spiritual Clarity
				Exhilarating Burst
				Time Lord
				Time Lord
				Nozdormu's Teachings
				Call of Ysera
				Dream Flight
				Grace Period
				Spark of Insight
				Inner Flame
				Temporal Artificer
				Renewing Breath
				Renewing Breath
				Timeless Magic
				Timeless Magic
				Dream Simulacrum
				Twin Echoes
				Tempo Charged
				Merithra's Blessing
				Merithra's Blessing
				Merithra's Blessing
				Merithra's Blessing
			]],
			herolefttalents = [[
				Warp
				Temporal Burst
				Chronoboon
				Reverberations
				Temporality
				Nozdormu Adept
				Chronal Dynamo
				Primacy
				Time Convergence
				Instability Matrix
				Overclock
				Golden Opportunity
				Afterimage
			]],
			herorighttalents = [[
			]],
		},
		{
			name = "Preservation (Mythic+)",
			ident = "preservation_mythic",
			spec = 2,
			hero = "left",		
			classtalents = [[		
				Landslide
				Obsidian Scales
				Natural Convergence
				Heavy Wingbeats
				Obsidian Bulwark
				Enkindled
				Enkindled
				Scarlet Adaptation
				Inner Radiance
				Clobbering Sweep
				Cauterizing Flame
				Ancient Flame
				Tip the Scales
				Attuned to the Dream
				Attuned to the Dream
				Sleep Walk
				Inherent Resistance
				Inherent Resistance
				Draconic Legacy
				Extended Flight
				Extended Flight
				Bountiful Bloom
				Blast Furnace
				Renewing Blaze
				Panacea
				Oppressing Roar
				Foci of Life
				Rescue
				Lush Growth
				Lush Growth
				Leaping Flames
				Overawe
				Aerial Mastery
				Zephyr
			]],
			spectalents = [[
				Echo
				Dream Breath
				Reversion
				Temporal Compression
				Essence Burst
				Rewind
				Lifebind
				Essence Attunement
				Time Dilation
				Unshakable
				Golden Hour
				Just in Time
				Temporal Anomaly
				Spiritual Clarity
				Time Lord
				Time Lord
				Nozdormu's Teachings
				Call of Ysera
				Stasis
				Grace Period
				Life-Giver's Flame
				Energy Loop
				Renewing Breath
				Renewing Breath
				Lifeforce Mender
				Timeless Magic
				Timeless Magic
				Dream Simulacrum
				Titan's Gift
				Twin Echoes
				Merithra's Blessing
				Merithra's Blessing
				Merithra's Blessing
				Merithra's Blessing
			]],
			herolefttalents = [[
				Warp
				Temporal Burst
				Chronoboon
				Reverberations
				Temporality
				Nozdormu Adept
				Chronal Dynamo
				Primacy
				Time Convergence
				Instability Matrix
				Overclock
				Golden Opportunity
				Afterimage
			]],
			herorighttalents = [[
			]],
		},
		{
			name = "Preservation (Leveling/Delves)",
			spec = 2,
			hero = "left",
			suggested = true, 
			ident = "evoker_pres_leveling",		
			classtalents = [[		
				Obsidian Scales
				Heavy Wingbeats
				Innate Magic
				Innate Magic
				Obsidian Bulwark
				Enkindled
				Enkindled
				Scarlet Adaptation
				Inner Radiance
				Cauterizing Flame
				Instinctive Arcana
				Instinctive Arcana
				Tip the Scales
				Attuned to the Dream
				Attuned to the Dream
				Protracted Talons
				Inherent Resistance
				Inherent Resistance
				Draconic Legacy
				Extended Flight
				Extended Flight
				Regenerative Magic
				Blast Furnace
				Exuberance
				Renewing Blaze
				Panacea
				Stretch Time
				Foci of Life
				Lush Growth
				Lush Growth
				Strike from Above
				Leaping Flames
				Aerial Mastery
				Terror of the Skies
			]],
			spectalents = [[
				Echo
				Dream Breath
				Reversion
				Temporal Compression
				Essence Burst
				Rewind
				Lifebind
				Essence Attunement
				Time Dilation
				Unshakable
				Font of Magic
				Golden Hour
				Delay Harm
				Spiritual Clarity
				Time Lord
				Time Lord
				Flow State
				Flow State
				Call of Ysera
				Stasis
				Grace Period
				Life-Giver's Flame
				Temporal Artificer
				Energy Loop
				Lifeforce Mender
				Lifeforce Mender
				Timeless Magic
				Timeless Magic
				Lifespark
				Tempo Charged
				Merithra's Blessing
				Merithra's Blessing
				Merithra's Blessing
				Merithra's Blessing
			]],
			herolefttalents = [[
				Warp
				Temporal Burst
				Chronoboon
				Reverberations
				Motes of Acceleration
				Nozdormu Adept
				Chronal Dynamo
				Primacy
				Time Convergence
				Instability Matrix
				Overclock
				Golden Opportunity
				Afterimage
			]],
			herorighttalents = [[
			]],
		},
	},

	HUNTER = {
		{
			name = "Beast Mastery (Raid)",
			ident = "beast_mastery_raid",
			spec = 1,
			hero = "right",
			classtalents = [[		
				Rejuvenating Wind
				Posthaste
				Natural Mending
				Natural Mending
				Padded Armor
				Hunter's Avoidance
				Combat Experience
				Improved Aspect of the Cheetah
				Precision Strikes
				Counter Shot
				Serrated Tips
				Serrated Tips
				Pathfinding
				Disruptive Rounds
				Improved Feign Death
				Improved Feign Death
				Trigger Finger
				Trigger Finger
				Touch of Grass
				Touch of Grass
				Improved Aspect of the Turtle
				Specialized Arsenal
				Scout's Instincts
				Shell Wall
				Intimidation
				Lone Survivor
				Catlike Reflexes
				Binding Shot
				Born To Be Wild
				Born To Be Wild
				Keen Eyesight
				Keen Eyesight
				Guardian's Hide
				Unnatural Causes
			]],
			spectalents = [[
				Kill Command
				Animal Companion
				Barbed Shot
				Alpha Predator
				Dire Beast
				Stomp
				War Orders
				Bestial Wrath
				Cobra Shot
				Scent of Blood
				Thundering Hooves
				Go for the Throat
				The Beast Within
				Thrill of the Hunt
				Thrill of the Hunt
				Pack Tactics
				Barbed Scales
				Dire Command
				Jagged Wounds
				Serpentine Strikes
				Cobra Senses
				Dire Frenzy
				Dire Frenzy
				Frenzy
				Frenzy
				Huntmaster's Call
				Bloodshed
				Savagery
				Wildspeaker
				Bloody Frenzy
				Nature's Ally
				Nature's Ally
				Nature's Ally
				Nature's Ally
			]],
			herorighttalents = [[
				Pack Mentality
				Dire Summons
				Better Together
				Slicked Shoes
				Ursine Fury
				Fury of the Wyvern
				Hogstrider
				Lethal Barbs
				No Mercy
				Shell Cover
				Wyvern's Gaze
				Sharpened Fangs
				Stampede!
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Beast Mastery (Mythic+)",
			ident = "beast_mastery_mythic",
			spec = 1,
			hero = "right",
			classtalents = [[		
				Rejuvenating Wind
				Posthaste
				Natural Mending
				Natural Mending
				Padded Armor
				Hunter's Avoidance
				Combat Experience
				Improved Aspect of the Cheetah
				Precision Strikes
				Counter Shot
				Serrated Tips
				Serrated Tips
				Tranquilizing Shot
				Disruptive Rounds
				Improved Feign Death
				Kodo Tranquilizer
				Trigger Finger
				Trigger Finger
				Touch of Grass
				Touch of Grass
				Improved Aspect of the Turtle
				Specialized Arsenal
				Scout's Instincts
				Intimidation
				Lone Survivor
				Binding Shot
				Guttural Roar
				Born To Be Wild
				Born To Be Wild
				Keen Eyesight
				Keen Eyesight
				Emergency Salve
				Guardian's Hide
				Unnatural Causes
			]],
			spectalents = [[
				Kill Command
				Animal Companion
				Barbed Shot
				Alpha Predator
				Dire Beast
				Stomp
				War Orders
				Wild Thrash
				Bestial Wrath
				Cobra Shot
				Beast Cleave
				Scent of Blood
				Thundering Hooves
				Go for the Throat
				Laceration
				Kill Cleave
				The Beast Within
				Pack Tactics
				Barbed Scales
				Dire Cleave
				Dire Command
				Dire Frenzy
				Dire Frenzy
				Frenzy
				Frenzy
				Huntmaster's Call
				Bloodshed
				Savagery
				Wildspeaker
				Wild Instincts
				Nature's Ally
				Nature's Ally
				Nature's Ally
				Nature's Ally
			]],
			herolefttalents = [[
				Bleak Arrows
				Soul Drinker
				Bleak Powder
				Corpsecaller
				Through the Eyes
				Smoke Screen
				Shadow Dagger
				Wailing Dead
				Blighted Quiver
				The Bell Tolls
				Umbral Reach
				Pact of the Hollow
				Withering Fire
			]],
			herorighttalents = [[
			]],
		},
		{
			name = "Beast Mastery (Leveling/Delves)",
			spec = 1,
			hero = "right",
			suggested = true, 
			ident = "hunt_bm_leveling",
			classtalents = [[		
				Rejuvenating Wind
				Posthaste
				Natural Mending
				Natural Mending
				Padded Armor
				Hunter's Avoidance
				Wilderness Medicine
				Combat Experience
				Improved Aspect of the Cheetah
				Precision Strikes
				Counter Shot
				Serrated Tips
				Serrated Tips
				Disruptive Rounds
				Misdirection
				Trigger Finger
				Trigger Finger
				Touch of Grass
				Touch of Grass
				Camouflage
				No Hard Feelings
				Improved Aspect of the Turtle
				Specialized Arsenal
				Scout's Instincts
				Intimidation
				Lone Survivor
				Binding Shot
				Trailblazer
				Born To Be Wild
				Born To Be Wild
				Keen Eyesight
				Keen Eyesight
				Guardian's Hide
				Unnatural Causes
			]],
			spectalents = [[
				Kill Command
				Animal Companion
				Barbed Shot
				Alpha Predator
				Stomp
				War Orders
				Wild Thrash
				Bestial Wrath
				Cobra Shot
				Beast Cleave
				Scent of Blood
				Thundering Hooves
				Go for the Throat
				Kill Cleave
				Training Expert
				Training Expert
				The Beast Within
				Pack Tactics
				Barbed Scales
				Jagged Wounds
				Snakeskin Quiver
				Frenzy
				Frenzy
				Killer Instinct
				Killer Instinct
				Bloodshed
				Savagery
				Master Handler
				Wild Instincts
				Piercing Fangs
				Nature's Ally
				Nature's Ally
				Nature's Ally
				Nature's Ally
			]],
			herorighttalents = [[
				Pack Mentality
				Dire Summons
				Better Together
				Slicked Shoes
				Sharpened Claws
				Fury of the Wyvern
				Hogstrider
				Lethal Barbs
				No Mercy
				Shell Cover
				Hoof and Blade
				Sharpened Fangs
				Stampede!
			]],
			herolefttalents = [[
			]],
		},

		{
			name = "Marksmanship (Raid)",
			ident = "marksmanship_raid",
			spec = 2,
			hero = "right",
			classtalents = [[		
				Rejuvenating Wind
				Posthaste
				Natural Mending
				Natural Mending
				Padded Armor
				Hunter's Avoidance
				Combat Experience
				Improved Aspect of the Cheetah
				Precision Strikes
				Counter Shot
				Serrated Tips
				Serrated Tips
				Pathfinding
				Improved Feign Death
				Improved Feign Death
				Misdirection
				Trigger Finger
				Trigger Finger
				Touch of Grass
				Touch of Grass
				Improved Aspect of the Turtle
				Specialized Arsenal
				Scout's Instincts
				Lone Survivor
				Catlike Reflexes
				Binding Shot
				Trailblazer
				Born To Be Wild
				Born To Be Wild
				Keen Eyesight
				Keen Eyesight
				Horsehair Tether
				Guardian's Hide
				Unnatural Causes
			]],
			spectalents = [[
				Aimed Shot
				Rapid Fire
				Precise Shots
				Quick Draw
				Lock and Load
				Surging Shots
				Avian Specialization
				Aspect of the Hydra
				On Target
				Penetrating Shots
				Tenacious
				Master Marksman
				Kill Shot
				No Scope
				Trueshot
				Critical Precision
				Headshot
				Bullseye
				Feathered Frenzy
				Small Game Hunter
				Unerring Vision
				Eagle's Accuracy
				Eagle's Accuracy
				Bulletstorm
				Tensile Bowstring
				Volley
				Focus Fire
				Incendiary Ammunition
				Double Tap
				Unload
				Take Aim
				Take Aim
				Take Aim
				Take Aim
			]],
			herorighttalents = [[
				Don't Look Back
				Moon's Blessing
				Sanctified Armaments
				Moonlight Chakram
				Stargazer
				Can't Miss, Won't Miss
				Invigorating Pulse
				Stalk and Strike
				Arcane Talons
				Lunar Calling
				Conditioning
				Radiant Edge
				Lunar Storm
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Marksmanship (Mythic+)",
			ident = "marksmanship_mythic",
			spec = 2,
			hero = "right",
			classtalents = [[		
				Rejuvenating Wind
				Posthaste
				Natural Mending
				Natural Mending
				Padded Armor
				Hunter's Avoidance
				Combat Experience
				Improved Aspect of the Cheetah
				Precision Strikes
				Counter Shot
				Serrated Tips
				Serrated Tips
				Tranquilizing Shot
				Pathfinding
				Improved Feign Death
				Improved Feign Death
				Misdirection
				Kodo Tranquilizer
				Trigger Finger
				Trigger Finger
				Touch of Grass
				Touch of Grass
				Improved Aspect of the Turtle
				Specialized Arsenal
				Intimidation
				Lone Survivor
				Guttural Roar
				Born To Be Wild
				Born To Be Wild
				Keen Eyesight
				Keen Eyesight
				Emergency Salve
				Guardian's Hide
				Unnatural Causes
			]],
			spectalents = [[
				Aimed Shot
				Rapid Fire
				Precise Shots
				Quick Draw
				Lock and Load
				Surging Shots
				Avian Specialization
				Trick Shots
				Penetrating Shots
				Tenacious
				Master Marksman
				Light Ammo
				Kill Shot
				No Scope
				Trueshot
				Explosive Shot
				Bullseye
				Feathered Frenzy
				Precision Detonation
				Shrapnel Shot
				Unerring Vision
				Eagle's Accuracy
				Eagle's Accuracy
				Bulletstorm
				Tensile Bowstring
				Volley
				Focus Fire
				Incendiary Ammunition
				Double Tap
				Unload
				Take Aim
				Take Aim
				Take Aim
				Take Aim
			]],
			herorighttalents = [[
				Don't Look Back
				Moon's Blessing
				Sanctified Armaments
				Moonlight Chakram
				Stargazer
				Can't Miss, Won't Miss
				Invigorating Pulse
				Stalk and Strike
				Arcane Talons
				Lunar Calling
				Conditioning
				Radiant Edge
				Lunar Storm
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Marksmanship (Leveling/Delves)",
			spec = 2,
			hero = "right",
			suggested = true, 
			ident = "hunt_mm_leveling",
			classtalents = [[		
				Rejuvenating Wind
				Posthaste
				Natural Mending
				Padded Armor
				Hunter's Avoidance
				Combat Experience
				Improved Aspect of the Cheetah
				Precision Strikes
				Counter Shot
				Serrated Tips
				Serrated Tips
				Tranquilizing Shot
				Pathfinding
				Improved Feign Death
				Improved Feign Death
				Misdirection
				Kodo Tranquilizer
				Trigger Finger
				Trigger Finger
				Touch of Grass
				Touch of Grass
				Camouflage
				Improved Aspect of the Turtle
				Specialized Arsenal
				Intimidation
				Lone Survivor
				Guttural Roar
				Born To Be Wild
				Born To Be Wild
				Keen Eyesight
				Keen Eyesight
				Emergency Salve
				Guardian's Hide
				Unnatural Causes
			]],
			spectalents = [[
				Aimed Shot
				Rapid Fire
				Precise Shots
				Quick Draw
				Lock and Load
				Surging Shots
				Unbreakable Bond
				Aspect of the Hydra
				Penetrating Shots
				Cunning
				Master Marksman
				Light Ammo
				Kill Shot
				No Scope
				Trueshot
				Explosive Shot
				Bullseye
				Feathered Frenzy
				Precision Detonation
				Shrapnel Shot
				Unerring Vision
				Eagle's Accuracy
				Eagle's Accuracy
				Bulletstorm
				Tensile Bowstring
				Volley
				Focus Fire
				Incendiary Ammunition
				Double Tap
				Unload
				Take Aim
				Take Aim
				Take Aim
				Take Aim
			]],
			herorighttalents = [[
				Don't Look Back
				Moon's Blessing
				Sanctified Armaments
				Moonlight Chakram
				Stargazer
				Can't Miss, Won't Miss
				Invigorating Pulse
				Stalk and Strike
				Arcane Talons
				Lunar Calling
				Conditioning
				Radiant Edge
				Lunar Storm
			]],
			herolefttalents = [[
			]],
		},

		{
			name = "Survival (Raid)",
			ident = "survival_raid",
			spec = 3,
			hero = "left",
			classtalents = [[		
				Rejuvenating Wind
				Posthaste
				Natural Mending
				Padded Armor
				Hunter's Avoidance
				Combat Experience
				Improved Aspect of the Cheetah
				Precision Strikes
				Muzzle
				Serrated Tips
				Serrated Tips
				Tranquilizing Shot
				Pathfinding
				Disruptive Rounds
				Misdirection
				Trigger Finger
				Trigger Finger
				Touch of Grass
				Touch of Grass
				Camouflage
				Improved Aspect of the Turtle
				Specialized Arsenal
				Scout's Instincts
				Shell Wall
				Lone Survivor
				Catlike Reflexes
				Trailblazer
				Born To Be Wild
				Born To Be Wild
				Keen Eyesight
				Keen Eyesight
				Emergency Salve
				Guardian's Hide
				Unnatural Causes
			]],
			spectalents = [[
				Kill Command
				Wildfire Bomb
				Raptor Strike
				Guerrilla Tactics
				Tip of the Spear
				Lunge
				Boomstick
				Strike as One
				Shrapnel Bomb
				Bloodseeker
				Quick Reload
				Flanker's Advantage
				Mongoose Fury
				Mongoose Rounds
				Shellshock
				Sic 'Em
				Bloody Claws
				Bonding
				Sweeping Spear
				Sweeping Spear
				Vulnerability
				Takedown
				Killer Companion
				Killer Companion
				Twin Fangs
				Savagery
				Savagery
				Wildfire Infusion
				Flanked
				Primal Surge
				Raptor Swipe
				Raptor Swipe
				Raptor Swipe
				Raptor Swipe
			]],
			herolefttalents = [[
				Pack Mentality
				Dire Summons
				Better Together
				Masterful Call
				Ursine Fury
				Fury of the Wyvern
				Hogstrider
				Lethal Barbs
				No Mercy
				Shell Cover
				Wyvern's Gaze
				Sharpened Fangs
				Stampede!
			]],
			herorighttalents = [[
			]],
		},
		{
			name = "Survival (Mythic+)",
			ident = "survival_mythic",
			spec = 3,
			hero = "left",
			classtalents = [[		
				Rejuvenating Wind
				Posthaste
				Natural Mending
				Natural Mending
				Padded Armor
				Hunter's Avoidance
				Combat Experience
				Improved Aspect of the Cheetah
				Precision Strikes
				Muzzle
				Serrated Tips
				Serrated Tips
				Tranquilizing Shot
				Pathfinding
				Disruptive Rounds
				Misdirection
				Trigger Finger
				Trigger Finger
				Touch of Grass
				Touch of Grass
				Improved Aspect of the Turtle
				Specialized Arsenal
				Scout's Instincts
				Intimidation
				Lone Survivor
				Binding Shot
				Territorial Instincts
				Born To Be Wild
				Born To Be Wild
				Keen Eyesight
				Keen Eyesight
				Emergency Salve
				Guardian's Hide
				Unnatural Causes
			]],
			spectalents = [[
				Kill Command
				Wildfire Bomb
				Raptor Strike
				Guerrilla Tactics
				Tip of the Spear
				Lunge
				Boomstick
				Strike as One
				Shrapnel Bomb
				Bloodseeker
				Quick Reload
				Two Against Many
				Mongoose Fury
				Mongoose Rounds
				Shellshock
				Sic 'Em
				Bloody Claws
				Bonding
				Sweeping Spear
				Sweeping Spear
				Vulnerability
				Takedown
				Killer Companion
				Killer Companion
				Savagery
				Savagery
				Wildfire Infusion
				Flanked
				Lethal Calibration
				Primal Surge
				Raptor Swipe
				Raptor Swipe
				Raptor Swipe
				Raptor Swipe
			]],
			herolefttalents = [[
				Pack Mentality
				Dire Summons
				Better Together
				Slicked Shoes
				Sharpened Claws
				Fury of the Wyvern
				Hogstrider
				Lethal Barbs
				No Mercy
				Shell Cover
				Wyvern's Gaze
				Sharpened Fangs
				Stampede!
			]],
			herorighttalents = [[
			]],
		},
		{
			name = "Survival (Leveling/Delves)",
			spec = 3,
			hero = "left",
			suggested = true, 
			ident = "hunt_surv_leveling",
			classtalents = [[		
				Rejuvenating Wind
				Posthaste
				Natural Mending
				Natural Mending
				Padded Armor
				Hunter's Avoidance
				Wilderness Medicine
				Combat Experience
				Improved Aspect of the Cheetah
				Precision Strikes
				Muzzle
				Serrated Tips
				Serrated Tips
				Tranquilizing Shot
				Disruptive Rounds
				Improved Feign Death
				Misdirection
				Trigger Finger
				Trigger Finger
				Touch of Grass
				Touch of Grass
				Camouflage
				No Hard Feelings
				Improved Aspect of the Turtle
				Specialized Arsenal
				Intimidation
				Lone Survivor
				Born To Be Wild
				Born To Be Wild
				Keen Eyesight
				Keen Eyesight
				Emergency Salve
				Guardian's Hide
				Unnatural Causes
			]],
			spectalents = [[
				Kill Command
				Wildfire Bomb
				Raptor Strike
				Guerrilla Tactics
				Tip of the Spear
				Lunge
				Boomstick
				Strike as One
				Shrapnel Bomb
				Bloodseeker
				Quick Reload
				Two Against Many
				Mongoose Fury
				Mongoose Rounds
				Shellshock
				Sic 'Em
				Bloody Claws
				Bonding
				Sweeping Spear
				Sweeping Spear
				Vulnerability
				Takedown
				Killer Companion
				Killer Companion
				Savagery
				Savagery
				Wildfire Infusion
				Flanked
				Lethal Calibration
				Primal Surge
				Raptor Swipe
				Raptor Swipe
				Raptor Swipe
				Raptor Swipe
			]],
			herolefttalents = [[
				Pack Mentality
				Dire Summons
				Better Together
				Slicked Shoes
				Sharpened Claws
				Fury of the Wyvern
				Hogstrider
				Lethal Barbs
				No Mercy
				Shell Cover
				Wyvern's Gaze
				Sharpened Fangs
				Stampede!
			]],
			herorighttalents = [[
			]],
		},
	},

	MAGE = {
		{
			name = "Arcane (Raid)",
			ident = "arcane_raid",
			spec = 1,
			hero = "left",
			classtalents = [[		
				Alter Time
				Ice Block
				Time Walk
				Master of Time
				Master of Time
				Winter's Protection
				Winter's Protection
				Arcane Warding
				Arcane Warding
				Inspired Intellect
				Mirror Image
				Quick Witted
				Supernova
				Remove Curse
				Shimmer
				Overflowing Energy
				Greater Invisibility
				Captured Thoughts
				Tome of Rhonin
				Tome of Antonidas
				Incantation of Swiftness
				Incantation of Swiftness
				Master of Escape
				Charm of Aegwynn
				Brainstorm
				Flow of Time
				Mana Confluence
				Charm of Medivh
				Permafrost Bauble
				Energized Barriers
				Barrier Diffusion
				Ice Cold
				Spatial Manipulation
				Improved Prismatic Barrier
			]],
			spectalents = [[
				Arcane Missiles
				Concentrated Power
				Arcane Salvo
				Amplification
				Improved Clearcasting
				Arcing Cleave
				Arcane Surge
				Arcane Orb
				Presence of Mind
				Mana Bomb
				Arcane Familiar
				Charged Orb
				Intuition
				Touch of the Magi
				Energized Familiar
				Expanded Mind
				Consortium's Bauble
				Arcane Tempo
				Aegwynn's Technique
				Impetus
				Mana Adept
				Enlightened
				Illuminated Thoughts
				Prodigious Savant
				Prodigious Savant
				Eureka
				Arcane Singularity
				Arcane Singularity
				Orb Mastery
				Orb Barrage
				Touch of the Archmage
				Touch of the Archmage
				Touch of the Archmage
				Touch of the Archmage
			]],
			herolefttalents = [[
				Splintering Sorcery
				Augury Abounds
				Force of Will
				Splintering Orbs
				Attuned Familiar
				Slippery Slinging
				Controlled Instincts
				Reactive Barrier
				Infused Splinters
				Archmage's Wrath
				Signature Spell
				Spellfrost Teachings
				Polished Focus
				Splinterstorm
			]],
			herorighttalents = [[
			]],
		},
		{
			name = "Arcane (Mythic+)",
			ident = "arcane_mythic",
			spec = 1,
			hero = "left",
			classtalents = [[		
				Alter Time
				Ice Block
				Time Walk
				Master of Time
				Master of Time
				Winter's Protection
				Winter's Protection
				Arcane Warding
				Arcane Warding
				Inspired Intellect
				Mirror Image
				Spellsteal
				Quick Witted
				Supernova
				Remove Curse
				Shimmer
				Overflowing Energy
				Greater Invisibility
				Tome of Rhonin
				Tome of Antonidas
				Incantation of Swiftness
				Incantation of Swiftness
				Master of Escape
				Charm of Aegwynn
				Brainstorm
				Flow of Time
				Mana Confluence
				Charm of Medivh
				Permafrost Bauble
				Energized Barriers
				Barrier Diffusion
				Ice Cold
				Spatial Manipulation
				Improved Prismatic Barrier
			]],
			spectalents = [[
				Arcane Missiles
				Concentrated Power
				Arcane Salvo
				Amplification
				Improved Clearcasting
				Arcing Cleave
				Arcane Pulse
				Arcane Surge
				Arcane Orb
				Reverberate
				Arcane Familiar
				Charged Orb
				Intuition
				Touch of the Magi
				Energized Familiar
				Expanded Mind
				Arcane Tempo
				Aegwynn's Technique
				Resonance
				Impetus
				Mana Adept
				Enlightened
				Illuminated Thoughts
				Prodigious Savant
				Prodigious Savant
				Eureka
				Arcane Singularity
				Arcane Singularity
				Orb Mastery
				Orb Barrage
				Touch of the Archmage
				Touch of the Archmage
				Touch of the Archmage
				Touch of the Archmage
			]],
			herolefttalents = [[
				Augury Abounds
				Force of Will
				Splintering Orbs
				Attuned Familiar
				Slippery Slinging
				Controlled Instincts
				Reactive Barrier
				Infused Splinters
				Archmage's Wrath
				Signature Spell
				Spellfrost Teachings
				Polished Focus
				Splinterstorm
			]],
			herorighttalents = [[
			]],
		},
		{
			name = "Arcane (Leveling/Delves)",
			spec = 1,
			hero = "left",
			suggested = true, 
			ident = "mage_arcane_leveling",
			classtalents = [[		
				Alter Time
				Ice Block
				Time Walk
				Master of Time
				Master of Time
				Winter's Protection
				Winter's Protection
				Arcane Warding
				Arcane Warding
				Inspired Intellect
				Mirror Image
				Spellsteal
				Quick Witted
				Supernova
				Remove Curse
				Shimmer
				Overflowing Energy
				Greater Invisibility
				Tome of Rhonin
				Tome of Antonidas
				Incantation of Swiftness
				Incantation of Swiftness
				Master of Escape
				Charm of Aegwynn
				Brainstorm
				Flow of Time
				Mana Confluence
				Charm of Medivh
				Permafrost Bauble
				Energized Barriers
				Barrier Diffusion
				Ice Cold
				Spatial Manipulation
				Improved Prismatic Barrier
			]],
			spectalents = [[
				Arcane Missiles
				Concentrated Power
				Arcane Salvo
				Amplification
				Improved Clearcasting
				Arcing Cleave
				Arcane Pulse
				Arcane Surge
				Arcane Orb
				Reverberate
				Arcane Familiar
				Charged Orb
				Intuition
				Touch of the Magi
				Energized Familiar
				Expanded Mind
				Arcane Tempo
				Aegwynn's Technique
				Resonance
				Impetus
				Mana Adept
				Enlightened
				Illuminated Thoughts
				Prodigious Savant
				Prodigious Savant
				Eureka
				Arcane Singularity
				Arcane Singularity
				Orb Mastery
				Orb Barrage
				Touch of the Archmage
				Touch of the Archmage
				Touch of the Archmage
				Touch of the Archmage
			]],
			herolefttalents = [[
				Augury Abounds
				Force of Will
				Splintering Orbs
				Attuned Familiar
				Slippery Slinging
				Controlled Instincts
				Reactive Barrier
				Infused Splinters
				Archmage's Wrath
				Signature Spell
				Spellfrost Teachings
				Polished Focus
				Splinterstorm
			]],
			herorighttalents = [[
			]],
		},

		{
			name = "Fire (Raid)",
			ident = "fire_raid",
			spec = 2,
			hero = "right",
			classtalents = [[		
				Alter Time
				Ice Block
				Time Walk
				Master of Time
				Master of Time
				Winter's Protection
				Winter's Protection
				Arcane Warding
				Arcane Warding
				Inspired Intellect
				Mirror Image
				Quick Witted
				Improved Conjuration
				Improved Conjuration
				Shimmer
				Improved Counterspell
				Overflowing Energy
				Greater Invisibility
				Captured Thoughts
				Tome of Rhonin
				Tome of Antonidas
				Incantation of Swiftness
				Incantation of Swiftness
				Master of Escape
				Charm of Aegwynn
				Brainstorm
				Flow of Time
				Charm of Medivh
				Permafrost Bauble
				Energized Barriers
				Barrier Diffusion
				Ice Cold
				Spatial Manipulation
				Improved Blazing Barrier
			]],
			spectalents = [[
				Pyroblast
				Fire Blast
				Firestarter
				Flamestrike
				Ignition
				Combustion
				Fuel the Fire
				Fervent Flickering
				Cauterize
				Meteor
				Scorch
				Flame On
				Kindling
				Deep Impact
				Heat Shimmer
				Scald
				Controlled Destruction
				Mote of Flame
				Intensifying Flame
				Inflame
				Wildfire
				Wildfire
				Fevered Incantation
				Fevered Incantation
				Master of Flame
				From the Ashes
				Fiery Rush
				Burnout
				Feel the Burn
				Burn It All
				Fired Up
				Fired Up
				Fired Up
				Fired Up
			]],
			herorighttalents = [[
				Mana Cascade
				Invocation: Arcane Phoenix
				Burden of Power
				Glorious Incandescence
				Merely a Setback
				Codex of the Sunstriders
				Lessons in Debilitation
				Pyrocosm
				Savor the Moment
				Ashes of Inspiration
				Rondurmancy
				Spellfire Salvo
				Memory of Al'ar
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Fire (Mythic+)",
			ident = "fire_mythic",
			spec = 2,
			hero = "right",
			classtalents = [[		
				Alter Time
				Ice Block
				Time Walk
				Master of Time
				Master of Time
				Winter's Protection
				Winter's Protection
				Arcane Warding
				Arcane Warding
				Inspired Intellect
				Mirror Image
				Spellsteal
				Quick Witted
				Supernova
				Remove Curse
				Improved Conjuration
				Improved Conjuration
				Shimmer
				Overflowing Energy
				Greater Invisibility
				Tome of Rhonin
				Tome of Antonidas
				Master of Escape
				Charm of Aegwynn
				Brainstorm
				Flow of Time
				Charm of Medivh
				Permafrost Bauble
				Energized Barriers
				Mass Invisibility
				Barrier Diffusion
				Ice Cold
				Spatial Manipulation
				Improved Blazing Barrier
			]],
			spectalents = [[
				Pyroblast
				Fire Blast
				Firestarter
				Flamestrike
				Ignition
				Combustion
				Fuel the Fire
				Fervent Flickering
				Cauterize
				Meteor
				Scorch
				Flame On
				Kindling
				Deep Impact
				Heat Shimmer
				Scald
				Controlled Destruction
				Mote of Flame
				Intensifying Flame
				Inflame
				Wildfire
				Wildfire
				Fevered Incantation
				Fevered Incantation
				Master of Flame
				From the Ashes
				Fiery Rush
				Burnout
				Feel the Burn
				Burn It All
				Fired Up
				Fired Up
				Fired Up
				Fired Up
			]],
			herorighttalents = [[
				Mana Cascade
				Invocation: Arcane Phoenix
				Burden of Power
				Glorious Incandescence
				Merely a Setback
				Codex of the Sunstriders
				Explosive Potential
				Pyrocosm
				Savor the Moment
				Ashes of Inspiration
				Rondurmancy
				Spellfire Salvo
				Memory of Al'ar
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Fire (Leveling/Delves)",
			spec = 2,
			hero = "left",
			suggested = true, 
			ident = "mage_fire_leveling",
			classtalents = [[		
				Alter Time
				Ice Block
				Temporal Realignment
				Master of Time
				Master of Time
				Winter's Protection
				Winter's Protection
				Arcane Warding
				Arcane Warding
				Inspired Intellect
				Mirror Image
				Spellsteal
				Quick Witted
				Dragon's Breath
				Remove Curse
				Improved Conjuration
				Improved Conjuration
				Shimmer
				Overflowing Energy
				Greater Invisibility
				Tome of Rhonin
				Tome of Antonidas
				Master of Escape
				Charm of Aegwynn
				Brainstorm
				Flow of Time
				Charm of Medivh
				Permafrost Bauble
				Energized Barriers
				Mass Invisibility
				Barrier Diffusion
				Ice Cold
				Spatial Manipulation
				Improved Blazing Barrier
			]],
			spectalents = [[
				Pyroblast
				Fire Blast
				Firestarter
				Flamestrike
				Ignition
				Combustion
				Fuel the Fire
				Fervent Flickering
				Cauterize
				Meteor
				Flame On
				Kindling
				Deep Impact
				Scald
				Controlled Destruction
				Mote of Flame
				Blast Zone
				Intensifying Flame
				Molten Fury
				Inflame
				Wildfire
				Wildfire
				Fevered Incantation
				Fevered Incantation
				Master of Flame
				From the Ashes
				Fiery Rush
				Burnout
				Feel the Burn
				Burn It All
				Fired Up
				Fired Up
				Fired Up
				Fired Up
			]],
			herolefttalents = [[
				Frostfire Bolt
				Imbued Warding
				Frostfire Empowerment
				Elemental Affinity
				Duality
				Heat Sink
				Thermal Conditioning
				Dualcasting Adept
				Molten Chill
				Frostfire Infusion
				Flash Freezeburn
				Blast Radius
				Elemental Conduit
				Isothermic Core
			]],
			herorighttalents = [[
			]],
		},

		{
			name = "Frost (Raid)",
			ident = "frost_raid",
			spec = 3,
			hero = "right",
			classtalents = [[		
				Alter Time
				Ice Block
				Temporal Realignment
				Master of Time
				Master of Time
				Winter's Protection
				Winter's Protection
				Frost Conditioning
				Arcane Warding
				Arcane Warding
				Inspired Intellect
				Mirror Image
				Quick Witted
				Remove Curse
				Shimmer
				Improved Counterspell
				Overflowing Energy
				Greater Invisibility
				Tome of Rhonin
				Tome of Antonidas
				Incantation of Swiftness
				Incantation of Swiftness
				Master of Escape
				Charm of Aegwynn
				Brainstorm
				Flow of Time
				Charm of Medivh
				Permafrost Bauble
				Time Manipulation
				Energized Barriers
				Barrier Diffusion
				Ice Cold
				Spatial Manipulation
				Improved Ice Barrier
			]],
			spectalents = [[
				Ice Lance
				Blizzard
				Fingers of Frost
				Frostbite
				Icicles
				Flurry
				Glacial Bulwark
				Frozen Orb
				Brain Freeze
				Piercing Cold
				Ray of Frost
				Everlasting Frost
				Permafrost Lances
				Frozen Touch
				Flash Freeze
				Frigid Focus
				Winter's Blessing
				Improved Shatter
				Deep Shatter
				Wintertide
				Glacial Attunement
				Glacial Attunement
				Heart of Ice
				Rimecaster
				Improved Flurry
				Glacial Assault
				Crystalline Refraction
				Summon Water Elemental
				Thermal Void
				Glaciate
				Hand of Frost
				Hand of Frost
				Hand of Frost
				Hand of Frost
			]],
			herorighttalents = [[
				Augury Abounds
				Force of Will
				Splintering Orbs
				Attuned Familiar
				Slippery Slinging
				Controlled Instincts
				Reactive Barrier
				Infused Splinters
				Archmage's Wrath
				Signature Spell
				Spellfrost Teachings
				Polished Focus
				Splinterstorm
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Frost (Mythic+)",
			ident = "frost_mythic",
			spec = 3,
			hero = "right",
			classtalents = [[		
				Alter Time
				Ice Block
				Temporal Realignment
				Master of Time
				Master of Time
				Winter's Protection
				Winter's Protection
				Arcane Warding
				Arcane Warding
				Inspired Intellect
				Spellsteal
				Quick Witted
				Dragon's Breath
				Remove Curse
				Shimmer
				Improved Counterspell
				Overflowing Energy
				Greater Invisibility
				Tome of Rhonin
				Tome of Antonidas
				Incantation of Swiftness
				Incantation of Swiftness
				Master of Escape
				Charm of Aegwynn
				Brainstorm
				Flow of Time
				Charm of Medivh
				Permafrost Bauble
				Time Manipulation
				Energized Barriers
				Barrier Diffusion
				Ice Cold
				Spatial Manipulation
				Improved Ice Barrier
			]],
			spectalents = [[
				Ice Lance
				Blizzard
				Fingers of Frost
				Frostbite
				Icicles
				Flurry
				Glacial Bulwark
				Frozen Orb
				Brain Freeze
				Ray of Frost
				Everlasting Frost
				Permafrost Lances
				Splitting Ice
				Flash Freeze
				Splintering Ray
				Winter's Blessing
				Freezing Rain
				Fractured Frost
				Improved Shatter
				Deep Shatter
				Wintertide
				Glacial Attunement
				Glacial Attunement
				Heart of Ice
				Improved Flurry
				Glacial Assault
				Crystalline Refraction
				Lonely Winter
				Thermal Void
				Glaciate
				Hand of Frost
				Hand of Frost
				Hand of Frost
				Hand of Frost
			]],
			herorighttalents = [[
				Augury Abounds
				Force of Will
				Splintering Orbs
				Shifting Shards
				Slippery Slinging
				Controlled Instincts
				Reactive Barrier
				Infused Splinters
				Archmage's Wrath
				Signature Spell
				Spellfrost Teachings
				Polished Focus
				Splinterstorm
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Frost (Leveling/Delves)",
			spec = 3,
			hero = "right",
			suggested = true, 
			ident = "mage_frost_leveling",
			classtalents = [[		
				Alter Time
				Ice Block
				Temporal Realignment
				Master of Time
				Master of Time
				Winter's Protection
				Winter's Protection
				Arcane Warding
				Arcane Warding
				Inspired Intellect
				Mirror Image
				Quick Witted
				Remove Curse
				Shimmer
				Improved Counterspell
				Overflowing Energy
				Greater Invisibility
				Captured Thoughts
				Tome of Rhonin
				Tome of Antonidas
				Incantation of Swiftness
				Incantation of Swiftness
				Master of Escape
				Charm of Aegwynn
				Brainstorm
				Flow of Time
				Charm of Medivh
				Permafrost Bauble
				Time Manipulation
				Energized Barriers
				Barrier Diffusion
				Ice Cold
				Spatial Manipulation
				Improved Ice Barrier
			]],
			spectalents = [[
				Ice Lance
				Blizzard
				Fingers of Frost
				Frostbite
				Icicles
				Flurry
				Glacial Bulwark
				Frozen Orb
				Brain Freeze
				Ray of Frost
				Everlasting Frost
				Permafrost Lances
				Splitting Ice
				Flash Freeze
				Splintering Ray
				Winter's Blessing
				Freezing Rain
				Fractured Frost
				Improved Shatter
				Deep Shatter
				Wintertide
				Glacial Attunement
				Glacial Attunement
				Heart of Ice
				Improved Flurry
				Glacial Assault
				Crystalline Refraction
				Lonely Winter
				Thermal Void
				Glaciate
				Hand of Frost
				Hand of Frost
				Hand of Frost
				Hand of Frost
			]],
			herorighttalents = [[
				Augury Abounds
				Force of Will
				Splintering Orbs
				Shifting Shards
				Slippery Slinging
				Controlled Instincts
				Reactive Barrier
				Infused Splinters
				Archmage's Wrath
				Signature Spell
				Spellfrost Teachings
				Polished Focus
				Splinterstorm
			]],
			herolefttalents = [[
			]],
		},
	},

	MONK = {
		{
			name = "Brewmaster (Raid)",
			ident = "brewmaster_raid",
			spec = 1,
			hero = "left",
			classtalents = [[		
				Tiger's Lust
				Fast Feet
				Grace of the Crane
				Bounding Agility
				Calming Presence
				Jade Walk
				Spear Hand Strike
				Ancient Arts
				Ancient Arts
				Chi Burst
				Transcendence
				Celerity
				Hasty Provocation
				Ferocity of Xuen
				Ferocity of Xuen
				Ring of Peace
				Tiger Tail Sweep
				Improved Touch of Death
				Vigorous Expulsion
				Yu'lon's Grace
				Peace and Prosperity
				Fortifying Brew
				Dance of the Wind
				Strength of Spirit
				Summon Black Ox Statue
				Ironshell Brew
				Chi Proficiency
				Chi Proficiency
				Windwalking
				Martial Instincts
				Martial Instincts
				Lighter Than Air
				Flow of Chi
				Fatal Touch
			]],
			spectalents = [[
				Keg Smash
				Purifying Brew
				Shuffle
				Quick Sip
				Improved Blackout Kick
				Gift of the Ox
				Special Delivery
				Spirit of the Ox
				Celestial Infusion
				Niuzao's Resolve
				Shadowboxing Treads
				Elusive Footwork
				Breath of Fire
				Gai Plin's Imperial Brew
				Training of Niuzao
				Pretense of Instability
				Sal'salabim's Strength
				Bob and Weave
				Walk with the Ox
				Zen State
				Tranquil Spirit
				Face Palm
				Dragonfire Brew
				Blackout Combo
				Exploding Keg
				Awakening Spirit
				Invoke Niuzao, the Black Ox
				Empty the Cellar
				Stormstout's Last Keg
				Heart of the Ox
				Bring Me Another
				Bring Me Another
				Bring Me Another
				Bring Me Another
			]],
			herolefttalents = [[
				Manifestation
				Purified Spirit
				Balanced Stratagem
				Harmonic Surge
				Tiger's Vigor
				Endless Draught
				Mantra of Purity
				Potential Energy
				Overwhelming Force
				Way of a Thousand Strikes
				Clarity of Purpose
				Meditative Focus
				Coalescence
			]],
			herorighttalents = [[
			]],
		},
		{
			name = "Brewmaster (Mythic+)",
			ident = "brewmaster_mythic",
			spec = 1,
			hero = "right",
			classtalents = [[		
				Tiger's Lust
				Fast Feet
				Grace of the Crane
				Bounding Agility
				Calming Presence
				Vivacious Vivification
				Silent Sanctuary
				Jade Walk
				Pressure Points
				Spear Hand Strike
				Ancient Arts
				Ancient Arts
				Chi Burst
				Transcendence
				Celerity
				Ferocity of Xuen
				Ferocity of Xuen
				Ring of Peace
				Tiger Tail Sweep
				Vigorous Expulsion
				Yu'lon's Grace
				Fortifying Brew
				Dance of the Wind
				Strength of Spirit
				Summon Black Ox Statue
				Expeditious Fortification
				Chi Proficiency
				Chi Proficiency
				Windwalking
				Martial Instincts
				Martial Instincts
				Lighter Than Air
				Flow of Chi
				Fatal Touch
			]],
			spectalents = [[
				Keg Smash
				Purifying Brew
				Shuffle
				Staggering Strikes
				Swift as a Coursing River
				Gift of the Ox
				Special Delivery
				Spirit of the Ox
				Celestial Infusion
				Niuzao's Resolve
				Shadowboxing Treads
				Elusive Footwork
				Breath of Fire
				Gai Plin's Imperial Brew
				Training of Niuzao
				Pretense of Instability
				Sal'salabim's Strength
				Bob and Weave
				Walk with the Ox
				Walk with the Ox
				Face Palm
				Dragonfire Brew
				Blackout Combo
				Counterstrike
				Exploding Keg
				Vital Flame
				Invoke Niuzao, the Black Ox
				Fuel on the Fire
				Stormstout's Last Keg
				Heart of the Ox
				Bring Me Another
				Bring Me Another
				Bring Me Another
				Bring Me Another
			]],
			herorighttalents = [[
				Pride of Pandaria
				Veteran's Eye
				Martial Precision
				Shado Over the Battlefield
				Initiator's Edge
				One Versus Many
				Predictive Training
				Stand Ready
				Against All Odds
				Efficient Training
				Vigilant Watch
				Weapons of the Wall
				Wisdom of the Wall
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Brewmaster (Leveling/Delves)",
			spec = 1,
			hero = "left",
			suggested = true, 
			ident = "monk_brm_leveling",
			classtalents = [[		
				Tiger's Lust
				Fast Feet
				Grace of the Crane
				Bounding Agility
				Calming Presence
				Detox
				Vivacious Vivification
				Silent Sanctuary
				Jade Walk
				Spear Hand Strike
				Ancient Arts
				Ancient Arts
				Chi Burst
				Transcendence
				Celerity
				Ferocity of Xuen
				Ferocity of Xuen
				Ring of Peace
				Tiger Tail Sweep
				Vigorous Expulsion
				Yu'lon's Grace
				Fortifying Brew
				Dance of the Wind
				Strength of Spirit
				Summon Black Ox Statue
				Expeditious Fortification
				Chi Proficiency
				Chi Proficiency
				Windwalking
				Martial Instincts
				Martial Instincts
				Lighter Than Air
				Flow of Chi
				Fatal Touch
			]],
			spectalents = [[
				Keg Smash
				Purifying Brew
				Shuffle
				Staggering Strikes
				Improved Blackout Kick
				Gift of the Ox
				Special Delivery
				Spirit of the Ox
				Celestial Infusion
				Niuzao's Resolve
				Shadowboxing Treads
				Elusive Footwork
				Breath of Fire
				Gai Plin's Imperial Brew
				Training of Niuzao
				Pretense of Instability
				Sal'salabim's Strength
				Bob and Weave
				Walk with the Ox
				Walk with the Ox
				Face Palm
				Dragonfire Brew
				Blackout Combo
				Counterstrike
				Exploding Keg
				Vital Flame
				Invoke Niuzao, the Black Ox
				Fuel on the Fire
				Stormstout's Last Keg
				Heart of the Ox
				Bring Me Another
				Bring Me Another
				Bring Me Another
				Bring Me Another
			]],
			herolefttalents = [[
				Manifestation
				Purified Spirit
				Balanced Stratagem
				Harmonic Surge
				Tiger's Vigor
				Endless Draught
				Mantra of Purity
				Potential Energy
				Overwhelming Force
				Way of a Thousand Strikes
				Clarity of Purpose
				Meditative Focus
				Coalescence
			]],
			herorighttalents = [[
			]],
		},

		{
			name = "Mistweaver (Raid)",
			ident = "mistweaver_raid",
			spec = 2,
			hero = "left",
			classtalents = [[		
				Soothing Mist
				Elusive Mists
				Tiger's Lust
				Fast Feet
				Grace of the Crane
				Bounding Agility
				Calming Presence
				Improved Detox
				Vivacious Vivification
				Silent Sanctuary
				Chi Warding
				Chi Wave
				Transcendence
				Celerity
				Ferocity of Xuen
				Ferocity of Xuen
				Ring of Peace
				Improved Touch of Death
				Mist Caller
				Yu'lon's Grace
				Peace and Prosperity
				Fortifying Brew
				Dance of the Wind
				Save Them All
				Vital Clarity
				Jade Infusion
				Expeditious Fortification
				Chi Proficiency
				Chi Proficiency
				Windwalking
				Martial Instincts
				Martial Instincts
				Lighter Than Air
				Flow of Chi
			]],
			spectalents = [[
				Enveloping Mist
				Thunder Focus Tea
				Misty Coalescence
				Life Cocoon
				Mana Tea
				Invigorating Mists
				Crane Style
				Restoral
				Refreshment
				Way of the Serpent
				Lifecycles
				Zen Pulse
				Invoke Yu'lon, the Jade Serpent
				Deep Clarity
				Rapid Diffusion
				Rapid Diffusion
				Mist Wrap
				Celestial Harmony
				Dancing Mists
				Lotus Infusion
				Pool of Mists
				Jade Bond
				Focused Thunder
				Rushing Wind Kick
				Secret Infusion
				Secret Infusion
				Misty Peaks
				Misty Peaks
				Mistline
				Rising Mist
				Spiritfont
				Spiritfont
				Spiritfont
				Spiritfont
			]],
			herolefttalents = [[
				Temple Training
				Courage of the White Tiger
				Restore Balance
				Heart of the Jade Serpent
				Chi-Ji's Swiftness
				Strength of the Black Ox
				Path of the Falling Star
				Yu'lon's Avatar
				Jade Sanctuary
				Stampede of the Ancients
				Inner Compass
				Flowing Wisdom
				Unity Within
			]],
			herorighttalents = [[
			]],
		},
		{
			name = "Mistweaver (Mythic+)",
			ident = "mistweaver_mythic",
			spec = 2,
			hero = "left",
			classtalents = [[		
				Soothing Mist
				Elusive Mists
				Tiger's Lust
				Fast Feet
				Grace of the Crane
				Bounding Agility
				Calming Presence
				Vivacious Vivification
				Chi Warding
				Ancient Arts
				Ancient Arts
				Chi Wave
				Transcendence
				Celerity
				Ferocity of Xuen
				Ferocity of Xuen
				Ring of Peace
				Improved Touch of Death
				Mist Caller
				Yu'lon's Grace
				Peace and Prosperity
				Fortifying Brew
				Dance of the Wind
				Save Them All
				Vital Clarity
				Jade Infusion
				Expeditious Fortification
				Chi Proficiency
				Chi Proficiency
				Martial Instincts
				Martial Instincts
				Lighter Than Air
				Flow of Chi
				Fatal Touch
			]],
			spectalents = [[
				Enveloping Mist
				Thunder Focus Tea
				Misty Coalescence
				Life Cocoon
				Mana Tea
				Invigorating Mists
				Crane Style
				Revival
				Healing Elixir
				Calming Coalescence
				Way of the Crane
				Energizing Brew
				Mists of Life
				Invoke Chi-Ji, the Red Crane
				Rapid Diffusion
				Rapid Diffusion
				Chrysalis
				Mist Wrap
				Celestial Harmony
				Lotus Infusion
				Pool of Mists
				Gift of the Celestials
				Morning Breeze
				Focused Thunder
				Sheilun's Gift
				Jadefire Teachings
				Secret Infusion
				Secret Infusion
				Veil of Pride
				Emperor's Elixir
				Dance of Chi-Ji
				Mistline
				Rising Mist
				Legacy of Wisdom
			]],
			herolefttalents = [[
				Temple Training
				Courage of the White Tiger
				Yu'lon's Knowledge
				Heart of the Jade Serpent
				Chi-Ji's Swiftness
				Strength of the Black Ox
				Path of the Falling Star
				Yu'lon's Avatar
				Niuzao's Protection
				Stampede of the Ancients
				Inner Compass
				Flowing Wisdom
				Unity Within
			]],
			herorighttalents = [[
			]],
		},
		{
			name = "Mistweaver (Leveling/Delves)",
			spec = 2,
			hero = "left",
			suggested = true, 
			ident = "monk_mw_leveling",
			classtalents = [[		
				Soothing Mist
				Elusive Mists
				Tiger's Lust
				Crashing Momentum
				Fast Feet
				Grace of the Crane
				Calming Presence
				Silent Sanctuary
				Chi Warding
				Ancient Arts
				Ancient Arts
				Transcendence
				Celerity
				Stillstep Coil
				Ferocity of Xuen
				Ferocity of Xuen
				Ring of Peace
				Tiger Tail Sweep
				Mist Caller
				Yu'lon's Grace
				Peace and Prosperity
				Fortifying Brew
				Dance of the Wind
				Save Them All
				Vital Clarity
				Expeditious Fortification
				Chi Proficiency
				Chi Proficiency
				Windwalking
				Martial Instincts
				Martial Instincts
				Lighter Than Air
				Flow of Chi
				Fatal Touch
			]],
			spectalents = [[
				Enveloping Mist
				Thunder Focus Tea
				Misty Coalescence
				Life Cocoon
				Mana Tea
				Invigorating Mists
				Crane Style
				Restoral
				Healing Elixir
				Calming Coalescence
				Way of the Crane
				Lifecycles
				Mists of Life
				Invoke Chi-Ji, the Red Crane
				Rapid Diffusion
				Rapid Diffusion
				Chrysalis
				Mist Wrap
				Celestial Harmony
				Lotus Infusion
				Pool of Mists
				Gift of the Celestials
				Morning Breeze
				Focused Thunder
				Jadefire Teachings
				Secret Infusion
				Secret Infusion
				Emperor's Elixir
				Dance of Chi-Ji
				Mistline
				Spiritfont
				Spiritfont
				Spiritfont
				Spiritfont
			]],
			herolefttalents = [[
				Xuen's Guidance
				Courage of the White Tiger
				Yu'lon's Knowledge
				Heart of the Jade Serpent
				Chi-Ji's Swiftness
				Strength of the Black Ox
				Path of the Falling Star
				Yu'lon's Avatar
				Jade Sanctuary
				Stampede of the Ancients
				Inner Compass
				Flowing Wisdom
				Unity Within
			]],
			herorighttalents = [[
			]],
		},

		{
			name = "Windwalker (Raid)",
			ident = "windwalker_raid",
			spec = 3,
			hero = "right",
			classtalents = [[		
				Tiger's Lust
				Fast Feet
				Grace of the Crane
				Calming Presence
				Detox
				Vivacious Vivification
				Jade Walk
				Spear Hand Strike
				Ancient Arts
				Ancient Arts
				Tiger Fang
				Transcendence
				Celerity
				Stillstep Coil
				Ferocity of Xuen
				Ferocity of Xuen
				Ring of Peace
				Tiger Tail Sweep
				Improved Touch of Death
				Vigorous Expulsion
				Yu'lon's Grace
				Fortifying Brew
				Dance of the Wind
				Strength of Spirit
				Zenith Stomp
				Ironshell Brew
				Chi Proficiency
				Chi Proficiency
				Windwalking
				Martial Instincts
				Martial Instincts
				Lighter Than Air
				Flow of Chi
				Fatal Touch
			]],
			spectalents = [[
				Fists of Fury
				Momentum Boost
				Combat Wisdom
				Sharp Reflexes
				Ferociousness
				Ferociousness
				Ascension
				Dual Threat
				Teachings of the Monastery
				Glory of the Dawn
				Rising Star
				Zenith
				Hit Combo
				Crashing Fists
				Spiritual Focus
				Combo Breaker
				Dance of Chi-Ji
				Shadowboxing Treads
				Whirling Dragon Punch
				Energy Burst
				Sequenced Strikes
				Sunfire Spiral
				Communion With Wind
				Revolving Whirl
				Universal Energy
				Rushing Wind Kick
				Xuen's Battlegear
				Weapon of Wind
				Skyfire Heel
				Martial Agility
				Tigereye Brew
				Tigereye Brew
				Tigereye Brew
				Tigereye Brew
			]],
			herorighttalents = [[
				Pride of Pandaria
				Veteran's Eye
				Martial Precision
				Shado Over the Battlefield
				Combat Stance
				One Versus Many
				Whirling Steel
				Stand Ready
				Against All Odds
				Efficient Training
				Vigilant Watch
				Weapons of the Wall
				Wisdom of the Wall
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Windwalker (Mythic+)",
			ident = "windwalker_mythic",
			spec = 3,
			hero = "right",
			classtalents = [[		
				Tiger's Lust
				Fast Feet
				Grace of the Crane
				Calming Presence
				Detox
				Vivacious Vivification
				Jade Walk
				Pressure Points
				Spear Hand Strike
				Ancient Arts
				Ancient Arts
				Tiger Fang
				Transcendence
				Celerity
				Stillstep Coil
				Ferocity of Xuen
				Ferocity of Xuen
				Ring of Peace
				Tiger Tail Sweep
				Improved Touch of Death
				Yu'lon's Grace
				Fortifying Brew
				Dance of the Wind
				Strength of Spirit
				Zenith Stomp
				Expeditious Fortification
				Chi Proficiency
				Chi Proficiency
				Windwalking
				Martial Instincts
				Martial Instincts
				Lighter Than Air
				Flow of Chi
				Fatal Touch
			]],
			spectalents = [[
				Fists of Fury
				Momentum Boost
				Combat Wisdom
				Sharp Reflexes
				Ferociousness
				Ferociousness
				Ascension
				Dual Threat
				Teachings of the Monastery
				Glory of the Dawn
				Rising Star
				Zenith
				Hit Combo
				Crashing Fists
				Spiritual Focus
				Combo Breaker
				Dance of Chi-Ji
				Shadowboxing Treads
				Whirling Dragon Punch
				Energy Burst
				Sequenced Strikes
				Sunfire Spiral
				Communion With Wind
				Revolving Whirl
				Universal Energy
				Rushing Wind Kick
				Xuen's Battlegear
				Weapon of Wind
				Skyfire Heel
				Martial Agility
				Tigereye Brew
				Tigereye Brew
				Tigereye Brew
				Tigereye Brew
			]],
			herorighttalents = [[
				Pride of Pandaria
				Veteran's Eye
				Martial Precision
				Shado Over the Battlefield
				Combat Stance
				One Versus Many
				Whirling Steel
				Stand Ready
				Against All Odds
				Efficient Training
				Vigilant Watch
				Weapons of the Wall
				Wisdom of the Wall
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Windwalker (Leveling/Delves)",
			spec = 3,
			hero = "right",
			suggested = true, 
			ident = "monk_ww_leveling",
			classtalents = [[		
				Tiger's Lust
				Fast Feet
				Grace of the Crane
				Calming Presence
				Detox
				Vivacious Vivification
				Jade Walk
				Pressure Points
				Spear Hand Strike
				Ancient Arts
				Ancient Arts
				Tiger Fang
				Transcendence
				Celerity
				Stillstep Coil
				Ferocity of Xuen
				Ferocity of Xuen
				Ring of Peace
				Tiger Tail Sweep
				Improved Touch of Death
				Yu'lon's Grace
				Fortifying Brew
				Dance of the Wind
				Strength of Spirit
				Zenith Stomp
				Expeditious Fortification
				Chi Proficiency
				Chi Proficiency
				Windwalking
				Martial Instincts
				Martial Instincts
				Lighter Than Air
				Flow of Chi
				Fatal Touch
			]],
			spectalents = [[
				Fists of Fury
				Momentum Boost
				Combat Wisdom
				Sharp Reflexes
				Ferociousness
				Ferociousness
				Ascension
				Dual Threat
				Teachings of the Monastery
				Glory of the Dawn
				Rising Star
				Zenith
				Hit Combo
				Crashing Fists
				Spiritual Focus
				Combo Breaker
				Dance of Chi-Ji
				Shadowboxing Treads
				Whirling Dragon Punch
				Energy Burst
				Sequenced Strikes
				Sunfire Spiral
				Communion With Wind
				Revolving Whirl
				Universal Energy
				Rushing Wind Kick
				Xuen's Battlegear
				Weapon of Wind
				Skyfire Heel
				Martial Agility
				Tigereye Brew
				Tigereye Brew
				Tigereye Brew
				Tigereye Brew
			]],
			herorighttalents = [[
				Pride of Pandaria
				Veteran's Eye
				Martial Precision
				Shado Over the Battlefield
				Combat Stance
				One Versus Many
				Whirling Steel
				Stand Ready
				Against All Odds
				Efficient Training
				Vigilant Watch
				Weapons of the Wall
				Wisdom of the Wall
			]],
			herolefttalents = [[
			]],
		},
	},

	PALADIN = {
		{
			name = "Holy (Raid)",
			ident = "holy_raid",
			spec = 1,
			hero = "left",
			classtalents = [[		
				Improved Cleanse
				Fist of Justice
				Blinding Light
				A Just Reward
				A Just Reward
				Afterimage
				Guided Prayer
				Greater Judgment
				Cavalier
				Blessing of Freedom
				Armory of Light
				Obduracy
				Obduracy
				Divine Toll
				Echoing Blessings
				Sanctified Plates
				Sanctified Plates
				Divine Reach
				Brought to Light
				Blessing of Sacrifice
				Quickened Invocation
				Blessing of Protection
				Holy Aegis
				Divine Purpose
				Unbreakable Spirit
				Lead the Charge
				Holy Ritual
				Inspired Guard
				Light's Revocation
				Seal of Might
				Seal of Might
				Selfless Healer
				Lightbearer
				Blessing of Dusk
			]],
			spectalents = [[
				Holy Shock
				Infusion of Light
				Light of Dawn
				Light's Conviction
				Aura Mastery
				Beacon of the Lightbringer
				Extrication
				Unending Light
				Awestruck
				Resplendent Light
				Divine Favor
				Imbued Infusions
				Light of the Martyr
				Light's Protection
				Overflowing Light
				Commanding Light
				Breaking Dawn
				Breaking Dawn
				Divine Revelations
				Divine Glimpse
				Bestow Light
				Beacon of Faith
				Avenging Wrath
				Reclamation
				Seek Deliverance
				Sanctified Wrath
				Divine Overload
				Glorious Dawn
				Hand of Divinity
				Inflorescence of the Sunwell
				Beacon of the Savior
				Beacon of the Savior
				Beacon of the Savior
				Beacon of the Savior
			]],
			herolefttalents = [[
				Gleaming Rays
				Eternal Flame
				Luminosity
				Endless Gleam
				Will of the Dawn
				Blessing of An'she
				Sun Sear
				Solar Grace
				Aurora
				Walk Into Light
				Second Sunrise
				Born in Sunlight
				Sun's Avatar
			]],
			herorighttalents = [[
			]],
		},
		{
			name = "Holy (Mythic+)",
			ident = "holy_mythic",
			spec = 1,
			hero = "right",
			classtalents = [[		
				Hammer of Wrath
				Improved Cleanse
				Fist of Justice
				Blinding Light
				A Just Reward
				A Just Reward
				Afterimage
				Guided Prayer
				Greater Judgment
				Cavalier
				Blessing of Freedom
				Armory of Light
				Obduracy
				Obduracy
				Divine Toll
				Echoing Blessings
				Sanctified Plates
				Sanctified Plates
				Brought to Light
				Blessing of Sacrifice
				Quickened Invocation
				Blessing of Protection
				Consecrated Ground
				Holy Aegis
				Divine Purpose
				Unbreakable Spirit
				Lightforged Blessing
				Lead the Charge
				Holy Ritual
				Inspired Guard
				Seal of Might
				Seal of Might
				Selfless Healer
				Blessing of Dusk
			]],
			spectalents = [[
				Holy Shock
				Infusion of Light
				Light of Dawn
				Light's Conviction
				Aura Mastery
				Beacon of the Lightbringer
				Extrication
				Awestruck
				Moment of Compassion
				Divine Favor
				Imbued Infusions
				Light of the Martyr
				Righteous Judgment
				Light's Protection
				Shining Righteousness
				Crusader's Might
				Tirion's Devotion
				Commanding Light
				Divine Revelations
				Divine Glimpse
				Bestow Light
				Beacon of Faith
				Avenging Wrath
				Reclamation
				Seek Deliverance
				Sanctified Wrath
				Divine Overload
				Glorious Dawn
				Hand of Divinity
				Inflorescence of the Sunwell
				Beacon of the Savior
				Beacon of the Savior
				Beacon of the Savior
				Beacon of the Savior
			]],
			herorighttalents = [[
				Rite of Sanctification
				Solidarity
				Blessed Assurance
				Masterwork
				Laying Down Arms
				Forewarning
				Authoritative Rebuke
				Hammer and Anvil
				Shared Resolve
				Valiance
				Reflection of Radiance
				Resounding Strike
				Blessing of the Forge
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Holy (Leveling/Delves)",
			spec = 1,
			hero = "right",
			suggested = true, 
			ident = "pala_holy_leveling",
			classtalents = [[		
				Hammer of Wrath
				Improved Cleanse
				Fist of Justice
				Blinding Light
				A Just Reward
				A Just Reward
				Guided Prayer
				Greater Judgment
				Cavalier
				Blessing of Freedom
				Armory of Light
				Obduracy
				Obduracy
				Divine Toll
				Echoing Blessings
				Sanctified Plates
				Sanctified Plates
				Brought to Light
				Blessing of Sacrifice
				Quickened Invocation
				Blessing of Protection
				Consecrated Ground
				Holy Aegis
				Divine Purpose
				Unbreakable Spirit
				Lead the Charge
				Holy Ritual
				Inspired Guard
				Seal of Might
				Seal of Might
				Vengeful Wrath
				Vengeful Wrath
				Selfless Healer
				Blessing of Dusk
			]],
			spectalents = [[
				Holy Shock
				Infusion of Light
				Light of Dawn
				Light's Conviction
				Aura Mastery
				Beacon of the Lightbringer
				Extrication
				Awestruck
				Moment of Compassion
				Divine Favor
				Imbued Infusions
				Light of the Martyr
				Righteous Judgment
				Light's Protection
				Shining Righteousness
				Crusader's Might
				Commanding Light
				Divine Revelations
				Divine Glimpse
				Bestow Light
				Beacon of Faith
				Avenging Wrath
				Reclamation
				Seek Deliverance
				Sanctified Wrath
				Truth Prevails
				Divine Overload
				Glorious Dawn
				Hand of Divinity
				Inflorescence of the Sunwell
				Beacon of the Savior
				Beacon of the Savior
				Beacon of the Savior
				Beacon of the Savior
			]],
			herorighttalents = [[
				Rite of Sanctification
				Solidarity
				Blessed Assurance
				Masterwork
				Laying Down Arms
				Forewarning
				Tempered in Battle
				Hammer and Anvil
				Shared Resolve
				Valiance
				Reflection of Radiance
				Resounding Strike
				Blessing of the Forge
			]],
			herolefttalents = [[
			]],
		},

		{
			name = "Protection (Raid)",
			ident = "protection_raid",
			spec = 2,
			hero = "right",
			classtalents = [[		
				Hammer of Wrath
				Cleanse Toxins
				Fist of Justice
				Afterimage
				Guided Prayer
				Greater Judgment
				Cavalier
				Blessing of Freedom
				Rebuke
				Obduracy
				Obduracy
				Divine Toll
				Sanctified Plates
				Sanctified Plates
				Divine Reach
				Blessing of Sacrifice
				Divine Resonance
				Blessing of Protection
				Consecrated Ground
				Holy Aegis
				Sacrifice of the Just
				Divine Purpose
				Improved Blessing of Protection
				Unbreakable Spirit
				Lightforged Blessing
				Lead the Charge
				Inspired Guard
				Faith's Armor
				Seal of Might
				Seal of Might
				Vengeful Wrath
				Vengeful Wrath
				Lightbearer
				Blessing of Dusk
			]],
			spectalents = [[
				Avenger's Shield
				Shining Light
				Blessed Hammer
				Imbued Shield
				Grand Crusader
				Refining Fire
				Ardent Defender
				Searing Sunlight
				Bulwark of Order
				Blessing of Spellwarding
				Light of the Titans
				Tyr's Enforcer
				Relentless Inquisitor
				Avenging Wrath
				Crusader's Judgment
				Consecration in Flame
				Consecration in Flame
				Seal of Reprisal
				Guardian of Ancient Kings
				Sanctuary
				Focused Enmity
				Gift of the Golden Val'kyr
				Sanctified Wrath
				Crusader's Resolve
				Empyrean Authority
				Zealot's Paragon
				Zealot's Paragon
				Adjudication
				Bulwark of Righteous Fury
				Righteous Protector
				Glory of the Vanguard
				Glory of the Vanguard
				Glory of the Vanguard
				Glory of the Vanguard
			]],
			herorighttalents = [[
				Zealous Vindication
				Shake the Heavens
				Wrathful Descent
				Divine Hammer
				Sacrosanct Crusade
				Higher Calling
				Unrelenting Charger
				Light's Judicator
				Endless Wrath
				Hammerfall
				Undisputed Ruling
				Divine Exaction
				Light's Deliverance
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Protection (Mythic+)",
			ident = "protection_mythic",
			spec = 2,
			hero = "left",
			classtalents = [[		
				Hammer of Wrath
				Cleanse Toxins
				Fist of Justice
				Blinding Light
				Afterimage
				Guided Prayer
				Greater Judgment
				Cavalier
				Blessing of Freedom
				Rebuke
				Obduracy
				Obduracy
				Divine Toll
				Unbound Freedom
				Sanctified Plates
				Sanctified Plates
				Punishment
				Brought to Light
				Blessing of Sacrifice
				Divine Resonance
				Blessing of Protection
				Consecrated Ground
				Holy Aegis
				Divine Purpose
				Unbreakable Spirit
				Lead the Charge
				Inspired Guard
				Faith's Armor
				Seal of Might
				Seal of Might
				Vengeful Wrath
				Vengeful Wrath
				Lightbearer
				Blessing of Dusk
			]],
			spectalents = [[
				Avenger's Shield
				Shining Light
				Blessed Hammer
				Redoubt
				Grand Crusader
				Seal of Charity
				Refining Fire
				Ardent Defender
				Solace
				Undying Embers
				Bulwark of Order
				Blessing of Spellwarding
				Light of the Titans
				Vision of Sanctity
				Relentless Inquisitor
				Avenging Wrath
				Crusader's Judgment
				Soaring Shield
				Guardian of Ancient Kings
				Sanctuary
				Gift of the Golden Val'kyr
				Sanctified Wrath
				Strength in Adversity
				Empyrean Authority
				Zealot's Paragon
				Zealot's Paragon
				Sweeping Verdict
				Bulwark of Righteous Fury
				Final Stand
				Righteous Protector
				Glory of the Vanguard
				Glory of the Vanguard
				Glory of the Vanguard
				Glory of the Vanguard
			]],
			herolefttalents = [[
				Rite of Sanctification
				Solidarity
				Divine Guidance
				Masterwork
				Laying Down Arms
				Divine Inspiration
				Tempered in Battle
				Hammer and Anvil
				Shared Resolve
				Valiance
				Reflection of Radiance
				Resounding Strike
				Blessing of the Forge
			]],
			herorighttalents = [[
			]],
		},
		{
			name = "Protection (Leveling/Delves)",
			spec = 2,
			hero = "right",
			suggested = true, 
			ident = "pala_prot_leveling",
			classtalents = [[		
				Hammer of Wrath
				Cleanse Toxins
				Fist of Justice
				Blinding Light
				Afterimage
				Guided Prayer
				Greater Judgment
				Cavalier
				Blessing of Freedom
				Rebuke
				Obduracy
				Obduracy
				Divine Toll
				Unbound Freedom
				Sanctified Plates
				Sanctified Plates
				Punishment
				Blessing of Sacrifice
				Divine Resonance
				Blessing of Protection
				Consecrated Ground
				Holy Aegis
				Sacrifice of the Just
				Divine Purpose
				Unbreakable Spirit
				Lead the Charge
				Inspired Guard
				Faith's Armor
				Seal of Might
				Seal of Might
				Vengeful Wrath
				Vengeful Wrath
				Lightbearer
				Blessing of Dusk
			]],
			spectalents = [[
				Avenger's Shield
				Shining Light
				Blessed Hammer
				Redoubt
				Grand Crusader
				Seal of Charity
				Refining Fire
				Ardent Defender
				Solace
				Undying Embers
				Bulwark of Order
				Blessing of Spellwarding
				Light of the Titans
				Vision of Sanctity
				Relentless Inquisitor
				Avenging Wrath
				Crusader's Judgment
				Soaring Shield
				Guardian of Ancient Kings
				Sanctuary
				Gift of the Golden Val'kyr
				Sanctified Wrath
				Strength in Adversity
				Empyrean Authority
				Zealot's Paragon
				Zealot's Paragon
				Sweeping Verdict
				Bulwark of Righteous Fury
				Final Stand
				Righteous Protector
				Glory of the Vanguard
				Glory of the Vanguard
				Glory of the Vanguard
				Glory of the Vanguard
			]],
			herorighttalents = [[
				Zealous Vindication
				Shake the Heavens
				Wrathful Descent
				Divine Hammer
				Sacrosanct Crusade
				Higher Calling
				Unrelenting Charger
				Light's Judicator
				Endless Wrath
				Hammerfall
				Undisputed Ruling
				Divine Exaction
				Light's Deliverance
			]],
			herolefttalents = [[
			]],
		},

		{
			name = "Retribution (Raid)",
			ident = "retribution_raid",
			spec = 3,
			hero = "right",
			classtalents = [[		
				Lay on Hands
				Fist of Justice
				Healing Hands
				Guided Prayer
				Divine Steed
				Shield of Vengeance
				Cavalier
				Blessing of Freedom
				Rebuke
				Obduracy
				Obduracy
				Divine Toll
				Unbound Freedom
				Sanctified Plates
				Sanctified Plates
				Punishment
				Blessing of Sacrifice
				Quickened Invocation
				Blessing of Protection
				Consecrated Ground
				Holy Aegis
				Divine Purpose
				Unbreakable Spirit
				Lead the Charge
				Blessed Calling
				Inspired Guard
				Light's Revocation
				Seal of Might
				Seal of Might
				Vengeful Wrath
				Vengeful Wrath
				Blessing of Dawn
				Lightbearer
				Blessing of Dusk
			]],
			spectalents = [[
				Blade of Justice
				Divine Storm
				Expurgation
				Light of Justice
				Judgment of Justice
				Avenging Wrath
				Final Verdict
				Holy Blade
				Art of War
				Jurisdiction
				Rush of Light
				Holy Flames
				Improved Judgment
				Zealot's Fervor
				Zealot's Fervor
				Heart of the Crusader
				Heart of the Crusader
				Highlord's Wrath
				Crusading Strikes
				Burning Crusade
				Blades of Light
				Blades of Light
				Wake of Ashes
				Divine Wrath
				Divine Wrath
				Execution Sentence
				Seething Flames
				Empyrean Legacy
				Burn to Ash
				Crusade
				Light Within
				Light Within
				Light Within
				Light Within
			]],
			herorighttalents = [[
				Zealous Vindication
				Shake the Heavens
				Wrathful Descent
				Divine Hammer
				Sacrosanct Crusade
				Higher Calling
				Unrelenting Charger
				Light's Judicator
				Sanctification
				Hammerfall
				Undisputed Ruling
				Divine Exaction
				Light's Deliverance
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Retribution (Mythic+)",
			ident = "retribution_mythic",
			spec = 3,
			hero = "right",
			classtalents = [[		
				Lay on Hands
				Cleanse Toxins
				Fist of Justice
				Blinding Light
				Healing Hands
				Guided Prayer
				Divine Steed
				Shield of Vengeance
				Cavalier
				Blessing of Freedom
				Rebuke
				Obduracy
				Obduracy
				Divine Toll
				Unbound Freedom
				Sanctified Plates
				Sanctified Plates
				Punishment
				Blessing of Sacrifice
				Quickened Invocation
				Blessing of Protection
				Consecrated Ground
				Holy Aegis
				Divine Purpose
				Unbreakable Spirit
				Lead the Charge
				Inspired Guard
				Seal of Might
				Seal of Might
				Vengeful Wrath
				Vengeful Wrath
				Blessing of Dawn
				Lightbearer
				Blessing of Dusk
			]],
			spectalents = [[
				Blade of Justice
				Divine Storm
				Expurgation
				Light of Justice
				Avenging Wrath
				Final Verdict
				Holy Blade
				Art of War
				Jurisdiction
				Rush of Light
				Sanctify
				Holy Flames
				Improved Judgment
				Zealot's Fervor
				Zealot's Fervor
				Blade of Vengeance
				Highlord's Wrath
				Crusading Strikes
				Blessed Champion
				Burning Crusade
				Blades of Light
				Blades of Light
				Wake of Ashes
				Divine Wrath
				Divine Wrath
				Seething Flames
				Empyrean Legacy
				Radiant Glory
				Burn to Ash
				Crusade
				Light Within
				Light Within
				Light Within
				Light Within
			]],
			herorighttalents = [[
				Zealous Vindication
				Shake the Heavens
				Wrathful Descent
				Divine Hammer
				Sacrosanct Crusade
				Higher Calling
				Unrelenting Charger
				Light's Judicator
				Sanctification
				Hammerfall
				Undisputed Ruling
				Divine Exaction
				Light's Deliverance
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Retribution (Leveling/Delves)",
			spec = 3,
			hero = "right",
			suggested = true, 
			ident = "pala_ret_leveling",
			classtalents = [[		
				Lay on Hands
				Fist of Justice
				Blinding Light
				Healing Hands
				Guided Prayer
				Divine Steed
				Shield of Vengeance
				Cavalier
				Blessing of Freedom
				Rebuke
				Obduracy
				Obduracy
				Divine Toll
				Unbound Freedom
				Sanctified Plates
				Sanctified Plates
				Punishment
				Brought to Light
				Quickened Invocation
				Blessing of Protection
				Consecrated Ground
				Holy Aegis
				Divine Purpose
				Unbreakable Spirit
				Lead the Charge
				Blessed Calling
				Inspired Guard
				Light's Revocation
				Seal of Might
				Seal of Might
				Vengeful Wrath
				Vengeful Wrath
				Eye for an Eye
				Blessing of Dusk
			]],
			spectalents = [[
				Blade of Justice
				Divine Storm
				Expurgation
				Swift Justice
				Judgment of Justice
				Avenging Wrath
				Final Verdict
				Holy Blade
				Righteous Cause
				Jurisdiction
				Tempest of the Lightbringer
				Rush of Light
				Holy Flames
				Improved Judgment
				Heart of the Crusader
				Heart of the Crusader
				Blade of Vengeance
				Highlord's Wrath
				Templar Strikes
				Blessed Champion
				Burning Crusade
				Blades of Light
				Blades of Light
				Wake of Ashes
				Divine Wrath
				Execution Sentence
				Seething Flames
				Judge, Jury and Executioner
				Radiant Glory
				Burn to Ash
				Light Within
				Light Within
				Light Within
				Light Within
			]],
			herorighttalents = [[
				Zealous Vindication
				Shake the Heavens
				Wrathful Descent
				Divine Hammer
				Sacrosanct Crusade
				Higher Calling
				Unrelenting Charger
				Light's Judicator
				Sanctification
				Hammerfall
				Undisputed Ruling
				Divine Exaction
				Light's Deliverance
			]],
			herolefttalents = [[
			]],
		},
	},

	PRIEST = {
		{
			name = "Discipline (Raid)",
			ident = "discipline_raid",
			spec = 1,
			hero = "left",
			classtalents = [[		
				Angelic Feather
				Holy Nova
				Spiritual Guidance
				Lightburst
				Leap of Faith
				Power Infusion
				Painful Invocation
				Surge of Light
				Body and Soul
				Mass Dispel
				Twins of the Sun Priestess
				Strength of Resolve
				Everlasting Light
				Move with Grace
				Twin Disciplines
				Dark Enlightenment
				Binding Heals
				Shadow Word: Death
				Sanguine Teachings
				Desperate Prayer
				Twist of Fate
				Twist of Fate
				Fade
				Protective Light
				Mindpierce
				Improved Fade
				Improved Fade
				Unwavering Will
				Unwavering Will
				Spell Warding
				Spell Warding
				Benevolence
				Phantom Reach
				Translucent Image
			]],
			spectalents = [[
				Atonement
				Power Word: Radiance
				Pain Suppression
				Power of the Dark Side
				Light's Promise
				Protector of the Frail
				Dark Indulgence
				Enduring Luminescence
				Shield Discipline
				Ultimate Penitence
				Painful Punishment
				Holy Ray
				Lenience
				Shadow Tap
				Castigation
				Indemnity
				Occultist
				Evangelism
				Abyssal Reverie
				Abyssal Reverie
				Inner Focus
				Mindbender
				Shadowfiend
				Divine Aegis
				Borrowed Time
				Borrowed Time
				Death's Torment
				Inescapable Torment
				Eternal Barrier
				Weal and Woe
				Master the Darkness
				Master the Darkness
				Master the Darkness
				Master the Darkness
			]],
			herolefttalents = [[
				Preventive Measures
				Preemptive Care
				Waste No Time
				Words of the Wise
				Assured Safety
				Save the Day
				Foreseen Circumstances
				Prophet's Insight
				Prophet's Will
				Prompt Prognosis
				Piety
				Unfolding Vision
				Twinsight
			]],
			herorighttalents = [[
			]],
		},
		{
			name = "Discipline (Mythic+)",
			ident = "discipline_mythic",
			spec = 1,
			hero = "left",
			classtalents = [[		
				Angelic Feather
				Dispel Magic
				Spiritual Guidance
				Psychic Scream
				Leap of Faith
				Power Infusion
				Painful Invocation
				Petrifying Scream
				Surge of Light
				Mass Dispel
				Twins of the Sun Priestess
				Strength of Resolve
				Dominate Mind
				Everlasting Light
				Twin Disciplines
				Dark Enlightenment
				Binding Heals
				Shadow Word: Death
				Sanguine Teachings
				Desperate Prayer
				Twist of Fate
				Twist of Fate
				Fade
				Protective Light
				Mindpierce
				Improved Fade
				Improved Fade
				Unwavering Will
				Unwavering Will
				Spell Warding
				Spell Warding
				Phantasm
				Benevolence
				Translucent Image
			]],
			spectalents = [[
				Atonement
				Power Word: Radiance
				Pain Suppression
				Power of the Dark Side
				Light's Promise
				Protector of the Frail
				Dark Indulgence
				Encroaching Shadows
				Shield Discipline
				Ultimate Penitence
				Painful Punishment
				Revel in Darkness
				Holy Ray
				Lenience
				Shadow Tap
				Castigation
				Pain and Suffering
				Pain and Suffering
				Occultist
				Harsh Discipline
				Harsh Discipline
				Evangelism
				Inner Focus
				Archangel
				Shadow Mend
				Divine Aegis
				Borrowed Time
				Borrowed Time
				Eternal Barrier
				Weal and Woe
				Master the Darkness
				Master the Darkness
				Master the Darkness
				Master the Darkness
			]],
			herolefttalents = [[
				Preventive Measures
				Preemptive Care
				Waste No Time
				Words of the Wise
				Assured Safety
				Save the Day
				Foreseen Circumstances
				Prophet's Insight
				Prophet's Will
				Prompt Prognosis
				Piety
				Unfolding Vision
				Twinsight
			]],
			herorighttalents = [[
			]],
		},
		{
			name = "Discipline (Leveling/Delves)",
			spec = 1,
			hero = "right",
			suggested = true, 
			ident = "priest_disc_leveling",
			classtalents = [[		
				Angelic Feather
				Holy Nova
				Dispel Magic
				Spiritual Guidance
				Psychic Scream
				Leap of Faith
				Power Infusion
				Painful Invocation
				Petrifying Scream
				Surge of Light
				Twins of the Sun Priestess
				Strength of Resolve
				Dominate Mind
				Everlasting Light
				Twin Disciplines
				Dark Enlightenment
				Binding Heals
				Shadow Word: Death
				Sanguine Teachings
				Desperate Prayer
				Twist of Fate
				Twist of Fate
				Fade
				Protective Light
				Mindpierce
				Improved Fade
				Improved Fade
				Unwavering Will
				Unwavering Will
				Spell Warding
				Spell Warding
				Phantasm
				Benevolence
				Translucent Image
			]],
			spectalents = [[
				Atonement
				Power Word: Radiance
				Pain Suppression
				Power of the Dark Side
				Light's Promise
				Protector of the Frail
				Dark Indulgence
				Encroaching Shadows
				Enduring Luminescence
				Ultimate Penitence
				Painful Punishment
				Lenience
				Shadow Tap
				Castigation
				Occultist
				Harsh Discipline
				Harsh Discipline
				Evangelism
				Abyssal Reverie
				Abyssal Reverie
				Divine Procession
				Mindbender
				Shadow Mend
				Shadowfiend
				Greater Smite
				Greater Smite
				Death's Torment
				Inescapable Torment
				Expiation
				Expiation
				Master the Darkness
				Master the Darkness
				Master the Darkness
				Master the Darkness
			]],
			herorighttalents = [[
				No Escape
				Void Blast
				Inner Quietus
				Voidheart
				Devour Matter
				Void Empowerment
				Voidwraith
				Touch of the Void
				Quickened Pulse
				Void Infusion
				Void Leech
				Overwhelming Shadows
				Collapsing Void
			]],
			herolefttalents = [[
			]],
		},

		{
			name = "Holy (Raid)",
			ident = "holy_raid",
			spec = 2,
			hero = "left",
			classtalents = [[		
				Angelic Feather
				Holy Fire
				Dispel Magic
				Spiritual Guidance
				Lightburst
				Leap of Faith
				Power Infusion
				Surge of Light
				Body and Soul
				Mass Dispel
				Twins of the Sun Priestess
				Strength of Resolve
				Everlasting Light
				Move with Grace
				Mental Agility
				Twin Disciplines
				Dark Enlightenment
				Binding Heals
				Sanguine Teachings
				Desperate Prayer
				Twist of Fate
				Twist of Fate
				Fade
				Angel's Mercy
				Protective Light
				Improved Fade
				Improved Fade
				Unwavering Will
				Unwavering Will
				Spell Warding
				Spell Warding
				Angelic Bulwark
				Benevolence
				Translucent Image
			]],
			spectalents = [[
				Holy Word: Serenity
				Holy Word: Sanctify
				Guardian Spirit
				Prayer of Healing
				Restitution
				Prayerful Litany
				Cosmic Ripple
				Voice of Harmony
				Uplifting Words
				Cosmic Wave
				Divine Hymn
				Enlightenment
				Light's Resurgence
				Efficient Prayers
				Healing Focus
				Seraphic Crescendo
				Renewed Faith
				Angelic Touch
				Apotheosis
				Prayers of the Virtuous
				Miracle Worker
				Eternal Sanctity
				Holy Celerity
				Light in the Darkness
				Light in the Darkness
				Prismatic Echoes
				Prismatic Echoes
				Ultimate Serenity
				Divine Image
				Lasting Words
				Benediction
				Benediction
				Benediction
				Benediction
			]],
			herolefttalents = [[
				Perfected Form
				Power Surge
				Manifested Power
				Focused Outburst
				Shock Pulse
				Energy Conservation
				Empowered Surges
				Word of Supremacy
				Energy Compression
				Resonant Energy
				Energy Cycle
				Spiritwell
				Divine Halo
			]],
			herorighttalents = [[
			]],
		},
		{
			name = "Holy (Mythic+)",
			ident = "holy_mythic",
			spec = 2,
			hero = "left",
			classtalents = [[		
				Angelic Feather
				Holy Fire
				Dispel Magic
				Spiritual Guidance
				Psychic Scream
				Leap of Faith
				Improved Purify
				Power Infusion
				Painful Invocation
				Petrifying Scream
				Surge of Light
				Mass Dispel
				Twins of the Sun Priestess
				Strength of Resolve
				Everlasting Light
				Mental Agility
				Twin Disciplines
				Dark Enlightenment
				Binding Heals
				Sanguine Teachings
				Desperate Prayer
				Twist of Fate
				Twist of Fate
				Fade
				Protective Light
				Improved Fade
				Improved Fade
				Unwavering Will
				Unwavering Will
				Spell Warding
				Spell Warding
				Phantasm
				Benevolence
				Translucent Image
			]],
			spectalents = [[
				Holy Word: Serenity
				Holy Word: Sanctify
				Guardian Spirit
				Holy Word: Chastise
				Prayer of Healing
				Restitution
				Empyreal Blaze
				Prayerful Litany
				Cosmic Ripple
				Voice of Harmony
				Burning Vehemence
				Uplifting Words
				Divine Hymn
				Enlightenment
				Light's Resurgence
				Efficient Prayers
				Healing Focus
				Seraphic Crescendo
				Angelic Touch
				Apotheosis
				Trail of Light
				Miracle Worker
				Eternal Sanctity
				Holy Celerity
				Crisis Management
				Light in the Darkness
				Light in the Darkness
				Lightweaver
				Ultimate Serenity
				Divine Image
				Benediction
				Benediction
				Benediction
				Benediction
			]],
			herolefttalents = [[
				Perfected Form
				Power Surge
				Manifested Power
				Focused Outburst
				Incessant Screams
				Energy Conservation
				Empowered Surges
				Word of Supremacy
				Sustained Potency
				Resonant Energy
				Energy Cycle
				Spiritwell
				Divine Halo
			]],
			herorighttalents = [[
			]],
		},
		{
			name = "Holy (Leveling/Delves)",
			spec = 2,
			hero = "left",
			suggested = true, 
			ident = "priest_holy_leveling",
			classtalents = [[		
				Angelic Feather
				Holy Fire
				Dispel Magic
				Spiritual Guidance
				Psychic Scream
				Leap of Faith
				Improved Purify
				Power Infusion
				Painful Invocation
				Petrifying Scream
				Surge of Light
				Mass Dispel
				Strength of Resolve
				Dominate Mind
				Void Tendrils
				Everlasting Light
				Twin Disciplines
				Dark Enlightenment
				Binding Heals
				Sanguine Teachings
				Desperate Prayer
				Twist of Fate
				Twist of Fate
				Fade
				Angel's Mercy
				Protective Light
				Improved Fade
				Improved Fade
				Light's Inspiration
				Unwavering Will
				Unwavering Will
				Angelic Bulwark
				Benevolence
				Translucent Image
			]],
			spectalents = [[
				Holy Word: Serenity
				Holy Word: Sanctify
				Guardian Spirit
				Holy Word: Chastise
				Restitution
				Censure
				Empyreal Blaze
				Cosmic Ripple
				Voice of Harmony
				Burning Vehemence
				Uplifting Words
				Divine Hymn
				Light's Resurgence
				Healing Focus
				Seraphic Crescendo
				Divine Service
				Renewed Faith
				Angelic Touch
				Apotheosis
				Prayers of the Virtuous
				Trail of Light
				Miracle Worker
				Eternal Sanctity
				Holy Celerity
				Light of the Naaru
				Light of the Naaru
				Light in the Darkness
				Light in the Darkness
				Ultimate Serenity
				Divine Image
				Benediction
				Benediction
				Benediction
				Benediction
			]],
			herolefttalents = [[
				Perfected Form
				Power Surge
				Manifested Power
				Focused Outburst
				Incessant Screams
				Energy Conservation
				Empowered Surges
				Word of Supremacy
				Energy Compression
				Resonant Energy
				Energy Cycle
				Realized Potential
				Divine Halo
			]],
			herorighttalents = [[
			]],
		},

		{
			name = "Shadow (Raid)",
			ident = "shadow_raid",
			spec = 3,
			hero = "left",
			classtalents = [[		
				Angelic Feather
				Dispel Magic
				Spiritual Guidance
				Leap of Faith
				Purify Disease
				Power Infusion
				Painful Invocation
				Petrifying Scream
				Body and Soul
				Mass Dispel
				Twins of the Sun Priestess
				Strength of Resolve
				Psychic Voice
				Twin Disciplines
				Dark Enlightenment
				Binding Heals
				Shadow Word: Death
				Sanguine Teachings
				Desperate Prayer
				Twist of Fate
				Twist of Fate
				Tithe Evasion
				Fade
				Angel's Mercy
				Protective Light
				Mindpierce
				Improved Fade
				Improved Fade
				Light's Inspiration
				Spell Warding
				Spell Warding
				Focused Power
				Phantom Reach
				Translucent Image
			]],
			spectalents = [[
				Shadow Word: Madness
				Psychic Link
				Invoked Nightmare
				Mental Fortitude
				Tentacle Slam
				Shadowy Apparitions
				Tormenting Whispers
				Surge of Insanity
				Shadowy Insight
				Voidform
				Haunting Shadows
				Mental Decay
				Shadowfiend
				Improved Voidform
				Phantom Menace
				Shattered Psyche
				Subservient Shadows
				Mastermind
				Mastermind
				Spectral Horrors
				Auspicious Spirits
				Maddening Tentacles
				Screams of the Void
				Screams of the Void
				Tormented Spirits
				Insidious Ire
				Insidious Ire
				Idol of N'Zoth
				Idol of Yogg-Saron
				Idol of C'Thun
				Void Apparitions
				Void Apparitions
				Void Apparitions
				Void Apparitions
			]],
			herolefttalents = [[
				Perfected Form
				Power Surge
				Manifested Power
				Focused Outburst
				Incessant Screams
				Energy Conservation
				Empowered Surges
				Word of Supremacy
				Sustained Potency
				Resonant Energy
				Energy Cycle
				Spiritwell
				Divine Halo
			]],
			herorighttalents = [[
			]],
		},
		{
			name = "Shadow (Mythic+)",
			ident = "shadow_mythic",
			spec = 3,
			hero = "left",
			classtalents = [[		
				Angelic Feather
				Dispel Magic
				Spiritual Guidance
				Leap of Faith
				Purify Disease
				Power Infusion
				Painful Invocation
				Petrifying Scream
				Body and Soul
				Mass Dispel
				Twins of the Sun Priestess
				Strength of Resolve
				Psychic Voice
				Twin Disciplines
				Dark Enlightenment
				Binding Heals
				Shadow Word: Death
				Sanguine Teachings
				Desperate Prayer
				Twist of Fate
				Twist of Fate
				Tithe Evasion
				Fade
				Angel's Mercy
				Protective Light
				Mindpierce
				Improved Fade
				Improved Fade
				Spell Warding
				Spell Warding
				Phantasm
				Focused Power
				Phantom Reach
				Translucent Image
			]],
			spectalents = [[
				Shadow Word: Madness
				Psychic Link
				Misery
				Mental Fortitude
				Tentacle Slam
				Shadowy Apparitions
				Tormenting Whispers
				Surge of Insanity
				Shadowy Insight
				Voidform
				Haunting Shadows
				Mental Decay
				Shadowfiend
				Maddening Touch
				Improved Voidform
				Phantom Menace
				Shattered Psyche
				Subservient Shadows
				Mind's Eye
				Spectral Horrors
				Auspicious Spirits
				Maddening Tentacles
				Screams of the Void
				Screams of the Void
				Tormented Spirits
				Insidious Ire
				Insidious Ire
				Idol of N'Zoth
				Idol of Yogg-Saron
				Idol of C'Thun
				Void Apparitions
				Void Apparitions
				Void Apparitions
				Void Apparitions
			]],
			herolefttalents = [[
				Perfected Form
				Power Surge
				Manifested Power
				Focused Outburst
				Incessant Screams
				Energy Conservation
				Empowered Surges
				Word of Supremacy
				Sustained Potency
				Resonant Energy
				Energy Cycle
				Spiritwell
				Divine Halo
			]],
			herorighttalents = [[
			]],
		},
		{
			name = "Shadow (Leveling/Delves)",
			spec = 3,
			hero = "left",
			suggested = true, 
			ident = "priest_shadow_leveling",
			classtalents = [[		
				Angelic Feather
				Dispel Magic
				Spiritual Guidance
				Leap of Faith
				Purify Disease
				Power Infusion
				Painful Invocation
				Petrifying Scream
				Body and Soul
				Mass Dispel
				Twins of the Sun Priestess
				Strength of Resolve
				Psychic Voice
				Twin Disciplines
				Dark Enlightenment
				Binding Heals
				Shadow Word: Death
				Sanguine Teachings
				Desperate Prayer
				Twist of Fate
				Twist of Fate
				Tithe Evasion
				Fade
				Angel's Mercy
				Protective Light
				Mindpierce
				Improved Fade
				Improved Fade
				Spell Warding
				Spell Warding
				Phantasm
				Focused Power
				Phantom Reach
				Translucent Image
			]],
			spectalents = [[
				Shadow Word: Madness
				Psychic Link
				Misery
				Mental Fortitude
				Tentacle Slam
				Shadowy Apparitions
				Tormenting Whispers
				Surge of Insanity
				Shadowy Insight
				Voidform
				Haunting Shadows
				Mental Decay
				Shadowfiend
				Maddening Touch
				Improved Voidform
				Phantom Menace
				Shattered Psyche
				Subservient Shadows
				Mind's Eye
				Spectral Horrors
				Auspicious Spirits
				Maddening Tentacles
				Screams of the Void
				Screams of the Void
				Tormented Spirits
				Insidious Ire
				Insidious Ire
				Idol of N'Zoth
				Idol of Yogg-Saron
				Idol of C'Thun
				Void Apparitions
				Void Apparitions
				Void Apparitions
				Void Apparitions
			]],
			herolefttalents = [[
				Perfected Form
				Power Surge
				Manifested Power
				Focused Outburst
				Incessant Screams
				Energy Conservation
				Empowered Surges
				Word of Supremacy
				Sustained Potency
				Resonant Energy
				Energy Cycle
				Spiritwell
				Divine Halo
			]],
			herorighttalents = [[
			]],
		},
	},

	ROGUE = {
		{
			name = "Assassination (Raid)",
			ident = "assassination_raid",
			spec = 1,
			hero = "right",
			classtalents = [[		
				Blind
				Cloak of Shadows
				Fleet Footed
				Airborne Irritant
				Thrill Seeking
				Master Poisoner
				Cheat Death
				Tricks of the Trade
				Nimble Fingers
				Quick Fingers
				Improved Sprint
				Evasion
				Iron Stomach
				Virulent Poisons
				Graceful Guile
				Featherfoot
				Atrophic Poison
				Deadly Precision
				Deep Cuts
				Unbreakable Stride
				Danger Sense
				Swift Slasher
				Improved Ambush
				Leeching Poison
				Lethality
				Lethality
				Recuperator
				Alacrity
				Alacrity
				Vigor
				Vigor
				Thistle Tea
				Cold Blooded Killer
				Deeper Stratagem
			]],
			spectalents = [[
				Deadly Poison
				Motivated Murderer
				Path of Blood
				Crimson Tempest
				Internal Bleeding
				Improved Garrote
				Seal Fate
				Razor Wire
				Bloody Mess
				Deathmark
				Caustic Spatter
				Sanguine Stratagem
				Fatal Concoction
				Fatal Concoction
				Finish the Job
				Lethal Dose
				Lethal Dose
				Systemic Failure
				Venomous Wounds
				Amplifying Poison
				Blindside
				Kingsbane
				Rapid Injection
				Rapid Injection
				Shrouded Suffocation
				Zoldyck Recipe
				Zoldyck Recipe
				Inspiring Strike
				Dashing Scoundrel
				Dragon-Tempered Blades
				Implacable
				Implacable
				Implacable
				Implacable
			]],
			herorighttalents = [[
				Tempted Fate
				Mean Streak
				Inexorable March
				Sometimes Lucky
				Deal Fate
				Fate Intertwined
				Edge Case
				Controlled Chaos
				Delivered Doom
				Overflowing Purse
				Rush to the Inevitable
				Ravenholdt Mint
				Lucky Coin
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Assassination (Mythic+)",
			ident = "assassination_mythic",
			spec = 1,
			hero = "right",
			classtalents = [[		
				Blind
				Cloak of Shadows
				Toxic Stiletto
				Fleet Footed
				Airborne Irritant
				Thrill Seeking
				Master Poisoner
				Cheat Death
				Tricks of the Trade
				Nimble Fingers
				Quick Fingers
				Improved Sprint
				Evasion
				Iron Stomach
				Virulent Poisons
				Graceful Guile
				Featherfoot
				Atrophic Poison
				Deadly Precision
				Deep Cuts
				Danger Sense
				Swift Slasher
				Tight Spender
				Leeching Poison
				Lethality
				Lethality
				Recuperator
				Alacrity
				Alacrity
				Vigor
				Vigor
				Thistle Tea
				Cold Blooded Killer
				Deeper Stratagem
			]],
			spectalents = [[
				Deadly Poison
				Motivated Murderer
				Path of Blood
				Crimson Tempest
				Internal Bleeding
				Improved Garrote
				Thrown Precision
				Seal Fate
				Razor Wire
				Bloody Mess
				Deathmark
				Caustic Spatter
				Sanguine Stratagem
				Finish the Job
				Lethal Dose
				Lethal Dose
				Secondary Poisoning
				Poison Bomb
				Venomous Wounds
				Amplifying Poison
				Kingsbane
				Rapid Injection
				Rapid Injection
				Shrouded Suffocation
				Zoldyck Recipe
				Zoldyck Recipe
				Inspiring Strike
				Scent of Blood
				Dashing Scoundrel
				Dragon-Tempered Blades
				Implacable
				Implacable
				Implacable
				Implacable
			]],
			herorighttalents = [[
				Tempted Fate
				Mean Streak
				Death's Arrival
				Sometimes Lucky
				Deal Fate
				Fate Intertwined
				Edge Case
				Controlled Chaos
				Delivered Doom
				Overflowing Purse
				Rush to the Inevitable
				Ravenholdt Mint
				Lucky Coin
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Assassination (Leveling/Delves)",
			spec = 1,
			hero = "left",
			suggested = true,
			ident = "rogue_assa_leveling",
			classtalents = [[		
				Blind
				Cloak of Shadows
				Toxic Stiletto
				Fleet Footed
				Airborne Irritant
				Thrill Seeking
				Master Poisoner
				Cheat Death
				Tricks of the Trade
				Nimble Fingers
				Quick Fingers
				Improved Sprint
				Evasion
				Iron Stomach
				Virulent Poisons
				Graceful Guile
				Featherfoot
				Atrophic Poison
				Deadly Precision
				Deep Cuts
				Danger Sense
				Swift Slasher
				Tight Spender
				Leeching Poison
				Lethality
				Lethality
				Recuperator
				Alacrity
				Alacrity
				Vigor
				Vigor
				Thistle Tea
				Cold Blooded Killer
				Deeper Stratagem
			]],
			spectalents = [[
				Deadly Poison
				Motivated Murderer
				Path of Blood
				Crimson Tempest
				Internal Bleeding
				Improved Garrote
				Thrown Precision
				Seal Fate
				Razor Wire
				Bloody Mess
				Deathmark
				Caustic Spatter
				Sanguine Stratagem
				Finish the Job
				Lethal Dose
				Lethal Dose
				Secondary Poisoning
				Poison Bomb
				Venomous Wounds
				Amplifying Poison
				Kingsbane
				Rapid Injection
				Rapid Injection
				Shrouded Suffocation
				Zoldyck Recipe
				Zoldyck Recipe
				Inspiring Strike
				Scent of Blood
				Dashing Scoundrel
				Dragon-Tempered Blades
				Implacable
				Implacable
				Implacable
				Implacable
			]],
			herolefttalents = [[
				Clear the Witnesses
				Hunt Them Down
				Singular Focus
				Precise Killer
				Unshakeable Drive
				Corrupt the Blood
				Lingering Darkness
				Quietus Celeris
				Bait and Switch
				Momentum of Despair
				Shadewalker
				Mass Casualty
				Darkest Night
			]],
			herorighttalents = [[
			]],
		},

		{
			name = "Outlaw (Raid)",
			ident = "outlaw_raid",
			spec = 2,
			hero = "right",
			classtalents = [[		
				Shiv
				Cloak of Shadows
				Fleet Footed
				Airborne Irritant
				Thrill Seeking
				Master Poisoner
				Cheat Death
				Tricks of the Trade
				Nimble Fingers
				Deadened Nerves
				Quick Fingers
				Improved Sprint
				Evasion
				Iron Stomach
				Virulent Poisons
				Graceful Guile
				Featherfoot
				Atrophic Poison
				Deadly Precision
				Deep Cuts
				Danger Sense
				Swift Slasher
				Tight Spender
				Leeching Poison
				Recuperator
				Alacrity
				Alacrity
				Vigor
				Vigor
				Supercharger
				Supercharger
				Thistle Tea
				Forced Induction
				Deeper Stratagem
			]],
			spectalents = [[
				Opportunity
				Combat Stamina
				Adrenaline Rush
				Expert Duelist
				Combat Potency
				Precision Shot
				Crescendo of Violence
				Deft Maneuvers
				Devious Stratagem
				Fatal Flourish
				Quick Draw
				Ruthlessness
				Blade Rush
				Loaded Dice
				Sleight of Hand
				Improved Between the Eyes
				Flickering Steel
				Improved Adrenaline Rush
				Ace Up Your Sleeve
				Ace Up Your Sleeve
				Acrobatic Strikes
				Menacing Rush
				Zero In
				Summarily Dispatched
				Dragon-Bone Dice
				Fan the Hammer
				Fan the Hammer
				Killing Spree
				Keep It Rolling
				Preparation
				Gravedigger
				Gravedigger
				Gravedigger
				Gravedigger
			]],
			herorighttalents = [[
				Surprising Strikes
				Smoke
				Flawless Form
				Hoodwink
				So Tricky
				Devious Distractions
				Thousand Cuts
				Flashing Steel
				Disorienting Strikes
				Cloud Cover
				Nimble Flurry
				Clever Combatant
				Coup de Grace
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Outlaw (Mythic+)",
			ident = "outlaw_mythic",
			spec = 2,
			hero = "right",
			classtalents = [[		
				Shiv
				Cloak of Shadows
				Fleet Footed
				Airborne Irritant
				Thrill Seeking
				Master Poisoner
				Cheat Death
				Tricks of the Trade
				Nimble Fingers
				Deadened Nerves
				Quick Fingers
				Improved Sprint
				Evasion
				Iron Stomach
				Virulent Poisons
				Graceful Guile
				Featherfoot
				Atrophic Poison
				Deadly Precision
				Deep Cuts
				Danger Sense
				Swift Slasher
				Tight Spender
				Leeching Poison
				Recuperator
				Alacrity
				Alacrity
				Vigor
				Vigor
				Supercharger
				Supercharger
				Thistle Tea
				Forced Induction
				Deeper Stratagem
			]],
			spectalents = [[
				Opportunity
				Combat Stamina
				Adrenaline Rush
				Expert Duelist
				Combat Potency
				Precision Shot
				Crescendo of Violence
				Deft Maneuvers
				Devious Stratagem
				Fatal Flourish
				Quick Draw
				Ruthlessness
				Blade Rush
				Loaded Dice
				Improved Between the Eyes
				Flickering Steel
				Improved Adrenaline Rush
				Ace Up Your Sleeve
				Ace Up Your Sleeve
				Dancing Steel
				Acrobatic Strikes
				Menacing Rush
				Zero In
				Grand Melee
				Dragon-Bone Dice
				Fan the Hammer
				Fan the Hammer
				Killing Spree
				Keep It Rolling
				Preparation
				Gravedigger
				Gravedigger
				Gravedigger
				Gravedigger
			]],
			herorighttalents = [[
				Surprising Strikes
				Smoke
				Flawless Form
				Hoodwink
				So Tricky
				Devious Distractions
				Thousand Cuts
				Flashing Steel
				Disorienting Strikes
				Cloud Cover
				Nimble Flurry
				Clever Combatant
				Coup de Grace
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Outlaw (Leveling/Delves)",
			spec = 2,
			hero = "right",
			suggested = true,
			ident = "rogue_outlaw_leveling",
			classtalents = [[		
				Cloak of Shadows
				Fleet Footed
				Thrill Seeking
				Shadowrunner
				Master Poisoner
				Cheat Death
				Tricks of the Trade
				Nimble Fingers
				Deadened Nerves
				Quick Fingers
				Improved Sprint
				Evasion
				Iron Stomach
				Virulent Poisons
				Graceful Guile
				Featherfoot
				Numbing Poison
				Deadly Precision
				Sanguine Vial
				Deep Cuts
				Danger Sense
				Swift Slasher
				Tight Spender
				Leeching Poison
				Recuperator
				Alacrity
				Alacrity
				Vigor
				Vigor
				Supercharger
				Supercharger
				Thistle Tea
				Forced Induction
				Deeper Stratagem
			]],
			spectalents = [[
				Opportunity
				Combat Stamina
				Adrenaline Rush
				Expert Duelist
				Combat Potency
				Precision Shot
				Crescendo of Violence
				Deft Maneuvers
				Devious Stratagem
				Fatal Flourish
				Quick Draw
				Ruthlessness
				Blade Rush
				Loaded Dice
				Improved Between the Eyes
				Flickering Steel
				Improved Adrenaline Rush
				Ace Up Your Sleeve
				Ace Up Your Sleeve
				Dancing Steel
				Acrobatic Strikes
				Menacing Rush
				Zero In
				Grand Melee
				Dragon-Bone Dice
				Fan the Hammer
				Fan the Hammer
				Killing Spree
				Keep It Rolling
				Preparation
				Gravedigger
				Gravedigger
				Gravedigger
				Gravedigger
			]],
			herorighttalents = [[
				Surprising Strikes
				Smoke
				Flawless Form
				Hoodwink
				So Tricky
				Devious Distractions
				Thousand Cuts
				Flashing Steel
				Disorienting Strikes
				Cloud Cover
				Nimble Flurry
				Clever Combatant
				Coup de Grace
			]],
			herolefttalents = [[
			]],
		},

		{
			name = "Subtlety (Raid)",
			ident = "subtlety_raid",
			spec = 3,
			hero = "right",
			classtalents = [[		
				Blind
				Fleet Footed
				Airborne Irritant
				Thrill Seeking
				Shadowrunner
				Master Poisoner
				Cheat Death
				Tricks of the Trade
				Nimble Fingers
				Deadened Nerves
				Quick Fingers
				Improved Sprint
				Evasion
				Iron Stomach
				Virulent Poisons
				Graceful Guile
				Featherfoot
				Atrophic Poison
				Deadly Precision
				Deep Cuts
				Danger Sense
				Swift Slasher
				Improved Ambush
				Leeching Poison
				Lethality
				Lethality
				Recuperator
				Alacrity
				Alacrity
				Supercharger
				Supercharger
				Cold Blooded Killer
				Forced Induction
				Deeper Stratagem
			]],
			spectalents = [[
				Find Weakness
				Improved Backstab
				Shadow Blades
				Improved Shuriken Storm
				Ephemeral Bond
				Silent Storm
				Exhilarating Execution
				Fade to Nothing
				Master of Shadows
				Shadow Focus
				Improved Secret Technique
				Relentless Strikes
				Weaponmaster
				Planned Execution
				Double Dance
				Shadowed Finishers
				Secret Stratagem
				Umbral Edge
				Deepening Shadows
				Veiltouched
				Replicating Shadows
				Improved Find Weakness
				Deeper Daggers
				Death Perception
				Death Perception
				Dark Shadow
				Dark Shadow
				The Rotten
				Shadowcraft
				Danse Macabre
				Ancient Arts
				Ancient Arts
				Ancient Arts
				Ancient Arts
			]],
			herorighttalents = [[
				Surprising Strikes
				Smoke
				Flawless Form
				Hoodwink
				So Tricky
				Devious Distractions
				Thousand Cuts
				Flashing Steel
				Disorienting Strikes
				Cloud Cover
				Nimble Flurry
				Clever Combatant
				Coup de Grace
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Subtlety (Mythic+)",
			ident = "subtlety_mythic",
			spec = 3,
			hero = "right",
			classtalents = [[		
				Blind
				Fleet Footed
				Airborne Irritant
				Thrill Seeking
				Shadowrunner
				Master Poisoner
				Cheat Death
				Tricks of the Trade
				Nimble Fingers
				Deadened Nerves
				Quick Fingers
				Improved Sprint
				Evasion
				Iron Stomach
				Virulent Poisons
				Graceful Guile
				Featherfoot
				Atrophic Poison
				Deadly Precision
				Deep Cuts
				Danger Sense
				Swift Slasher
				Improved Ambush
				Leeching Poison
				Lethality
				Lethality
				Recuperator
				Alacrity
				Alacrity
				Supercharger
				Supercharger
				Cold Blooded Killer
				Forced Induction
				Deeper Stratagem
			]],
			spectalents = [[
				Find Weakness
				Improved Backstab
				Shadow Blades
				Improved Shuriken Storm
				Ephemeral Bond
				Silent Storm
				Exhilarating Execution
				Fade to Nothing
				Master of Shadows
				Shadow Focus
				Improved Secret Technique
				Relentless Strikes
				Planned Execution
				Double Dance
				Shadowed Finishers
				Secret Stratagem
				Umbral Edge
				Deepening Shadows
				Veiltouched
				Replicating Shadows
				Improved Find Weakness
				Deeper Daggers
				Potent Powder
				Death Perception
				Death Perception
				Dark Shadow
				Dark Shadow
				Finality
				Shadowcraft
				Danse Macabre
				Ancient Arts
				Ancient Arts
				Ancient Arts
				Ancient Arts
			]],
			herorighttalents = [[
				Surprising Strikes
				Smoke
				Flawless Form
				Hoodwink
				So Tricky
				Devious Distractions
				Thousand Cuts
				Flashing Steel
				Disorienting Strikes
				Cloud Cover
				Nimble Flurry
				Clever Combatant
				Coup de Grace
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Subtlety (Leveling/Delves)",
			spec = 3,
			hero = "right",
			suggested = true,
			ident = "rogue_sub_leveling",
			classtalents = [[		
				Blind
				Fleet Footed
				Airborne Irritant
				Thrill Seeking
				Shadowrunner
				Master Poisoner
				Cheat Death
				Tricks of the Trade
				Nimble Fingers
				Deadened Nerves
				Quick Fingers
				Improved Sprint
				Evasion
				Iron Stomach
				Virulent Poisons
				Graceful Guile
				Featherfoot
				Atrophic Poison
				Deadly Precision
				Deep Cuts
				Danger Sense
				Swift Slasher
				Improved Ambush
				Leeching Poison
				Lethality
				Lethality
				Recuperator
				Alacrity
				Alacrity
				Supercharger
				Supercharger
				Cold Blooded Killer
				Forced Induction
				Deeper Stratagem
			]],
			spectalents = [[
				Find Weakness
				Improved Backstab
				Shadow Blades
				Improved Shuriken Storm
				Premeditation
				Silent Storm
				Exhilarating Execution
				Fade to Nothing
				Master of Shadows
				Shadow Focus
				Improved Secret Technique
				Relentless Strikes
				Planned Execution
				Double Dance
				Shadowed Finishers
				Secret Stratagem
				Umbral Edge
				The First Dance
				Deepening Shadows
				Veiltouched
				Replicating Shadows
				Improved Find Weakness
				Deeper Daggers
				Potent Powder
				Death Perception
				Death Perception
				Dark Shadow
				Dark Shadow
				Shadowcraft
				Danse Macabre
				Ancient Arts
				Ancient Arts
				Ancient Arts
				Ancient Arts
			]],
			herorighttalents = [[
				Surprising Strikes
				Smoke
				Flawless Form
				Hoodwink
				So Tricky
				Devious Distractions
				Thousand Cuts
				Flashing Steel
				Disorienting Strikes
				Cloud Cover
				Nimble Flurry
				Clever Combatant
				Coup de Grace
			]],
			herolefttalents = [[
			]],
		},
	},

	SHAMAN = {
		{
			name = "Elemental (Raid)",
			ident = "elemental_raid",
			spec = 1,
			hero = "right",
			classtalents = [[		
				Chain Heal
				Chain Lightning
				Earth Shield
				Fire and Ice
				Spirit Wolf
				Elemental Orbit
				Gust of Wind
				Astral Shift
				Nature's Guardian
				Winds of Al'Akir
				Winds of Al'Akir
				Planes Traveler
				Brimming with Life
				Brimming with Life
				Wind Shear
				Capacitor Totem
				Spiritual Awakening
				Enhanced Imbues
				Windveil
				Cleanse Spirit
				Wind Rush Totem
				Earth Elemental
				Purge
				Nature's Fury
				Nature's Fury
				Ascending Air
				Primordial Bond
				Spiritwalker's Grace
				Elemental Warding
				Totemic Focus
				Graceful Spirit
				Therazane's Resilience
				Nature's Swiftness
				Instinctive Imbuements
			]],
			spectalents = [[
				Elemental Blast
				Earthquake
				Elemental Fury
				Echo of the Elements
				Flash of Lightning
				Aftershock
				Master of the Elements
				Lightning Capacitor
				Stormkeeper
				Storm Frenzy
				Swelling Maelstrom
				Primordial Fury
				Fury of the Storms
				Amped Up
				Elemental Resonance
				Path of the Seer
				Elemental Unity
				Power of the Maelstrom
				Earthshatter
				Storm Infusion
				Echo Chamber
				Everlasting Elements
				Fusion of Elements
				Ascendance
				Inferno Arc
				Lightning Rod
				Mountains Will Fall
				Call of Fire
				First Ascendant
				Primal Elementalist
				Feedback Loop
				Feedback Loop
				Feedback Loop
				Feedback Loop
			]],
			herorighttalents = [[
				Unlimited Power
				Stormcaller
				Lightning Conduit
				Stormwell
				Supercharge
				Arc Discharge
				Rolling Thunder
				Natural Gift
				Voltaic Surge
				Conductive Energy
				Nature's Protection
				Descending Skies
				Awakening Storms
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Elemental (Mythic+)",
			ident = "elemental_mythic",
			spec = 1,
			hero = "right",
			classtalents = [[		
				Chain Heal
				Chain Lightning
				Earth Shield
				Fire and Ice
				Spirit Wolf
				Elemental Orbit
				Gust of Wind
				Astral Shift
				Nature's Guardian
				Winds of Al'Akir
				Winds of Al'Akir
				Planes Traveler
				Brimming with Life
				Brimming with Life
				Wind Shear
				Capacitor Totem
				Spiritual Awakening
				Enhanced Imbues
				Windveil
				Cleanse Spirit
				Earth Elemental
				Purge
				Nature's Fury
				Nature's Fury
				Primordial Bond
				Spiritwalker's Grace
				Elemental Warding
				Totemic Focus
				Graceful Spirit
				Poison Cleansing Totem
				Therazane's Resilience
				Nature's Swiftness
				Totemic Surge
				Instinctive Imbuements
			]],
			spectalents = [[
				Elemental Blast
				Earthquake
				Elemental Fury
				Echo of the Elements
				Flash of Lightning
				Aftershock
				Lightning Capacitor
				Stormkeeper
				Storm Frenzy
				Swelling Maelstrom
				Primordial Fury
				Fury of the Storms
				Amped Up
				Elemental Resonance
				Path of the Seer
				Elemental Unity
				Earthshatter
				Storm Infusion
				Echo Chamber
				Everlasting Elements
				Eye of the Storm
				Ascendance
				Inferno Arc
				Lightning Rod
				Mountains Will Fall
				Call of Fire
				Voltaic Blaze
				Charged Conduit
				First Ascendant
				Primal Elementalist
				Feedback Loop
				Feedback Loop
				Feedback Loop
				Feedback Loop
			]],
			herorighttalents = [[
				Unlimited Power
				Stormcaller
				Lightning Conduit
				Stormwell
				Supercharge
				Arc Discharge
				Rolling Thunder
				Natural Gift
				Voltaic Surge
				Conductive Energy
				Nature's Protection
				Descending Skies
				Awakening Storms
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Elemental (Leveling/Delves)",
			spec = 1,
			hero = "left",
			suggested = true, 
			ident = "sham_ele_leveling",
			classtalents = [[		
				Chain Heal
				Chain Lightning
				Earth Shield
				Fire and Ice
				Spirit Wolf
				Elemental Orbit
				Gust of Wind
				Astral Shift
				Nature's Guardian
				Winds of Al'Akir
				Winds of Al'Akir
				Planes Traveler
				Brimming with Life
				Brimming with Life
				Wind Shear
				Earthgrab Totem
				Capacitor Totem
				Spiritual Awakening
				Enhanced Imbues
				Windveil
				Cleanse Spirit
				Static Charge
				Static Charge
				Earth Elemental
				Purge
				Nature's Fury
				Nature's Fury
				Primordial Bond
				Spiritwalker's Grace
				Elemental Warding
				Graceful Spirit
				Therazane's Resilience
				Nature's Swiftness
				Instinctive Imbuements
			]],
			spectalents = [[
				Earth Shock
				Earthquake
				Elemental Fury
				Echo of the Elements
				Flash of Lightning
				Tectonic Collapse
				Molten Wrath
				Lightning Capacitor
				Stormkeeper
				Flametongue Weapon
				Storm Frenzy
				Swelling Maelstrom
				Primordial Fury
				Herald of the Storms
				Amped Up
				Elemental Resonance
				Path of the Seer
				Power of the Maelstrom
				Earthshatter
				Echo Chamber
				Fusion of Elements
				Ascendance
				Inferno Arc
				Lightning Rod
				Mountains Will Fall
				Call of Fire
				Voltaic Blaze
				First Ascendant
				Primal Elementalist
				Purging Flames
				Feedback Loop
				Feedback Loop
				Feedback Loop
				Feedback Loop
			]],
			herolefttalents = [[
				Ancient Fellowship
				Routine Communication
				Elemental Reverb
				Ancestral Influence
				Offering from Beyond
				Primordial Capacity
				Spiritwalker's Momentum
				Windspeaker
				Earthen Communion
				Maelstrom Supremacy
				Final Calling
				Mystic Knowledge
				Ancestral Swiftness
			]],
			herorighttalents = [[
			]],
		},

		{
			name = "Enhancement (Raid)",
			ident = "enhancement_raid",
			spec = 2,
			hero = "right",	
			classtalents = [[		
				Chain Heal
				Chain Lightning
				Earth Shield
				Fire and Ice
				Spirit Wolf
				Elemental Orbit
				Spirit Walk
				Astral Shift
				Nature's Guardian
				Winds of Al'Akir
				Winds of Al'Akir
				Planes Traveler
				Brimming with Life
				Brimming with Life
				Wind Shear
				Earthgrab Totem
				Capacitor Totem
				Spiritual Awakening
				Enhanced Imbues
				Windveil
				Refreshing Waters
				Wind Rush Totem
				Earth Elemental
				Nature's Fury
				Nature's Fury
				Jet Stream
				Primordial Bond
				Totemic Projection
				Elemental Warding
				Totemic Focus
				Mana Spring
				Therazane's Resilience
				Totemic Surge
				Instinctive Imbuements
			]],
			spectalents = [[
				Maelstrom Weapon
				Windfury Weapon
				Flametongue Weapon
				Forceful Winds
				Crash Lightning
				Molten Assault
				Unruly Winds
				Overflowing Maelstrom
				Ashen Catalyst
				Stormblast
				Raging Maelstrom
				Hot Hand
				Hot Hand
				Storm's Wrath
				Elemental Tempo
				Voltaic Blaze
				Converging Storms
				Stormflurry
				Elemental Weapons
				Lashing Flames
				Ride the Lightning
				Doom Winds
				Sundering
				Elemental Assault
				Static Accumulation
				Static Accumulation
				Feral Spirit
				Surging Elements
				Thorim's Invocation
				Primordial Storm
				Storm Unleashed
				Storm Unleashed
				Storm Unleashed
				Storm Unleashed
			]],
			herorighttalents = [[
				Totemic Rebound
				Amplification Core
				Lively Totems
				Totemic Momentum
				Oversized Totems
				Wind Barrier
				Splitstream
				Elemental Attunement
				Imbuement Mastery
				Supportive Imbuements
				Earthsurge
				Primal Catalyst
				Whirling Elements
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Enhancement (Mythic+)",
			ident = "enhancement_mythic",
			spec = 2,
			hero = "right",
			classtalents = [[		
				Chain Heal
				Chain Lightning
				Earth Shield
				Fire and Ice
				Spirit Wolf
				Elemental Orbit
				Spirit Walk
				Astral Shift
				Nature's Guardian
				Winds of Al'Akir
				Winds of Al'Akir
				Planes Traveler
				Brimming with Life
				Brimming with Life
				Wind Shear
				Capacitor Totem
				Spiritual Awakening
				Enhanced Imbues
				Windveil
				Cleanse Spirit
				Static Charge
				Static Charge
				Wind Rush Totem
				Earth Elemental
				Purge
				Nature's Fury
				Nature's Fury
				Jet Stream
				Primordial Bond
				Totemic Projection
				Elemental Warding
				Totemic Focus
				Therazane's Resilience
				Instinctive Imbuements
			]],
			spectalents = [[
				Maelstrom Weapon
				Windfury Weapon
				Flametongue Weapon
				Forceful Winds
				Crash Lightning
				Molten Assault
				Unruly Winds
				Overflowing Maelstrom
				Ashen Catalyst
				Stormblast
				Raging Maelstrom
				Hot Hand
				Hot Hand
				Storm's Wrath
				Elemental Tempo
				Voltaic Blaze
				Chaining Storms
				Elemental Weapons
				Fire Nova
				Lashing Flames
				Ride the Lightning
				Doom Winds
				Sundering
				Elemental Assault
				Static Accumulation
				Static Accumulation
				Feral Spirit
				Surging Elements
				Thorim's Invocation
				Primordial Storm
				Storm Unleashed
				Storm Unleashed
				Storm Unleashed
				Storm Unleashed
			]],
			herorighttalents = [[
				Totemic Rebound
				Amplification Core
				Lively Totems
				Totemic Momentum
				Oversized Totems
				Wind Barrier
				Splitstream
				Elemental Attunement
				Imbuement Mastery
				Supportive Imbuements
				Earthsurge
				Primal Catalyst
				Whirling Elements
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Enhancement (Leveling/Delves)",
			spec = 2,
			hero = "right",
			suggested = true, 
			ident = "sham_enh_leveling",
			classtalents = [[		
				Chain Heal
				Chain Lightning
				Earth Shield
				Fire and Ice
				Spirit Wolf
				Elemental Orbit
				Spirit Walk
				Astral Shift
				Nature's Guardian
				Winds of Al'Akir
				Winds of Al'Akir
				Planes Traveler
				Brimming with Life
				Brimming with Life
				Wind Shear
				Earthgrab Totem
				Capacitor Totem
				Spiritual Awakening
				Enhanced Imbues
				Windveil
				Refreshing Waters
				Cleanse Spirit
				Static Charge
				Static Charge
				Wind Rush Totem
				Earth Elemental
				Purge
				Nature's Fury
				Nature's Fury
				Totemic Projection
				Elemental Warding
				Therazane's Resilience
				Totemic Surge
				Instinctive Imbuements
			]],
			spectalents = [[
				Maelstrom Weapon
				Windfury Weapon
				Flametongue Weapon
				Forceful Winds
				Crash Lightning
				Molten Assault
				Unruly Winds
				Overflowing Maelstrom
				Ashen Catalyst
				Stormblast
				Raging Maelstrom
				Hot Hand
				Hot Hand
				Storm's Wrath
				Elemental Tempo
				Voltaic Blaze
				Chaining Storms
				Converging Storms
				Elemental Weapons
				Lashing Flames
				Ride the Lightning
				Doom Winds
				Sundering
				Elemental Assault
				Static Accumulation
				Static Accumulation
				Feral Spirit
				Surging Elements
				Thorim's Invocation
				Primordial Storm
				Storm Unleashed
				Storm Unleashed
				Storm Unleashed
				Storm Unleashed
			]],
			herorighttalents = [[
				Totemic Rebound
				Amplification Core
				Lively Totems
				Totemic Momentum
				Oversized Totems
				Wind Barrier
				Splitstream
				Elemental Attunement
				Imbuement Mastery
				Supportive Imbuements
				Earthsurge
				Primal Catalyst
				Whirling Elements
			]],
			herolefttalents = [[
			]],
		},

		{
			name = "Restoration (Raid)",
			ident = "restoration_raid",
			spec = 3,
			hero = "left",
			classtalents = [[		
				Lava Burst
				Earth Shield
				Thunderous Paws
				Elemental Orbit
				Gust of Wind
				Astral Shift
				Nature's Guardian
				Healing Stream Totem
				Winds of Al'Akir
				Winds of Al'Akir
				Planes Traveler
				Brimming with Life
				Brimming with Life
				Wind Shear
				Elemental Resistance
				Earthgrab Totem
				Spiritual Awakening
				Enhanced Imbues
				Refreshing Waters
				Improved Purify Spirit
				Wind Rush Totem
				Nature's Fury
				Nature's Fury
				Ascending Air
				Spiritwalker's Grace
				Totemic Projection
				Elemental Warding
				Totemic Focus
				Graceful Spirit
				Mana Spring
				Therazane's Resilience
				Nature's Swiftness
				Totemic Surge
				Instinctive Imbuements
			]],
			spectalents = [[
				Riptide
				Healing Rain
				Healing Stream Totem
				Soothing Rain
				Ascendance
				Water Totem Mastery
				Overflowing Shores
				Preeminence
				Resurgence
				Living Stream
				White Water
				Calm Waters
				Quickstream
				Rip Current
				Unleash Life
				Torrent
				Earthliving Weapon
				Deluge
				Tidal Waves
				Ancestral Reach
				Echo of the Elements
				Spirit Link Totem
				Tidewaters
				Undercurrent
				Undercurrent
				Wavespeaker's Blessing
				Wavespeaker's Blessing
				Primal Tide Core
				Coalescing Water
				Deeply Rooted Elements
				Stormstream Totem
				Stormstream Totem
				Stormstream Totem
				Stormstream Totem
			]],
			herolefttalents = [[
				Ancient Fellowship
				Routine Communication
				Elemental Reverb
				Ancestral Influence
				Offering from Beyond
				Primordial Capacity
				Spiritwalker's Momentum
				Windspeaker
				Natural Harmony
				Maelstrom Supremacy
				Final Calling
				Mystic Knowledge
				Ancestral Swiftness
			]],
			herorighttalents = [[
			]],
		},
		{
			name = "Restoration (Mythic+)",
			ident = "restoration_mythic",
			spec = 3,
			hero = "left",
			classtalents = [[		
				Lava Burst
				Chain Lightning
				Earth Shield
				Thunderous Paws
				Elemental Orbit
				Gust of Wind
				Astral Shift
				Nature's Guardian
				Healing Stream Totem
				Planes Traveler
				Brimming with Life
				Brimming with Life
				Wind Shear
				Elemental Resistance
				Earthgrab Totem
				Capacitor Totem
				Spiritual Awakening
				Enhanced Imbues
				Refreshing Waters
				Improved Purify Spirit
				Wind Rush Totem
				Purge
				Nature's Fury
				Nature's Fury
				Ascending Air
				Spiritwalker's Grace
				Totemic Projection
				Elemental Warding
				Totemic Focus
				Graceful Spirit
				Therazane's Resilience
				Nature's Swiftness
				Totemic Surge
				Instinctive Imbuements
			]],
			spectalents = [[
				Riptide
				Healing Rain
				Healing Stream Totem
				Soothing Rain
				Ascendance
				Water Totem Mastery
				Overflowing Shores
				Ancestral Vigor
				Ancestral Vigor
				Preeminence
				Resurgence
				Living Stream
				White Water
				Quickstream
				Rip Current
				Unleash Life
				Torrent
				Earthliving Weapon
				Deluge
				Tidal Waves
				Flow of the Tides
				Echo of the Elements
				Spirit Link Totem
				Earthen Harmony
				Ancestral Awakening
				Ancestral Awakening
				Spouting Spirits
				Primal Tide Core
				Coalescing Water
				Deeply Rooted Elements
				Stormstream Totem
				Stormstream Totem
				Stormstream Totem
				Stormstream Totem
			]],
			herolefttalents = [[
				Latent Wisdom
				Heed My Call
				Elemental Reverb
				Ancestral Influence
				Offering from Beyond
				Primordial Capacity
				Spiritwalker's Momentum
				Windspeaker
				Natural Harmony
				Maelstrom Supremacy
				Final Calling
				Mystic Knowledge
				Ancestral Swiftness
			]],
			herorighttalents = [[
			]],
		},
		{
			name = "Restoration (Leveling/Delves)",
			spec = 3,
			hero = "left",
			suggested = true, 
			ident = "sham_resto_leveling",
			classtalents = [[		
				Lava Burst
				Chain Lightning
				Earth Shield
				Fire and Ice
				Thunderous Paws
				Elemental Orbit
				Gust of Wind
				Astral Shift
				Nature's Guardian
				Healing Stream Totem
				Planes Traveler
				Brimming with Life
				Brimming with Life
				Wind Shear
				Earthgrab Totem
				Capacitor Totem
				Spiritual Awakening
				Enhanced Imbues
				Refreshing Waters
				Improved Purify Spirit
				Earth Elemental
				Purge
				Nature's Fury
				Nature's Fury
				Primordial Bond
				Spiritwalker's Grace
				Totemic Projection
				Elemental Warding
				Totemic Focus
				Graceful Spirit
				Therazane's Resilience
				Nature's Swiftness
				Totemic Surge
				Instinctive Imbuements
			]],
			spectalents = [[
				Riptide
				Healing Stream Totem
				Ascendance
				Water Totem Mastery
				Ancestral Vigor
				Ancestral Vigor
				Preeminence
				Resurgence
				Living Stream
				Current Control
				White Water
				Quickstream
				Rip Current
				Unleash Life
				Torrent
				Earthliving Weapon
				Earthweaver
				Deluge
				Earthen Accord
				Tidal Waves
				Improved Earthliving Weapon
				Echo of the Elements
				Spirit Link Totem
				Earthen Harmony
				Ancestral Awakening
				Ancestral Awakening
				Spouting Spirits
				Primal Tide Core
				Coalescing Water
				Deeply Rooted Elements
				Stormstream Totem
				Stormstream Totem
				Stormstream Totem
				Stormstream Totem
			]],
			herolefttalents = [[
				Latent Wisdom
				Heed My Call
				Elemental Reverb
				Ancestral Influence
				Offering from Beyond
				Primordial Capacity
				Spiritwalker's Momentum
				Windspeaker
				Natural Harmony
				Maelstrom Supremacy
				Final Calling
				Mystic Knowledge
				Ancestral Swiftness
			]],
			herorighttalents = [[
			]],
		},
	},

	WARLOCK = {
		{
			name = "Affliction (Raid)",
			ident = "affliction_raid",
			spec = 1,
			hero = "right",
			classtalents = [[		
				Fel Domination
				Burning Rush
				Demon Skin
				Demon Skin
				Fel Armor
				Fel Armor
				Fiendish Stride
				Demonic Embrace
				Demonic Fortitude
				Curse of Exhaustion
				Infernal Beneficiary
				Mortal Coil
				Pact of the Annihilan
				Demonic Circle
				Pact of the Satyr
				Improved Mortal Coil
				Dark Pact
				Empowered Healthstone
				Abyss Walker
				Fortified Soul
				Gorefiend's Avarice
				Frequent Donor
				Pact of the Eredar
				Pact of the Nathrezim
				Empowered Drain Life
				Strength of Will
				Demonic Gateway
				Swift Artifice
				Soul Link
				Soul Link
				Fel Synergy
				Fel Synergy
				Pact of Gluttony
				Soulburn
			]],
			spectalents = [[
				Agony
				Unstable Affliction
				Seed of Corruption
				Nightfall
				Haunt
				Shared Agony
				Improved Shadow Bolt
				Improved Haunt
				Absolute Corruption
				Cunning Cruelty
				Withering Bolt
				Withering Bolt
				Creeping Death
				Creeping Death
				Dark Harvest
				Practiced Pestilence
				Summon Darkglare
				Summoner's Embrace
				Cull the Weak
				Malediction
				Eye Contract
				Malefic Grasp
				Shard Instability
				Potent Soul Shards
				Xavius' Gambit
				Xavius' Gambit
				Ravenous Afflictions
				Fatal Echoes
				Cascading Calamity
				Death's Embrace
				Shadow of Nathreza
				Shadow of Nathreza
				Shadow of Nathreza
				Shadow of Nathreza
			]],
			herorighttalents = [[
				Necrolyte Teachings
				Soul Anathema
				Demoniac's Fervor
				Manifested Avarice
				Friends In Dark Places
				Shared Fate
				Eternal Servitude
				Shared Vessel
				Wicked Reaping
				Quietus
				Sataiel's Volition
				Eternal Hunger
				Shadow of Death
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Affliction (Mythic+)",
			ident = "affliction_mythic",
			spec = 1,
			hero = "right",
			classtalents = [[		
				Fel Domination
				Burning Rush
				Demon Skin
				Demon Skin
				Fel Armor
				Fel Armor
				Fiendish Stride
				Demonic Embrace
				Demonic Fortitude
				Curse of Exhaustion
				Infernal Beneficiary
				Mortal Coil
				Pact of the Annihilan
				Demonic Circle
				Pact of the Satyr
				Improved Mortal Coil
				Dark Pact
				Empowered Healthstone
				Abyss Walker
				Fortified Soul
				Gorefiend's Avarice
				Frequent Donor
				Pact of the Eredar
				Pact of the Nathrezim
				Empowered Drain Life
				Strength of Will
				Demonic Gateway
				Swift Artifice
				Soul Link
				Soul Link
				Fel Synergy
				Fel Synergy
				Pact of Gluttony
				Soulburn
			]],
			spectalents = [[
				Agony
				Unstable Affliction
				Seed of Corruption
				Nightfall
				Haunt
				Shared Agony
				Improved Shadow Bolt
				Improved Haunt
				Absolute Corruption
				Withering Bolt
				Withering Bolt
				Creeping Death
				Creeping Death
				Dark Harvest
				Practiced Pestilence
				Summon Darkglare
				Summoner's Embrace
				Cull the Weak
				Malediction
				Eye Contract
				Contagion
				Shard Instability
				Niskaran Methods
				Nocturnal Yield
				Xavius' Gambit
				Xavius' Gambit
				Ravenous Afflictions
				Fatal Echoes
				Cascading Calamity
				Death's Embrace
				Shadow of Nathreza
				Shadow of Nathreza
				Shadow of Nathreza
				Shadow of Nathreza
			]],
			herorighttalents = [[
				Necrolyte Teachings
				Soul Anathema
				Demoniac's Fervor
				Manifested Avarice
				Friends In Dark Places
				Shared Fate
				Eternal Servitude
				Shared Vessel
				Wicked Reaping
				Quietus
				Sataiel's Volition
				Eternal Hunger
				Shadow of Death
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Affliction (Leveling/Delves)",
			spec = 1,
			hero = "right",
			suggested = true,
			ident = "wrlck_affi_leveling",
			classtalents = [[		
				Fel Domination
				Burning Rush
				Demon Skin
				Demon Skin
				Fel Armor
				Fel Armor
				Fiendish Stride
				Demonic Embrace
				Demonic Fortitude
				Curse of Exhaustion
				Infernal Beneficiary
				Mortal Coil
				Pact of the Annihilan
				Demonic Circle
				Pact of the Satyr
				Improved Mortal Coil
				Dark Pact
				Empowered Healthstone
				Abyss Walker
				Fortified Soul
				Gorefiend's Avarice
				Frequent Donor
				Pact of the Eredar
				Pact of the Nathrezim
				Empowered Drain Life
				Strength of Will
				Demonic Gateway
				Swift Artifice
				Soul Link
				Soul Link
				Fel Synergy
				Fel Synergy
				Pact of Gluttony
				Soulburn
			]],
			spectalents = [[
				Agony
				Unstable Affliction
				Seed of Corruption
				Nightfall
				Haunt
				Shared Agony
				Improved Shadow Bolt
				Improved Haunt
				Absolute Corruption
				Withering Bolt
				Withering Bolt
				Creeping Death
				Creeping Death
				Dark Harvest
				Practiced Pestilence
				Summon Darkglare
				Summoner's Embrace
				Cull the Weak
				Malediction
				Eye Contract
				Contagion
				Shard Instability
				Niskaran Methods
				Nocturnal Yield
				Xavius' Gambit
				Xavius' Gambit
				Ravenous Afflictions
				Fatal Echoes
				Cascading Calamity
				Death's Embrace
				Shadow of Nathreza
				Shadow of Nathreza
				Shadow of Nathreza
				Shadow of Nathreza
			]],
			herorighttalents = [[
				Necrolyte Teachings
				Soul Anathema
				Demoniac's Fervor
				Manifested Avarice
				Friends In Dark Places
				Shared Fate
				Eternal Servitude
				Shared Vessel
				Wicked Reaping
				Quietus
				Sataiel's Volition
				Eternal Hunger
				Shadow of Death
			]],
			herolefttalents = [[
			]],
		},

		{
			name = "Demonology (Raid)",
			ident = "demonology_raid",
			spec = 2,
			hero = "right",
			classtalents = [[		
				Fel Domination
				Burning Rush
				Demon Skin
				Demon Skin
				Fel Armor
				Fel Armor
				Fiendish Stride
				Demonic Embrace
				Demonic Fortitude
				Curse of Exhaustion
				Curse of Tongues
				Mortal Coil
				Pact of the Annihilan
				Demonic Circle
				Pact of the Satyr
				Improved Mortal Coil
				Dark Pact
				Foul Mouth
				Empowered Healthstone
				Fortified Soul
				Gorefiend's Avarice
				Frequent Donor
				Pact of the Eredar
				Pact of the Nathrezim
				Demonic Resilience
				Empowered Drain Life
				Strength of Will
				Demonic Gateway
				Swift Artifice
				Soul Link
				Soul Link
				Frequent Traveler
				Pact of Gluttony
				Soulburn
			]],
			spectalents = [[
				Hand of Gul'dan
				Demoniac
				Call Dreadstalkers
				Dominant Hand
				Fel Intellect
				Practiced Rituals
				Imp-erator
				Power Siphon
				Summon Felguard
				Infernal Rapidity
				Rune of Shadows
				Rune of Shadows
				Carnivorous Stalkers
				Carnivorous Stalkers
				Imp Gang Boss
				Inner Demons
				Summon Demonic Tyrant
				Improved Demonic Tactics
				Tyrant's Oblation
				Antoran Armaments
				Flametouched
				Reign of Tyranny
				Master Summoner
				Demonic Calling
				Demonic Calling
				Hellbent Commander
				Grimoire: Imp Lord
				Summon Vilefiend
				To Hell and Back
				Mark of Shatug
				Dominion of Argus
				Dominion of Argus
				Dominion of Argus
				Dominion of Argus
			]],
			herorighttalents = [[
				Necrolyte Teachings
				Soul Anathema
				Demoniac's Fervor
				Manifested Avarice
				Gorebound Fortitude
				Shared Fate
				Eternal Servitude
				Shared Vessel
				Wicked Reaping
				Quietus
				Sataiel's Volition
				Eternal Hunger
				Shadow of Death
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Demonology (Mythic+)",
			ident = "demonology_mythic",
			spec = 2,
			hero = "right",
			classtalents = [[		
				Fel Domination
				Burning Rush
				Demon Skin
				Demon Skin
				Fel Armor
				Fel Armor
				Fiendish Stride
				Demonic Embrace
				Demonic Fortitude
				Curse of Exhaustion
				Curse of Tongues
				Mortal Coil
				Pact of the Annihilan
				Demonic Circle
				Pact of the Satyr
				Dark Pact
				Foul Mouth
				Empowered Healthstone
				Fortified Soul
				Frequent Donor
				Pact of the Eredar
				Pact of the Nathrezim
				Demonic Resilience
				Strength of Will
				Demonic Gateway
				Shadowfury
				Swift Artifice
				Soul Link
				Soul Link
				Frequent Traveler
				Oppressive Darkness
				Pact of Gluttony
				Soulburn
				Blight of Tongues
			]],
			spectalents = [[
				Hand of Gul'dan
				Demoniac
				Call Dreadstalkers
				Fel Intellect
				Practiced Rituals
				Imp-erator
				Implosion
				Summon Felguard
				Infernal Rapidity
				Rune of Shadows
				Rune of Shadows
				Fel Armaments
				Imp Gang Boss
				Demonic Brutality
				Summon Demonic Tyrant
				Empowered Felstorm
				Spiteful Reconstitution
				Tyrant's Oblation
				Antoran Armaments
				Flametouched
				Demonic Knowledge
				Demonic Knowledge
				Master Summoner
				Demonic Calling
				Demonic Calling
				Doom
				Hellbent Commander
				Grimoire: Fel Ravager
				Summon Doomguard
				To Hell and Back
				Dominion of Argus
				Dominion of Argus
				Dominion of Argus
				Dominion of Argus
			]],
			herorighttalents = [[
				Necrolyte Teachings
				Soul Anathema
				Demoniac's Fervor
				Manifested Avarice
				Gorebound Fortitude
				Shared Fate
				Eternal Servitude
				Shared Vessel
				Wicked Reaping
				Quietus
				Sataiel's Volition
				Eternal Hunger
				Shadow of Death
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Demonology (Leveling/Delves)",
			spec = 2,
			hero = "right",
			suggested = true,
			ident = "wrlck_demo_leveling",
			classtalents = [[		
				Fel Domination
				Burning Rush
				Demon Skin
				Demon Skin
				Fel Armor
				Fel Armor
				Fiendish Stride
				Demonic Embrace
				Demonic Fortitude
				Curse of Exhaustion
				Curse of Tongues
				Mortal Coil
				Pact of the Annihilan
				Demonic Circle
				Pact of the Satyr
				Dark Pact
				Foul Mouth
				Empowered Healthstone
				Fortified Soul
				Frequent Donor
				Pact of the Eredar
				Pact of the Nathrezim
				Demonic Resilience
				Strength of Will
				Demonic Gateway
				Shadowfury
				Swift Artifice
				Soul Link
				Soul Link
				Frequent Traveler
				Oppressive Darkness
				Pact of Gluttony
				Soulburn
				Blight of Tongues
			]],
			spectalents = [[
				Hand of Gul'dan
				Demoniac
				Call Dreadstalkers
				Fel Intellect
				Practiced Rituals
				Imp-erator
				Implosion
				Summon Felguard
				Infernal Rapidity
				Rune of Shadows
				Rune of Shadows
				Fel Armaments
				Imp Gang Boss
				Demonic Brutality
				Summon Demonic Tyrant
				Empowered Felstorm
				Spiteful Reconstitution
				Tyrant's Oblation
				Antoran Armaments
				Flametouched
				Demonic Knowledge
				Demonic Knowledge
				Master Summoner
				Demonic Calling
				Demonic Calling
				Hellbent Commander
				Grimoire: Fel Ravager
				Summon Vilefiend
				To Hell and Back
				Mark of F'harg
				Dominion of Argus
				Dominion of Argus
				Dominion of Argus
				Dominion of Argus
			]],
			herorighttalents = [[
				Necrolyte Teachings
				Soul Anathema
				Demoniac's Fervor
				Manifested Avarice
				Gorebound Fortitude
				Shared Fate
				Eternal Servitude
				Shared Vessel
				Wicked Reaping
				Quietus
				Sataiel's Volition
				Eternal Hunger
				Shadow of Death
			]],
			herolefttalents = [[
			]],
		},

		{
			name = "Destruction (Raid)",
			ident = "destruction_raid",
			spec = 3,
			hero = "left",
			classtalents = [[		
				Fel Domination
				Burning Rush
				Demon Skin
				Demon Skin
				Fel Armor
				Fel Armor
				Fiendish Stride
				Demonic Embrace
				Demonic Fortitude
				Curse of Exhaustion
				Mortal Coil
				Pact of the Annihilan
				Demonic Circle
				Pact of the Satyr
				Improved Mortal Coil
				Dark Pact
				Empowered Healthstone
				Abyss Walker
				Fortified Soul
				Gorefiend's Avarice
				Frequent Donor
				Pact of the Eredar
				Pact of the Nathrezim
				Empowered Drain Life
				Strength of Will
				Demonic Gateway
				Swift Artifice
				Soul Link
				Soul Link
				Frequent Traveler
				Fel Synergy
				Fel Synergy
				Pact of Gluttony
				Soulburn
			]],
			spectalents = [[
				Chaos Bolt
				Conflagrate
				Rain of Fire
				Backdraft
				Practiced Chaos
				Roaring Blaze
				Explosive Potential
				Scalding Flames
				Shadowburn
				Backlash
				Backlash
				Ashen Remains
				Ashen Remains
				Fiendish Cruelty
				Chaotic Inferno
				Summon Infernal
				Emberstorm
				Reverse Entropy
				Rain of Chaos
				Summoner's Embrace
				Ruin
				Ruin
				Improved Chaos Bolt
				Devastation
				Devastation
				Soul Fire
				Chaos Incarnate
				Conflagration of Chaos
				Diabolic Embers
				Avatar of Destruction
				Embers of Nihilam
				Embers of Nihilam
				Embers of Nihilam
				Embers of Nihilam
			]],
			herolefttalents = [[
				Cloven Souls
				Touch of Rancora
				Secrets of the Coven
				Diabolic Oculi
				Soul-Etched Circles
				Infernal Machine
				Infernal Bulwark
				Looks That Kill
				Flames of Xoroth
				Abyssal Dominion
				Gloom of Nathreza
				Mind's Eyes
				Ruination
			]],
			herorighttalents = [[
			]],
		},
		{
			name = "Destruction (Mythic+)",
			ident = "destruction_mythic",
			spec = 3,
			hero = "right",
			classtalents = [[		
				Fel Domination
				Burning Rush
				Demon Skin
				Demon Skin
				Fel Armor
				Fel Armor
				Demonic Embrace
				Demonic Fortitude
				Curse of Exhaustion
				Curse of Tongues
				Infernal Beneficiary
				Mortal Coil
				Pact of the Annihilan
				Demonic Circle
				Pact of the Satyr
				Dark Pact
				Foul Mouth
				Empowered Healthstone
				Fortified Soul
				Gorefiend's Avarice
				Ichor of Devils
				Pact of the Eredar
				Pact of the Nathrezim
				Empowered Drain Life
				Strength of Will
				Demonic Gateway
				Howl of Terror
				Swift Artifice
				Soul Link
				Soul Link
				Oppressive Darkness
				Pact of Gluttony
				Soulburn
				Blight of Tongues
			]],
			spectalents = [[
				Chaos Bolt
				Conflagrate
				Rain of Fire
				Backdraft
				Roaring Blaze
				Explosive Potential
				Mayhem
				Scalding Flames
				Shadowburn
				Backlash
				Backlash
				Improved Havoc
				Cataclysm
				Fiendish Cruelty
				Summon Infernal
				Fire and Brimstone
				Lake of Fire
				Reverse Entropy
				Rain of Chaos
				Summoner's Embrace
				Ruin
				Ruin
				Improved Chaos Bolt
				Destructive Rapidity
				Devastation
				Devastation
				Chaos Incarnate
				Conflagration of Chaos
				Diabolic Embers
				Alythess's Ire
				Embers of Nihilam
				Embers of Nihilam
				Embers of Nihilam
				Embers of Nihilam
			]],
			herorighttalents = [[
				Xalan's Ferocity
				Blackened Soul
				Xalan's Cruelty
				Through the Felvine
				Curse of the Satyr
				Bleakheart Tactics
				Zevrim's Resilience
				Devil Fruit
				Mark of Xavius
				Seeds of Their Demise
				Mark of Peroth'arn
				Alzzin's Iniquity
				Malevolence
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Destruction (Leveling/Delves)",
			spec = 3,
			hero = "right",
			suggested = true,
			ident = "wrlck_destro_leveling",
			classtalents = [[		
				Fel Domination
				Burning Rush
				Demon Skin
				Demon Skin
				Fel Armor
				Fel Armor
				Fiendish Stride
				Demonic Embrace
				Demonic Fortitude
				Curse of Exhaustion
				Mortal Coil
				Pact of the Annihilan
				Demonic Circle
				Pact of the Satyr
				Improved Mortal Coil
				Dark Pact
				Foul Mouth
				Empowered Healthstone
				Fortified Soul
				Gorefiend's Avarice
				Frequent Donor
				Pact of the Eredar
				Pact of the Nathrezim
				Strength of Will
				Demonic Gateway
				Swift Artifice
				Soul Link
				Soul Link
				Frequent Traveler
				Fel Synergy
				Fel Synergy
				Pact of Gluttony
				Soulburn
				Blight of Tongues
			]],
			spectalents = [[
				Chaos Bolt
				Conflagrate
				Rain of Fire
				Backdraft
				Roaring Blaze
				Explosive Potential
				Havoc
				Scalding Flames
				Shadowburn
				Backlash
				Backlash
				Improved Havoc
				Ashen Remains
				Ashen Remains
				Fiendish Cruelty
				Summon Infernal
				Emberstorm
				Reverse Entropy
				Crashing Chaos
				Summoner's Embrace
				Ruin
				Ruin
				Improved Chaos Bolt
				Devastation
				Devastation
				Dimensional Rift
				Chaos Incarnate
				Conflagration of Chaos
				Diabolic Embers
				Avatar of Destruction
				Embers of Nihilam
				Embers of Nihilam
				Embers of Nihilam
				Embers of Nihilam
			]],
			herorighttalents = [[
				Xalan's Ferocity
				Blackened Soul
				Xalan's Cruelty
				Through the Felvine
				Aura of Enfeeblement
				Bleakheart Tactics
				Illhoof's Design
				Devil Fruit
				Mark of Xavius
				Seeds of Their Demise
				Mark of Peroth'arn
				Alzzin's Iniquity
				Malevolence
			]],
			herolefttalents = [[
			]],
		},
	},

	WARRIOR = {
		{
			name = "Arms (Raid)",
			ident = "arms_raid",
			spec = 1,
			hero = "right",
			classtalents = [[		
				Fast Footwork
				War Machine
				Leeching Strikes
				Impending Victory
				Heroic Leap
				Storm Bolt
				Rend
				Frothing Berserker
				Bounding Stride
				Pain and Gain
				Interpose
				Overwhelming Rage
				Rallying Cry
				Field Dressing
				Spell Reflection
				Wrecking Throw
				Piercing Howl
				Honed Reflexes
				Armored to the Teeth
				Armored to the Teeth
				Double Time
				Reinforced Plates
				Reinforced Plates
				Javelineer
				Crushing Force
				Cruel Strikes
				Cruel Strikes
				Two-Handed Weapon Specialization
				Two-Handed Weapon Specialization
				Wild Strikes
				Wild Strikes
				Anger Management
				Stance Mastery
				Battlefield Commander
			]],
			spectalents = [[
				Mortal Strike
				Overpower
				Sudden Death
				Fueled by Violence
				Die by the Sword
				Bloodsurge
				Improved Overpower
				Improved Execute
				Tactician
				Colossus Smash
				Impale
				Overpowering Finish
				Strength of Arms
				Strength of Arms
				Sharpened Blades
				Sharpened Blades
				Martial Prowess
				Dreadnaught
				Deep Wounds
				Massacre
				Bloodborne
				Bloodborne
				Bladestorm
				Critical Thinking
				Critical Thinking
				Bloodletting
				Executioner's Precision
				Fatality
				Mortal Wounds
				Avatar
				Master of Warfare
				Master of Warfare
				Master of Warfare
				Master of Warfare
			]],
			herorighttalents = [[
				Imminent Demise
				Overwhelming Blades
				Relentless Pursuit
				Violent Euphoria
				Death Drive
				Culling Cyclone
				Fierce Followthrough
				Deadly Focus
				Show No Mercy
				Reap the Storm
				Slayer's Malice
				Unhinged
				Unrelenting Onslaught
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Arms (Mythic+)",
			ident = "arms_mythic",
			spec = 1,
			hero = "left",
			classtalents = [[		
				War Machine
				Leeching Strikes
				Impending Victory
				Heroic Leap
				Storm Bolt
				Rend
				Frothing Berserker
				Bounding Stride
				Pain and Gain
				Shockwave
				Overwhelming Rage
				Rallying Cry
				Field Dressing
				Spell Reflection
				Wrecking Throw
				Rumbling Earth
				Fearless
				Honed Reflexes
				Armored to the Teeth
				Armored to the Teeth
				Double Time
				Reinforced Plates
				Reinforced Plates
				Barbaric Training
				Javelineer
				Crushing Force
				Cruel Strikes
				Cruel Strikes
				Two-Handed Weapon Specialization
				Two-Handed Weapon Specialization
				Wild Strikes
				Wild Strikes
				Anger Management
				Battlefield Commander
			]],
			spectalents = [[
				Mortal Strike
				Overpower
				Sudden Death
				Fueled by Violence
				Die by the Sword
				Bloodsurge
				Improved Overpower
				Fervor of Battle
				Tactician
				Colossus Smash
				Impale
				Strength of Arms
				Strength of Arms
				Broad Strokes
				Sharpened Blades
				Sharpened Blades
				Cleave
				Powerful Momentum
				Dreadnaught
				Crushing Combo
				Mass Execution
				Collateral Damage
				Bloodborne
				Bloodborne
				Ravager
				Battlelord
				Bloodletting
				Executioner's Precision
				Mortal Wounds
				Avatar
				Master of Warfare
				Master of Warfare
				Master of Warfare
				Master of Warfare
			]],
			herolefttalents = [[
				Martial Expert
				Colossal Might
				Earthquaker
				Decimator
				One Against Many
				Tide of Battle
				Veteran Vitality
				Cut to the Bone
				Practiced Strikes
				Precise Might
				Mountain of Muscle and Scars
				Celeritous Conclusion
				Dominance of the Colossus
			]],
			herorighttalents = [[
			]],
		},
		{
			name = "Arms (Leveling/Delves)",
			spec = 1,
			hero = "left",
			suggested = true, 
			ident = "warr_arms_leveling",
			classtalents = [[		
				War Machine
				Leeching Strikes
				Impending Victory
				Heroic Leap
				Storm Bolt
				Rend
				Frothing Berserker
				Bounding Stride
				Pain and Gain
				Shockwave
				Overwhelming Rage
				Rallying Cry
				Field Dressing
				Spell Reflection
				Wrecking Throw
				Rumbling Earth
				Fearless
				Honed Reflexes
				Armored to the Teeth
				Armored to the Teeth
				Double Time
				Reinforced Plates
				Reinforced Plates
				Barbaric Training
				Javelineer
				Crushing Force
				Cruel Strikes
				Cruel Strikes
				Two-Handed Weapon Specialization
				Two-Handed Weapon Specialization
				Wild Strikes
				Wild Strikes
				Anger Management
				Battlefield Commander
			]],
			spectalents = [[
				Mortal Strike
				Overpower
				Sudden Death
				Fueled by Violence
				Die by the Sword
				Bloodsurge
				Improved Overpower
				Fervor of Battle
				Tactician
				Colossus Smash
				Impale
				Strength of Arms
				Strength of Arms
				Broad Strokes
				Sharpened Blades
				Sharpened Blades
				Cleave
				Powerful Momentum
				Dreadnaught
				Crushing Combo
				Mass Execution
				Collateral Damage
				Bloodborne
				Bloodborne
				Ravager
				Battlelord
				Bloodletting
				Executioner's Precision
				Mortal Wounds
				Avatar
				Master of Warfare
				Master of Warfare
				Master of Warfare
				Master of Warfare
			]],
			herolefttalents = [[
				Martial Expert
				Colossal Might
				Earthquaker
				Decimator
				One Against Many
				Tide of Battle
				Veteran Vitality
				Cut to the Bone
				Practiced Strikes
				Precise Might
				Mountain of Muscle and Scars
				Celeritous Conclusion
				Dominance of the Colossus
			]],
			herorighttalents = [[
			]],
		},

		{
			name = "Fury (Raid)",
			ident = "fury_raid",
			spec = 2,
			hero = "right",
			classtalents = [[		
				Fast Footwork
				War Machine
				Leeching Strikes
				Impending Victory
				Heroic Leap
				Storm Bolt
				Rend
				Frothing Berserker
				Bounding Stride
				Pain and Gain
				Interpose
				Overwhelming Rage
				Rallying Cry
				Field Dressing
				Spell Reflection
				Wrecking Throw
				Piercing Howl
				Honed Reflexes
				Armored to the Teeth
				Armored to the Teeth
				Double Time
				Reinforced Plates
				Reinforced Plates
				Javelineer
				Crushing Force
				Cruel Strikes
				Cruel Strikes
				Dual Wield Specialization
				Dual Wield Specialization
				Wild Strikes
				Wild Strikes
				Anger Management
				Stance Mastery
				Battlefield Commander
			]],
			spectalents = [[
				Bloodthirst
				Raging Blow
				Sudden Death
				Frenzied Enrage
				Improved Execute
				Focus in Chaos
				Enraged Regeneration
				Warpaint
				Massacre
				Fresh Meat
				Rampage
				Improved Raging Blow
				Deep Wounds
				Spite
				Spite
				Scent of Blood
				Cruelty
				Cruelty
				Cold Steel, Hot Blood
				Recklessness
				Wrath and Fury
				Deft Experience
				Deft Experience
				Frenzy
				Vicious Contempt
				Odyn's Fury
				Bloodborne
				Executioner's Wrath
				Reckless Abandon
				Bladestorm
				Rampaging Berserker
				Rampaging Berserker
				Rampaging Berserker
				Rampaging Berserker
			]],
			herorighttalents = [[
				Imminent Demise
				Overwhelming Blades
				Relentless Pursuit
				Violent Euphoria
				Death Drive
				Culling Cyclone
				Fierce Followthrough
				Deadly Focus
				Show No Mercy
				Reap the Storm
				Slayer's Malice
				Unhinged
				Unrelenting Onslaught
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Fury (Mythic+)",
			ident = "fury_mythic",
			spec = 2,
			hero = "left",
			classtalents = [[		
				War Machine
				Thunder Clap
				Impending Victory
				Heroic Leap
				Crackling Thunder
				Storm Bolt
				Rend
				Frothing Berserker
				Bounding Stride
				Pain and Gain
				Shockwave
				Overwhelming Rage
				Rallying Cry
				Spell Reflection
				Wrecking Throw
				Rumbling Earth
				Fearless
				Honed Reflexes
				Armored to the Teeth
				Armored to the Teeth
				Double Time
				Reinforced Plates
				Reinforced Plates
				Barbaric Training
				Javelineer
				Crushing Force
				Cruel Strikes
				Cruel Strikes
				Dual Wield Specialization
				Dual Wield Specialization
				Wild Strikes
				Wild Strikes
				Anger Management
				Battlefield Commander
			]],
			spectalents = [[
				Bloodthirst
				Raging Blow
				Sudden Death
				Frenzied Enrage
				Improved Execute
				Focus in Chaos
				Warpaint
				Improved Whirlwind
				Massacre
				Fresh Meat
				Rampage
				Improved Raging Blow
				Deep Wounds
				Spite
				Spite
				Scent of Blood
				Cruelty
				Cruelty
				Meat Cleaver
				Cold Steel, Hot Blood
				Recklessness
				Deft Experience
				Deft Experience
				Frenzy
				Vicious Contempt
				Odyn's Fury
				Bloodborne
				Executioner's Wrath
				Reckless Abandon
				Avatar
				Rampaging Berserker
				Rampaging Berserker
				Rampaging Berserker
				Rampaging Berserker
			]],
			herolefttalents = [[
				Crashing Thunder
				Ground Current
				Strength of the Mountain
				Storm Surge
				Thunder Blast
				Storm Bolts
				Keep Your Feet on the Ground
				Conductivity
				Flashing Skies
				Thorim's Might
				Burst of Power
				Capacitance
				Avatar of the Storm
			]],
			herorighttalents = [[
			]],
		},
		{
			name = "Fury (Leveling/Delves)",
			spec = 2,
			hero = "left",
			suggested = true, 
			ident = "warr_fury_leveling",
			classtalents = [[		
				War Machine
				Thunder Clap
				Impending Victory
				Heroic Leap
				Crackling Thunder
				Storm Bolt
				Rend
				Frothing Berserker
				Bounding Stride
				Pain and Gain
				Shockwave
				Overwhelming Rage
				Rallying Cry
				Spell Reflection
				Wrecking Throw
				Rumbling Earth
				Fearless
				Honed Reflexes
				Armored to the Teeth
				Armored to the Teeth
				Double Time
				Reinforced Plates
				Reinforced Plates
				Barbaric Training
				Javelineer
				Crushing Force
				Cruel Strikes
				Cruel Strikes
				Dual Wield Specialization
				Dual Wield Specialization
				Wild Strikes
				Wild Strikes
				Anger Management
				Battlefield Commander
			]],
			spectalents = [[
				Bloodthirst
				Raging Blow
				Sudden Death
				Frenzied Enrage
				Improved Execute
				Focus in Chaos
				Warpaint
				Improved Whirlwind
				Massacre
				Fresh Meat
				Rampage
				Improved Raging Blow
				Deep Wounds
				Spite
				Spite
				Scent of Blood
				Cruelty
				Cruelty
				Meat Cleaver
				Cold Steel, Hot Blood
				Recklessness
				Deft Experience
				Deft Experience
				Frenzy
				Vicious Contempt
				Odyn's Fury
				Bloodborne
				Executioner's Wrath
				Reckless Abandon
				Avatar
				Rampaging Berserker
				Rampaging Berserker
				Rampaging Berserker
				Rampaging Berserker
			]],
			herolefttalents = [[
				Crashing Thunder
				Ground Current
				Strength of the Mountain
				Storm Surge
				Thunder Blast
				Storm Bolts
				Keep Your Feet on the Ground
				Conductivity
				Flashing Skies
				Thorim's Might
				Burst of Power
				Capacitance
				Avatar of the Storm
			]],
			herorighttalents = [[
			]],
		},

		{
			name = "Protection (Raid)",
			ident = "protection_raid",
			spec = 3,
			hero = "right",
			classtalents = [[		
				Fast Footwork
				War Machine
				Thunder Clap
				Leeching Strikes
				Impending Victory
				Heroic Leap
				Crackling Thunder
				Rend
				Frothing Berserker
				Bounding Stride
				Intervene
				Shockwave
				Overwhelming Rage
				Rallying Cry
				Spell Reflection
				Wrecking Throw
				Piercing Howl
				Honed Reflexes
				Armored to the Teeth
				Armored to the Teeth
				Double Time
				Reinforced Plates
				Reinforced Plates
				Javelineer
				Crushing Force
				Cruel Strikes
				Cruel Strikes
				One-Handed Weapon Specialization
				One-Handed Weapon Specialization
				Wild Strikes
				Wild Strikes
				Anger Management
				Stance Mastery
				Battlefield Commander
			]],
			spectalents = [[
				Ignore Pain
				Demoralizing Shout
				Revenge
				Brace For Impact
				Fight Through the Flames
				Devastator
				Strategist
				Devastating Focus
				Brutal Vitality
				Instigate
				Shield Wall
				Best Served Cold
				Thunderlord
				Defender's Aegis
				Bloodborne
				Punish
				Tough as Nails
				Fueled by Violence
				Enduring Defenses
				Enduring Defenses
				Unyielding Stance
				Into the Fray
				Focused Vigor
				Shield Specialization
				Enduring Alacrity
				Avatar
				Booming Voice
				Violent Outburst
				Shield Charge
				Whirling Blade
				Phalanx
				Phalanx
				Phalanx
				Phalanx
			]],
			herorighttalents = [[
				Crashing Thunder
				Ground Current
				Strength of the Mountain
				Storm Surge
				Thunder Blast
				Storm Shield
				Keep Your Feet on the Ground
				Conductivity
				Flashing Skies
				Thorim's Might
				Burst of Power
				Capacitance
				Avatar of the Storm
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Protection (Mythic+)",
			ident = "protection_mythic",
			spec = 3,
			hero = "right",
			classtalents = [[		
				War Machine
				Thunder Clap
				Impending Victory
				Heroic Leap
				Crackling Thunder
				Storm Bolt
				Rend
				Frothing Berserker
				Bounding Stride
				Intervene
				Shockwave
				Overwhelming Rage
				Rallying Cry
				Spell Reflection
				Wrecking Throw
				Rumbling Earth
				Intimidating Shout
				Honed Reflexes
				Armored to the Teeth
				Armored to the Teeth
				Double Time
				Reinforced Plates
				Reinforced Plates
				Javelineer
				Crushing Force
				Cruel Strikes
				Cruel Strikes
				One-Handed Weapon Specialization
				One-Handed Weapon Specialization
				Wild Strikes
				Wild Strikes
				Anger Management
				Stance Mastery
				Battlefield Commander
			]],
			spectalents = [[
				Ignore Pain
				Demoralizing Shout
				Revenge
				Brace For Impact
				Fight Through the Flames
				Devastator
				Disrupting Shout
				Strategist
				Brutal Vitality
				Instigate
				Shield Wall
				Bloodsurge
				Best Served Cold
				Thunderlord
				Defender's Aegis
				Punish
				Tough as Nails
				Fueled by Violence
				Enduring Defenses
				Enduring Defenses
				Unyielding Stance
				Into the Fray
				Focused Vigor
				Shield Specialization
				Enduring Alacrity
				Avatar
				Booming Voice
				Violent Outburst
				Shield Charge
				Whirling Blade
				Phalanx
				Phalanx
				Phalanx
				Phalanx
			]],
			herorighttalents = [[
				Crashing Thunder
				Ground Current
				Strength of the Mountain
				Storm Surge
				Thunder Blast
				Storm Shield
				Keep Your Feet on the Ground
				Conductivity
				Flashing Skies
				Thorim's Might
				Burst of Power
				Capacitance
				Avatar of the Storm
			]],
			herolefttalents = [[
			]],
		},
		{
			name = "Protection (Leveling/Delves)",
			spec = 3,
			hero = "left",
			suggested = true, 
			ident = "warr_prot_leveling",
			classtalents = [[		
				War Machine
				Thunder Clap
				Leeching Strikes
				Impending Victory
				Heroic Leap
				Crackling Thunder
				Storm Bolt
				Rend
				Frothing Berserker
				Bounding Stride
				Intervene
				Shockwave
				Overwhelming Rage
				Rallying Cry
				Spell Reflection
				Wrecking Throw
				Piercing Howl
				Honed Reflexes
				Armored to the Teeth
				Armored to the Teeth
				Double Time
				Reinforced Plates
				Reinforced Plates
				Javelineer
				Crushing Force
				Cruel Strikes
				Cruel Strikes
				One-Handed Weapon Specialization
				One-Handed Weapon Specialization
				Wild Strikes
				Wild Strikes
				Anger Management
				Stance Mastery
				Battlefield Commander
			]],
			spectalents = [[
				Ignore Pain
				Demoralizing Shout
				Revenge
				Brace For Impact
				Armor Specialization
				Devastator
				Disrupting Shout
				Strategist
				Brutal Vitality
				Instigate
				Shield Wall
				Bloodsurge
				Best Served Cold
				Thunderlord
				Defender's Aegis
				Punish
				Tough as Nails
				Fueled by Violence
				Enduring Defenses
				Enduring Defenses
				Unyielding Stance
				Into the Fray
				Focused Vigor
				Shield Specialization
				Enduring Alacrity
				Avatar
				Booming Voice
				Violent Outburst
				Shield Charge
				Whirling Blade
				Phalanx
				Phalanx
				Phalanx
				Phalanx
			]],
			herolefttalents = [[
				Martial Expert
				Colossal Might
				Earthquaker
				Decimator
				Arterial Bleed
				Tide of Battle
				No Stranger to Pain
				Cut to the Bone
				Practiced Strikes
				Precise Might
				Mountain of Muscle and Scars
				Celeritous Conclusion
				Dominance of the Colossus
			]],
			herorighttalents = [[
			]],
		},
	},
}