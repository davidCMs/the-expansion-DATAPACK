scoreboard players add @s aj.mech_torso.animation.gatling_stop_l.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.mech_torso.animation.gatling_stop_l.local_anim_time
function animated_java:mech_torso/zzzzzzzz/animations/gatling_stop_l/apply_frame_as_root
execute if score @s aj.mech_torso.animation.gatling_stop_l.local_anim_time matches 16.. run function animated_java:mech_torso/zzzzzzzz/animations/gatling_stop_l/end