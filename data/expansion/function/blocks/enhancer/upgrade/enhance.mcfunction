# copy the equipment ModStorage to a storage for easier access and better performance
data modify storage expansion:temp ModStorage set from block ~ ~ ~ Items[{Slot:10b}].components.minecraft:custom_data.ModStorage

# If a module is in the block slot, if the equipment has the slot, unless a module is inside the corresponding equipment slot: Add the module to the equipment
execute if items block ~ ~ ~ container.12 *[minecraft:custom_data~{upgrade_module:1b}] if data storage expansion:temp ModStorage[0] unless data storage expansion:temp ModStorage[0].id run function expansion:blocks/enhancer/upgrade/apply/slot_1
execute if items block ~ ~ ~ container.13 *[minecraft:custom_data~{upgrade_module:1b}] if data storage expansion:temp ModStorage[1] unless data storage expansion:temp ModStorage[1].id run function expansion:blocks/enhancer/upgrade/apply/slot_2
execute if items block ~ ~ ~ container.14 *[minecraft:custom_data~{upgrade_module:1b}] if data storage expansion:temp ModStorage[2] unless data storage expansion:temp ModStorage[2].id run function expansion:blocks/enhancer/upgrade/apply/slot_3
execute if items block ~ ~ ~ container.15 *[minecraft:custom_data~{upgrade_module:1b}] if data storage expansion:temp ModStorage[3] unless data storage expansion:temp ModStorage[3].id run function expansion:blocks/enhancer/upgrade/apply/slot_4

# apply module parameters
function expansion:blocks/enhancer/upgrade/apply/init_loop

# display the remainding module icons
function expansion:items/space_equipment/module_icons/init_loop
item modify block ~ ~ ~ container.10 expansion:space_equipment/display_module_icons

# Copy the modstorage from storage back to the equipment
item modify block ~ ~ ~ container.10 {"function": "minecraft:copy_custom_data","source": {"type": "minecraft:storage","source": "expansion:temp"},"ops": [{"source": "ModStorage","target": "ModStorage","op": "replace"}]}
# also refresh the display item
item replace entity @s container.0 from block ~ ~ ~ container.10