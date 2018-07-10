--Extreme Survival created by maikerumine
-- Minetest 0.4.13 mod: "Extreme Survival"
-- namespace: es
--version 1.8
--https://github.com/maikerumine


--Extreme Survival created by maikerumine
-- Minetest 0.4.16 mod: "Extreme Survival"
-- namespace: es
--version 1.8
--https://github.com/maikerumine

--License:
--~~~~~~~~
--Code:
--(c) Copyright 2015-2017 maikerumine; modified zlib-License
--see "LICENSE.txt" for details.

--Media(if not stated differently):
--(c) Copyright (2014-2015) maikerumine; CC-BY-SA 3.0


--Extreme Survival created by maikerumine
-- Minetest 0.4.16 mod: "Extreme Survival"
-- namespace: es
--version 1.8
--https://github.com/maikerumine

--License:
--~~~~~~~~
--Code:
--(c) Copyright 2015-2017 maikerumine; modified zlib-License
--see "LICENSE.txt" for details.

--Media(if not stated differently):
--(c) Copyright (2014-2015) maikerumine; CC-BY-SA 3.0

--
-- Register ores
--

-- Mgv6

function default.register_mgv6_ores()
--EXPEREMENTAL
minetest.register_ore({
	ore_type       = "blob",
	ore            = "default:mossycobble",
	wherein        = {"default:dirt_with_grass"},
		clust_scarcity = 15*15*10,
		clust_num_ores = 5,
		clust_size     = 3,
	y_min     = 3,
	y_max     = 33,
	noise_threshold = 0.0,
	noise_params =     {offset=0, scale=1, spread={x=10, y=10, z=10}, seed=23, octaves=3, persist=0.70} ,
})




--TECHNIC ORES
minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:marble",
	wherein        = "default:stone",
	clust_scarcity = 1,
	clust_num_ores = 1,
	clust_size     = 3,
	y_min     = -31000,
	y_max     = -50,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=150, y=150, z=150}, seed=23, octaves=3, persist=0.70}
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:granite",
	wherein        = "default:stone",
	clust_scarcity = 1,
	clust_num_ores = 1,
	clust_size     = 4,
	y_min     = -31000,
	y_max     = -150,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})

--CLAY!!
minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_maroon",
	wherein        = {"default:desert_stone"},
	clust_scarcity = 1,
	clust_num_ores = 3,
	clust_size     = 4,
	y_min     = 70,
	y_max     = 190,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_black",
	wherein        = {"default:desert_stone","default:stone"},
	clust_scarcity = 1,
	clust_num_ores = 12,
	clust_size     = 4,
	y_min     = 60,
	y_max     = 96,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.80}
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_red",
	wherein        = {"default:desert_stone"},
	clust_scarcity = 1,
	clust_num_ores = 8,
	clust_size     = 4,
	y_min     = 44,
	y_max     = 70,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_grey",
	wherein        = {"default:desert_stone"},
	clust_scarcity = 1,
	clust_num_ores = 8,
	clust_size     = 4,
	y_min     = 34,
	y_max     = 70,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_orange",
	wherein        ={"default:desert_stone","default:desert_sand"},
	clust_scarcity = 1,
	clust_num_ores = 5,
	clust_size     = 5,
	y_min     = 10,
	y_max     = 40,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_brown",
	wherein        = {"default:desert_stone","default:desert_sand"},
	clust_scarcity = 1,
	clust_num_ores = 12,
	clust_size     = 4,
	y_min     = -12,
	y_max     = 7,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_red",
	wherein        = {"es:strange_clay_brown","default:desert_sand"},
	clust_scarcity = 1,
	clust_num_ores = 9,
	clust_size     = 12,
	y_min     = 0,
	y_max     = 30,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_maroon",
	wherein        = {"es:strange_clay_brown"},
	clust_scarcity = 1,
	clust_num_ores = 9,
	clust_size     = 12,
	y_min     = 0,
	y_max     = 30,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_black",
	wherein        = {"es:strange_clay_brown"},
	clust_scarcity = 1,
	clust_num_ores = 12,
	clust_size     = 4,
	y_min     = -5,
	y_max     = 3,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=4, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.80}
})

--DEFAULT STRATA
minetest.register_ore({
	ore_type       = "sheet",
	ore            = "default:stone",
	wherein        = {"default:desert_stone","default:desert_sand"},
	clust_scarcity = 1,
	clust_num_ores = 3,
	clust_size     = 4,
	y_min     = 50,
	y_max     = 90,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "default:clay",
	wherein        = {"default:desert_stone","default:desert_sand","default:stone"},
	clust_scarcity = 1,
	clust_num_ores = 12,
	clust_size     = 8,
	y_min     = 24,
	y_max     = 50,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "default:sandstone",
	wherein        ={"default:desert_stone","default:desert_sand","default:stone"},
	clust_scarcity = 1,
	clust_num_ores = 12,
	clust_size     = 10,
	y_min     = 10,
	y_max     = 30,
	noise_threshold = 0.2,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:dry_dirt",
	wherein        = {"default:desert_stone","default:desert_sand","default:stone"},
	clust_scarcity = 1,
	clust_num_ores = 12,
	clust_size     = 4,
	y_min     = -12,
	y_max     = 7,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})



