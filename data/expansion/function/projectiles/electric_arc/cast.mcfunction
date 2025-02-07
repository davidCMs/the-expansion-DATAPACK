execute unless entity @s[type=#expansion:slowcasters] run return run say Run this function as a slowcaster (masker, item display, snowball, armor stand)

tag @s add exp.electric_arc
tag @s add exp.slowcast

# set parameters (can be set externally thanks to the fakeplayer)
scoreboard players operation @s exp.max_range = #temp exp.max_range
scoreboard players operation @s exp.speed = #temp exp.speed
scoreboard players operation @s exp.unique_id = #temp exp.unique_id
scoreboard players operation @s exp.size_mod = #temp exp.size_mod
scoreboard players operation @s exp.size = #temp exp.size
scoreboard players operation @s exp.damage = #temp exp.damage

# attempt to find a target
execute if entity @s[type=snowball] run function expansion:utilities/snowball_link/link_from_storage

# align the arc
execute positioned ^ ^ ^ run rotate @s ~ ~