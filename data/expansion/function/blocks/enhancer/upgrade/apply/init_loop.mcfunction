execute store result score #copy_module exp.max_range run data get storage expansion:temp ModStorage
scoreboard players set #temp exp.counter_1 0
function expansion:blocks/enhancer/upgrade/apply/storage_loop
scoreboard players reset #temp exp.counter_1
scoreboard players reset #copy_module exp.max_range