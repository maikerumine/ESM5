

--[[
local es_physics = tonumber(minetest.settings:get("es_physics"))
if not es_physics then
   es_physics = 1
   minetest.settings:set("es_physics",
   es_physics)
end

#
# Physics stuff
#

#movement_acceleration_default = 3
#movement_acceleration_air = 2
#movement_acceleration_fast = 4
movement_acceleration_default = 3
movement_acceleration_air = 0.41
movement_acceleration_fast = 1

movement_speed_walk = 7
movement_speed_crouch = 2.35
movement_speed_fast = 15
movement_speed_climb = 2
movement_speed_jump = 7.7
movement_speed_descend = 6
movement_liquid_fluidity = 0.5
movement_liquid_fluidity_smooth = 0.5
movement_liquid_sink = 10
movement_gravity = 9.81
]]


movement_acceleration_default = 3
movement_acceleration_air = 0.41
movement_acceleration_fast = 1
movement_speed_walk = 7
movement_speed_crouch = 2.35
movement_speed_fast = 15
movement_speed_climb = 2
movement_speed_jump = 7.7
movement_speed_descend = 6
movement_liquid_fluidity = 0.5
movement_liquid_fluidity_smooth = 0.5
movement_liquid_sink = 10
movement_gravity = 9.81

minetest.settings:set("movement_acceleration_default", movement_acceleration_default)
minetest.settings:set("movement_acceleration_air", movement_acceleration_air)
minetest.settings:set("movement_acceleration_fast", movement_acceleration_fast)
minetest.settings:set("movement_speed_walk", movement_speed_walk)
minetest.settings:set("movement_speed_crouch", movement_speed_crouch)
minetest.settings:set("movement_speed_fast", movement_speed_fast)
minetest.settings:set("movement_speed_climb", movement_speed_climb)
minetest.settings:set("movement_speed_jump", movement_speed_jump)
minetest.settings:set("movement_speed_descend", movement_speed_descend)
minetest.settings:set("movement_liquid_fluidity", movement_liquid_fluidity)
minetest.settings:set("movement_liquid_sink", movement_liquid_sink)
minetest.settings:set("movement_gravity", movement_gravity)

