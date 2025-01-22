# RAN FROM AJ
# finds the animation to run after completing an action
# So it may continue with a walking animation, idle animation, flying animation

execute on vehicle if entity @s[tag=exp.mech_walking] run function expansion:vehicles/mech/anim_control/body/right/resume_walking