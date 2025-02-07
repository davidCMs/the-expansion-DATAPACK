tp @s ^ ^ ^0.5

scoreboard players remove @s exp.max_range 1
scoreboard players remove #temp exp.speed 1

# particle
particle minecraft:poof ~ ~ ~ 0 0 0 0 1 force

# hit blocks or entities
execute at @s if function expansion:projectiles/freeze_ray/hit run return run scoreboard players set @s exp.max_range 0

# repeat
execute if score #temp exp.speed matches 1.. if score @s exp.max_range matches 1.. at @s run function expansion:projectiles/autocannon_bullet/inner_loop