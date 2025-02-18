# move to the next item in the array
data modify storage expansion:temp ModStorage append from storage expansion:temp ModStorage[0]
data remove storage expansion:temp ModStorage[0]

# check the values for this entry
execute if data storage expansion:temp ModStorage[0].components.minecraft:custom_data.oxygen_max run function expansion:items/space_equipment/extract_oxygen_values

# repeat if we checked the entire array, and once more to restore it to its original state
scoreboard players remove #temp exp.max_range 1
execute if score #temp exp.max_range matches 1.. run return run function expansion:items/space_equipment/find_oxygen_modules