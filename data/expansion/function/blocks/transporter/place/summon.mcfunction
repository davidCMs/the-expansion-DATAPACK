execute store result score #temp exp.unique_id run data get entity @s SelectedItem.components."minecraft:custom_data".room_id
summon minecraft:item_display ~ ~ ~ {Tags:["exp.transporter","exp.transporter.new","exp.room_origin"],Passengers:[{id:"minecraft:interaction",Tags:["exp.transporter_rcdet"],width:1.1,height:1.1},{id:"minecraft:text_display",Tags:["exp.transporter_text1"],Rotation:[0f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.19f,0.65f,0.32f],scale:[0.8f,0.8f,0.8f]},background:0},{id:"minecraft:text_display",Tags:["exp.transporter_text1"],Rotation:[90f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.19f,0.65f,0.32f],scale:[0.8f,0.8f,0.8f]},background:0},{id:"minecraft:text_display",Tags:["exp.transporter_text1"],Rotation:[180f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.19f,0.65f,0.32f],scale:[0.8f,0.8f,0.8f]},background:0},{id:"minecraft:text_display",Tags:["exp.transporter_text1"],Rotation:[-90f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.19f,0.65f,0.32f],scale:[0.8f,0.8f,0.8f]},background:0}],item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":1012204}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0.0,0.62,0.0],scale:[1.2,1.2,1.2]}}

execute as @n[type=minecraft:item_display,tag=exp.transporter.new,distance=..0.01] at @s run function expansion:blocks/transporter/place/setup