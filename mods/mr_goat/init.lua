
-- Goat by DonBatman

if mobs.mod and mobs.mod == "redo" then

mobs:register_mob("mr_goat:goat", {
	-- animal, monster, npc, barbarian
	type = "animal",
	-- aggressive, does 4 damage to player when threatened
	passive = false,
	attack_type = "dogfight",
	damage = 2,
	-- health & armor
	hp_min = 5, hp_max = 15, armor = 200,
	-- textures and model
	collisionbox = {-0.3, -0.01, -0.3, 0.3, 0.75, 0.3},
	visual = "mesh",
	mesh = "mobs_goat.b3d",
	drawtype = "front",
	textures = {
		{"mobs_goat_white.png"},
		{"mobs_goat_brown.png"},
		{"mobs_goat_grey.png"},
	},
	blood_texture = "mobs_blood.png",
	visual_size = {x=2,y=2},
	-- sounds
	makes_footstep_sound = true,
	sounds = {
		random = "mobs_sheep",
	},
	-- speed and jump
	walk_velocity = 1,
	run_velocity = 2,
	jump = true,
	stepheight = 1.1,
	-- drops raw meat when dead
	drops = {
		{name = "mobs:meat_raw",
		chance = 1, min = 1, max = 4},
	},
	-- damaged by
	water_damage = 1,
	lava_damage = 5,
	light_damage = 0,
	-- model animation
	animation = {
		speed_normal = 15,		speed_run = 15,
		stand_start = 1,		stand_end = 60, -- head down/up
		walk_start = 122,		walk_end = 182, -- walk
		run_start = 122,		run_end = 182, -- walk
		punch_start = 246,		punch_end = 330, -- attack
		-- 1-30 head down, 31-60 head up, 61-121 tail wiggle, 185-215 lay down, 216-245 getting up, 331-390 chewing, 391-511 look around
	},
	-- follows wheat
	follow = "farming:wheat", view_range = 7,
	-- replace grass/wheat with air (eat)
	replace_rate = 50,
	replace_what = {"group:flora"},
	replace_with = "air",
})
-- spawn on default;green;prairie grass between 0 and 20 light, 1 in 20000 chance, 1 goat in area up to 31000 in height
mobs:register_spawn("mr_goat:goat", {"default:dirt_with_grass", "ethereal:green_dirt_top"}, 20, 0, 20000, 1, 31000)
-- register spawn egg
mobs:register_egg("mr_goat:goat", "Goat", "default_grass.png", 1)

end
