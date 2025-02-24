# get the total oxygen values from the storage expansion:temp ModStorage
# Sets the values in the scores below
scoreboard players reset #temp exp.oxygen_lvl
scoreboard players reset #temp exp.oxygen_max
execute store result score #get_oxygen exp.max_range run data get storage expansion:temp ModStorage
function expansion:spacesuits/get_oxygen_data/storage_loop
scoreboard players reset #get_oxygen exp.max_range

## Can also return the current percentage
scoreboard players operation #input exp.math = #temp exp.oxygen_lvl
scoreboard players operation #max exp.math = #temp exp.oxygen_max
return run function expansion:utilities/percentage