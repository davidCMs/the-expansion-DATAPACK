execute if entity @s[tag=aj.assembler.root] run function zzz_assembler_internal:animations/ring_loop/apply_frame_as_root
execute if entity @s[tag=!aj.assembler.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" assembler:animations/ring_loop/apply_frame ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]