function expansion:spacesuits/module_icons/display_icon

# move to the next item in the array
function expansion:utilities/shift_modstorage_array
scoreboard players remove #set_icons exp.max_range 1
execute if score #set_icons exp.max_range matches 1.. run return run function expansion:spacesuits/module_icons/storage_loop