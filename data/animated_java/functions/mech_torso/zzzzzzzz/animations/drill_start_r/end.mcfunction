execute if score @s aj.mech_torso.animation.drill_start_r.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:mech_torso/zzzzzzzz/animations/drill_start_r/end_loop
execute if score @s aj.mech_torso.animation.drill_start_r.loop_mode = $aj.loop_mode.once aj.i run function animated_java:mech_torso/animations/drill_start_r/stop
execute if score @s aj.mech_torso.animation.drill_start_r.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:mech_torso/animations/drill_start_r/pause