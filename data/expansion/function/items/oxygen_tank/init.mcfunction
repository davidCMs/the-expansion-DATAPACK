# ran when an oxygen tank coas is rightclicked

# check tank level
execute store result score #source exp.oxygen_lvl run data get entity @p SelectedItem.components."minecraft:custom_data".oxygen.lvl

# if all tests succeed, refill the equipment
execute if function expansion:items/oxygen_tank/check_valid run function expansion:items/oxygen_tank/refill_equipment
