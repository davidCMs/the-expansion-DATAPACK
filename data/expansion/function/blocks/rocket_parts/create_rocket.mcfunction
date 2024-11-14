# summon a new rocket
function expansion:vehicles/rocket/summon/init

# remove the barriers from the individual parts
fill ~ ~ ~ ~ ~6 ~ minecraft:air replace minecraft:barrier

# particles
particle minecraft:cloud ~ ~3 ~ 0.5 2.5 0.5 0.01 100
particle minecraft:wax_off ~ ~3 ~ 0.5 3 0.5 0.05 500

# sound
playsound expansion:wrench.create block @a[distance=..16] ~ ~ ~

# advancement
advancement grant @p only expansion:progression/get_rocket

# kill all the rocket parts
execute as @n[type=minecraft:item_display,tag=exp.rocket_bottom,distance=..1] run function expansion:blocks/rocket_parts/kill
execute positioned ~ ~2 ~ as @n[type=minecraft:armor_stand,tag=exp.rocket_cockpit,distance=..1] run function expansion:blocks/rocket_parts/kill
function expansion:blocks/rocket_parts/kill