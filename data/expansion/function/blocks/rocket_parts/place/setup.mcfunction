tag @s remove exp.block.new

fill ~ ~ ~ ~ ~1 ~ minecraft:barrier keep

execute facing ~ ~-1 ~ positioned ~ ~0.2 ~ run function expansion:blocks/rocket_parts/place_particles

execute if entity @s[tag=exp.rocket_top] positioned ~ ~-2 ~ if entity @n[type=minecraft:item_display,tag=exp.rocket_cockpit,distance=..0.5] positioned ~ ~-2 ~ if entity @n[type=minecraft:item_display,tag=exp.rocket_bottom,distance=..0.5] run return run function expansion:blocks/rocket_parts/create_rocket
execute if entity @s[tag=exp.rocket_cockpit] positioned ~ ~2 ~ if entity @n[type=minecraft:item_display,tag=exp.rocket_top,distance=..0.5] positioned ~ ~-2 ~ if entity @n[type=minecraft:item_display,tag=exp.rocket_bottom,distance=..0.5] run return run function expansion:blocks/rocket_parts/create_rocket
execute if entity @s[tag=exp.rocket_engines] positioned ~ ~2 ~ if entity @n[type=minecraft:item_display,tag=exp.rocket_cockpit,distance=..0.5] positioned ~ ~2 ~ if entity @n[type=minecraft:item_display,tag=exp.rocket_top,distance=..0.5] run return run function expansion:blocks/rocket_parts/create_rocket