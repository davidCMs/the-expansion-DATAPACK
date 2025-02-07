tp @s ^ ^ ^1

scoreboard players remove @s exp.max_range 1
scoreboard players remove #temp exp.speed 1

# particles
execute if score @s exp.unique_id matches 0 run function expansion:projectiles/ship_blaster/particles/regular
execute if score @s exp.unique_id matches 1 run function expansion:projectiles/ship_blaster/particles/digging
execute if score @s exp.unique_id matches 2 run function expansion:projectiles/ship_blaster/particles/gatling

# hit blocks or entities
execute at @s unless block ~ ~ ~ #expansion:air run function expansion:projectiles/ship_blaster/hit_block/check
execute at @s positioned ~-.5 ~-.5 ~-.5 if entity @e[type=!#expansion:ignore,dx=0,limit=1] run function expansion:projectiles/ship_blaster/hit

# repeat
execute if score #temp exp.speed matches 1.. if score @s exp.max_range matches 1.. at @s run function expansion:projectiles/ship_blaster/inner_loop