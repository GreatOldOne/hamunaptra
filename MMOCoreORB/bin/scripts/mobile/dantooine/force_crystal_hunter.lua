force_crystal_hunter = Creature:new {
	objectName = "@mob/creature_names:dark_force_crystal_hunter",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "kun",
	faction = "",
	level = 125,
	chanceHit = 1,
	damageMin = 820,
	damageMax = 1350,
	baseXp = 15921,
	baseHAM = 34000,
	baseHAMmax = 40000,
	armor = 2,
	-- {kinetic, energy, electric, stun, blast, heat, cold, acid, ls}
	resists = {75,75,35,25,75,55,35,35,10},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dark_force_crystal_hunter.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 3500000},
				{group = "color_crystals", chance = 500000},
				{group = "power_crystals", chance = 3000000},
				{group = "armor_attachments", chance = 1500000},
				{group = "force_hunter_rare", chance = 500000},
				{group = "holocron_dark", chance = 250000},
				{group = "holocron_light", chance = 250000},
				{group = "clothing_attachments", chance = 500000}
			}
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster,fencermaster,swordsmanmaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(force_crystal_hunter, "force_crystal_hunter")