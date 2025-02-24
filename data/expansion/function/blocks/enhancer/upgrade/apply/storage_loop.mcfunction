data modify storage expansion:temp ModStorage[0].count set value 1

# check the values for this entry
scoreboard players add #temp exp.counter_1 1
execute if score #temp exp.counter_1 matches 1 if function expansion:blocks/enhancer/upgrade/apply/check_allowed/allowed run function expansion:blocks/enhancer/upgrade/apply/slot_1
execute if score #temp exp.counter_1 matches 2 if function expansion:blocks/enhancer/upgrade/apply/check_allowed/allowed run function expansion:blocks/enhancer/upgrade/apply/slot_2
execute if score #temp exp.counter_1 matches 3 if function expansion:blocks/enhancer/upgrade/apply/check_allowed/allowed run function expansion:blocks/enhancer/upgrade/apply/slot_3
execute if score #temp exp.counter_1 matches 4 if function expansion:blocks/enhancer/upgrade/apply/check_allowed/allowed run function expansion:blocks/enhancer/upgrade/apply/slot_4

# display the icon
function expansion:spacesuits/module_icons/display_icon
item modify entity @s contents expansion:space_equipment/display_module_icons

# move to the next item in the array
function expansion:utilities/shift_modstorage_array
# repeat if we checked the entire array, and once more to restore it to its original state
scoreboard players remove #copy_module exp.max_range 1
execute if score #copy_module exp.max_range matches 1.. run return run function expansion:blocks/enhancer/upgrade/apply/storage_loop