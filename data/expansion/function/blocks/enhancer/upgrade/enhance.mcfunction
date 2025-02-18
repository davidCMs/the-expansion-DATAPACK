# copy the equipment item to a storage for easier access and better performance
data modify storage expansion:temp ModStorage set from block ~ ~ ~ Items[{Slot:10b}].components.minecraft:custom_data.ModStorage

# If a module is in the block slot, if the equipment has the slot, unless a module is inside the corresponding equipment slot: Add the module to the equipment
execute if items block ~ ~ ~ container.12 *[minecraft:custom_data~{upgrade_module:1b}] if data storage expansion:temp ModStorage[0] unless data storage expansion:temp ModStorage[0].id run function expansion:blocks/enhancer/upgrade/apply/slot_1
execute if items block ~ ~ ~ container.13 *[minecraft:custom_data~{upgrade_module:1b}] if data storage expansion:temp ModStorage[1] unless data storage expansion:temp ModStorage[1].id run function expansion:blocks/enhancer/upgrade/apply/slot_2
execute if items block ~ ~ ~ container.14 *[minecraft:custom_data~{upgrade_module:1b}] if data storage expansion:temp ModStorage[2] unless data storage expansion:temp ModStorage[2].id run function expansion:blocks/enhancer/upgrade/apply/slot_3
execute if items block ~ ~ ~ container.15 *[minecraft:custom_data~{upgrade_module:1b}] if data storage expansion:temp ModStorage[3] unless data storage expansion:temp ModStorage[3].id run function expansion:blocks/enhancer/upgrade/apply/slot_4

# Print the array of module icons in the item lore
function expansion:blocks/enhancer/upgrade/display_modules_in_lore

# apply module effects
function expansion:blocks/enhancer/upgrade/apply/effects

# Copy the modstorage from storage back to the equipment
data modify block ~ ~ ~ Items[{Slot:10b}].components.minecraft:custom_data.ModStorage set from storage expansion:temp ModStorage

# also refresh the display item
item replace entity @s container.0 from block ~ ~ ~ container.10