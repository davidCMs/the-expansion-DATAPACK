execute if score @s aj.mech_torso.animation.sword_swing_l_old.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:mech_torso/zzzzzzzz/animations/sword_swing_l_old/end_loop
execute if score @s aj.mech_torso.animation.sword_swing_l_old.loop_mode = $aj.loop_mode.once aj.i run function animated_java:mech_torso/animations/sword_swing_l_old/stop
execute if score @s aj.mech_torso.animation.sword_swing_l_old.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:mech_torso/animations/sword_swing_l_old/pause