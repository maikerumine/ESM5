local material = {}
local shape = {}
local make_ok = {}
local anzahl = {}

minetest.register_node("mymeshnodes:machine", {
	description = "Mesh Machine",
	tiles = {"mymeshnodes_cubemap.png"},
	drawtype = "mesh",
	mesh = "mymeshnodes_machine.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=2},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
		}
	},

	after_place_node = function(pos, placer)
	local meta = minetest.get_meta(pos);
			meta:set_string("owner",  (placer:get_player_name() or ""));
			meta:set_string("infotext",  "Mesh Machine (owned by " .. (placer:get_player_name() or "") .. ")");
		end,

can_dig = function(pos,player)
	local meta = minetest.get_meta(pos);
	local inv = meta:get_inventory()
	if not inv:is_empty("ingot") then
		return false
	elseif not inv:is_empty("res") then
		return false
	end
	return true
end,

on_construct = function(pos)
	local meta = minetest.get_meta(pos)
	meta:set_string("formspec", "invsize[13,11;]"..
		"background[-0.50,-0.50;14.50,12.5;mymeshnodes_background.png]"..
		"list[current_name;ingot;10.5,6.5;1,1;]"..
		"list[current_name;res;10.5,8;1,1;]"..
		"label[11.5,6.5;Input:]"..
		"label[11.5,8;Output:]"..
		"label[1,0.5;Slopes]"..
		"item_image_button[1,1;1,1;mymeshnodes:slope_mi;slope; ]"..
		"item_image_button[2,1;1,1;mymeshnodes:slope_ic_mi;slopeic; ]"..
		"item_image_button[3,1;1,1;mymeshnodes:slope_oc_mi;slopeoc; ]"..
		"item_image_button[4,1;1,1;mymeshnodes:slope_i45_mi;slopei45; ]"..
		"item_image_button[5,1;1,1;mymeshnodes:slope_o45_mi;slopeo45; ]"..
		"item_image_button[6,1;1,1;mymeshnodes:peek_mi;peek; ]"..
		"item_image_button[7,1;1,1;mymeshnodes:valley_mi;valley; ]"..
		"label[1,2;Long Slopes]"..
		"item_image_button[1,2.5;1,1;mymeshnodes:lslope_mi;lslope; ]"..
		"item_image_button[2,2.5;1,1;mymeshnodes:lslope_ic_mi;lslopeic; ]"..
		"item_image_button[3,2.5;1,1;mymeshnodes:lslope_oc_mi;lslopeoc; ]"..
		"item_image_button[4,2.5;1,1;mymeshnodes:lslope_top_mi;lslopetop; ]"..
		"item_image_button[5,2.5;1,1;mymeshnodes:lslope_bot_mi;lslopebot; ]"..
		"label[1,3.5;Pyramids]"..
		"item_image_button[1,4;1,1;mymeshnodes:smpyramid_mi;smpyramid; ]"..
		"item_image_button[2,4;1,1;mymeshnodes:pyramid_mi;pyramid; ]"..
		"item_image_button[3,4;1,1;mymeshnodes:smquapyramid_mi;smquapyramid; ]"..
		"item_image_button[4,4;1,1;mymeshnodes:quapyramid_mi;quapyramid; ]"..
		"label[6,3.5;Curves]"..
		"item_image_button[6,4;1,1;mymeshnodes:rounded_mi;rounded; ]"..
		"item_image_button[7,4;1,1;mymeshnodes:roundedc_mi;roundedc; ]"..
		"item_image_button[8,4;1,1;mymeshnodes:curve_mi;curve; ]"..
		"label[1,5;Other]"..
		"item_image_button[1,5.5;1,1;mymeshnodes:cylinder_mi;cylinder; ]"..
		"item_image_button[2,5.5;1,1;mymeshnodes:sphere_mi;sphere; ]"..
		"item_image_button[3,5.5;1,1;mymeshnodes:circle_mi;circle; ]"..
		"item_image_button[4,5.5;1,1;mymeshnodes:pole_mi;pole; ]"..
		"item_image_button[5,5.5;1,1;mymeshnodes:cone_mi;cone; ]"..
		"item_image_button[6,5.5;1,1;mymeshnodes:blob_mi;blob; ]"..
		"item_image_button[7,5.5;1,1;mymeshnodes:ichalf_mi;ichalf; ]"..
		"item_image_button[8,5.5;1,1;mymeshnodes:oct_mi;oct; ]"..


		"label[10,1;Half Nodes]"..
		"item_image_button[10,1.5;1,1;mymeshnodes:shape1_mi;shape1; ]"..
		"item_image_button[11,1.5;1,1;mymeshnodes:shape2_mi;shape2; ]"..
		"item_image_button[10,2.5;1,1;mymeshnodes:shape3_mi;shape3; ]"..
		"item_image_button[11,2.5;1,1;mymeshnodes:shape4_mi;shape4; ]"..
		"list[current_player;main;1,7;8,4;]"..
		"button_exit[11.5,10;1.5,1;exit;Exit]")
	meta:set_string("infotext", "Mesh Machine")
	local inv = meta:get_inventory()
	inv:set_size("ingot", 1)
	inv:set_size("res", 1)
