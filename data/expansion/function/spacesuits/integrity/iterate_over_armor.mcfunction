scoreboard players add #temp exp.counter_1 1

scoreboard players reset #temp exp.health
scoreboard players reset #temp exp.max_health

# get the equipments max durability score (putting this here makes the percentage lag one iteration behing but I can't care)
execute store result score #temp exp.health run data get storage expansion:temp armor[0].components."minecraft:damage"
execute store result score #temp exp.max_health run data get storage expansion:temp armor[0].components."minecraft:max_damage"

# Check the players temperature score and damage the armor if it doesn't have sufficient protection
execute unless score @s exp.temperature matches 0 if data storage expansion:temp armor[0].id run function expansion:spacesuits/temperature_damage/main

# apply damage to the equipment, as calculated in the previous function
execute if score #temp exp.damage matches 1.. if predicate expansion:periodic/20 if data storage expansion:temp armor[0].id run function expansion:spacesuits/temperature_damage/apply

# if the durability of this piece is depleted, signal this to the actionbar
execute if score #temp exp.health = #temp exp.max_health run scoreboard players add #temp exp.counter_2 1

# add the durability scores to the total for the full set to calculate the percentage
scoreboard players operation #value exp.suit_integrity += #temp exp.health
scoreboard players operation #max exp.suit_integrity += #temp exp.max_health

# repeat for other armor pieces
data remove storage expansion:temp armor[0]
execute if data storage expansion:temp armor[0] run function expansion:spacesuits/integrity/iterate_over_armor