--DEFAULT STRATA
minetest.register_ore({
	ore_type       = "sheet",
	ore            = "default:stone",
	wherein        = {"default:desert_stone","default:desert_sand","es:strange_clay_orange"},
	clust_scarcity = 1,
	clust_num_ores = 3,
	clust_size     = 4,
	y_min     = 50,
	y_max     = 90,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "default:clay",
	wherein        = {"default:desert_stone","default:desert_sand","default:stone","es:strange_clay_orange"},
	clust_scarcity = 1,
	clust_num_ores = 12,
	clust_size     = 8,
	y_min     = 24,
	y_max     = 50,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "default:sandstone",
	wherein        ={"default:desert_stone","default:desert_sand","default:stone","es:strange_clay_orange"},
	clust_scarcity = 1,
	clust_num_ores = 12,
	clust_size     = 10,
	y_min     = 10,
	y_max     = 30,
	noise_threshold = 0.2,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "default:dirt",
	wherein        = {"default:desert_stone","default:desert_sand","es:strange_clay_orange"},
	clust_scarcity = 1,
	clust_num_ores = 12,
	clust_size     = 4,
	y_min     = -12,
	y_max     = 7,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "default:gravel",
	wherein        = {"es:strange_clay_orange"},
	clust_scarcity = 1,
	clust_num_ores = 8,
	clust_size     = 4,
	y_min     = 34,
	y_max     = 70,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "default:coalblock",
	wherein        = {"es:strange_clay_orange"},
	clust_scarcity = 1,
	clust_num_ores = 12,
	clust_size     = 4,
	y_min     = 60,
	y_max     = 96,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.80}
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "default:desert_sand",
	wherein        = {"es:strange_clay_orange"},
	clust_scarcity = 1,
	clust_num_ores = 12,
	clust_size     = 10,
	y_min     = 44,
	y_max     = 70,
	noise_threshold = 0.7,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})
	minetest.register_ore({
		ore_type       = "blob",
		ore            = "default:lava_source",
		wherein        = "es:strange_clay_orange",
		clust_scarcity = 15*15*10,
		clust_num_ores = 2,
		clust_size     = 2,
		y_min          = -62,
		y_max          = 50,
	})

--HARDENED CLAY FOR MESA :)
--maikerumine

--MESA STRATA
minetest.register_ore({
	ore_type       = "sheet",
	ore            = "default:desert_sand",
	wherein        = {"default:desert_stone", "es:strange_clay_orange"},
	clust_scarcity = 1,
	clust_num_ores = 8,
	clust_size     = 4,
	y_min     = 4,
	y_max     = 70,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})


minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_grey",
	wherein        = {"es:strange_clay_orange"},
	--clust_scarcity = 1,
	--clust_num_ores = 27,
	clust_size     = 1,
	y_min     = 5,
	y_max     = 14,
	noise_threshold = 0.0,
	noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_black",
	wherein        = {"es:strange_clay_orange"},
	--clust_scarcity = 1,
	--clust_num_ores =27,
	clust_size     = 1,
	y_min     = 15,
	y_max     = 17,
	noise_threshold = 0.0,
	noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70}, 
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_maroon",
	wherein        = {"es:strange_clay_orange"},
	--clust_scarcity = 1,
	--clust_num_ores = 27,
	clust_size     = 6,
	y_min     = 20,
	y_max     = 29,
	noise_threshold = 0.0,
	noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_red",
	wherein        = {"es:strange_clay_orange"},
	--clust_scarcity = 1,
	--clust_num_ores = 8,
	clust_size     = 2,
	y_min     = 34,
	y_max     = 37,
	noise_threshold = 0.0,
	noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_brown",
	wherein        = {"es:strange_clay_orange"},
	--clust_scarcity = 1,
	--clust_num_ores = 100,
	clust_size     = 1,
	y_min     = 42,
	y_max     = 43,
	noise_threshold = 0.0,
	noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
})
minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_blue",
	wherein        = {"es:strange_clay_orange", "es:strange_grass"},
	--clust_scarcity = 1,
	--clust_num_ores = 100,
	clust_size     = 1,
	y_min     = 43,
	y_max     = 44,
	noise_threshold = 0.0,
	noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
})
minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_red",
	wherein        = {"es:strange_clay_orange"},
	--clust_scarcity = 1,
	--clust_num_ores = 100,
	clust_size     = 1,
	y_min     = 44,
	y_max     = 45,
	noise_threshold = 0.0,
	noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
})
minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_red",
	wherein        = {"es:strange_clay_orange"},
	--clust_scarcity = 1,
	--clust_num_ores = 100,
	clust_size     = 1,
	y_min     = 45,
	y_max     = 47,
	noise_threshold = 0.0,
	noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
})
minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_grey",
	wherein        = {"es:strange_clay_orange"},
	--clust_scarcity = 1,
	--clust_num_ores = 100,
	clust_size     = 1,
	y_min     = 49,
	y_max     = 52,
	noise_threshold = 0.0,
	noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
})
minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_black",
	wherein        = {"es:strange_clay_orange"},
	--clust_scarcity = 1,
	--clust_num_ores = 100,
	clust_size     = 4,
	y_min     = 53,
	y_max     = 59,
	noise_threshold = 0.0,
	noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
})
minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_grey",
	wherein        = {"es:strange_clay_orange"},
	--clust_scarcity = 1,
	--clust_num_ores = 100,
	clust_size     = 8,
	y_min     = 61,
	y_max     = 70,
	noise_threshold = 0.0,
	noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
})
minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_maroon",
	wherein        = {"es:strange_clay_orange"},
	--clust_scarcity = 1,
	--clust_num_ores = 100,
	clust_size     = 8,
	y_min     = 66,
	y_max     = 75,
	noise_threshold = 0.0,
	noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
})
minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_black",
	wherein        = {"es:strange_clay_orange"},
	--clust_scarcity = 1,
	--clust_num_ores = 100,
	clust_size     = 8,
	y_min     = 161,
	y_max     = 170,
	noise_threshold = 0.0,
	noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
})









