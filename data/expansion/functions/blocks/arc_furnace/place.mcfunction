execute if entity @s[y_rotation=-135.1..-45] run summon armor_stand ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Marker:1b,Invisible:1b,Rotation:[90f,0f],Tags:["exp.arc_furnace","exp.block","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1012306}}]}
execute if entity @s[y_rotation=45.1..135] run summon armor_stand ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Marker:1b,Invisible:1b,Rotation:[270f,0f],Tags:["exp.arc_furnace","exp.block","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1012306}}]}
execute if entity @s[y_rotation=-45..45] run summon armor_stand ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Marker:1b,Invisible:1b,Rotation:[180f,0f],Tags:["exp.arc_furnace","exp.block","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1012306}}]}
execute if entity @s[y_rotation=135.1..-135] run summon armor_stand ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Marker:1b,Invisible:1b,Rotation:[360f,0f],Tags:["exp.arc_furnace","exp.block","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1012306}}]}
execute unless entity @s[gamemode=creative] run item replace entity @s weapon.mainhand with air
setblock ~ ~ ~ minecraft:dropper[facing=up]{CustomName:'{"translate":"exp_blocks_arcfurnace_name","color":"dark_grey"}'} replace
playsound minecraft:block.metal.place voice @s

say place