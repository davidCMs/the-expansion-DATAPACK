data remove storage expansion:temp IconList
execute store result score #set_icons exp.max_range run data get storage expansion:temp ModStorage
function expansion:items/space_equipment/module_icons/storage_loop
scoreboard players reset #set_icons exp.max_range