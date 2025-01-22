# after an arm action, sync the arm walking animation with the legs
execute if entity @s[tag=exp.left_arm_control] on vehicle if entity @s[tag=exp.mech_walking] run function expansion:vehicles/mech/anim_control/resume_walking_leftside
execute if entity @s[tag=exp.right_arm_control] on vehicle if entity @s[tag=exp.mech_walking] run function expansion:vehicles/mech/anim_control/resume_walking_rightside

tag @s remove exp.mech_action
tag @s remove exp.mech_action_stop
tag @s remove exp.mech_action_toggle

scoreboard players set @s exp.mech_action_dur 0