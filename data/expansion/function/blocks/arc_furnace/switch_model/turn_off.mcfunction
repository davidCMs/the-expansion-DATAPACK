tag @s remove exp.smelting

execute on passengers run item replace entity @s container.0 with air

execute if items block ~ ~ ~ container.1 *[custom_data~{gui_item:1b}] run data remove block ~ ~ ~ Items[{Slot:1b}].components.minecraft:custom_model_data.strings[1]

data remove entity @s item.components.minecraft:custom_model_data.strings[0]

scoreboard players set @s exp.timer_1 0
