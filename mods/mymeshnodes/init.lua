mymeshnodes = {}
dofile(minetest.get_modpath("mymeshnodes").."/nodes.lua")
dofile(minetest.get_modpath("mymeshnodes").."/machine.lua")
dofile(minetest.get_modpath("mymeshnodes").."/register.lua")






local mod_moreblocks = minetest.get_modpath("moreblocks") 
local mod_castle = minetest.get_modpath("castle")
local mod_castles = minetest.get_modpath("castles")
local mod_bat_blocks = minetest.get_modpath("bat_blocks")
local mod_moretrees = minetest.get_modpath("moretrees")
local mod_hardenedclay = minetest.get_modpath("hardenedclay")
local mod_ores = minetest.get_modpath("ores")
local mod_mulch = minetest.get_modpath("mymulch")

if mod_moreblocks then
	dofile(minetest.get_modpath("mymeshnodes").."/moreblocks.lua")
	
	end

if mod_castle then
	dofile(minetest.get_modpath("mymeshnodes").."/castle.lua")
	
	end

if mod_castles then
	dofile(minetest.get_modpath("mymeshnodes").."/castle.lua")
	
	end

if mod_bat_blocks then
	dofile(minetest.get_modpath("mymeshnodes").."/batmod.lua")
	
	end

if mod_moretrees then
	dofile(minetest.get_modpath("mymeshnodes").."/moretrees.lua")
	
	end

if mod_hardenedclay then
	dofile(minetest.get_modpath("mymeshnodes").."/hardenedclay.lua")
	
	end

if mod_ores then
	dofile(minetest.get_modpath("mymeshnodes").."/ores.lua")
	
	end

if mod_mulch then
	dofile(minetest.get_modpath("mymeshnodes").."/mymulch.lua")
	
	end

