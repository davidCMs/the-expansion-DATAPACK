scoreboard players reset #temp exp.oxygen_lvl
execute store result score #remove_module exp.max_range run data get storage expansion:temp ModStorage
function expansion:blocks/enhancer/upgrade/remove/storage_loop
scoreboard players reset #remove_module exp.max_range