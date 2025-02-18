# calculate the current oxygen percentage
execute store result score #input exp.math run data get storage expansion:temp ModStorage[0].components."minecraft:custom_data".oxygen_lvl
execute store result score #max exp.math run data get storage expansion:temp ModStorage[0].components."minecraft:custom_data".oxygen_max
function expansion:utilities/percentage

# The slot is a pain in the ass to handle
# store the original slot
execute store result score #temp exp.value run data get storage expansion:temp ModStorage[0].Slot
# set the slot to 0, where the item modification happens
data modify storage expansion:temp ModStorage[0].Slot set value 0
# copy the item from storage to the slot
data modify block ~ ~ ~ Items[{Slot:0b}] set from storage expansion:temp ModStorage[0]
# merge the percentage to lore
item modify block ~ ~ ~ container.0 expansion:oxygen_tank/merge_oxygen_percent_from_score
# copy the item back to the storage
data modify storage expansion:temp ModStorage[0] set from block ~ ~ ~ Items[{Slot:0b}]
# restore the original slot
execute store result storage expansion:temp ModStorage[0].Slot byte 1 run scoreboard players get #temp exp.value
# replace the item in the slot with gui filler (DONT REMOVE THE ITEM)
loot replace block ~ ~ ~ container.0 loot expansion:items/gui/filler

# remove oxygen tank lore from equipment
item modify block ~ ~ ~ container.10 expansion:oxygen_tank/remove_from_equipment