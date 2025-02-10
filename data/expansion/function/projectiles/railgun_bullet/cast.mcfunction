execute unless function expansion:projectiles/slowcaster_debug run return fail

tag @s add exp.slowcast
tag @s add exp.railgun_bullet

# set a max range
scoreboard players set @s exp.max_range 500
scoreboard players set @s exp.speed 10
scoreboard players set @s exp.counter_1 20

# render the bullet
item replace entity @s container.0 with stone
data merge entity @s {transformation:{scale:[0.2,0.2,0.2]},teleport_duration:1}

# align position
execute positioned ^ ^ ^ run rotate @s ~ ~