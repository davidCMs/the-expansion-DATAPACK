scoreboard players reset #temp exp.heat_resist
scoreboard players reset #temp exp.cold_resist
scoreboard players reset #temp exp.oxygen_lvl
scoreboard players reset #temp exp.oxygen_max

execute store result score #apply_module exp.max_range run data get storage expansion:temp ModStorage
function expansion:blocks/enhancer/upgrade/apply/effects/storage_loop
scoreboard players reset #apply_module exp.max_range

# apply the oxygen scores on chestplates (could be better but don't want to overengineer)
execute if items entity @s contents *[custom_data~{exp_armor.chestplate:1b}] run function expansion:blocks/enhancer/upgrade/apply/effects/oxygen_percent

# heat resistance, also get the armor base value
execute store result entity @s item.components."minecraft:custom_data".heat_resist.modifier int 1 run scoreboard players get #temp exp.heat_resist
execute store result score #base exp.math run data get entity @s item.components."minecraft:custom_data".heat_resist.base
scoreboard players operation #temp exp.heat_resist += #base exp.math

data remove storage expansion:temp heat_resist
data merge storage expansion:temp {heat_resist:[{text:"Heat Resistance: ",color:"aqua"},{text:"+",color:"green"},{score:{name:"#temp",objective:"exp.heat_resist"},color:"green"}]}
execute if score #temp exp.heat_resist matches ..-1 run data modify storage expansion:temp heat_resist[2].color set value "red"
execute if score #temp exp.heat_resist matches ..-1 run data remove storage expansion:temp heat_resist[1]
item modify entity @s contents expansion:space_equipment/set_heatresist_lore

scoreboard players reset #temp exp.heat_resist
scoreboard players reset #base exp.math

# cold resistance, also get the armor base value
execute store result entity @s item.components."minecraft:custom_data".cold_resist.modifier int 1 run scoreboard players get #temp exp.cold_resist
execute store result score #base exp.math run data get entity @s item.components."minecraft:custom_data".cold_resist.base
scoreboard players operation #temp exp.cold_resist += #base exp.math

data remove storage expansion:temp cold_resist
data merge storage expansion:temp {cold_resist:[{text:"Cold Resistance: ",color:"gold"},{text:"+",color:"green"},{score:{name:"#temp",objective:"exp.cold_resist"},color:"green"}]}
execute if score #temp exp.cold_resist matches ..-1 run data modify storage expansion:temp cold_resist[2].color set value "red"
execute if score #temp exp.cold_resist matches ..-1 run data remove storage expansion:temp cold_resist[1]
item modify entity @s contents expansion:space_equipment/set_coldresist_lore

scoreboard players reset #temp exp.cold_resist
scoreboard players reset #base exp.math