end,

on_receive_fields = function(pos, formname, fields, sender)
	local meta = minetest.get_meta(pos)
	local inv = meta:get_inventory()

if fields["slope"] 
or fields["slopeic"]
or fields["slopeo45"]
or fields["slopei45"]
or fields["peek"]
or fields["valley"]
or fields["slopeoc"]
or fields["lslope"] 
or fields["lslopeic"]
or fields["lslopeoc"]
or fields["lslopetop"]
or fields["lslopebot"]
or fields["smpyramid"]
or fields["pyramid"]
or fields["smquapyramid"]
or fields["quapyramid"]
or fields["circle"]
or fields["pole"]
or fields["ichalf"]
or fields["oct"]
or fields["cylinder"]
or fields["sphere"]
or fields["rounded"]
or fields["roundedc"]
or fields["cone"]
or fields["blob"]
or fields["curve"]
or fields["shape1"]
or fields["shape2"]
or fields["shape3"]
or fields["shape4"]
then

	if fields["slope"] then
		make_ok = "0"
		anzahl = "2"
		shape = "mymeshnodes:slope_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["slopeic"] then
		make_ok = "0"
		anzahl = "1"
		shape = "mymeshnodes:slope_ic_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["slopeoc"] then
		make_ok = "0"
		anzahl = "2"
		shape = "mymeshnodes:slope_oc_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["slopei45"] then
		make_ok = "0"
		anzahl = "2"
		shape = "mymeshnodes:slope_i45_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["slopeo45"] then
		make_ok = "0"
		anzahl = "2"
		shape = "mymeshnodes:slope_o45_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["peek"] then
		make_ok = "0"
		anzahl = "2"
		shape = "mymeshnodes:peek_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["valley"] then
		make_ok = "0"
		anzahl = "2"
		shape = "mymeshnodes:valley_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["lslope"] then
		make_ok = "0"
		anzahl = "1"
		shape = "mymeshnodes:lslope_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["lslopeic"] then
		make_ok = "0"
		anzahl = "1"
		shape = "mymeshnodes:lslope_ic_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["lslopeoc"] then
		make_ok = "0"
		anzahl = "1"
		shape = "mymeshnodes:lslope_oc_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["lslopetop"] then
		make_ok = "0"
		anzahl = "1"
		shape = "mymeshnodes:lslope_top_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["lslopebot"] then
		make_ok = "0"
		anzahl = "1"
		shape = "mymeshnodes:lslope_bot_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["smpyramid"] then
		make_ok = "0"
		anzahl = "2"
		shape = "mymeshnodes:smpyramid_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["pyramid"] then
		make_ok = "0"
		anzahl = "1"
		shape = "mymeshnodes:pyramid_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["smquapyramid"] then
		make_ok = "0"
		anzahl = "2"
		shape = "mymeshnodes:smquapyramid_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["quapyramid"] then
		make_ok = "0"
		anzahl = "2"
		shape = "mymeshnodes:quapyramid_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["circle"] then
		make_ok = "0"
		anzahl = "6"
		shape = "mymeshnodes:circle_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["pole"] then
		make_ok = "0"
		anzahl = "4"
		shape = "mymeshnodes:pole_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["ichalf"] then
		make_ok = "0"
		anzahl = "4"
		shape = "mymeshnodes:ichalf_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["oct"] then
		make_ok = "0"
		anzahl = "1"
		shape = "mymeshnodes:oct_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["cylinder"] then
		make_ok = "0"
		anzahl = "1"
		shape = "mymeshnodes:cylinder_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["sphere"] then
		make_ok = "0"
		anzahl = "1"
		shape = "mymeshnodes:sphere_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["rounded"] then
		make_ok = "0"
		anzahl = "1"
		shape = "mymeshnodes:rounded_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["roundedc"] then
		make_ok = "0"
		anzahl = "1"
		shape = "mymeshnodes:roundedc_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["cone"] then
		make_ok = "0"
		anzahl = "1"
		shape = "mymeshnodes:cone_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["blob"] then
		make_ok = "0"
		anzahl = "1"
		shape = "mymeshnodes:blob_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["curve"] then
		make_ok = "0"
		anzahl = "1"
		shape = "mymeshnodes:curve_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["shape1"] then
		make_ok = "0"
		anzahl = "4"
		shape = "mymeshnodes:shape1_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["shape2"] then
		make_ok = "0"
		anzahl = "4"
		shape = "mymeshnodes:shape2_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["shape3"] then
		make_ok = "0"
		anzahl = "4"
		shape = "mymeshnodes:shape3_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["shape4"] then
		make_ok = "0"
		anzahl = "4"
		shape = "mymeshnodes:shape4_"
		if inv:is_empty("ingot") then
			return
		end
	end

		local ingotstack = inv:get_stack("ingot", 1)
		local resstack = inv:get_stack("res", 1)
