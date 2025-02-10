# summon all the rocket entities
function expansion:vehicles/rocket/summon/new_entity_stack

# set the fuel level from the handheld item
execute as @e[type=minecraft:armor_stand,tag=exp.rocket,tag=exp.new_vehicle,distance=..0.01,limit=1] run function expansion:vehicles/rocket/summon/setup
