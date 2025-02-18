# Find the new total oxygen parameters and calculate the percentage
function expansion:items/space_equipment/get_oxygen_values_from_storage

# calculate the current percentage
scoreboard players operation #input exp.math = #temp exp.oxygen_lvl
scoreboard players operation #max exp.math = #temp exp.oxygen_max
return run function expansion:utilities/percentage