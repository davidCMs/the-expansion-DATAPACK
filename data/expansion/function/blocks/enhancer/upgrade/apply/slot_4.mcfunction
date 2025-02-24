execute unless items block ~ ~ ~ container.15 *[minecraft:custom_data~{upgrade_module:1b}] run return fail

data modify storage expansion:temp allowed set from block ~ ~ ~ Items[{Slot:15b}].components."minecraft:custom_data".allowedIDs
execute unless function expansion:blocks/enhancer/upgrade/apply/check_allowed/init_loop run return fail

data modify storage expansion:temp ModStorage[0] set from block ~ ~ ~ Items[{Slot:15b}]

item modify block ~ ~ ~ container.15 expansion:utility/reduce_count