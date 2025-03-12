scoreboard players operation #temp exp.damage = #head exp.damage
execute store result score #temp exp.max_health run data get storage expansion:temp armor[0].components."minecraft:max_damage"
function expansion:spacesuits/temperature_damage/convert_to_percentage

item modify entity @s armor.head expansion:space_equipment/damage

scoreboard players reset #temp exp.damage
scoreboard players reset #head exp.damage
scoreboard players reset #temp exp.max_health