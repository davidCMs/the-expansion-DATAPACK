# place a dummy item in the block
loot replace block ~ ~ ~ container.14 loot expansion:items/gui/filler

# copy the module from the equipment to the dummy item
data modify block ~ ~ ~ Items[{Slot:14b}] set from storage expansion:temp ModStorage[2]
#item modify block ~ ~ ~ container.10 expansion:space_equipment/modules/remove

# remove the equipment module data
data modify storage expansion:temp ModStorage[2] set value {}