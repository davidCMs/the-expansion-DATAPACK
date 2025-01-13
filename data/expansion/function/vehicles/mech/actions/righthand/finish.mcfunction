# after an arm action, sync the arm walking animation with the legs
execute if entity @s[tag=exp.mech_walking] run function expansion:vehicles/mech/anim_control/resume_walking_rightside

tag @s remove exp.mech.action.right
tag @s remove exp.mech.action.right.stop

scoreboard players set @s exp.mech_right_dur 0