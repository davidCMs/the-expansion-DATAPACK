execute if entity @s[tag=aj.mech.root] run function zzz_mech_internal:animations/walking/pause_as_root
execute if entity @s[tag=!aj.mech.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" mech:animations/walking/pause ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]