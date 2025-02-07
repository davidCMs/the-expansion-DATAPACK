execute unless entity @s[type=#expansion:slowcasters] run return run say Run this function as a slowcaster (masker, item display, snowball, armor stand)

# set parameters (can be set externally thanks to the fakeplayer)
scoreboard players operation @s exp.max_range = #temp exp.max_range
scoreboard players operation @s exp.speed = #temp exp.speed
scoreboard players operation @s exp.unique_id = #temp exp.unique_id

tag @s add exp.slowcast
tag @s add exp.freeze_ray

rotate @s ~ ~