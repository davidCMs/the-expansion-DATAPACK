# check the values for this entry
execute if data storage expansion:temp ModStorage[0].components."minecraft:custom_data".oxygen.max run function expansion:spacesuits/get_oxygen_data/add_value

# move to the next item in the array
function expansion:utilities/shift_modstorage_array
# repeat if we checked the entire array, and once more to restore it to its original state
scoreboard players remove #get_oxygen exp.max_range 1
execute if score #get_oxygen exp.max_range matches 1.. run return run function expansion:spacesuits/get_oxygen_data/storage_loop