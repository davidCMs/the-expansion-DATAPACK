scoreboard players operation #temp exp.damage = #feet exp.damage
execute store result score #temp exp.max_health run data get storage expansion:temp armor[3].components."minecraft:max_damage"
function expansion:spacesuits/temperature_damage/convert_to_percentage

item modify entity @s armor.feet expansion:space_equipment/damage

scoreboard players reset #temp exp.damage
scoreboard players reset #feet exp.damage
scoreboard players reset #temp exp.max_health