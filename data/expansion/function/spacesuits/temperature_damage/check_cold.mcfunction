execute store result score #base exp.temperature run data get storage expansion:temp armor[0].components."minecraft:custom_data".cold_resist.base -1
execute store result score #modifier exp.temperature run data get storage expansion:temp armor[0].components."minecraft:custom_data".cold_resist.modifier -1

scoreboard players operation #base exp.temperature += #modifier exp.temperature

execute if score @s exp.temperature < #base exp.temperature store result score #temp exp.damage run scoreboard players operation #base exp.temperature -= @s exp.temperature

scoreboard players reset #base exp.temperature
scoreboard players reset #modifier exp.temperature