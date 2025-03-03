execute store result entity @s item.components."minecraft:custom_data".cold_resist.modifier int 1 run scoreboard players get #temp exp.cold_resist
execute store result score #base exp.math run data get entity @s item.components."minecraft:custom_data".cold_resist.base
scoreboard players operation #temp exp.cold_resist += #base exp.math
execute store result entity @s item.components."minecraft:custom_data".cold_resist.total int 1 run scoreboard players get #temp exp.cold_resist

data merge storage expansion:temp {cold_resist:[{text:"Cold Resistance: ",color:"gold"},{text:"",color:"green"},{score:{name:"#temp",objective:"exp.cold_resist"},color:"green"}]}
execute if score #temp exp.cold_resist matches ..-1 run data modify storage expansion:temp cold_resist[2].color set value "red"
item modify entity @s contents expansion:space_equipment/set_coldresist_lore
data remove storage expansion:temp cold_resist

scoreboard players reset #temp exp.cold_resist
scoreboard players reset #base exp.math