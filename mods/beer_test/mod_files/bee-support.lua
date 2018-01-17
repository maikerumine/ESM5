
-----------------
-- beer crafts --
-----------------

-- beer grains --

minetest.register_craft({
	output = "beer_test:mixed_beer_grain",
	type = "shapeless",
	recipe = {"beer_test:malt_tray_malt","beer_test:malt_tray_crystalised_malt","beer_test:malt_tray_black_malt","beer_test:hops_dried_2","beer_test:hops_dried_2","beer_test:hops_dried_2"},
})


minetest.register_craft({
	output = "beer_test:mixed_mead_grain","vessels:glass_bottle",
	type = "shapeless",
	recipe = {"default:apple","default:apple","default:apple","default:apple","beer_test:yeast","bees:bottle_honey","bees:bottle_honey","bees:bottle_honey","bees:bottle_honey"},
})


print("Beer_test:bee-support.lua                     [ok]")



