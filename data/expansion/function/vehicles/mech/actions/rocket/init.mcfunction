# play the animation
execute if entity @s[tag=exp.left_arm_control] on vehicle on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/rocket_shoot_l/play
execute if entity @s[tag=exp.right_arm_control] on vehicle on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/rocket_shoot_r/play

# set this equal to the number of frames in the animation
scoreboard players set @s exp.mech_action_anim 40

# find a target for the rocket and store it inside the mech
execute on vehicle on passengers on passengers if entity @s[tag=exp.mech_pilot] at @s anchored eyes positioned ^ ^ ^4 summon marker run function expansion:vehicles/mech/actions/rocket/target/cast

# store the target UUID for later reference
execute on vehicle run data modify entity @s ArmorItems[3].components."minecraft:custom_data".rocket_target append from storage expansion:temp rocket_target
data remove storage expansion:temp rocket_target