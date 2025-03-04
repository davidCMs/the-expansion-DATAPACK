# if this has no equipment piece, set the default max health to 100
execute unless score #temp exp.max_health matches 1.. run scoreboard players set #temp exp.max_health 100

# calculate the percentage of damage, add one to fix rounding error
scoreboard players operation #temp exp.damage *= #100000 exp.const
scoreboard players operation #temp exp.damage /= #temp exp.max_health
scoreboard players add #temp exp.damage 1

# if the durability is depleted, or if there is no suit piece, damage all suit pieces
execute unless data storage expansion:temp armor[0].id run return run function expansion:spacesuits/temperature_damage/damage_all
execute if score #temp exp.health = #temp exp.max_health run return run function expansion:spacesuits/temperature_damage/damage_all

# deal this damage to this piece, based on the iteration of the loop
execute if score #temp exp.counter_1 matches 1 if items entity @s armor.head *[max_damage] run item modify entity @s armor.head expansion:space_equipment/damage
execute if score #temp exp.counter_1 matches 2 if items entity @s armor.chest *[max_damage] run item modify entity @s armor.chest expansion:space_equipment/damage
execute if score #temp exp.counter_1 matches 3 if items entity @s armor.legs *[max_damage] run item modify entity @s armor.legs expansion:space_equipment/damage
execute if score #temp exp.counter_1 matches 4 if items entity @s armor.feet *[max_damage] run item modify entity @s armor.feet expansion:space_equipment/damage