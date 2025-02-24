scoreboard players reset #temp exp.heat_resist
scoreboard players reset #temp exp.cold_resist
scoreboard players reset #temp exp.oxygen_lvl
scoreboard players reset #temp exp.oxygen_max

execute store result score #apply_module exp.max_range run data get storage expansion:temp ModStorage
function expansion:blocks/enhancer/upgrade/apply/effects/storage_loop
scoreboard players reset #apply_module exp.max_range

# merge the oxygen percentage with the equipment
scoreboard players operation #input exp.math = #temp exp.oxygen_lvl
scoreboard players operation #max exp.math = #temp exp.oxygen_max
function expansion:utilities/percentage
item modify entity @s contents expansion:space_equipment/set_oxygen_lore

# heat resistance, also get the armor base value
execute store result score #base exp.math run data get entity @s item.components."minecraft:custom_data".heat_resist.base
scoreboard players operation #temp exp.heat_resist += #base exp.math
execute store result entity @s item.components."minecraft:custom_data".heat_resist.modifier int 1 run scoreboard players get #temp exp.heat_resist

data remove storage expansion:temp heat_resist
data merge storage expansion:temp {heat_resist:[{text:"Heat Resistance: ",color:"aqua"},{score:{name:"#temp",objective:"exp.heat_resist"},color:"green"}]}
execute if score #temp exp.heat_resist matches ..-1 run data modify storage expansion:temp heat_resist[1].color set value "red"
item modify entity @s contents expansion:space_equipment/set_heatresist_lore

scoreboard players reset #temp exp.heat_resist
scoreboard players reset #base exp.math

# cold resistance, also get the armor base value
execute store result score #base exp.math run data get entity @s item.components."minecraft:custom_data".cold_resist.base
scoreboard players operation #temp exp.cold_resist += #base exp.math
execute store result entity @s item.components."minecraft:custom_data".cold_resist.modifier int 1 run scoreboard players get #temp exp.cold_resist

data remove storage expansion:temp cold_resist
data merge storage expansion:temp {cold_resist:[{text:"Cold Resistance: ",color:"gold"},{score:{name:"#temp",objective:"exp.cold_resist"},color:"green"}]}
execute if score #temp exp.cold_resist matches ..-1 run data modify storage expansion:temp cold_resist[1].color set value "red"
item modify entity @s contents expansion:space_equipment/set_coldresist_lore

scoreboard players reset #temp exp.cold_resist
scoreboard players reset #base exp.math