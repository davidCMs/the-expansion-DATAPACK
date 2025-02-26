execute unless items block ~ ~ ~ container.13 *[minecraft:custom_data~{upgrade_module:1b}] run return fail

data modify storage expansion:temp allowed set from block ~ ~ ~ Items[{Slot:13b}].components."minecraft:custom_data".allowedIDs
execute unless function expansion:blocks/enhancer/upgrade/apply/check_allowed/init_loop run return fail

data modify storage expansion:temp ModStorage[0] set from block ~ ~ ~ Items[{Slot:13b}]
data modify storage expansion:temp ModStorage[0].count set value 1

item modify block ~ ~ ~ container.13 expansion:utility/reduce_count