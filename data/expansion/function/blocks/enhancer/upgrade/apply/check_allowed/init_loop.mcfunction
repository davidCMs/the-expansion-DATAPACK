scoreboard players reset #allowed_slot exp.max_range
execute store result score #allowed_slot exp.max_range run data get storage expansion:temp allowed
return run function expansion:blocks/enhancer/upgrade/apply/check_allowed/storage_loop