execute if score #controlled exp.bool matches 1 if score #angle exp.offset matches -180..180 run scoreboard players operation @s exp.yaw = #angle exp.offset

# movement
execute if score #controlled exp.bool matches 1 unless predicate expansion:dimension/zero_gravity rotated ~ 0 align y run function expansion:vehicles/mech/propulsion/drive

# during actions
execute if entity @s[tag=exp.mech.action.left] run function expansion:vehicles/mech/actions/lefthand/main
execute if entity @s[tag=exp.mech.action.right] run function expansion:vehicles/mech/actions/righthand/main

# walking animation control
# after an arm action, sync the arm walking animation with the legs
execute if score @s exp.mech_left_anim matches 0 unless score @s exp.mech_left_dur matches 1.. if entity @s[tag=exp.mech_walking] run function expansion:vehicles/mech/anim_control/resume_walking_leftside
execute if score @s exp.mech_right_anim matches 0 unless score @s exp.mech_right_dur matches 1.. if entity @s[tag=exp.mech_walking] run function expansion:vehicles/mech/anim_control/resume_walking_rightside
# play forwards or backjwards walking based on player input
execute if score #controlled exp.bool matches 1 if score @s exp.yaw matches -90..90 unless entity @s[tag=exp.mech_walking_forwards] run function expansion:vehicles/mech/anim_control/start_walking
execute if score #controlled exp.bool matches 1 unless score @s exp.yaw matches -90..90 unless entity @s[tag=exp.mech_walking_backwards] run function expansion:vehicles/mech/anim_control/start_walking_back
# stop walking if signalled
execute if entity @s[tag=exp.mech_stop_walking] run function expansion:vehicles/mech/anim_control/stop_walking

# reset scores
scoreboard players remove @s[scores={exp.mech_left_anim=0..}] exp.mech_left_anim 1
scoreboard players remove @s[scores={exp.mech_right_anim=0..}] exp.mech_right_anim 1