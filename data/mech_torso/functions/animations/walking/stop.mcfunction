execute if entity @s[tag=aj.mech_torso.root] run function zzz_mech_torso_internal:animations/walking/stop_as_root
execute if entity @s[tag=!aj.mech_torso.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" mech_torso:animations/walking/stop ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]