--UNDERGROUND
minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_blue",
	wherein        = {"default:desert_stone","default:desert_sand","default:stone"},
	clust_scarcity = 1,
	clust_num_ores = 12,
	clust_size     = 4,
	y_min     = -31000,
	y_max     = -120,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})

--SAVANNA
minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:dry_dirt",
	wherein        = {"default:dirt_with_dry_grass"},
	clust_scarcity = 1,
	clust_num_ores = 12,
	clust_size     = 8,
	y_min     = -12,
	y_max     = 88,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})

--ES LIQUIDS
minetest.register_ore({
		ore_type       = "scatter",
		ore            = "es:toxic_water_source",
		wherein        =  {"default:dry_dirt", "default:dirt_with_dry_grass","default:dirt", "default:stone"},
		clust_scarcity = 24*24*24,
		clust_num_ores = 4,
		clust_size     = 4,
		y_min          = -9000,
		y_max          = 5,

	})

minetest.register_ore({
		ore_type       = "sheet",
		ore            = "es:mud",
		wherein        =  {"default:dry_dirt", "default:dirt_with_dry_grass", "default:dirt"},
		clust_scarcity = 11*5*10,
		clust_num_ores = 4,
		clust_size     = 12,
		y_min          = -31,
		y_max          = 75,

	})


--ES Node Registration and location
minetest.register_ore({
		    ore_type       = "scatter",
		    ore            = "es:stone_with_emeralds",
		    wherein        = "default:stone",
		    clust_scarcity = 24*24*24,
		    clust_num_ores = 4,
		    clust_size     = 4,
		    y_min     = -3000,
		    y_max     = -1000,
	})

minetest.register_ore({
		    ore_type       = "scatter",
		    ore            = "es:stone_with_emeralds",
		    wherein        = "default:stone",
		    clust_scarcity = 24*24*24,
		    clust_num_ores = 1,
		    clust_size     = 1,
		    y_min     = -2000,
		    y_max     = -1000,
	})

minetest.register_ore({
		    ore_type       = "scatter",
		    ore            = "es:stone_with_rubys",
		    wherein        = "default:stone",
		    clust_scarcity = 20*20*20,
		    clust_num_ores = 4,
		    clust_size     = 3,
		    y_min     = -3000,
		    y_max     = -2300,
	})

minetest.register_ore({
		    ore_type       = "scatter",
		    ore            = "es:stone_with_rubys",
		    wherein        = "default:stone",
		    clust_scarcity = 20*20*20,
		    clust_num_ores = 1,
		    clust_size     = 1,
		    y_min     = -3000,
		    y_max     = -1110,
	})


minetest.register_ore({
		    ore_type       = "scatter",
		    ore            = "es:stone_with_aikerums",
		    wherein        = "default:stone",
		    clust_scarcity = 23*23*23,
		    clust_num_ores = 5,
		    clust_size     = 4,
		    y_min     = -31000,
		    y_max     = -3400,
	})

minetest.register_ore({
		    ore_type       = "scatter",
		    ore            = "es:stone_with_aikerums",
		    wherein        = "default:stone",
		    clust_scarcity = 23*23*23,
		    clust_num_ores = 1,
		    clust_size     = 1,
		    y_min     = -4000,
		    y_max     = -3140,
	})

minetest.register_ore({
		    ore_type       = "scatter",
		    ore            = "es:stone_with_infiniums",
		    wherein        = "default:stone",
		    clust_scarcity = 20*12*20,
		    clust_num_ores = 5,
		    clust_size     = 3,
		    y_min     = -31000,
		    y_max     = -4430,
	})

minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:stone_with_infiniums",
			wherein        = "default:stone",
			clust_scarcity = 16*18*16,
			clust_num_ores = 1,
			clust_size     = 1,
			y_min     = -4000,
			y_max     = -1190,
	})


minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:stone_with_purpelliums",
			wherein        = "default:stone",
			clust_scarcity = 16*18*16,
			clust_num_ores = 5,
			clust_size     = 5,
			y_min     = -31000,
			y_max     = -4090,
	})

minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:depleted_uraniums",
			wherein        = "default:stone",
			clust_scarcity = 54 * 14 * 54,
			clust_num_ores = 3,
			clust_size     = 1,
			y_min          = -14210,
			y_max          = -656,
	})

minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:depleted_uraniums",
			wherein        = "default:stone",
			clust_scarcity = 14 * 14 * 14,
			clust_num_ores = 6,
			clust_size     = 5,
			y_min          = -15000,
			y_max          = -3456,
	})

	
	
