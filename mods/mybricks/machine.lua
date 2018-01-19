local mater = {}
local shape = {}
local make_ok = {}
local anzahl = {}

minetest.register_node("mybricks:machine", {
	description = "Brick Machine",
	tiles = {
		"mybricks_machine_top.png",
		"mybricks_machine_top.png",
		"mybricks_machine_side.png",
		"mybricks_machine_side.png",
		"mybricks_machine_side.png",
		"mybricks_machine_side.png",
		},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.4375, -0.5, 0.5, 0.5, 0.5}, 
			{0.375, -0.5, -0.5, 0.5, 0.5, -0.375}, 
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.5, -0.5, -0.5, 0.5, 0.0625, 0.5},
			{-0.5, -0.5, 0.375, -0.375, 0.5, 0.5}, 
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5}, 
			{-0.0625, 0.0625, -0.25, 0, 0.1875, 0.25}, 
			{-0.0625, 0.0625, -0.125, 0, 0.25, 0.125}, 
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
		}
	},

	after_place_node = function(pos, placer)
		local meta = minetest.get_meta(pos);
			meta:set_string("owner",  (placer:get_player_name() or ""));
			meta:set_string("infotext",  "Brick Machine (owned by " .. (placer:get_player_name() or "") .. ")");
	end,

	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
			if player:get_player_name() == meta:get_string("owner") and
				inv:is_empty("ingot") and
				inv:is_empty("res") then
				return true
			else
				return false
			end
	end,

	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec", "invsize[10,11;]"..
			"background[-0.15,-0.25;10.40,11.75;mybricks_background.png]"..
			"list[current_name;ingot;7,2;1,1;]"..
			"list[current_name;res;7,4;1,1;]"..
			"label[7,1.5;Input:]"..
			"label[7,3.5;Output:]"..
			"label[0,0;Choose Brick Stye:]"..
			"image_button[1,1;1,1;mybricks_mach1.png;brick; ]"..
			"image_button[1,2;1,1;mybricks_mach8.png;smbrick; ]"..
			"image_button[1,3;1,1;mybricks_mach7.png;tbrick; ]"..
			"image_button[2.5,1;1,1;mybricks_mach4.png;tile; ]"..
			"image_button[2.5,2;1,1;mybricks_mach2.png;square; ]"..
			"image_button[2.5,3;1,1;mybricks_mach3.png;square_sm; ]"..
			"image_button[4,1;1,1;mybricks_mach5.png;split; ]"..
			"image_button[4,2;1,1;mybricks_mach6.png;vsplit; ]"..
			"image_button[1,4;1,1;mybricks_mach9.png;brickw; ]"..
			"image_button[1,5;1,1;mybricks_mach10.png;smbrickw; ]"..
			"image_button[1,6;1,1;mybricks_mach11.png;tbrickw; ]"..
			"image_button[2.5,4;1,1;mybricks_mach12.png;tilew; ]"..
			"image_button[2.5,5;1,1;mybricks_mach13.png;squarew; ]"..
			"image_button[2.5,6;1,1;mybricks_mach14.png;square_smw; ]"..
			"image_button[4,4;1,1;mybricks_mach15.png;splitw; ]"..
			"image_button[4,5;1,1;mybricks_mach16.png;vsplitw; ]"..
			"list[current_player;main;1,7;8,4;]")
		meta:set_string("infotext", "Brick Machine")
		local inv = meta:get_inventory()
		inv:set_size("ingot", 1)
		inv:set_size("res", 1)
	end,

	on_receive_fields = function(pos, formname, fields, sender)
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()

		if fields["brick"] 
		or fields["smbrick"] 
		or fields["tbrick"] 
		or fields["square"]
		or fields["square_sm"]
		or fields["tile"]
		or fields["split"]
		or fields["vsplit"]
		or fields["brickw"] 
		or fields["smbrickw"] 
		or fields["tbrickw"] 
		or fields["squarew"]
		or fields["square_smw"]
		or fields["tilew"]
		or fields["splitw"]
		or fields["vsplitw"]
		then

			if fields["brick"] then
				make_ok = "0"
				anzahl = "1"
				shape = "mybricks:brick_"
				if inv:is_empty("ingot") then
					return
				end
			end

			if fields["smbrick"] then
				make_ok = "0"
				anzahl = "1"
				shape = "mybricks:smbrick_"
				if inv:is_empty("ingot") then
					return
				end
			end

			if fields["tbrick"] then
				make_ok = "0"
				anzahl = "1"
				shape = "mybricks:tbrick_"
				if inv:is_empty("ingot") then
					return
				end
			end

			if fields["square"] then
				make_ok = "0"
				anzahl = "1"
				shape = "mybricks:brick_square_"
				if inv:is_empty("ingot") then
					return
				end
			end

			if fields["square_sm"] then
				make_ok = "0"
				anzahl = "1"
				shape = "mybricks:brick_square_sm_"
				if inv:is_empty("ingot") then
					return
				end
			end

			if fields["tile"] then
				make_ok = "0"
				anzahl = "1"
				shape = "mybricks:brick_tile_"
				if inv:is_empty("ingot") then
					return
				end
			end

			if fields["split"] then
				make_ok = "0"
				anzahl = "1"
				shape = "mybricks:brick_split_"
				if inv:is_empty("ingot") then
					return
				end
			end

			if fields["vsplit"] then
				make_ok = "0"
				anzahl = "1"
				shape = "mybricks:brick_vsplit_"
				if inv:is_empty("ingot") then
					return
				end
			end

			if fields["brickw"] then
				make_ok = "0"
				anzahl = "1"
				shape = "mybricks:brickw_"
				if inv:is_empty("ingot") then
					return
				end
			end

			if fields["smbrickw"] then
				make_ok = "0"
				anzahl = "1"
				shape = "mybricks:smbrickw_"
				if inv:is_empty("ingot") then
					return
				end
			end

			if fields["tbrickw"] then
				make_ok = "0"
				anzahl = "1"
				shape = "mybricks:tbrickw_"
				if inv:is_empty("ingot") then
					return
				end
			end

			if fields["squarew"] then
				make_ok = "0"
				anzahl = "1"
				shape = "mybricks:brick_squarew_"
				if inv:is_empty("ingot") then
					return
				end
			end

			if fields["square_smw"] then
				make_ok = "0"
				anzahl = "1"
				shape = "mybricks:brick_squarew_sm_"
				if inv:is_empty("ingot") then
					return
				end
			end

			if fields["tilew"] then
				make_ok = "0"
				anzahl = "1"
				shape = "mybricks:brick_tilew_"
				if inv:is_empty("ingot") then
					return
				end
			end

			if fields["splitw"] then
				make_ok = "0"
				anzahl = "1"
				shape = "mybricks:brick_splitw_"
				if inv:is_empty("ingot") then
					return
				end
			end

			if fields["vsplitw"] then
				make_ok = "0"
				anzahl = "1"
				shape = "mybricks:brick_vsplitw_"
				if inv:is_empty("ingot") then
					return
				end
			end

			local ingotstack = inv:get_stack("ingot", 1)
			local resstack = inv:get_stack("res", 1)

			local mat_tab = {
					{"default:leaves",		"default_leaves"},
					{"default:jungleleaves",	"default_jungleleaves"},
					{"default:pine_needles",	"default_pine_needles"},
					{"default:clay",		"default_clay"},
					{"default:coalblock",		"default_coal_block"},
					{"default:cobble",		"default_cobble"},
					{"default:desert_cobble",	"default_desert_cobble"},
					{"default:desert_stone",	"default_desert_stone"},
					{"default:dirt",		"default_dirt"},
					{"default:glass",		"default_glass"},
					{"default:gravel",		"default_gravel"},
					{"default:junglewood",		"default_junglewood"},
					{"default:mossycobble",		"default_mossycobble"},
					{"default:obsidian",		"default_obsidian"},
					{"default:pine_wood",		"default_pine_wood"},
					{"default:aspen_wood",		"default_aspen_wood"},
					{"default:acacia_wood",		"default_acacia_wood"},
					{"default:sandstone",		"default_sandstone"},
					{"default:stone",			"default_stone"},
					{"default:wood",			"default_wood"},
					{"farming:straw",		"farming_straw"},
					{"wool:black",			"wool_black"},
					{"wool:blue",			"wool_blue"},
					{"wool:brown",			"wool_brown"},
					{"wool:cyan",			"wool_cyan"},
					{"wool:dark_green",		"wool_dark_green"},
					{"wool:dark_grey",		"wool_dark_grey"},
					{"wool:green",			"wool_green"},
					{"wool:grey",			"wool_grey"},
					{"wool:magenta",		"wool_magenta"},
					{"wool:orange",			"wool_orange"},
					{"wool:pink",			"wool_pink"},
					{"wool:red",			"wool_red"},
					{"wool:violet",			"wool_violet"},
					{"wool:white",			"wool_white"},
					{"wool:yellow",			"wool_yellow"},

					{"bat_blocks:bat_cobble",		"bat_cobble"},
					{"bat_blocks:bat_cobble_white",	"bat_cobble_white"},
					{"bat_blocks:bat_cobble_tan",	"bat_cobble_tan"},
					{"bat_blocks:bat_pavers",		"bat_pavers"},
					{"bat_blocks:bat_block",		"bat_block"},
					{"bat_blocks:bat_tile",			"bat_tile"},
					{"bat_blocks:bat_diag",			"bat_diag"},
					{"bat_blocks:bat_x",			"bat_x_block"},
					{"bat_blocks:bat_brick",		"bat_brick"},
					{"bat_blocks:bat_smbrick",		"bat_smbrick"},

					{"castle:dungeon_stone",		"dungeon_stone"},
					{"castle:pavement",				"pavement_brick"},
					{"castle:rubble",				"rubble"},
					{"castle:roofslate",			"slate"},
					{"castle:stonewall",			"stonewall"},

					{"moreblocks:cactus_brick",			"cactus_brick"},
					{"moreblocks:cactus_checker",		"cactus_checker"},
					{"moreblocks:coal_stone_bricks",	"coal_stone_bricks"},
					{"moreblocks:circle_stone_bricks",	"circle_stone_bricks"},
					{"moreblocks:iron_checker",			"iron_checker"},
					{"moreblocks:iron_stone_bricks",	"iron_stone_bricks"},
					{"moreblocks:plankstone",			"plankstone"},
					{"moreblocks:stone_tile",			"stone_tile"},
					{"moreblocks:wood_tile_center",		"wood_tile_center"},
					{"moreblocks:wood_tile_full",		"wood_tile_full"},

					{"moretrees:apple_planks",			"apple_tree"},
					{"moretrees:beech_planks",			"beech"},
					{"moretrees:oak_planks",			"oak"},
					{"moretrees:sequoia_planks",		"sequoia"},
					{"moretrees:birch_planks",			"birch"},
					{"moretrees:palm_planks",			"palm"},
					{"moretrees:spruce_planks",			"spruce"},
					{"moretrees:willow_planks",			"willow"},
					{"moretrees:rubber_tree_planks",	"rubber_tree"},
					{"moretrees:fir_planks",			"fir"},

					{"hardenedclay:hardened_clay",				"hardened_clay"},
					{"hardenedclay:hardened_clay_white",		"hardened_clay_white"},
					{"hardenedclay:hardened_clay_black",		"hardened_clay_black"},
					{"hardenedclay:hardened_clay_light_blue",	"hardened_clay_light_blue"},
					{"hardenedclay:hardened_clay_green",		"hardened_clay_green"},
					{"hardenedclay:hardened_clay_red",			"hardened_clay_red"},
					{"hardenedclay:hardened_clay_light_grey",	"hardened_clay_light_grey"},
					{"hardenedclay:hardened_clay_violet",		"hardened_clay_violet"},
					{"hardenedclay:hardened_clay_lime",			"hardened_clay_lime"},
					{"hardenedclay:hardened_clay_magenta",		"hardened_clay_magenta"},
					{"hardenedclay:hardened_clay_orange",		"hardened_clay_orange"},
					{"hardenedclay:hardened_clay_brown",		"hardened_clay_brown"},
					{"hardenedclay:hardened_clay_blue",			"hardened_clay_blue"},
					{"hardenedclay:hardened_clay_yellow",		"hardened_clay_yellow"},
					{"hardenedclay:hardened_clay_pink",			"hardened_clay_pink"},
					{"hardenedclay:hardened_clay_cyan",			"hardened_clay_cyan"},
					{"hardenedclay:hardened_clay_grey",			"hardened_clay_grey"},

					{"ores:slate",			"slate"},
					{"ores:silt",			"silt"},
					{"ores:shale",			"shale"},
					{"ores:schist",			"schist"},
					{"ores:redsandstone",	"redsandstone"},
					{"ores:gneiss",			"gneiss"},
					{"ores:basalt",			"basalt"},
					{"ores:granite",		"granite"},
					{"ores:marble",			"marble"},
				}

			for i in ipairs (mat_tab) do
				local titem = mat_tab[i][1]
				local tmat  = mat_tab[i][2]

					if ingotstack:get_name()==titem then
							mater = tmat
							make_ok = "1"
					end
			end

			if sender:get_player_name() == meta:get_string("owner") and
			   make_ok == "1" then
					local give = {}
					for i = 0, anzahl-1 do
						give[i+1]=inv:add_item("res",shape..mater)
					end
				ingotstack:take_item()
				inv:set_stack("ingot",1,ingotstack)
			end
		end
	end
})

minetest.register_craft({
		output = 'mybricks:machine',
		recipe = {
			{'default:brick', 'default:brick', 'default:brick'},
			{'default:brick', 'default:steel_ingot', 'default:brick'},
			{'default:brick', "default:brick", 'default:brick'},
		},
})













