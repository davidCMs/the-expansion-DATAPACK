execute if score @s exp.mech_action_dur matches 1 run function expansion:vehicles/mech/actions/rocket/init
execute if score @s exp.mech_action_dur matches 20 run tag @s add exp.mech_action_stop

execute if score @s exp.mech_action_dur matches 15 run function expansion:vehicles/mech/actions/rocket/launch