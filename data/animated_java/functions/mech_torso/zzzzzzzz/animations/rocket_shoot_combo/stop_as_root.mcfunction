scoreboard players set @s aj.mech_torso.animation.rocket_shoot_combo.local_anim_time 0
tag @s remove aj.mech_torso.animation.rocket_shoot_combo
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.mech_torso.disable_command_keyframes
function animated_java:mech_torso/zzzzzzzz/animations/rocket_shoot_combo/tree/leaf_0
tag @s remove aj.mech_torso.disable_command_keyframes