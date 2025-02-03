tp @s ^ ^ ^1

scoreboard players remove @s exp.max_range 1
scoreboard players remove #temp exp.speed 1

# random chance for some particle
execute if predicate expansion:chance/020_chance run particle white_smoke

# hit blocks or entities
execute at @s unless block ~ ~ ~ air run function expansion:vehicles/mech/actions/shoot/raycast/hit_block
execute at @s positioned ~-.5 ~-.5 ~-.5 as @e[type=!#expansion:ignore,dx=0,dy=0,dz=0,limit=1] run function expansion:vehicles/mech/actions/shoot/raycast/hit

# stop the projectile if it hit an entity
execute if score #temp exp.bool matches 1 run return run scoreboard players set @s exp.max_range 0

# repeat
execute if score #temp exp.speed matches 1.. if score @s exp.max_range matches 1.. at @s run function expansion:vehicles/mech/actions/shoot/raycast/loop_loop