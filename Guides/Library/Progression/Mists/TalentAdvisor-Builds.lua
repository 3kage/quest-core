-- QuestCore bundled guide (mists)
if not QuestCore then return end
if not QuestCore.TalentAdvisor then return end

local QuestCoreTalentAdvisor=QuestCore.TalentAdvisor

QuestCoreTalentAdvisor:RegisterBuild("DEATHKNIGHT","Leveling Blood","lvlblood",true,"Blood", [[
	Unholy Blight
	Anti-Magic Zone
	Asphyxiate
	Conversion
	Runic Corruption
	Remorseless Winter
]],[[
	Major Glyph of Pestilence
	Major Glyph of Anti-Magic Shell
	Major Glyph of Vampiric Blood
	Minor Glyph of Long Winter
	Minor Glyph of Death Gate
	Minor Glyph of Path of Frost
]])
QuestCoreTalentAdvisor:RegisterBuild("DEATHKNIGHT","Leveling Frost","lvlfrost",true,"Frost", [[
	Unholy Blight
	Anti-Magic Zone
	Asphyxiate
	Death Pact
	Runic Corruption
	Remorseless Winter
]],[[
	Major Glyph of Pestilence
	Major Glyph of Anti-Magic Shell
	Major Glyph of Regenerative Magic
	Minor Glyph of Tranquil Grip
	Minor Glyph of Long Winter
	Minor Glyph of Path of Frost
]])
QuestCoreTalentAdvisor:RegisterBuild("DEATHKNIGHT","Leveling Unholy","lvlunholy",true,"Unholy", [[
	Unholy Blight
	Anti-Magic Zone
	Asphyxiate
	Death Siphon
	Runic Corruption
	Remorseless Winter
]],[[
	Major Glyph of Pestilence
	Major Glyph of Unholy Frenzy
	Major Glyph of Festering Blood
	Minor Glyph of Resilient Grip
	Minor Glyph of Death's Embrace
	Minor Glyph of Path of Frost
]])
QuestCoreTalentAdvisor:RegisterBuild("PRIEST","Leveling Shadow","lvlshadow",true,"Shadow", [[
	Void Tendrils
	Body and Soul
	From Darkness, Comes Light
	Angelic Bulwark
	Divine Insight
	Divine Star
]],[[
	Major Glyph of Inner Sanctum
	Major Glyph of Mind Flay
	Major Glyph of Weakened Soul
	Minor Glyph of Dark Archangel
	Minor Glyph of Shadow Ravens
	Minor Glyph of Shadowy Friends
]])
QuestCoreTalentAdvisor:RegisterBuild("PRIEST","Leveling Discipline","lvldiscipline",true,"Discipline", [[
	Void Tendrils
	Body and Soul
	Mindbender
	Angelic Bulwark
	Divine Insight
	Divine Star
]],[[
	Major Glyph of Holy Fire
	Major Glyph of Penance
	Major Glyph of Inner Sanctum
	Minor Glyph of Borrowed Time
	Minor Glyph of Holy Resurrection
	Minor Glyph of Confession
]])
QuestCoreTalentAdvisor:RegisterBuild("PRIEST","Leveling Holy","lvlholy",true,"Holy", [[
	Void Tendrils
	Body and Soul
	Mindbender
	Angelic Bulwark
	Power Infusion
	Divine Star
]],[[
	Major Glyph of Deep Wells
	Major Glyph of Renew
	Major Glyph of Inner Sanctum
	Minor Glyph of Heavens
	Minor Glyph of Holy Resurrection
	Minor Glyph of Confession
]])
QuestCoreTalentAdvisor:RegisterBuild("MAGE","Leveling Fire","lvlfire",true,"Fire", [[
	Presence of Mind
	Ice Barrier
	Ice Ward
	Greater Invisibility
	Living Bomb
	Rune of Power
]],[[
	Major Glyph of Combustion
	Major Glyph of Inferno Blast
	Major Glyph of Evocation
	Minor Glyph of Mirror Image
	Minor Glyph of Arcane Language
	Minor Glyph of Conjure Familiar
]])
QuestCoreTalentAdvisor:RegisterBuild("MAGE","Leveling Frost","lvlfrost",true,"Frost", [[
	Ice Floes
	Ice Barrier
	Ring of Frost
	Cold Snap
	Frost Bomb
	Rune of Power
]],[[
	Major Glyph of Splitting Ice
	Major Glyph of Icy Veins
	Major Glyph of Water Elemental
	Minor Glyph of Momentum
	Minor Glyph of Arcane Language
	Minor Glyph of Conjure Familiar
]])
QuestCoreTalentAdvisor:RegisterBuild("MAGE","Leveling Arcane","lvlarcane",true,"Arcane", [[
	Ice Floes
	Ice Barrier
	Ring of Frost
	Greater Invisibility
	Nether Tempest
	Rune of Power
]],[[
	Major Glyph of Mana Gem
	Major Glyph of Arcane Power
	Major Glyph of Evocation
	Minor Glyph of Mirror Image
	Minor Glyph of Loose Mana
	Minor Glyph of Momentum
]])
QuestCoreTalentAdvisor:RegisterBuild("WARRIOR","Leveling Arms","lvlarms",true,"Arms", [[
	Double Time
	Impending Victory
	Staggering Shout
	Dragon Roar
	Mass Spell Reflection
	Avatar
]],[[
	Major Glyph of Unending Rage
	Major Glyph of Death From Above
	Major Glyph of Sweeping Strikes
	Minor Glyph of Subtle Defender
	Minor Glyph of Burning Anger
	Minor Glyph of Intimidating Shout
]])
QuestCoreTalentAdvisor:RegisterBuild("WARRIOR","Leveling Fury","lvlfury",true,"Fury", [[
	Double Time
	Impending Victory
	Staggering Shout
	Dragon Roar
	Mass Spell Reflection
	Avatar
]],[[
	Major Glyph of Colossus Smash
	Major Glyph of Raging Wind
	Major Glyph of Unending Rage
	Minor Glyph of Subtle Defender
	Minor Glyph of Burning Anger
	Minor Glyph of Intimidating Shout
]])
QuestCoreTalentAdvisor:RegisterBuild("WARRIOR","Leveling Protection","lvlprotection",true,"Protection", [[
	Double Time
	Impending Victory
	Staggering Shout
	Dragon Roar
	Mass Spell Reflection
	Avatar
]],[[
	Major Glyph of Bull Rush
	Major Glyph of Unending Rage
	Major Glyph of Heavy Repercussions
	Minor Glyph of Intimidating Shout
	Minor Glyph of Burning Anger
	Minor Glyph of Blazing Trail
]])
QuestCoreTalentAdvisor:RegisterBuild("DRUID","Leveling Feral","lvlferal",true,"Feral", [[
	Displacer Beast
	Ysera's Gift
	Mass Entanglement
	Soul of the Forest
	Mighty Bash
	Nature's Vigil
]],[[
	Major Glyph of Cat Form
	Major Glyph of Ferocious Bite
	Major Glyph of Savagery
	Minor Glyph of Grace
	Minor Glyph of Aquatic Form
	Minor Glyph of The Predator
]])
QuestCoreTalentAdvisor:RegisterBuild("DRUID","Leveling Guardian","lvlguardian",true,"Guardian", [[
	Wild Charge
	Ysera's Gift
	Typhoon
	Incarnation
	Mighty Bash
	Dream of Cenarius
]],[[
	Major Glyph of Fae Silence
	Major Glyph of Maul
	Major Glyph of Might of Ursoc
	Minor Glyph of Grace
	Minor Glyph of The Chameleon
	Minor Glyph of Aquatic Form
]])
QuestCoreTalentAdvisor:RegisterBuild("DRUID","Leveling Balance","lvlbalance",true,"Balance", [[
	Wild Charge
	Ysera's Gift
	Mass Entanglement
	Soul of the Forest
	Disorienting Roar
	Nature's Vigil
]],[[
	Major Glyph of Innervate
	Major Glyph of Guided Stars
	Major Glyph of Stampede
	Minor Glyph of Grace
	Minor Glyph of Sprouting Mushroom
	Minor Glyph of Aquatic Form
]])
QuestCoreTalentAdvisor:RegisterBuild("DRUID","Leveling Restoration","lvlrestoration",true,"Restoration", [[
	Wild Charge
	Cenarion Ward
	Mass Entanglement
	Incarnation
	Ursol's Vortex
	Heart of the Wild
]],[[
	Major Glyph of Efflorescence
	Major Glyph of Healing Touch
	Major Glyph of Regrowth
	Minor Glyph of Grace
	Minor Glyph of Sprouting Mushroom
	Minor Glyph of Aquatic Form
]])
QuestCoreTalentAdvisor:RegisterBuild("SHAMAN","Leveling Elemental","lvlelemental",true,"Elemental", [[
	Stone Bulwark Totem
	Earthgrab Totem
	Totemic Projection
	Echo of the Elements
	Ancestral Guidance
	Primal Elementalist
]],[[
	Major Glyph of Chain Lightning
	Major Glyph of Lightning Shield
	Major Glyph of Fire Elemental Totem
	Minor Glyph of Thunderstorm
	Minor Glyph of Astral Recall
	Minor Glyph of Lakestrider
]])
QuestCoreTalentAdvisor:RegisterBuild("SHAMAN","Leveling Enhancement","lvlenhancement",true,"Enhancement", [[
	Astral Shift
	Frozen Power
	Totemic Projection
	Elemental Mastery
	Ancestral Guidance
	Primal Elementalist
]],[[
	Major Glyph of Healing Storm
	Major Glyph of Feral Spirit
	Major Glyph of Fire Elemental Totem
	Minor Glyph of Spectral Wolf
	Minor Glyph of Astral Recall
	Minor Glyph of Lakestrider
]])
QuestCoreTalentAdvisor:RegisterBuild("SHAMAN","Leveling Restoration","lvlrestoration",true,"Restoration", [[
	Astral Shift
	Frozen Power
	Totemic Projection
	Ancestral Swiftness
	Rushing Streams
	Primal Elementalist
]],[[
	Major Glyph of Healing Stream Totem
	Major Glyph of Water Shield
	Major Glyph of Fire Elemental Totem
	Minor Glyph of Spectral Wolf
	Minor Glyph of Astral Recall
	Minor Glyph of Lakestrider
]])
QuestCoreTalentAdvisor:RegisterBuild("HUNTER","Leveling Beast Mastery","lvlmastery",true,"Beast Mastery", [[
	Crouching Tiger, Hidden Chimera
	Intimidation
	Exhilaration
	Dire Beast
	Lynx Rush
	Glaive Toss
]],[[
	Major Glyph of Animal Bond
	Major Glyph of Deterrence
	Major Glyph of Liberation
	Minor Glyph of Revive Pet
	Minor Glyph of Aspect of the Cheetah
	Minor Glyph of Aspect of the Pack
]],"Ferocity")
QuestCoreTalentAdvisor:RegisterBuild("HUNTER","Leveling Marksmanship","lvlmarksmanship",true,"Marksmanship", [[
	Crouching Tiger, Hidden Chimera
	Intimidation
	Aspect of the Iron Hawk
	Thrill of the Hunt
	A Murder of Crows
	Glaive Toss
]],[[
	Major Glyph of Aimed Shot
	Major Glyph of Animal Bond
	Major Glyph of Chimera Shot
	Minor Glyph of Revive Pet
	Minor Glyph of Aspect of the Cheetah
	Minor Glyph of Aspect of the Pack
]],"Tenacity")
QuestCoreTalentAdvisor:RegisterBuild("HUNTER","Leveling Survival","lvlsurvival",true,"Survival", [[
	Crouching Tiger, Hidden Chimera
	Intimidation
	Aspect of the Iron Hawk
	Thrill of the Hunt
	A Murder of Crows
	Glaive Toss
]],[[
	Major Glyph of Animal Bond
	Major Glyph of Deterrence
	Major Glyph of Liberation
	Minor Glyph of Revive Pet
	Minor Glyph of Aspect of the Cheetah
	Minor Glyph of Aspect of the Pack
]],"Tenacity")
QuestCoreTalentAdvisor:RegisterBuild("MONK","Leveling Brewmaster","lvlbrewmaster",true,"Brewmaster", [[
	Tiger's Lust
	Chi Wave
	Ascension
	Leg Sweep
	Dampen Harm
	Invoke Xuen, the White Tiger
]],[[
	Major Glyph of Guard
	Major Glyph of Spinning Crane Kick
	Major Glyph of Fortifying Brew
	Minor Glyph of Spirit Roll
	Minor Glyph of Water Roll
	Minor Glyph of Zen Flight
]])
QuestCoreTalentAdvisor:RegisterBuild("MONK","Leveling Mistweaver","lvlmistweaver",true,"Mistweaver", [[
	Celerity
	Chi Wave
	Ascension
	Charging Ox Wave
	Diffuse Magic
	Invoke Xuen, the White Tiger
]],[[
	Major Glyph of Detox
	Major Glyph of Renewing Mist
	Major Glyph of Mana Tea
	Minor Glyph of Water Roll
	Minor Glyph of Spirit Roll
	Minor Glyph of Zen Flight
]])
QuestCoreTalentAdvisor:RegisterBuild("MONK","Leveling Windwalker","lvlwindwalker",true,"Windwalker", [[
	Momentum
	Chi Wave
	Ascension
	Leg Sweep
	Diffuse Magic
	Invoke Xuen, the White Tiger
]],[[
	Major Glyph of Spinning Crane Kick
	Major Glyph of Fortuitous Spheres
	Major Glyph of Touch of Karma
	Minor Glyph of Water Roll
	Minor Glyph of Spirit Roll
	Minor Glyph of Zen Flight
]])
QuestCoreTalentAdvisor:RegisterBuild("WARLOCK","Leveling Demonology","lvldemonology",true,"Demonology", [[
	Soul Leech
	Shadowfury
	Sacrificial Pact
	Burning Rush
	Grimoire of Supremacy
	Archimonde's Darkness
]],[[
	Major Glyph of Siphon Life
	Major Glyph of Imp Swarm
	Major Glyph of Curse of the Elements
	Minor Glyph of Shadow Bolt
	Minor Glyph of Crimson Banish
	Minor Glyph of Eye of Kilrogg
]])
QuestCoreTalentAdvisor:RegisterBuild("WARLOCK","Leveling Destruction","lvldestruction",true,"Destruction", [[
	Soul Leech
	Shadowfury
	Dark Bargain
	Burning Rush
	Grimoire of Supremacy
	Kil'jaeden's Cunning
]],[[
	Major Glyph of Eternal Resolve
	Major Glyph of Conflagrate
	Major Glyph of Siphon Life
	Minor Glyph of Verdant Spheres
	Minor Glyph of Eye of Kilrogg
	Minor Glyph of Nightmares
]])
QuestCoreTalentAdvisor:RegisterBuild("WARLOCK","Leveling Affliction","lvlaffliction",true,"Affliction", [[
	Harvest Life
	Shadowfury
	Dark Bargain
	Burning Rush
	Grimoire of Supremacy
	Kil'jaeden's Cunning
]],[[
	Major Glyph of Unstable Affliction
	Major Glyph of Curse of the Elements
	Major Glyph of Siphon Life
	Minor Glyph of Verdant Spheres
	Minor Glyph of Eye of Kilrogg
	Minor Glyph of Nightmares
]])
QuestCoreTalentAdvisor:RegisterBuild("ROGUE","Leveling Assassination","lvlassassination",true,"Assassination", [[
	Subterfuge
	Nerve Strike
	Leeching Poison
	Burst of Speed
	Prey on the Weak
	Shuriken Toss
]],[[
	Major Glyph of Vendetta
	Major Glyph of Redirect
	Major Glyph of Feint
	Minor Glyph of Blurred Speed
	Minor Glyph of Safe Fall
	Minor Glyph of Poisons
]])
QuestCoreTalentAdvisor:RegisterBuild("ROGUE","Leveling Combat","lvlcombat",true,"Combat", [[
	Subterfuge
	Combat Readiness
	Leeching Poison
	Shadowstep
	Prey on the Weak
	Anticipation
]],[[
	Major Glyph of Redirect
	Major Glyph of Cloak of Shadows
	Major Glyph of Feint
	Minor Glyph of Blurred Speed
	Minor Glyph of Safe Fall
	Minor Glyph of Poisons
]])
QuestCoreTalentAdvisor:RegisterBuild("ROGUE","Leveling Subtlety","lvlsubtlety",true,"Subtlety", [[
	Nightstalker
	Combat Readiness
	Leeching Poison
	Shadowstep
	Dirty Tricks
	Anticipation
]],[[
	Major Glyph of Ambush
	Major Glyph of Stealth
	Major Glyph of Redirect
	Minor Glyph of Blurred Speed
	Minor Glyph of Safe Fall
	Minor Glyph of Poisons
]])
QuestCoreTalentAdvisor:RegisterBuild("PALADIN","Leveling Holy","lvlholy",true,"Holy", [[
	Pursuit of Justice
	Repentance
	Eternal Flame
	Clemency
	Divine Purpose
	Light's Hammer
]],[[
	Major Glyph of Divine Plea
	Major Glyph of Divinity
	Major Glyph of Flash of Light
	Minor Glyph of Winged Vengeance
	Minor Glyph of Falling Avenger
	Minor Glyph of Righteous Retreat
]])
QuestCoreTalentAdvisor:RegisterBuild("PALADIN","Leveling Protection","lvlprotection",true,"Protection", [[
	Long Arm of the Law
	Fist of Justice
	Eternal Flame
	Hand of Purity
	Holy Avenger
	Holy Prism
]],[[
	Major Glyph of Alabaster Shield
	Major Glyph of Consecration
	Major Glyph of Divine Protection
	Minor Glyph of Falling Avenger
	Minor Glyph of Righteous Retreat
	Minor Glyph of Winged Vengeance
]])
QuestCoreTalentAdvisor:RegisterBuild("PALADIN","Leveling Retribution","lvlretribution",true,"Retribution", [[
	Speed of Light
	Fist of Justice
	Selfless Healer
	Unbreakable Spirit
	Divine Purpose
	Execution Sentence
]],[[
	Major Glyph of Double Jeopardy
	Major Glyph of Mass Exorcism
	Major Glyph of Templar's Verdict
	Minor Glyph of Falling Avenger
	Minor Glyph of Righteous Retreat
	Minor Glyph of Winged Vengeance
]])
