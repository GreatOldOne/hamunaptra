force_crystal_hunter_captain = Creature:new {
    customName = "a Force Crystal Hunter Captain",
	socialGroup = "kun",
	faction = "",
	level = 165,
	chanceHit = 1.2,
	damageMin = 985,
	damageMax = 1880,
	baseXp = 17668,
	baseHAM = 62000,
	baseHAMmax = 75000,
	armor = 2,
    -- {kinetic, energy, electric, stun, blast, heat, cold, acid, ls}
	resists = {75,75,35,25,55,45,35,35,15},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 2 * 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
        "object/mobile/dressed_dark_jedi_human_male_01.iff",
		"object/mobile/dressed_dark_jedi_human_female_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 3500000},
				{group = "power_crystals", chance = 3500000},
				{group = "holocron_dark", chance = 250000},
				{group = "holocron_light", chance = 250000},
				{group = "clothing_attachments", chance = 2500000}
			},
            lootChance = 6500000
		},
        {
            groups = {
				{group = "color_crystals", chance = 3500000},
				{group = "power_crystals", chance = 3500000},
				{group = "holocron_dark", chance = 250000},
				{group = "holocron_light", chance = 250000},
				{group = "clothing_attachments", chance = 2500000}
			},
            lootChance = 6500000
        },
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(force_crystal_hunter_captain, "force_crystal_hunter_captain")