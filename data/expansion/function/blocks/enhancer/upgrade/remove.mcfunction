# copy the equipment item to a storage for easier access and better performance
data modify storage expansion:temp ModStorage set from block ~ ~ ~ Items[{Slot:10b}].components.minecraft:custom_data.ModStorage

# remove module effects
function expansion:blocks/enhancer/upgrade/remove/init_loop

# Unless there is an item in the block slot, if there is a module in the equipment slot, remove the module from the equipment slot into the item slot
execute unless items block ~ ~ ~ container.12 * if data storage expansion:temp ModStorage[0].id run function expansion:blocks/enhancer/upgrade/remove/slot_1
execute unless items block ~ ~ ~ container.13 * if data storage expansion:temp ModStorage[1].id run function expansion:blocks/enhancer/upgrade/remove/slot_2
execute unless items block ~ ~ ~ container.14 * if data storage expansion:temp ModStorage[2].id run function expansion:blocks/enhancer/upgrade/remove/slot_3
execute unless items block ~ ~ ~ container.15 * if data storage expansion:temp ModStorage[3].id run function expansion:blocks/enhancer/upgrade/remove/slot_4

# display the remainding module icons
function expansion:items/space_equipment/module_icons/init_loop
item modify block ~ ~ ~ container.10 expansion:space_equipment/display_module_icons

# copy data back to the equipment
item modify block ~ ~ ~ container.10 {"function": "minecraft:copy_custom_data","source": {"type": "minecraft:storage","source": "expansion:temp"},"ops": [{"source": "ModStorage","target": "ModStorage","op": "replace"}]}
# update the display item
item replace entity @s contents from block ~ ~ ~ container.10