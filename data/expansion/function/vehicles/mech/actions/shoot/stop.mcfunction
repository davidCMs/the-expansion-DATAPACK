# stop shooting animation
execute if entity @s[tag=exp.left_arm_control] on vehicle on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/gatling_shooting_l/stop
execute if entity @s[tag=exp.right_arm_control] on vehicle on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/gatling_shooting_r/stop

# play stopping animation
execute if entity @s[tag=exp.left_arm_control] on vehicle on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/gatling_stop_l/play
execute if entity @s[tag=exp.right_arm_control] on vehicle on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/gatling_stop_r/play
scoreboard players set @s exp.mech_action_anim 16

# sounds
playsound expansion:mech.minigun.spinoff ambient @a ~ ~ ~ 0.5
stopsound @a ambient expansion:mech.minigun.loop
stopsound @a ambient expansion:mech.minigun.warmup