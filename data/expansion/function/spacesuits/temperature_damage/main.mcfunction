# check if the equipment is resistant enough and calculate the damage
execute if score @s exp.temperature matches ..-1 run function expansion:spacesuits/temperature_damage/check_cold
execute if score @s exp.temperature matches 1.. run function expansion:spacesuits/temperature_damage/check_heat