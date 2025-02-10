tp @s ^ ^ ^.5

scoreboard players remove @s exp.max_range 1
scoreboard players remove #temp exp.speed 1

# particles
execute if score @s exp.unique_id matches 1.. run function expansion:projectiles/electric_arc/particles/main

# create random electricity effect
# this can either face a target or not
execute if predicate expansion:chance/070_chance at @s run function expansion:projectiles/electric_arc/bend_check

# deal damage to entities if this is able to deal damage
execute if function expansion:projectiles/electric_arc/hit run scoreboard players reset @s exp.max_range

# repeat
execute if score #temp exp.speed matches 1.. if score @s exp.max_range matches 1.. at @s run function expansion:projectiles/electric_arc/inner_loop