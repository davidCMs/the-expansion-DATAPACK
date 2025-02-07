tp @s ^ ^ ^.5

scoreboard players remove @s exp.max_range 1
scoreboard players remove #temp exp.speed 1

# particles
particle minecraft:electric_spark ^ ^ ^ 0 0 0 0.2 1 force
particle minecraft:electric_spark ^ ^ ^0.17 0 0 0 0 1 force
particle minecraft:electric_spark ^ ^ ^ 0 0 0 0 1 force
particle minecraft:electric_spark ^ ^ ^-0.17 0 0 0 0 1 force

# create random electricity effect
# this can either face a target or not
execute if predicate expansion:chance/070_chance at @s run function expansion:projectiles/electric_arc/bend_check

# deal damage to entities if this is able to deal damage
execute if score @s exp.damage matches 1 if function expansion:projectiles/electric_arc/hit run scoreboard players reset @s exp.max_range

# repeat
execute if score #temp exp.speed matches 1.. if score @s exp.max_range matches 1.. at @s run function expansion:projectiles/electric_arc/inner_loop