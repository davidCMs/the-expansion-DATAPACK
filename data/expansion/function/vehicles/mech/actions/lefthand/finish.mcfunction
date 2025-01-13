# after an arm action, sync the arm walking animation with the legs
execute if entity @s[tag=exp.mech_walking] run function expansion:vehicles/mech/anim_control/resume_walking_leftside

tag @s remove exp.mech.action.left
tag @s remove exp.mech.action.left.stop

scoreboard players set @s exp.mech_left_dur 0