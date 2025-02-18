# place a dummy item in the block
loot replace block ~ ~ ~ container.12 loot expansion:items/gui/filler

# copy the module from the equipment to the dummy item
data modify block ~ ~ ~ Items[{Slot:12b}] set from storage expansion:temp ModStorage[0]

# remove the equipment module data
data modify storage expansion:temp ModStorage[0] set value {}