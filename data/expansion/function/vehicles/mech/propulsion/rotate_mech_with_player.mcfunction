# walking forwards/backwards
execute unless predicate expansion:input/left unless predicate expansion:input/right positioned ^ ^ ^3.5 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run rotate @s ~ 0

# walking sideways
execute if predicate expansion:input/left if predicate expansion:input/backward run function expansion:vehicles/mech/propulsion/turn_left
execute if predicate expansion:input/right unless predicate expansion:input/backward run function expansion:vehicles/mech/propulsion/turn_left
execute if predicate expansion:input/right if predicate expansion:input/backward run function expansion:vehicles/mech/propulsion/turn_right
execute if predicate expansion:input/left unless predicate expansion:input/backward run function expansion:vehicles/mech/propulsion/turn_right