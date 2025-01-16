execute on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/rocket_shoot_r/play

# set this equal to the number of frames in the animation
scoreboard players set @s exp.mech_right_anim 40

# find a target for the rocket and store it inside the mech
execute on passengers on passengers if entity @s[tag=exp.mech_pilot] at @s anchored eyes positioned ^ ^ ^4 summon marker run function expansion:vehicles/mech/actions/righthand/rocket/target/cast

# store the target UUID for later reference
data modify entity @s ArmorItems[3].components."minecraft:custom_data".rocket_target append from storage expansion:temp rocket_target
data remove storage expansion:temp rocket_target