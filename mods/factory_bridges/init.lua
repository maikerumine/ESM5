FB = {}
FB.NAME = "factory_bridges"

if (minetest.get_modpath("intllib")) then
	FB.LOCAL = intllib.Getter()
else
	FB.LOCAL = function(s) return s end
end

dofile(minetest.get_modpath(FB.NAME).."/models.lua")
dofile(minetest.get_modpath(FB.NAME).."/nodes.lua")
dofile(minetest.get_modpath(FB.NAME).."/items.lua")
dofile(minetest.get_modpath(FB.NAME).."/crafts.lua")