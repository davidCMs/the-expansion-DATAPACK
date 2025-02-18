# get oxygen values from the storage expansion:temp ModStorage
# returns the values in the scores below
scoreboard players reset #temp exp.oxygen_lvl
scoreboard players reset #temp exp.oxygen_max
execute store result score #temp exp.max_range run data get storage expansion:temp ModStorage
function expansion:items/space_equipment/find_oxygen_modules