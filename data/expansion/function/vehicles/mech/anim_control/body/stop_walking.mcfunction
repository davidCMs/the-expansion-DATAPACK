# Runs as one of the arm controller passengers of the mech
execute if entity @s[tag=exp.left_arm_control] on vehicle if entity @s[tag=exp.mech_walking] run function expansion:vehicles/mech/anim_control/body/left/stop_walking

execute if entity @s[tag=exp.right_arm_control] on vehicle if entity @s[tag=exp.mech_walking] run function expansion:vehicles/mech/anim_control/body/right/stop_walking