mybricks = {}

dofile(minetest.get_modpath("mybricks").."/bricks.lua")
dofile(minetest.get_modpath("mybricks").."/machine.lua")
dofile(minetest.get_modpath("mybricks").."/register.lua")

if minetest.get_modpath("hardenedclay") then
	dofile(minetest.get_modpath("mybricks").."/hardenedclay.lua")
end

if minetest.get_modpath("ores") then
	dofile(minetest.get_modpath("mybricks").."/ores.lua")
end





