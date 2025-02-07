execute unless entity @s[type=#expansion:slowcasters] run return run say Run this function as a slowcaster (masker, item display, snowball, armor stand)

tag @s add exp.autocannon_bullet
tag @s add exp.slowcast

# set parameters
scoreboard players set @s exp.max_range 100
scoreboard players set @s exp.speed 7

# render the bullet
item replace entity @s container.0 with stone
data merge entity @s {transformation:{scale:[0.2,0.2,0.2]},teleport_duration:1}

# align the bullet
execute positioned ^ ^ ^ run rotate @s ~ ~

# give the player minor freedom for vertical aiming
execute if score #temp exp.pitch matches 10000.. run scoreboard players set #temp exp.pitch 10000
execute if score #temp exp.pitch matches ..-10000 run scoreboard players set #temp exp.pitch -10000
execute store result entity @s Rotation[1] float 0.001 run scoreboard players get #temp exp.pitch

# particles
particle gust ~ ~ ~ 0 0 0 0 1 force
particle poof ~ ~ ~ 0 0 0 0 1 force
particle smoke ~ ~ ~ 0 0 0 0 1 force
particle flame ~ ~ ~ 0 0 0 0.01 1 force