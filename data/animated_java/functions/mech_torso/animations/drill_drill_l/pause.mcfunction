execute if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/zzzzzzzz/animations/drill_drill_l/pause_as_root
execute if entity @s[tag=!aj.mech_torso.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:mech_torso/animations/drill_drill_l/pause ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]