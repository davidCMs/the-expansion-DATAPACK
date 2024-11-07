# if there is already an item(the same item as checked previously) then increment its count.
execute store result score @s exp.hold_count run data get entity @s item.components.minecraft:custom_data.crafting_count

execute if items block ~ ~ ~ container.15 * run function expansion:blocks/fabricator/printing/compare_output

execute if items block ~ ~ ~ container.15 * unless score @s exp.bool matches 1 run item modify block ~ ~ ~ container.15 expansion:utility/add_count_from_score
execute unless items block ~ ~ ~ container.15 * run function expansion:blocks/fabricator/printing/insert_item

# reset the loader
execute if items block ~ ~ ~ container.16 jigsaw[custom_data~{gui_item:1b}] run data modify block ~ ~ ~ Items[{Slot:16b}].components.minecraft:custom_model_data set value 124470

# check if there are any items left in the printer
function expansion:blocks/fabricator/printing/check_remaining

# run the print again if there are still items inside the printer
execute if score @s exp.value matches 1 run function expansion:blocks/fabricator/printing/check_recipes

