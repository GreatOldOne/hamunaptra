CnetDeco = ScreenPlay:new {
	screenplayName = "CnetDeco",
	planet = "corellia",
	numberOfActs = 1
}

registerScreenPlay("CnetDeco", true)


function CnetDeco:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnSceneObjects()
		self:spawnMobiles()
	end
end

function CnetDeco:spawnSceneObjects()
	spawnSceneObject(self.planet, "object/tangible/furniture/all/frn_all_rug_rectangle_large_style_05.iff", -163.72, 27.97, -4743.62, 0, math.rad(180) )
	spawnSceneObject(self.planet, "object/tangible/furniture/all/frn_all_rug_rectangle_large_style_03.iff", -163.72, 27.97, -4756.02, 0, math.rad(180) )
	spawnSceneObject(self.planet, "object/tangible/furniture/all/frn_all_throwpillow_med_s02.iff", -162.158, 28.1, -4741.54, 0, math.rad(45) )
	spawnSceneObject(self.planet, "object/tangible/furniture/all/frn_all_throwpillow_med_s02.iff", -162.217, 28.1, -4745.03, 0, math.rad(90) )
	spawnSceneObject(self.planet, "object/tangible/camp/campfire_logs_burnt.iff", -163.57, 28.1, -4743.33, 0, math.rad(0) )
	spawnSceneObject(self.planet, "object/tangible/camp/camp_spit_s2.iff", -163.685, 28.1, -4746.73, 0, math.rad(0) )
	spawnSceneObject(self.planet, "object/tangible/event_perk/xwing.iff", -137.198, 27.97, -4760.07, 77, math.rad(75) )
end

function CnetDeco:spawnMobiles()

	--Factional Recruiters
	spawnMobile(self.planet, "rebel_recruiter",15,-187.335, 28, -4740.52,45,0)
	spawnMobile(self.planet, "imperial_recruiter",15,-189.469, 28, -4736.5,90,0)

	--Ranged Trainers
	spawnMobile(self.planet, "trainer_carbine",15,-165.021, 28, -4744.78,90,0)
	spawnMobile(self.planet, "trainer_rifleman",15,-165.026, 28, -4743.02,90,0)
	spawnMobile(self.planet, "trainer_pistol",15,-165.213, 28, -4741.34,90,0)

	--Melee Trainers
	spawnMobile(self.planet, "trainer_2hsword",15,-161.964, 28, -4750.63,300,0)
	spawnMobile(self.planet, "trainer_1hsword",15,-162.315, 28, -4751.9,90,0)
	spawnMobile(self.planet, "trainer_unarmed",15,-161.991, 28, -4757.44,200,0)
	spawnMobile(self.planet, "trainer_polearm",15,-165.79, 28, -4757.31,180,0)

	--Scount Trainers
	spawnMobile(self.planet, "trainer_ranger",15,-172.405,28,-4715.03,190,0)

	--Medic Trainers
	spawnMobile(self.planet, "trainer_doctor",15,-169.898, 28, -4690.98,205,0)
	spawnMobile(self.planet, "trainer_combatmedic",15,-167.92, 28, -4690.28,180,0)
	pNpc = spawnMobile(self.planet, "surgical_droid_21b",15,-169.309, 28, -4690.08,195,0)
	self:setMoodString(pNpc, "neutral")

	--Crafting Trainers
	spawnMobile(self.planet, "trainer_tailor",15,-183.112, 28, -4689.35,180,0)
	spawnMobile(self.planet, "trainer_armorsmith",15,-181.012, 28, -4689.42,180,0)
	spawnMobile(self.planet, "trainer_weaponsmith",15,-188.348, 28, -4691.27,135,0)
	spawnMobile(self.planet, "trainer_droidengineer",15,-187.171, 28, -4690.25,135,0)
	spawnMobile(self.planet, "trainer_chef",15,-161.142, 28, -4691.1,225,0)
	spawnMobile(self.planet, "trainer_shipwright",15, -175.352, 28, -4689.68,180,0)
	spawnMobile(self.planet, "trainer_bioengineer",15,-160.771, 28, -4696.44,270,0)

	--Entertainer Trainers
	spawnMobile(self.planet, "trainer_dancer",15,-174.985, 28, -4741.38,0,0)
	spawnMobile(self.planet, "trainer_musician",15,-169.827, 28, -4740.14,0,0)



end