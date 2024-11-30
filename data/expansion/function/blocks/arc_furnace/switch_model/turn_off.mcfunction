tag @s remove exp.smelting

execute on passengers run item replace entity @s container.0 with air

execute if items block ~ ~ ~ container.1 *[custom_data~{gui_item:1b}] run data modify block ~ ~ ~ Items[{Slot:1b}].components.minecraft:custom_model_data set value 124410

data modify entity @s item.components.minecraft:custom_model_data set value 1012306

scoreboard players set @s exp.timer_1 0
