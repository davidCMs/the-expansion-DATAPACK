tp @s ^ ^ ^1

scoreboard players remove @s exp.max_range 1
scoreboard players remove #temp exp.speed 1

# random chance for some particle
execute if predicate expansion:chance/020_chance run particle white_smoke

# hit blocks or entities
execute if function expansion:projectiles/autocannon_bullet/hit run return run scoreboard players set @s exp.max_range 0

# repeat
execute if score #temp exp.speed matches 1.. if score @s exp.max_range matches 1.. at @s run function expansion:projectiles/autocannon_bullet/inner_loop