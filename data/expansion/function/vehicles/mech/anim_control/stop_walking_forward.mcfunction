execute unless score @s exp.mech_left_dur matches 1.. on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/walking_left/pause
execute unless score @s exp.mech_right_dur matches 1.. on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/walking_right/pause

execute on passengers if entity @s[tag=aj.mech_torso.root] run scoreboard players operation @s aj.walking_backwards_body.frame = @s aj.walking_body.frame
execute on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/walking_body/pause

execute on passengers if entity @s[tag=aj.mech_legs.root] run function animated_java:mech_legs/animations/walking/pause
execute if entity @s[tag=exp.mech_stop_walking] on passengers if entity @s[tag=aj.mech_legs.root] run function animated_java:mech_legs/animations/idle/tween {to_frame: 0, duration: 4}

tag @s remove exp.mech_walking
tag @s remove exp.mech_walking_forwards