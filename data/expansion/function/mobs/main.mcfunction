execute if entity @s[tag=exp.evil_drone] run return run function expansion:mobs/evil_drone/main

execute if entity @s[tag=exp.pet_drone] run return run function expansion:mobs/drone_pet/main

execute if entity @s[tag=exp.mech_mob] run return run function expansion:mobs/mech/main

# tag mobs that are not an expansion entity so they're not checked again
tag @s add exp.ignore.mobs