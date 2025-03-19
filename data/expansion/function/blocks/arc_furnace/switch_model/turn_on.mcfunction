tag @s add exp.smelting

execute if items block ~ ~ ~ container.1 *[custom_data~{gui_item:1b}] run data modify block ~ ~ ~ Items[{Slot:1b}].components.minecraft:custom_model_data.strings insert 1 value "animated"

data modify entity @s item.components.minecraft:custom_model_data.strings insert 0 value "animated"
