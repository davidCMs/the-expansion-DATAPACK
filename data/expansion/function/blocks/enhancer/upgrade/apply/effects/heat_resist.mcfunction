# heat resistance, also get the armor base value
execute store result entity @s item.components."minecraft:custom_data".heat_resist.modifier int 1 run scoreboard players get #temp exp.heat_resist
execute store result score #base exp.math run data get entity @s item.components."minecraft:custom_data".heat_resist.base
scoreboard players operation #temp exp.heat_resist += #base exp.math
execute store result entity @s item.components."minecraft:custom_data".heat_resist.total int 1 run scoreboard players get #temp exp.heat_resist

data merge storage expansion:temp {heat_resist:[{text:"Heat Resistance: ",color:"aqua"},{text:"",color:"green"},{score:{name:"#temp",objective:"exp.heat_resist"},color:"green"}]}
execute if score #temp exp.heat_resist matches ..-1 run data modify storage expansion:temp heat_resist[2].color set value "red"
item modify entity @s contents expansion:space_equipment/set_heatresist_lore
data remove storage expansion:temp heat_resist

scoreboard players reset #temp exp.heat_resist
scoreboard players reset #base exp.math
