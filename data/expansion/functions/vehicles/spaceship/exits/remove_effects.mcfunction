# clear the blaster trigger item
clear @s minecraft:carrot_on_a_stick{ship_blaster:1b}

# kill any planetarium markers that may be present
function expansion:vehicles/spaceship/markers/kill_markers

# clear all the spaceships effects
#effect clear @s minecraft:levitation
#effect clear @s minecraft:slow_falling
effect clear @s minecraft:invisibility
effect clear @s minecraft:weakness
effect clear @s minecraft:slowness
effect clear @s minecraft:resistance

# remove the tags from the player
tag @s remove exp.inside_spaceship
tag @s[tag=!exp.ejected] remove exp.inside_vehicle