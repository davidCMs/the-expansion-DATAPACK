scoreboard players add @s aj.mech_torso.animation.walking.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.mech_torso.animation.walking.local_anim_time
function animated_java:mech_torso/zzzzzzzz/animations/walking/apply_frame_as_root
execute if score @s aj.mech_torso.animation.walking.local_anim_time matches 40.. run function animated_java:mech_torso/zzzzzzzz/animations/walking/end