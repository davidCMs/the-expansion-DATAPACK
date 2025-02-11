scoreboard players remove @s exp.max_range 1
scoreboard players remove #temp exp.speed 1

# randomly bend (towards a target)
execute if predicate expansion:chance/070_chance at @s run function expansion:projectiles/electric_arc/bend/check

# register hits (blocks or entities)
execute if function expansion:projectiles/electric_arc/hit/check run function expansion:projectiles/electric_arc/hit/hit

# particles
execute if score @s exp.unique_id matches 1.. run function expansion:projectiles/electric_arc/particles/main

# advance
tp @s ^ ^ ^.5

# repeat
execute if score #temp exp.speed matches 1.. if score @s exp.max_range matches 1.. at @s run return run function expansion:projectiles/electric_arc/inner_loop