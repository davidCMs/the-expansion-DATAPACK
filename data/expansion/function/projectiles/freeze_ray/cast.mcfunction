execute unless function expansion:projectiles/slowcaster_debug run return fail

tag @s add exp.slowcast
tag @s add exp.freeze_ray

# set parameters (can be set externally thanks to the fakeplayer)
scoreboard players operation @s exp.max_range = #temp exp.max_range
scoreboard players operation @s exp.speed = #temp exp.speed
scoreboard players operation @s exp.unique_id = #temp exp.unique_id

# align the arc
execute positioned ^ ^ ^ run rotate @s ~ ~