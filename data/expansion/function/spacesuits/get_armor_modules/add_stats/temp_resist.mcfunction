# heat resistance
execute store result score #max exp.math run data get storage expansion:temp stats.heat_resist.modifier
scoreboard players operation #temp exp.heat_resist += #max exp.math
scoreboard players reset #max exp.math

# cold resistance
execute store result score #max exp.math run data get storage expansion:temp stats.cold_resist.modifier
scoreboard players operation #temp exp.cold_resist += #max exp.math
scoreboard players reset #max exp.math