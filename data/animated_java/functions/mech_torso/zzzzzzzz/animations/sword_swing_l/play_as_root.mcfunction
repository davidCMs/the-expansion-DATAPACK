scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.mech_torso.animation.sword_swing_l.local_anim_time 0
scoreboard players set @s aj.mech_torso.animation.sword_swing_l.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:mech_torso/zzzzzzzz/animations/sword_swing_l/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.mech_torso.animation.sword_swing_l