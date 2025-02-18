# copy the equipment item to a storage for easier access and better performance
data modify storage expansion:temp ModStorage set from block ~ ~ ~ Items[{Slot:10b}].components.minecraft:custom_data.ModStorage

# remove module effects
scoreboard players reset #temp exp.oxygen_lvl
execute store result score #temp exp.max_range run data get storage expansion:temp ModStorage
function expansion:blocks/enhancer/upgrade/remove/effects
scoreboard players reset #temp exp.max_range

# Unless there is an item in the block slot, if there is a module in the equipment slot, remove the module from the equipment slot into the item slot
execute unless items block ~ ~ ~ container.12 * if data storage expansion:temp ModStorage[0].id run function expansion:blocks/enhancer/upgrade/remove/slot_1
execute unless items block ~ ~ ~ container.13 * if data storage expansion:temp ModStorage[1].id run function expansion:blocks/enhancer/upgrade/remove/slot_2
execute unless items block ~ ~ ~ container.14 * if data storage expansion:temp ModStorage[2].id run function expansion:blocks/enhancer/upgrade/remove/slot_3
execute unless items block ~ ~ ~ container.15 * if data storage expansion:temp ModStorage[3].id run function expansion:blocks/enhancer/upgrade/remove/slot_4

# Print the array of module icons in the item lore
function expansion:blocks/enhancer/upgrade/display_modules_in_lore

# copy data back to the equipment
data modify block ~ ~ ~ Items[{Slot:10b}].components.minecraft:custom_data.ModStorage set from storage expansion:temp ModStorage
item replace entity @s contents from block ~ ~ ~ container.10