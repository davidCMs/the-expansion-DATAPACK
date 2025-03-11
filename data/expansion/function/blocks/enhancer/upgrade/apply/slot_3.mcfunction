execute unless items block ~ ~ ~ container.14 *[minecraft:custom_data~{upgrade_module:1b}] run return fail

data modify storage expansion:temp allowed set from block ~ ~ ~ Items[{Slot:14b}].components."minecraft:custom_data".allowedIDs
execute unless function expansion:blocks/enhancer/upgrade/apply/check_allowed/init_loop run return fail

execute if items block ~ ~ ~ container.14 *[minecraft:custom_data~{exp_item:{name:"slot_module"}}] run return run execute unless score #copy_module exp.max_range matches 5.. run function expansion:blocks/enhancer/upgrade/apply/effects/add_slot

data modify storage expansion:temp ModStorage[0] set from block ~ ~ ~ Items[{Slot:14b}]
data modify storage expansion:temp ModStorage[0].count set value 1

item modify block ~ ~ ~ container.14 expansion:utility/reduce_count