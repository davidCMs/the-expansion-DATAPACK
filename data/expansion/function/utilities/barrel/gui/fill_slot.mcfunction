# If there is an item in this slot (which is NOT a gui item): Restore the item
$execute unless data block ~ ~ ~ Items[{Slot:$(Slot)b}].components."minecraft:custom_data".gui_item run data modify storage expansion:temp Item set from block ~ ~ ~ Items[{Slot:$(Slot)b}]
execute if data storage expansion:temp Item run function expansion:utilities/barrel/gui/restore_item

# replace the slot
$loot replace block ~ ~ ~ container.$(Slot) loot expansion:items/gui/$(Type)