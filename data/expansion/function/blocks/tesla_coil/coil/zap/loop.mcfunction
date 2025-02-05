tp @s ^ ^ ^ ~ ~

# create random electricity effect
execute if predicate expansion:chance/070_chance at @s on origin facing entity @s eyes as @n[type=snowball,tag=exp.zap,distance=..0.1] run function expansion:blocks/tesla_coil/coil/zap/bend

# particles
particle minecraft:electric_spark ~ ~ ~ 0 0 0 0.2 1 force
particle minecraft:electric_spark ~ ~ ~ 0 0 0 0 1 force

# stop the raycast if an entity is hit
execute on origin if entity @s[dx=0] run return run function expansion:blocks/tesla_coil/coil/zap/hit

# make sure the range stays reasonable
scoreboard players add @s exp.max_range 1

# run this function again if the conditions are met
execute at @s if score @s exp.max_range matches ..200 positioned ^ ^ ^0.2 run function expansion:blocks/tesla_coil/coil/zap/loop