minetest.register_ore({
			ore_type       = "scatter",
			ore            = "default:stone_with_diamond",
			wherein        = "default:stone",
			clust_scarcity = 14 * 14 * 14,
			clust_num_ores = 6,
			clust_size     = 5,
			y_min          = -15000,
			y_max          = -1256,
	})
	
minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:sand_with_diamond",
			wherein        = "default:sand",
			clust_scarcity = 14 * 14 * 14,
			clust_num_ores = 2,
			clust_size     = 1,
			y_min          = -15000,
			y_max          = 1256,
	})

--liquids
minetest.register_ore({
		ore_type       = "blob",
		ore            = "default:lava_source",
		wherein        = "default:desert_stone",
		clust_scarcity = 15*15*10,
		clust_num_ores = 2,
		clust_size     = 2,
		y_min          = -31000,
		y_max          = 1140,
	})

minetest.register_ore({
		ore_type       = "blob",
		ore            = "default:lava_source",
		wherein        = "default:stone",
		clust_scarcity = 25*25*20,
		clust_num_ores = 2,
		clust_size     = 2,
		y_min          = -31000,
		y_max          = 1140,
	})

minetest.register_ore({
		ore_type       = "blob",
		ore            = "default:water_source",
		wherein        = "default:stone",
		clust_scarcity = 15*15*10,
		clust_num_ores = 2,
		clust_size     = 2,
		y_min          = -20000,
		y_max          = 1140,
	})



minetest.register_ore({
		ore_type       = "scatter",
		ore            = "es:desert_stone_with_coal",
		wherein        = "default:desert_stone",
		clust_scarcity = 6 * 6 * 6,
		clust_num_ores = 9,
		clust_size     = 6,
		y_min          = -31000,
		y_max          = 200,
	})

	-- Iron
minetest.register_ore({
		ore_type       = "scatter",
		ore            = "es:desert_stone_with_iron",
		wherein        = "default:desert_stone",
		clust_scarcity = 6 * 6 * 7,
		clust_num_ores = 3,
		clust_size     = 2,
		y_min          = -150,
		y_max          = 200,
	})


minetest.register_ore({
		ore_type       = "scatter",
		ore            = "es:desert_stone_with_gold",
		wherein        = "default:desert_stone",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 5,
		clust_size     = 3,
		y_min          = -214,
		y_max          = 2256,
	})
end






function default.register_ores()
--EXPEREMENTAL
minetest.register_ore({
	ore_type       = "blob",
	ore            = "default:mossycobble",
	wherein        = {"default:dirt_with_grass"},
		clust_scarcity = 15*15*10,
		clust_num_ores = 5,
		clust_size     = 3,
	y_min     = 3,
	y_max     = 33,
	noise_threshold = 0.0,
	noise_params =     {offset=0, scale=1, spread={x=10, y=10, z=10}, seed=23, octaves=3, persist=0.70} ,
})




--TECHNIC ORES
minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:marble",
	wherein        = "default:stone",
	clust_scarcity = 1,
	clust_num_ores = 1,
	clust_size     = 3,
	y_min     = -31000,
	y_max     = -50,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=150, y=150, z=150}, seed=23, octaves=3, persist=0.70}
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:granite",
	wherein        = "default:stone",
	clust_scarcity = 1,
	clust_num_ores = 1,
	clust_size     = 4,
	y_min     = -31000,
	y_max     = -150,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})

--CLAY!!
minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_maroon",
	wherein        = {"default:desert_stone"},
	clust_scarcity = 1,
	clust_num_ores = 3,
	clust_size     = 4,
	y_min     = 70,
	y_max     = 190,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_black",
	wherein        = {"default:desert_stone","default:stone"},
	clust_scarcity = 1,
	clust_num_ores = 12,
	clust_size     = 4,
	y_min     = 60,
	y_max     = 96,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.80}
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_red",
	wherein        = {"default:desert_stone"},
	clust_scarcity = 1,
	clust_num_ores = 8,
	clust_size     = 4,
	y_min     = 44,
	y_max     = 70,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_grey",
	wherein        = {"default:desert_stone"},
	clust_scarcity = 1,
	clust_num_ores = 8,
	clust_size     = 4,
	y_min     = 34,
	y_max     = 70,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_orange",
	wherein        ={"default:desert_stone","default:desert_sand"},
	clust_scarcity = 1,
	clust_num_ores = 5,
	clust_size     = 5,
	y_min     = 10,
	y_max     = 40,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_brown",
	wherein        = {"default:desert_stone","default:desert_sand"},
	clust_scarcity = 1,
	clust_num_ores = 12,
	clust_size     = 4,
	y_min     = -12,
	y_max     = 7,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_red",
	wherein        = {"es:strange_clay_brown","default:desert_sand"},
	clust_scarcity = 1,
	clust_num_ores = 9,
	clust_size     = 12,
	y_min     = 0,
	y_max     = 30,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_maroon",
	wherein        = {"es:strange_clay_brown"},
	clust_scarcity = 1,
	clust_num_ores = 9,
	clust_size     = 12,
	y_min     = 0,
	y_max     = 30,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_black",
	wherein        = {"es:strange_clay_brown"},
	clust_scarcity = 1,
	clust_num_ores = 12,
	clust_size     = 4,
	y_min     = -5,
	y_max     = 3,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=4, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.80}
})

