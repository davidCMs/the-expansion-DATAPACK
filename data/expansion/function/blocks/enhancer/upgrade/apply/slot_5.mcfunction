execute unless items block ~ ~ ~ container.16 *[minecraft:custom_data~{upgrade_module:1b}] run return fail

data modify storage expansion:temp allowed set from block ~ ~ ~ Items[{Slot:16b}].components."minecraft:custom_data".allowedIDs
execute unless function expansion:blocks/enhancer/upgrade/apply/check_allowed/init_loop run return fail

# can't add modules in the final slot, duh
execute if items block ~ ~ ~ container.16 *[minecraft:custom_data~{exp_item:{name:"slot_module"}}] run return fail

data modify storage expansion:temp ModStorage[0] set from block ~ ~ ~ Items[{Slot:16b}]
data modify storage expansion:temp ModStorage[0].count set value 1

item modify block ~ ~ ~ container.16 expansion:utility/reduce_count