execute if entity @s[tag=aj.mech_legs.root] run function zzz_mech_legs_internal:animations/stop_all_animations_as_root
execute if entity @s[tag=!aj.mech_legs.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" mech_legs:animations/stop_all_animations ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]