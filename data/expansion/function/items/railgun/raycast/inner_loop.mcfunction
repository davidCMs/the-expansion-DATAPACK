tp @s ^ ^ ^1

scoreboard players remove @s exp.max_range 1
scoreboard players remove #temp exp.speed 1

# trail particles
execute if predicate expansion:chance/050_chance run particle firework ^ ^ ^-.5 0 0 0 0 1 force
particle white_ash ^ ^ ^ 0 0 0 0 1 force

# if the block ahead is solid, resume the cast with more precision
execute at @s unless block ^ ^ ^1 #expansion:air run function expansion:items/railgun/raycast/quickcast

# hit entities
execute at @s positioned ~-.5 ~-.5 ~-.5 as @e[type=!#expansion:ignore,dx=0,limit=1] run function expansion:items/railgun/damage

# kill the projectile if it has reached its max range
execute unless score @s exp.max_range matches 1.. run kill @s

# repeat
execute if score @s exp.max_range matches 1.. if score #temp exp.speed matches 1.. if score @s exp.counter_1 matches 1.. at @s run function expansion:items/railgun/raycast/inner_loop