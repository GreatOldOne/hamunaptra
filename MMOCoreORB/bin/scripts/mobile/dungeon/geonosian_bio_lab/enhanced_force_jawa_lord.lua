enhanced_force_jawa_lord = Creature:new {
	customName = "Dun Ag'nar",
	socialGroup = "geonosian_creature",
	pvpFaction = "",
	faction = "",
	level = 500,
	chanceHit = 300,
	damageMin = 1500,
	damageMax = 2800,
	baseXp = 9296845,
	baseHAM = 2306000,
	baseHAMmax = 2652000,
	armor = 3,
	resists = {70,70,70,70,70,70,70,70,30},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/jawa_male.iff"},
	scale = 2.0,
	lootGroups = {
		{
			groups = {
				{group = "geonosian_epic", chance = 10000000},
			},
			lootChance = 7500000,
		},
		{
	        	groups =
			{
				{group = "mastery_geocave_jewelry", chance = 10000000},
			},
			lootChance = 7500000,
		},
		-- CLOTHING ATTACHMENTS LOOT GROUP CACHE --
		{
	        groups =
			{
				{group = "clothing_attachments", chance = 10000000},
			},
			lootChance = 7500000,
		},
		{
	        groups =
			{
				{group = "clothing_attachments", chance = 10000000},
			},
			lootChance = 7500000,
		},
		{
	        groups =
			{
				{group = "clothing_attachments", chance = 10000000},
			},
			lootChance = 7500000,
		},
		{
	        groups =
			{
				{group = "clothing_attachments", chance = 10000000},
			},
			lootChance = 7500000,
		},
		{
	        groups =
			{
				{group = "clothing_attachments", chance = 10000000},
			},
			lootChance = 7500000,
		},
		{
	        groups =
			{
				{group = "clothing_attachments", chance = 10000000},
			},
			lootChance = 7500000,
		},
		-- CLOTHING ATTACHMENTS LOOT GROUP CACHE --
		{
			groups =
			{
				{group = "power_crystals", chance = 10000000},
			},
			lootChance = 5000000,
		},
		{
			groups =
			{
				{group = "power_crystals", chance = 10000000},
			},
			lootChance = 5000000,
		},
		{
			groups =
			{
				{group = "power_crystals", chance = 10000000},
			},
			lootChance = 5000000,
		},
		{
			groups =
			{
				{group = "power_crystals", chance = 10000000},
			},
			lootChance = 5000000,
		},
	},
	weapons = {"light_jedi_weapons"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(enhanced_force_jawa_lord, "enhanced_force_jawa_lord")
