## During the loop, gather scores from modules

# oxygen lvl
execute store result score #lvl exp.math run data get storage expansion:temp ModStorage[0].components."minecraft:custom_data".oxygen.lvl
scoreboard players operation #temp exp.oxygen_lvl += #lvl exp.math
scoreboard players reset #lvl exp.math

# oxygen max
execute store result score #max exp.math run data get storage expansion:temp ModStorage[0].components."minecraft:custom_data".oxygen.max
scoreboard players operation #temp exp.oxygen_max += #max exp.math
scoreboard players reset #max exp.math

# heat resistance
execute store result score #mod exp.math run data get storage expansion:temp ModStorage[0].components."minecraft:custom_data".heat_resist.modifier
scoreboard players operation #temp exp.heat_resist += #mod exp.math
scoreboard players reset #mod exp.math

# cold resistance
execute store result score #mod exp.math run data get storage expansion:temp ModStorage[0].components."minecraft:custom_data".cold_resist.modifier
scoreboard players operation #temp exp.cold_resist += #mod exp.math
scoreboard players reset #mod exp.math