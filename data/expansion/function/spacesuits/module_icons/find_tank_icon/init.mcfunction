# calculate the current oxygen percentage
execute store result score #input exp.math run data get storage expansion:temp ModStorage[0].components."minecraft:custom_data".oxygen.lvl
execute store result score #max exp.math run data get storage expansion:temp ModStorage[0].components."minecraft:custom_data".oxygen.max
execute store result score #tier exp.math run data get storage expansion:temp ModStorage[0].components."minecraft:custom_data".tier
function expansion:utilities/percentage

# find the icon and store it inside expansion:temp icon
execute if score #tier exp.math matches 1 run function expansion:spacesuits/module_icons/find_tank_icon/tier1
execute if score #tier exp.math matches 2 run function expansion:spacesuits/module_icons/find_tank_icon/tier2
execute if score #tier exp.math matches 3 run function expansion:spacesuits/module_icons/find_tank_icon/tier3

# resert scores to be neat and tidy
scoreboard players reset #input exp.math
scoreboard players reset #max exp.math
scoreboard players reset #tier exp.math