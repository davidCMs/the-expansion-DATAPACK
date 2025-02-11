execute unless function expansion:projectiles/slowcaster_debug run return fail

tag @s add exp.electric_arc
tag @s add exp.slowcast

# set parameters (can be set externally thanks to the fakeplayer)
scoreboard players operation @s exp.max_range = #temp exp.max_range
scoreboard players operation @s exp.speed = #temp exp.speed
scoreboard players operation @s exp.unique_id = #temp exp.unique_id
scoreboard players operation @s exp.size_mod = #temp exp.size_mod
scoreboard players operation @s exp.size = #temp exp.size
scoreboard players operation @s exp.damage = #temp exp.damage
scoreboard players operation @s exp.counter_1 = #temp exp.counter_1
scoreboard players operation @s exp.counter_2 = #temp exp.counter_2
scoreboard players operation @s exp.arc_id = #temp exp.arc_id

# set a cooldown in which the zap can't deal damage
scoreboard players set @s exp.cooldown 5

# attempt to find a target
execute if entity @s[type=snowball] run function expansion:utilities/snowball_link/link_from_storage

# align the arc
execute positioned ^ ^ ^ run rotate @s ~ ~
function expansion:projectiles/electric_arc/bend/get_rotation

# immediately add some random rotation, mainly used for nice branches
function expansion:projectiles/electric_arc/bend/bend
scoreboard players operation @s exp.yaw = #temp exp.yaw
scoreboard players operation @s exp.yaw = #temp exp.yaw

# reset temp scores
scoreboard players reset #temp exp.max_range
scoreboard players reset #temp exp.speed
scoreboard players reset #temp exp.unique_id
scoreboard players reset #temp exp.size_mod
scoreboard players reset #temp exp.size
scoreboard players reset #temp exp.damage
scoreboard players reset #temp exp.counter_1
scoreboard players reset #temp exp.counter_2
scoreboard players reset #temp exp.arc_id