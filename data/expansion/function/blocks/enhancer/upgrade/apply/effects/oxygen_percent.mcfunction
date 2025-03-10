# merge the oxygen percentage with the equipment
scoreboard players operation #input exp.math = #temp exp.oxygen_lvl
scoreboard players operation #max exp.math = #temp exp.oxygen_max
function expansion:utilities/percentage
item modify entity @s contents expansion:space_equipment/insert_oxygen_lore