# reset values
scoreboard players reset #temp exp.health
scoreboard players reset #temp exp.max_health
scoreboard players reset #temp exp.damage

# get the equipments durability scores (putting this here makes the percentage lag one iteration behind on the actionbar but I can't be bothered with that now)
execute store result score #temp exp.health run data get storage expansion:temp armor[0].components."minecraft:damage"
execute store result score #temp exp.max_health run data get storage expansion:temp armor[0].components."minecraft:max_damage"

# Check the ambient and piece temperature (resistance)
execute unless score @s exp.temperature matches 0 run function expansion:spacesuits/temperature_damage/main

# apply any damage to this piece
execute if score #temp exp.damage matches 1.. run function expansion:spacesuits/temperature_damage/add

# if the durability of this piece is depleted, signal this to the actionbar
execute if score #temp exp.health = #temp exp.max_health run scoreboard players add #temp exp.counter_2 1

# add the durability scores to the total for the full set to calculate the total percentage
scoreboard players operation #value exp.suit_integrity += #temp exp.health
scoreboard players operation #max exp.suit_integrity += #temp exp.max_health

# reset values
scoreboard players reset #temp exp.health
scoreboard players reset #temp exp.max_health