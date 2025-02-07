# range
scoreboard players remove @s exp.max_range 1
execute unless block ~ ~ ~ #expansion:air run scoreboard players set @s exp.max_range 0

# spawn a placeholder target if the max range has been reached
execute if score @s exp.max_range matches 0 summon marker run function expansion:projectiles/homing_rocket/target/lock

# lock a target if a suitable target is found
execute as @e[type=!#expansion:ignore,tag=!exp.block,tag=!exp.vehicle,tag=!exp.ignore_as_target,distance=..5,limit=1,sort=nearest] run return run function expansion:projectiles/homing_rocket/target/lock

# loop
execute if score @s exp.max_range matches 1.. positioned ^ ^ ^.5 run function expansion:projectiles/homing_rocket/target/loop