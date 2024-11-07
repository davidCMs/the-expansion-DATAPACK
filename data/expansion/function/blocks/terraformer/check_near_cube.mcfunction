scoreboard players reset #temp exp.bool

execute on origin positioned ~-24 ~-24 ~-24 unless entity @s[dx=47,dy=47,dz=47] run scoreboard players set #temp exp.bool 1

execute if score #temp exp.bool matches 1 run function expansion:blocks/terraformer/unlink