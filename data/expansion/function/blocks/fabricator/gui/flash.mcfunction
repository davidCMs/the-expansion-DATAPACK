execute if score @s exp.cooldown matches 20 run data modify block ~ ~ ~ Items[{Slot:26b}].components.minecraft:custom_model_data.strings[1] insert 1 value "flash"

execute if score @s exp.cooldown matches 12 run data remove block ~ ~ ~ Items[{Slot:26b}].components.minecraft:custom_model_data.strings[1]

execute if score @s exp.cooldown matches 8 run data modify block ~ ~ ~ Items[{Slot:26b}].components.minecraft:custom_model_data.strings[1] insert 1 value "flash"

execute if score @s exp.cooldown matches 1 run data remove block ~ ~ ~ Items[{Slot:26b}].components.minecraft:custom_model_data.strings[1]

scoreboard players remove @s exp.cooldown 1
