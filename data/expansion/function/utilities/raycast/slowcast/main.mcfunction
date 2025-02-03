execute if entity @s[tag=exp.ship_regularblast] run return run function expansion:vehicles/spaceship/blasters/regular/loop

execute if entity @s[tag=exp.ship_diggingblast] run return run function expansion:vehicles/spaceship/blasters/digging/loop

execute if entity @s[tag=exp.ship_gatlingblast] run return run function expansion:vehicles/spaceship/blasters/gatling/loop

execute if entity @s[tag=exp.drone_laser] run return run function expansion:mobs/evil_drone/ranged_drone/laser

execute if entity @s[tag=exp.homing_rocket] run return run function expansion:vehicles/mech/actions/rocket/loop

execute if entity @s[tag=exp.autocannon_bullet] run return run function expansion:vehicles/mech/actions/shoot/raycast/loop

execute if entity @s[tag=exp.railgun_bullet] run return run function expansion:items/railgun/raycast/loop

# tag projectiles that are not an expansion entity so they're not checked again
tag @s add exp.ignore.casts