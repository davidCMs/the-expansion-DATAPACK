# place a dummy item in the block
loot replace block ~ ~ ~ container.15 loot expansion:items/gui/filler

# Temporarily store a copy of the removed module so we can do some magic
data modify storage expansion:temp RemovedModule set from storage expansion:temp ModStorage[3]
function expansion:blocks/enhancer/upgrade/remove/effects

# copy the module from the equipment to the dummy item
data modify block ~ ~ ~ Items[{Slot:15b}] set from storage expansion:temp RemovedModule

# remove the equipment module data
data modify storage expansion:temp ModStorage[3] set value {}