# check the values for this entry
execute if data storage expansion:temp ModStorage[0].id run function expansion:blocks/enhancer/upgrade/apply/effects/effects

# move to the next item in the array
function expansion:utilities/shift_modstorage_array
# repeat if we checked the entire array, and once more to restore it to its original state
scoreboard players remove #apply_module exp.max_range 1
execute if score #apply_module exp.max_range matches 1.. run return run function expansion:blocks/enhancer/upgrade/apply/effects/storage_loop