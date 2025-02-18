# skip if the player has no oxygen supply
execute unless score @s exp.oxygen_max matches 1.. run return fail

# set the new oxygen percentage
scoreboard players operation @s exp.oxygen_percent = #output exp.oxygen_percent

# copy the entire modstorage array to a storage
scoreboard players operation #input exp.oxygen_lvl = @s exp.oxygen_lvl
data modify storage expansion:temp ModStorage set from entity @s Inventory[{Slot:103b}].components."minecraft:custom_data".ModStorage

execute store result score #temp exp.max_range run data get storage expansion:temp ModStorage
function expansion:items/space_equipment/find_oxygen_lvl
scoreboard players reset #temp exp.max_range

# merge the oxygen percentage with the equipment lore
scoreboard players operation #output exp.percentage = #output exp.oxygen_percent
item modify entity @s armor.head expansion:oxygen_tank/merge_with_equipment

# reset scores
scoreboard players reset #output exp.oxygen_percent