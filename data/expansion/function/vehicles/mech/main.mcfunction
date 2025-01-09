# make torso rotate with the pilot
execute anchored eyes rotated as @s on vehicle on vehicle positioned as @s on passengers if entity @s[tag=!aj.mech_legs.root,type=!interaction] positioned ^ ^ ^8 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run rotate @s ~ 0

# non-player AI
execute unless entity @s[type=player] run return run function expansion:mobs/mech/behavior/main

# give the player speed to increase the FOV
effect give @s speed 1 5 true
# teleport items to the pilots inventory
execute on vehicle on vehicle at @s on passengers on passengers run tp @e[type=item,distance=..4,limit=5] @s[type=player]

# make the player exit the mech when it is no longer mounted
execute unless predicate expansion:nbt_checks/root_vehicle/mech run function expansion:vehicles/mech/exit/init

# determine the movement direction based on the inputs
function expansion:vehicles/mech/input

# signal a walking mech to stop walking if no input is given
# wait until the legs are the closest to the idle position
execute unless predicate expansion:input/any on vehicle on vehicle if entity @s[tag=exp.mech_walking] run function expansion:vehicles/mech/anim_control/signal_stop

# runs as the base entity while the player is inside
execute on vehicle on vehicle at @s run function expansion:vehicles/mech/inside