## Loop through each armor piece
execute store result score #get_stats exp.max_range run data get storage expansion:temp ModStorage
function expansion:spacesuits/get_armor_modules/get_module_stats/storage_loop
scoreboard players reset #get_stats exp.max_range