--DEFAULT STRATA
minetest.register_ore({
	ore_type       = "sheet",
	ore            = "default:stone",
	wherein        = {"default:desert_stone","default:desert_sand"},
	clust_scarcity = 1,
	clust_num_ores = 3,
	clust_size     = 4,
	y_min     = 50,
	y_max     = 90,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "default:clay",
	wherein        = {"default:desert_stone","default:desert_sand","default:stone"},
	clust_scarcity = 1,
	clust_num_ores = 12,
	clust_size     = 8,
	y_min     = 24,
	y_max     = 50,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "default:sandstone",
	wherein        ={"default:desert_stone","default:desert_sand","default:stone"},
	clust_scarcity = 1,
	clust_num_ores = 12,
	clust_size     = 10,
	y_min     = 10,
	y_max     = 30,
	noise_threshold = 0.2,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:dry_dirt",
	wherein        = {"default:desert_stone","default:desert_sand","default:stone"},
	clust_scarcity = 1,
	clust_num_ores = 12,
	clust_size     = 4,
	y_min     = -12,
	y_max     = 7,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})



--DEFAULT STRATA
minetest.register_ore({
	ore_type       = "sheet",
	ore            = "default:stone",
	wherein        = {"default:desert_stone","default:desert_sand","es:strange_clay_orange"},
	clust_scarcity = 1,
	clust_num_ores = 3,
	clust_size     = 4,
	y_min     = 50,
	y_max     = 90,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "default:clay",
	wherein        = {"default:desert_stone","default:desert_sand","default:stone","es:strange_clay_orange"},
	clust_scarcity = 1,
	clust_num_ores = 12,
	clust_size     = 8,
	y_min     = 24,
	y_max     = 50,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "default:sandstone",
	wherein        ={"default:desert_stone","default:desert_sand","default:stone","es:strange_clay_orange"},
	clust_scarcity = 1,
	clust_num_ores = 12,
	clust_size     = 10,
	y_min     = 10,
	y_max     = 30,
	noise_threshold = 0.2,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "default:dirt",
	wherein        = {"default:desert_stone","default:desert_sand","es:strange_clay_orange"},
	clust_scarcity = 1,
	clust_num_ores = 12,
	clust_size     = 4,
	y_min     = -12,
	y_max     = 7,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "default:gravel",
	wherein        = {"es:strange_clay_orange"},
	clust_scarcity = 1,
	clust_num_ores = 8,
	clust_size     = 4,
	y_min     = 34,
	y_max     = 70,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "default:coalblock",
	wherein        = {"es:strange_clay_orange"},
	clust_scarcity = 1,
	clust_num_ores = 12,
	clust_size     = 4,
	y_min     = 60,
	y_max     = 96,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.80}
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "default:desert_sand",
	wherein        = {"es:strange_clay_orange"},
	clust_scarcity = 1,
	clust_num_ores = 12,
	clust_size     = 10,
	y_min     = 44,
	y_max     = 70,
	noise_threshold = 0.7,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})
	minetest.register_ore({
		ore_type       = "blob",
		ore            = "default:lava_source",
		wherein        = "es:strange_clay_orange",
		clust_scarcity = 15*15*10,
		clust_num_ores = 2,
		clust_size     = 2,
		y_min          = -62,
		y_max          = 50,
	})

--HARDENED CLAY FOR MESA :)
--maikerumine

--MESA STRATA
minetest.register_ore({
	ore_type       = "sheet",
	ore            = "default:desert_sand",
	wherein        = {"default:desert_stone", "es:strange_clay_orange"},
	clust_scarcity = 1,
	clust_num_ores = 8,
	clust_size     = 4,
	y_min     = 4,
	y_max     = 70,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})


minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_grey",
	wherein        = {"es:strange_clay_orange"},
	--clust_scarcity = 1,
	--clust_num_ores = 27,
	clust_size     = 1,
	y_min     = 5,
	y_max     = 14,
	noise_threshold = 0.0,
	noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_black",
	wherein        = {"es:strange_clay_orange"},
	--clust_scarcity = 1,
	--clust_num_ores =27,
	clust_size     = 1,
	y_min     = 15,
	y_max     = 17,
	noise_threshold = 0.0,
	noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70}, 
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_maroon",
	wherein        = {"es:strange_clay_orange"},
	--clust_scarcity = 1,
	--clust_num_ores = 27,
	clust_size     = 6,
	y_min     = 20,
	y_max     = 29,
	noise_threshold = 0.0,
	noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_red",
	wherein        = {"es:strange_clay_orange"},
	--clust_scarcity = 1,
	--clust_num_ores = 8,
	clust_size     = 2,
	y_min     = 34,
	y_max     = 37,
	noise_threshold = 0.0,
	noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_brown",
	wherein        = {"es:strange_clay_orange"},
	--clust_scarcity = 1,
	--clust_num_ores = 100,
	clust_size     = 1,
	y_min     = 42,
	y_max     = 43,
	noise_threshold = 0.0,
	noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
})
minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_blue",
	wherein        = {"es:strange_clay_orange", "es:strange_grass"},
	--clust_scarcity = 1,
	--clust_num_ores = 100,
	clust_size     = 1,
	y_min     = 43,
	y_max     = 44,
	noise_threshold = 0.0,
	noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
})
minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_red",
	wherein        = {"es:strange_clay_orange"},
	--clust_scarcity = 1,
	--clust_num_ores = 100,
	clust_size     = 1,
	y_min     = 44,
	y_max     = 45,
	noise_threshold = 0.0,
	noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
})
minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_red",
	wherein        = {"es:strange_clay_orange"},
	--clust_scarcity = 1,
	--clust_num_ores = 100,
	clust_size     = 1,
	y_min     = 45,
	y_max     = 47,
	noise_threshold = 0.0,
	noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
})
minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_grey",
	wherein        = {"es:strange_clay_orange"},
	--clust_scarcity = 1,
	--clust_num_ores = 100,
	clust_size     = 1,
	y_min     = 49,
	y_max     = 52,
	noise_threshold = 0.0,
	noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
})
minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_black",
	wherein        = {"es:strange_clay_orange"},
	--clust_scarcity = 1,
	--clust_num_ores = 100,
	clust_size     = 4,
	y_min     = 53,
	y_max     = 59,
	noise_threshold = 0.0,
	noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
})
minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_grey",
	wherein        = {"es:strange_clay_orange"},
	--clust_scarcity = 1,
	--clust_num_ores = 100,
	clust_size     = 8,
	y_min     = 61,
	y_max     = 70,
	noise_threshold = 0.0,
	noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
})
minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_maroon",
	wherein        = {"es:strange_clay_orange"},
	--clust_scarcity = 1,
	--clust_num_ores = 100,
	clust_size     = 8,
	y_min     = 66,
	y_max     = 75,
	noise_threshold = 0.0,
	noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
})
minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_black",
	wherein        = {"es:strange_clay_orange"},
	--clust_scarcity = 1,
	--clust_num_ores = 100,
	clust_size     = 8,
	y_min     = 161,
	y_max     = 170,
	noise_threshold = 0.0,
	noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
})









--UNDERGROUND
minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:strange_clay_blue",
	wherein        = {"default:desert_stone","default:desert_sand","default:stone"},
	clust_scarcity = 1,
	clust_num_ores = 12,
	clust_size     = 4,
	y_min     = -31000,
	y_max     = -120,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})

--SAVANNA
minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:dry_dirt",
	wherein        = {"default:dirt_with_dry_grass"},
	clust_scarcity = 1,
	clust_num_ores = 12,
	clust_size     = 8,
	y_min     = -12,
	y_max     = 88,
	noise_threshold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})

--ES LIQUIDS
minetest.register_ore({
		ore_type       = "scatter",
		ore            = "es:toxic_water_source",
		wherein        =  {"default:dry_dirt", "default:dirt_with_dry_grass","default:dirt", "default:stone"},
		clust_scarcity = 24*24*24,
		clust_num_ores = 4,
		clust_size     = 4,
		y_min          = -9000,
		y_max          = 5,

	})

minetest.register_ore({
		ore_type       = "sheet",
		ore            = "es:mud",
		wherein        =  {"default:dry_dirt", "default:dirt_with_dry_grass", "default:dirt"},
		clust_scarcity = 11*5*10,
		clust_num_ores = 4,
		clust_size     = 12,
		y_min          = -31,
		y_max          = 75,

	})


--ES Node Registration and location
minetest.register_ore({
		    ore_type       = "scatter",
		    ore            = "es:stone_with_emeralds",
		    wherein        = "default:stone",
		    clust_scarcity = 24*24*24,
		    clust_num_ores = 4,
		    clust_size     = 4,
		    y_min     = -3000,
		    y_max     = -1000,
	})

minetest.register_ore({
		    ore_type       = "scatter",
		    ore            = "es:stone_with_emeralds",
		    wherein        = "default:stone",
		    clust_scarcity = 24*24*24,
		    clust_num_ores = 1,
		    clust_size     = 1,
		    y_min     = -2000,
		    y_max     = -1000,
	})

minetest.register_ore({
		    ore_type       = "scatter",
		    ore            = "es:stone_with_rubys",
		    wherein        = "default:stone",
		    clust_scarcity = 20*20*20,
		    clust_num_ores = 4,
		    clust_size     = 3,
		    y_min     = -3000,
		    y_max     = -2300,
	})

minetest.register_ore({
		    ore_type       = "scatter",
		    ore            = "es:stone_with_rubys",
		    wherein        = "default:stone",
		    clust_scarcity = 20*20*20,
		    clust_num_ores = 1,
		    clust_size     = 1,
		    y_min     = -3000,
		    y_max     = -1110,
	})


minetest.register_ore({
		    ore_type       = "scatter",
		    ore            = "es:stone_with_aikerums",
		    wherein        = "default:stone",
		    clust_scarcity = 23*23*23,
		    clust_num_ores = 5,
		    clust_size     = 4,
		    y_min     = -31000,
		    y_max     = -3400,
	})

minetest.register_ore({
		    ore_type       = "scatter",
		    ore            = "es:stone_with_aikerums",
		    wherein        = "default:stone",
		    clust_scarcity = 23*23*23,
		    clust_num_ores = 1,
		    clust_size     = 1,
		    y_min     = -4000,
		    y_max     = -3140,
	})

