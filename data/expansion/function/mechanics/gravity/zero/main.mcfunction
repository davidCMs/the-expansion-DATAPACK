# FSM for gravity state; floating in place, rising and falling
execute unless predicate expansion:input/jump unless predicate expansion:input/sneak unless entity @s[tag=!exp.gravity_descending,tag=!exp.gravity_ascending] run return run function expansion:mechanics/gravity/zero/float
execute if predicate expansion:input/jump unless entity @s[tag=exp.gravity_ascending] run return run function expansion:mechanics/gravity/zero/ascend
execute if predicate expansion:input/sneak unless entity @s[tag=exp.gravity_descending] run return run function expansion:mechanics/gravity/zero/descend