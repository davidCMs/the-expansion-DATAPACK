tag @s remove exp.transporter.new

scoreboard players reset #temp exp.unique_id
execute store result score #temp exp.unique_id run data get entity @s item.components.minecraft:custom_data.room_id
execute if score #temp exp.unique_id matches -1 run function expansion:blocks/transporter/give_score

setblock ~ ~ ~ minecraft:barrier