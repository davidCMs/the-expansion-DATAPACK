execute if entity @s[tag=exp.mech_walking_backwards] run function expansion:vehicles/mech/anim_control/stop_walking_backward

execute if entity @s[tag=exp.mech_walking_forwards] run function expansion:vehicles/mech/anim_control/stop_walking_forward

tag @s remove exp.mech_stop_walking