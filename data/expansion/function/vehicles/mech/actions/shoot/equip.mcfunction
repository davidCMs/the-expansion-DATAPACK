scoreboard players set @s exp.mech_action_id 2
scoreboard players set @s exp.ammo 0
scoreboard players set @s exp.max_ammo 128

execute if entity @s[tag=exp.left_arm_control] on vehicle on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/variants/cannon_left/apply
execute if entity @s[tag=exp.right_arm_control] on vehicle on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/variants/cannon_right/apply