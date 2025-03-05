# run from the recipes of the fabricator
#loot replace entity @s contents loot expansion:armor/space_equipment

# merge the percentage with the equipment
execute store result score #input exp.math run data get block ~ ~ ~ Items[{Slot:11b}].components."minecraft:custom_data".oxygen.lvl
execute store result score #max exp.oxygen_max run data get block ~ ~ ~ Items[{Slot:11b}].components."minecraft:custom_data".oxygen.max
function expansion:utilities/percentage
item modify entity @s contents expansion:oxygen_tank/merge_with_equipment

# copy the oxygen tank to the equipment
data modify entity @s item.components."minecraft:custom_data".ModStorage[0] set from block ~ ~ ~ Items[{Slot:11b}]
data remove entity @s item.components."minecraft:custom_data".ModStorage[0].Slot