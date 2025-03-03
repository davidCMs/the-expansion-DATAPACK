## During the loop, gather scores from modules

# oxygen lvl
execute store result score #mod exp.math run data get storage expansion:temp ModStorage[0].components."minecraft:custom_data".oxygen.lvl
scoreboard players operation #temp exp.oxygen_lvl += #mod exp.math
scoreboard players reset #mod exp.math

# oxygen max
execute store result score #mod exp.math run data get storage expansion:temp ModStorage[0].components."minecraft:custom_data".oxygen.max
scoreboard players operation #temp exp.oxygen_max += #mod exp.math
scoreboard players reset #mod exp.math

# heat resistance
execute store result score #mod exp.math run data get storage expansion:temp ModStorage[0].components."minecraft:custom_data".heat_resist.modifier
scoreboard players operation #temp exp.heat_resist += #mod exp.math
scoreboard players reset #mod exp.math

# cold resistance
execute store result score #mod exp.math run data get storage expansion:temp ModStorage[0].components."minecraft:custom_data".cold_resist.modifier
scoreboard players operation #temp exp.cold_resist += #mod exp.math
scoreboard players reset #mod exp.math

# extra durability (percentage) (can never remove 100% durability)
execute store result score #mod exp.math run data get storage expansion:temp ModStorage[0].components."minecraft:custom_data".max_damage.add_percent
scoreboard players operation #temp exp.max_health += #mod exp.math
execute if score #temp exp.max_health matches ..-100 run scoreboard players set #temp exp.max_health -99
scoreboard players reset #mod exp.math