minetest.register_ore({
		    ore_type       = "scatter",
		    ore            = "es:stone_with_infiniums",
		    wherein        = "default:stone",
		    clust_scarcity = 20*12*20,
		    clust_num_ores = 5,
		    clust_size     = 3,
		    y_min     = -31000,
		    y_max     = -4430,
	})

minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:stone_with_infiniums",
			wherein        = "default:stone",
			clust_scarcity = 16*18*16,
			clust_num_ores = 1,
			clust_size     = 1,
			y_min     = -4000,
			y_max     = -1190,
	})


minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:stone_with_purpelliums",
			wherein        = "default:stone",
			clust_scarcity = 16*18*16,
			clust_num_ores = 5,
			clust_size     = 5,
			y_min     = -31000,
			y_max     = -4090,
	})

minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:depleted_uraniums",
			wherein        = "default:stone",
			clust_scarcity = 54 * 14 * 54,
			clust_num_ores = 3,
			clust_size     = 1,
			y_min          = -14210,
			y_max          = -656,
	})

minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:depleted_uraniums",
			wherein        = "default:stone",
			clust_scarcity = 14 * 14 * 14,
			clust_num_ores = 6,
			clust_size     = 5,
			y_min          = -15000,
			y_max          = -3456,
	})

	
	
minetest.register_ore({
			ore_type       = "scatter",
			ore            = "default:stone_with_diamond",
			wherein        = "default:stone",
			clust_scarcity = 14 * 14 * 14,
			clust_num_ores = 6,
			clust_size     = 5,
			y_min          = -15000,
			y_max          = -1256,
	})
	
minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:sand_with_diamond",
			wherein        = "default:sand",
			clust_scarcity = 14 * 14 * 14,
			clust_num_ores = 2,
			clust_size     = 1,
			y_min          = -15000,
			y_max          = 1256,
	})

--liquids
minetest.register_ore({
		ore_type       = "blob",
		ore            = "default:lava_source",
		wherein        = "default:desert_stone",
		clust_scarcity = 15*15*10,
		clust_num_ores = 2,
		clust_size     = 2,
		y_min          = -31000,
		y_max          = 1140,
	})

minetest.register_ore({
		ore_type       = "blob",
		ore            = "default:lava_source",
		wherein        = "default:stone",
		clust_scarcity = 25*25*20,
		clust_num_ores = 2,
		clust_size     = 2,
		y_min          = -31000,
		y_max          = 1140,
	})

minetest.register_ore({
		ore_type       = "blob",
		ore            = "default:water_source",
		wherein        = "default:stone",
		clust_scarcity = 15*15*10,
		clust_num_ores = 2,
		clust_size     = 2,
		y_min          = -20000,
		y_max          = 1140,
	})



minetest.register_ore({
		ore_type       = "scatter",
		ore            = "es:desert_stone_with_coal",
		wherein        = "default:desert_stone",
		clust_scarcity = 6 * 6 * 6,
		clust_num_ores = 9,
		clust_size     = 6,
		y_min          = -31000,
		y_max          = 200,
	})

	-- Iron
minetest.register_ore({
		ore_type       = "scatter",
		ore            = "es:desert_stone_with_iron",
		wherein        = "default:desert_stone",
		clust_scarcity = 6 * 6 * 7,
		clust_num_ores = 3,
		clust_size     = 2,
		y_min          = -150,
		y_max          = 200,
	})


minetest.register_ore({
		ore_type       = "scatter",
		ore            = "es:desert_stone_with_gold",
		wherein        = "default:desert_stone",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 5,
		clust_size     = 3,
		y_min          = -214,
		y_max          = 2256,
	})
	
		
--NETHER GENERATION	
--nether defs  -6600 to -7000
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "es:rack_with_diamond",
		wherein        = {"default:lava_source","es:rack","default:stone"},
		clust_scarcity = 14 * 14 * 14,
		clust_num_ores = 12,
		clust_size     = 5,
		y_min           = -7000,
		y_max           = -6670,
	})
	
	minetest.register_ore({
	    ore_type       = "scatter",
	    ore            = "es:quartz_ore",
	    --wherein        = "default:rack",
	    wherein        = {"es:rack","default:stone"},
	    clust_scarcity = 10*10*10,
	    clust_num_ores = 6,
	    clust_size     = 5,
		y_min           = -7000,
		y_max           = -6670,
	    --y_max     = NETHER_DEPTH,
	})

	-- Slow Sand

	minetest.register_ore({
		ore_type        = "blob",
		ore             = "es:slowsand",
		wherein         = {"es:rack", "default:lava_source",
			"default:desert_stone"},
		clust_scarcity  = 13 * 13 * 13,
		clust_size      = 5,
		y_min           = -7000,
		y_max           = -6670,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.1,
			spread = {x = 5, y = 5, z = 5},
			seed = 2316,
			octaves = 1,
			persist = 0.0
		},
	})

	-- Glowstone

	minetest.register_ore({
		ore_type        = "blob",
		ore             = "es:glowstone",
		wherein         = {"es:rack"},
		clust_scarcity  = 26 * 26 * 26,
		clust_size      = 5,
		y_min           = -7000,
		y_max           = -6670,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.1,
			spread = {x = 5, y = 5, z = 5},
			seed = 17676,
			octaves = 1,
			persist = 0.0
		},
	})

	-- Gravel

	minetest.register_ore({
		ore_type        = "blob",
		ore             = "default:gravel",
		wherein         = {"es:rack"},
		clust_scarcity  = 16 * 16 * 16,
		clust_size      = 5,
		y_min           = -7000,
		y_max           = -6670,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 766,
			octaves = 1,
			persist = 0.0
		},
	})

	--Lava
	
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:lava_source",
		wherein        = "es:rack",
		clust_scarcity =12 *12 * 12,
		clust_num_ores = 2,
		clust_size     = 2,
		y_min           = -7000,
		y_max           = -6670,
	})	
	
	
	--Fire
	
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "fire:permanent_flame",
		wherein        = "es:rack",
		clust_scarcity =12 *22 * 12,
		clust_num_ores = 5,
		clust_size     = 5,
		y_min           = -7000,
		y_max           = -6670,
	})

