execute store result score #base exp.temperature run data get storage expansion:temp armor[0].components."minecraft:custom_data".heat_resist.total

execute if score @s exp.temperature > #base exp.temperature store result score #temp exp.damage run scoreboard players operation #base exp.temperature -= @s exp.temperature
execute unless score #temp exp.damage matches 0.. run scoreboard players operation #temp exp.damage *= #-1 exp.const

scoreboard players reset #base exp.temperature