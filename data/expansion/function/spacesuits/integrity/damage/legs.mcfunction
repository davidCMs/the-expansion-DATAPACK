scoreboard players operation #temp exp.damage = #legs exp.damage
execute store result score #temp exp.max_health run data get storage expansion:temp armor[2].components."minecraft:max_damage"
function expansion:spacesuits/temperature_damage/convert_to_percentage

item modify entity @s armor.legs expansion:space_equipment/damage

scoreboard players reset #temp exp.damage
scoreboard players reset #legs exp.damage
scoreboard players reset #temp exp.max_health