--brick
	minetest.register_ore({
		ore_type        = "blob",
		ore             = "es:nitherbrick",
		wherein         = {"es:rack", "default:lava_source",
			"default:desert_stone"},
		clust_scarcity  = 13 * 13 * 13,
		clust_size      = 5,
		y_min           = -7000,
		y_max           = -6670,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.1,
			spread = {x = 5, y = 5, z = 5},
			seed = 16,
			octaves = 1,
			persist = 0.0
		},
	})
	
minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:nitherbrick",
	wherein        ={"es:rack"},
	clust_scarcity = 1,
	clust_num_ores = 12,
	clust_size     = 10,
		y_min           = -7000,
		y_max           = -6670,
	noise_threshold = 0.2,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "air",
	wherein        ={"es:rack"},
	clust_scarcity = 1,
	clust_num_ores = 32,
	clust_size     = 10,
		y_min           = -7000,
		y_max           = -6670,
	noise_threshold = 0.2,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})

--Realm1 generation  --7501 to -8000
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_diamond",
		wherein        = "default:stone",
		clust_scarcity = 1000,
		clust_num_ores = 30,
		clust_size     = 9,
		y_min     = -31000,
		y_max     = -7500,
	})
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:diamondblock",
		wherein        = "default:stone",
		clust_scarcity = 10000,
		clust_num_ores = 30,
		clust_size     = 9,
		y_min     = -31000,
		y_max     = -7500,
	})
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "es:stone_with_emeralds",
		wherein        = "default:stone",
		clust_scarcity = 5000,
		clust_num_ores = 36,
		clust_size     = 9,
		y_min     = -31000,
		y_max     = -7500,
	})	
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_iron",
		wherein        = "default:stone",
		clust_scarcity = 24 * 24 * 24,
		clust_num_ores = 27,
		clust_size     = 6,
	y_min     = -31000,
	y_max     = -7500,
	})
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:tree",
		wherein        = "default:water_source",
		clust_scarcity = 24 * 24 * 24,
		clust_num_ores = 2,
		clust_size     = 6,
	y_min     = -8500,
	y_max     = -7500,
	})	
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_coal",
		wherein        = "default:stone",
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 8,
		clust_size     = 3,
	y_min     = -8500,
	y_max     = -7500,
	})
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "es:glowstone",
		wherein        = "default:water_source",
		clust_scarcity = 38 * 38 * 38,
		clust_num_ores = 2,
		clust_size     = 1,
	y_min     = -8500,
	y_max     = -7500,
	})	

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "es:stone_with_emeralds",
		wherein        = "default:water_source",
		clust_scarcity = 68 * 68 * 68,
		clust_num_ores = 2,
		clust_size     = 1,
	y_min     = -5530,
	y_max     = -5420,
	})
	
--[[
minetest.register_ore({
	ore_type       = "sheet",
	ore            = "default:nitherbrick",
	wherein        = {"default:water_source","default:lava_source","default:rack", "air"},
	clust_scarcity = 1,  --higher the less
	clust_num_ores = 372,  --amount
	clust_size     = 13,  --depth
	y_min     = -5090,
	y_max     = -5060,
	noise_threshold = 0.02,
	noise_params = {offset=4, scale=1, spread={x=50, y=122, z=50}, seed=24, octaves=3, persist=0.70}
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "default:rack",
	wherein        = {"default:water_source","default:lava_source","default:rack", "air"},
	clust_scarcity = 1,  --higher the less
	clust_num_ores = 372,  --amount
	clust_size     = 3,  --depth
	y_min     = -5090,
	y_max     = -5060,
	noise_threshold = 0.8,
	noise_params = {offset=0, scale=1, spread={x=50, y=122, z=50}, seed=2464, octaves=3, persist=0.70}
})
]]
	-- endstone???  TODO make a mapgen
-- -8201 to -9000 end
	minetest.register_ore({
		ore_type        = "blob",
		ore             = "es:end_stone",
		wherein         = {"es:void", "es:end_stone","default:stone","air","ignore"},
		clust_scarcity  = 30 * 30 * 30,  	--was26
		clust_size      = 17,				--was5
		y_min           = -9000,
		y_max           = -8200,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.1,
			spread = {x = 5, y = 5, z = 5},
			seed = 16,
			octaves = 1,
			persist = 0.0
		},
	})	
	
	
end
