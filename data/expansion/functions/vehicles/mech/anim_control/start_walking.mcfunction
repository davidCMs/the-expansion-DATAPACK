execute on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run scoreboard players set #tween_duration aj.i 10
execute on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/walking/tween_play

execute on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_legs.root] run scoreboard players set #tween_duration aj.i 10
execute on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_legs.root] run function animated_java:mech_legs/animations/walking/tween_play

tag @s add exp.mech_walking