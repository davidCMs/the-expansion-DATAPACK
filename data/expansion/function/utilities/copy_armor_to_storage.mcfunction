# first, copy the entire player inventory to storage.
data modify storage expansion:temp inventory set from entity @s Inventory

# copy the armor slots to another storage
data merge storage expansion:temp {armor:[{},{},{},{}]}
data modify storage expansion:temp armor[0] set from storage expansion:temp inventory[{Slot:103b}]
data modify storage expansion:temp armor[1] set from storage expansion:temp inventory[{Slot:102b}]
data modify storage expansion:temp armor[2] set from storage expansion:temp inventory[{Slot:101b}]
data modify storage expansion:temp armor[3] set from storage expansion:temp inventory[{Slot:100b}]

# reset the inventory storage
data remove storage expansion:temp inventory