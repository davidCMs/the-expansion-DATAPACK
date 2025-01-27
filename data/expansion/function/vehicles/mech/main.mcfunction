# make torso rotate with the pilot
execute anchored eyes rotated as @s on vehicle on vehicle positioned as @s on passengers if entity @s[tag=!aj.mech_legs.root,type=!interaction] positioned ^ ^ ^8 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run rotate @s ~ 0

# non-player AI
execute unless entity @s[type=player] run return run function expansion:mobs/mech/behavior/main

# teleport items to the pilots inventory
execute if predicate expansion:periodic/10 on vehicle on vehicle at @s on passengers on passengers run tp @e[type=item,distance=..4,limit=5] @s[type=player]

# make the player exit the mech when it is no longer mounted
execute unless predicate expansion:nbt_checks/root_vehicle/mech run function expansion:vehicles/mech/exit/init

# determine the movement direction based on the inputs
execute if predicate expansion:input/mech run function expansion:vehicles/mech/input

# runs as the base entity while the player is inside
execute on vehicle on vehicle at @s run function expansion:vehicles/mech/inside