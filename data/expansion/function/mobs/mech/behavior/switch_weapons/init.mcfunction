scoreboard players set @s exp.counter_2 200

# stop ongoing actions
execute on passengers if entity @s[tag=exp.mech_arm_controller,tag=exp.mech_action_toggle] run function expansion:vehicles/mech/actions/input