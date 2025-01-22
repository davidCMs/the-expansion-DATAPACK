function expansion:vehicles/mech/anim_control/stop_walking

tag @s add exp.mech_walking
tag @s add exp.mech_walking_forwards
tag @s remove exp.mech_walking_backwards

# torso
execute on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/walking_body/resume
execute unless score @s exp.mech_left_anim matches 0.. unless score @s exp.mech_left_dur matches 1.. run function expansion:vehicles/mech/anim_control/body/left/resume_walking
execute unless score @s exp.mech_right_anim matches 0.. unless score @s exp.mech_right_dur matches 1.. run function expansion:vehicles/mech/anim_control/body/right/resume_walking

# legs
execute on passengers if entity @s[tag=aj.mech_torso.root] run scoreboard players operation #temp exp.value = @s aj.walking_body.frame
execute on passengers if entity @s[tag=aj.mech_legs.root] run scoreboard players operation @s aj.walking.frame = #temp exp.value
execute on passengers if entity @s[tag=aj.mech_legs.root] run function animated_java:mech_legs/animations/walking/resume
