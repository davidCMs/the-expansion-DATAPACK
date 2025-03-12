# If the durability is depleted, add this damage to all suit pieces
execute if score #temp exp.health = #temp exp.max_health run function expansion:spacesuits/temperature_damage/damage_all

# Add the final damage to the current piece, based on the loop iteration. This damage score is merged to the item after the loop
execute if score #temp exp.counter_1 matches 1 run scoreboard players operation #head exp.damage += #temp exp.damage
execute if score #temp exp.counter_1 matches 2 run scoreboard players operation #chest exp.damage += #temp exp.damage
execute if score #temp exp.counter_1 matches 3 run scoreboard players operation #legs exp.damage += #temp exp.damage
execute if score #temp exp.counter_1 matches 4 run scoreboard players operation #feet exp.damage += #temp exp.damage