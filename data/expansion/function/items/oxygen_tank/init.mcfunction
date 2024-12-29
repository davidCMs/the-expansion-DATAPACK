# ran when an oxygen tank coas is rightclicked

# check tank level
execute store result score #source exp.oxygen_lvl run data get entity @p SelectedItem.components.minecraft:custom_data.oxygen_lvl

# fill the equipments oxygen supply if the tank has oxygen and if the equipment needs oxygen/unless it doesnt have a tank, in which case the oxygen_max is 0
execute unless score #source exp.oxygen_lvl matches 1.. run return run say tank empty
execute if score @s exp.oxygen_max matches 0 run return run say no tank detected
execute if score @s exp.oxygen_lvl = @s exp.oxygen_max run return run say equipment full

# if all tests succeed, refill the equipment
function expansion:items/oxygen_tank/refill_equipment
