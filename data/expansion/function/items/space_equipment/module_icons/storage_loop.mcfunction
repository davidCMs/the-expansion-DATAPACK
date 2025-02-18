# Store the icon of the current module into a storage to copy it to the item later
execute if data storage expansion:temp ModStorage[0].components.minecraft:custom_data.oxygen_tank run function expansion:items/space_equipment/module_icons/find_tank_icon/init
data modify storage expansion:temp IconList append from storage expansion:temp ModStorage[0].components.minecraft:custom_data.icon

# move to the next item in the array
function expansion:utilities/shift_modstorage_array
scoreboard players remove #set_icons exp.max_range 1
execute if score #set_icons exp.max_range matches 1.. run return run function expansion:items/space_equipment/module_icons/storage_loop