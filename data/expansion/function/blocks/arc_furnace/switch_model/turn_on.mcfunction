tag @s add exp.smelting

execute if items block ~ ~ ~ container.1 *[custom_data={gui_item:1b}] run data modify block ~ ~ ~ Items[{Slot:1b}].components.minecraft:custom_model_data set value 124452

data modify entity @s item.components.minecraft:custom_model_data set value 1012307
