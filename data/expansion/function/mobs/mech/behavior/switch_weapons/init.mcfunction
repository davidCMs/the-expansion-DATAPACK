scoreboard players set @s exp.counter_2 200

execute if entity @s[tag=exp.mech_switched2] run tag @s add exp.mech_switched3
execute if entity @s[tag=exp.mech_switched1] run tag @s add exp.mech_switched2
tag @s add exp.mech_switched1

# stop ongoing actions
execute on passengers if entity @s[tag=exp.mech_arm_controller,tag=exp.mech_action_toggle] run function expansion:vehicles/mech/actions/input