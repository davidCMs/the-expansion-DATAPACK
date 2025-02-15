# If there is an item in this slot (which is NOT a gui item): Restore the item
$execute if items block ~ ~ ~ container.$(Slot) * run function expansion:utilities/barrel/gui/restore_item {Slot:$(Slot)}

# replace the slot
$loot replace block ~ ~ ~ container.$(Slot) loot expansion:items/gui/$(Type)