# check the values for this entry
execute store result score #allowed exp.unique_id run data get storage expansion:temp allowed[0]
execute if score #allowed exp.unique_id = #temp exp.unique_id run return run scoreboard players reset #allowed exp.unique_id

# move to the next item in the array
data modify storage expansion:temp allowed append from storage expansion:temp allowed[0]
data remove storage expansion:temp allowed[0]
# repeat if we checked the entire array, and once more to restore it to its original state
scoreboard players remove #allowed_slot exp.max_range 1
execute if score #allowed_slot exp.max_range matches 1.. run return run function expansion:blocks/enhancer/upgrade/apply/check_allowed/storage_loop

return fail