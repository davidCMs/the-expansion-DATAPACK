execute if score @s aj.mech_torso.animation.blaster_shoot_combo.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:mech_torso/zzzzzzzz/animations/blaster_shoot_combo/end_loop
execute if score @s aj.mech_torso.animation.blaster_shoot_combo.loop_mode = $aj.loop_mode.once aj.i run function animated_java:mech_torso/animations/blaster_shoot_combo/stop
execute if score @s aj.mech_torso.animation.blaster_shoot_combo.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:mech_torso/animations/blaster_shoot_combo/pause