----------------------------------------------------------------------------------
--register nodes
local nodes_of_slopes = {
	{"default:leaves",					"default_leaves"},
	{"default:jungleleaves",			"default_jungleleaves"},
	{"default:pine_needles",			"default_pine_needles"},
	{"default:brick",					"default_brick"},
	{"default:bronzeblock",				"default_bronze_block"},
	{"default:cactus",					"default_cactus"},
	{"default:clay",					"default_clay"},
	{"default:coalblock",				"default_coal_block"},
	{"default:cobble",					"default_cobble"},
	{"default:copperblock",				"default_copper_block"},
	{"default:desert_cobble",			"default_desert_cobble"},
	{"default:desert_stone",			"default_desert_stone"},
	{"default:diamondblock",			"default_diamond_block"},
	{"default:dirt",					"default_dirt"},
	{"default:glass",					"default_glass"},
	{"default:goldblock",				"default_gold_block"},
	{"default:gravel",					"default_gravel"},
	{"default:jungletree",				"default_jungletree"},
	{"default:junglewood",				"default_junglewood"},
	{"default:mese",					"default_mese"},
	{"default:mossycobble",				"default_mossycobble"},
	{"default:obsidian",				"default_obsidian"},
	{"default:obsidian_glass",			"default_obsidian_glass"},
	{"default:obsidianbrick",			"default_obsidian_brick"},
	{"default:pinetree",				"default_pinetree"},
	{"default:pinewood",				"default_pinewood"},
	{"default:sandstone",				"default_sandstone"},
	{"default:sandstonebrick",			"default_sandstone_brick"},
	{"default:steelblock",				"default_steel_block"},
	{"default:stone",					"default_stone"},
	{"default:stonebrick",				"default_stone_brick"},
	{"default:tree",					"default_tree"},
	{"default:wood",					"default_wood"},
	{"farming:straw",					"farming_straw"},
	{"wool:black",						"wool_black"},
	{"wool:blue",						"wool_blue"},
	{"wool:brown",						"wool_brown"},
	{"wool:cyan",						"wool_cyan"},
	{"wool:dark_green",					"wool_dark_green"},
	{"wool:dark_grey",					"wool_dark_grey"},
	{"wool:green",						"wool_green"},
	{"wool:grey",						"wool_grey"},
	{"wool:magenta",					"wool_magenta"},
	{"wool:orange",						"wool_orange"},
	{"wool:pink",						"wool_pink"},
	{"wool:red",						"wool_red"},
	{"wool:violet",						"wool_violet"},
	{"wool:white",						"wool_white"},
	{"wool:yellow",						"wool_yellow"},

--Batmod

	{ "bat_blocks:bat_cobble",			"bat_cobble"},
	{ "bat_blocks:bat_cobble_white",	"bat_cobble_white"},
	{ "bat_blocks:bat_cobble_tan",		"bat_cobble_tan"},
	{ "bat_blocks:bat_pavers",			"bat_pavers"},
	{ "bat_blocks:bat_block",			"bat_block"},
	{ "bat_blocks:bat_tile",			"bat_tile"},
	{ "bat_blocks:bat_diag",			"bat_diag"},
	{ "bat_blocks:bat_x",				"bat_x_block"},
	{ "bat_blocks:bat_brick",			"bat_brick"},
	{ "bat_blocks:bat_smbrick",			"bat_smbrick"},
	{ "bat_blocks:bat_hex",				"bat_hex"},

--castle

	{"castle:dungeon_stone",			"dungeon_stone"},
	{"castle:pavement",					"pavement_brick"},
	{"castle:rubble",					"rubble"},
	{"castle:roofslate",				"slate"},
	{"castle:stonewall",				"stonewall"},

--moreblocks

	{ "moreblocks:cactus_brick",		"cactus_brick"},
	{ "moreblocks:cactus_checker",		"cactus_checker"},
	{ "moreblocks:coal_stone_bricks",	"coal_stone_bricks"},
	{ "moreblocks:circle_stone_bricks",	"circle_stone_bricks"},
	{ "moreblocks:iron_checker",		"iron_checker"},
	{ "moreblocks:iron_stone_bricks",	"iron_stone_bricks"},
	{ "moreblocks:plankstone",			"plankstone"},
	{ "moreblocks:stone_tile",			"stone_tile"},
	{ "moreblocks:wood_tile_center",	"wood_tile_center"},
	{ "moreblocks:wood_tile_full",		"wood_tile_full"},

--moretrees

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

--hardened clay

	{ "hardenedclay:hardened_clay",				"hardened_clay"},
	{ "hardenedclay:hardened_clay_white",		"hardened_clay_white"},
	{ "hardenedclay:hardened_clay_black",		"hardened_clay_black"},
	{ "hardenedclay:hardened_clay_light_blue",	"hardened_clay_light_blue"},
	{ "hardenedclay:hardened_clay_green",		"hardened_clay_green"},
	{ "hardenedclay:hardened_clay_red",			"hardened_clay_red"},
	{ "hardenedclay:hardened_clay_light_grey",	"hardened_clay_light_grey"},
	{ "hardenedclay:hardened_clay_violet",		"hardened_clay_violet"},
	{ "hardenedclay:hardened_clay_lime",		"hardened_clay_lime"},
	{ "hardenedclay:hardened_clay_magenta",		"hardened_clay_magenta"},
	{ "hardenedclay:hardened_clay_orange",		"hardened_clay_orange"},
	{ "hardenedclay:hardened_clay_brown",		"hardened_clay_brown"},
	{ "hardenedclay:hardened_clay_blue",		"hardened_clay_blue"},
	{ "hardenedclay:hardened_clay_yellow",		"hardened_clay_yellow"},
	{ "hardenedclay:hardened_clay_pink",		"hardened_clay_pink"},
	{ "hardenedclay:hardened_clay_cyan",		"hardened_clay_cyan"},
	{ "hardenedclay:hardened_clay_grey",		"hardened_clay_grey"},

--mymulch

	{"mymulch:mulch_black",			"mulch_black"},
	{"mymulch:mulch_blue",			"mulch_blue"},
	{"mymulch:mulch_brown",			"mulch_brown"},
	{"mymulch:mulch_cyan",			"mulch_cyan"},
	{"mymulch:mulch_dark_green",	"mulch_dark_green"},
	{"mymulch:mulch_dark_grey",		"mulch_dark_grey"},
	{"mymulch:mulch_green",			"mulch_green"},
	{"mymulch:mulch_grey",			"mulch_grey"},
	{"mymulch:mulch_magenta",		"mulch_magenta"},
	{"mymulch:mulch_orange",		"mulch_orange"},
	{"mymulch:mulch_pink",			"mulch_pink"},
	{"mymulch:mulch_red",			"mulch_red"},
	{"mymulch:mulch_violet",		"mulch_violet"},
	{"mymulch:mulch_white",			"mulch_white"},
	{"mymulch:mulch_yellow",		"mulch_yellow"},
	{"mymulch:mulch_tan",			"mulch_tan"},

			}

	for i in ipairs (nodes_of_slopes) do
		local nodeitem = nodes_of_slopes[i][1]
		local nodedesc = nodes_of_slopes[i][2]
----------------------------------------------------------------------------------
		if ingotstack:get_name()==nodeitem then
				material = nodedesc
				make_ok = "1"
		end
	end
		

----------------------------------------------------------------------
		if make_ok == "1" then
			local give = {}
			for i = 0, anzahl-1 do
				give[i+1]=inv:add_item("res",shape..material)
			end
			ingotstack:take_item()
			inv:set_stack("ingot",1,ingotstack)
		end            	
	end
end

})

--Craft

minetest.register_craft({
		output = 'mymeshnodes:machine',
		recipe = {
			{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
			{'default:copper_ingot', 'default:gold_ingot', 'default:copper_ingot'},
			{'default:steel_ingot', "default:copper_ingot", 'default:steel_ingot'},		
		},
})













