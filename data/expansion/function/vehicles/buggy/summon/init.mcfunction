# summon the buggy entity stack
function expansion:vehicles/buggy/summon/new_entity_stack

# set all the values for the buggy
execute as @e[type=minecraft:armor_stand,tag=exp.moon_buggy,tag=exp.new_vehicle,distance=..0.01,limit=1] run function expansion:vehicles/buggy/summon/setup