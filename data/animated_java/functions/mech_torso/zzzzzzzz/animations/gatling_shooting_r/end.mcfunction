execute if score @s aj.mech_torso.animation.gatling_shooting_r.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:mech_torso/zzzzzzzz/animations/gatling_shooting_r/end_loop
execute if score @s aj.mech_torso.animation.gatling_shooting_r.loop_mode = $aj.loop_mode.once aj.i run function animated_java:mech_torso/animations/gatling_shooting_r/stop
execute if score @s aj.mech_torso.animation.gatling_shooting_r.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:mech_torso/animations/gatling_shooting_r/pause