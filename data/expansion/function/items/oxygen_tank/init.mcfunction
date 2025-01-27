# ran when an oxygen tank coas is rightclicked

# check tank level
execute store result score #source exp.oxygen_lvl run data get entity @p SelectedItem.components.minecraft:custom_data.oxygen_lvl

# fill the equipments oxygen supply if the tank has oxygen and if the equipment needs oxygen/unless it doesnt have a tank, in which case the oxygen_max is 0
execute unless score #source exp.oxygen_lvl matches 1.. run return 0
execute if score @s exp.oxygen_max matches 0 run return 1
execute if score @s exp.oxygen_lvl = @s exp.oxygen_max run return 2

# if all tests succeed, refill the equipment
function expansion:items/oxygen_tank/refill_equipment
