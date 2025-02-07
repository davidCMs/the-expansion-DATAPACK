execute unless entity @s[type=#expansion:slowcasters] run return run say Run this function as a slowcaster (masker, item display, snowball, armor stand)

# align the ray
tp @s ^ ^ ^ ~ ~

# render the bullet
item replace entity @s container.0 with stone
data merge entity @s {transformation:{scale:[0.2,0.2,0.2]},teleport_duration:1}

# set a max range
scoreboard players set @s exp.max_range 500
scoreboard players set @s exp.speed 10
scoreboard players set @s exp.counter_1 20

# shoot the ray
tag @s add exp.slowcast
tag @s add exp.railgun_bullet
