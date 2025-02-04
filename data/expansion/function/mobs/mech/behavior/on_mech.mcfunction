# movement FSM
function expansion:mobs/mech/behavior/movement/main

# repair drones
function expansion:mobs/mech/bots/main

# target an eligible entity occasionally, if you are not performing an attack
execute on passengers if entity @s[tag=exp.mech_targeter] run function expansion:mobs/mech/behavior/targeting/main

# give input for the currently held weapons if they are not in cooldown and if the target is in range
execute if predicate expansion:periodic/10 if function expansion:mobs/mech/behavior/targeting/has_target on passengers if entity @s[tag=exp.left_arm_control] unless score @s exp.cooldown matches 1.. if function expansion:mobs/mech/behavior/targeting/target_in_range run function expansion:vehicles/mech/actions/input
execute if predicate expansion:periodic/10 if function expansion:mobs/mech/behavior/targeting/has_target on passengers if entity @s[tag=exp.right_arm_control] unless score @s exp.cooldown matches 1.. if function expansion:mobs/mech/behavior/targeting/target_in_range run function expansion:vehicles/mech/actions/input

# health
function expansion:mobs/mech/health/main

# remove cooldown after attacks
execute on passengers if entity @s[tag=exp.mech_arm_controller,scores={exp.cooldown=1..}] run scoreboard players remove @s exp.cooldown 1