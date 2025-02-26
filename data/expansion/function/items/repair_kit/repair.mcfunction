scoreboard players set #temp exp.damage -10000
item modify entity @s armor.head expansion:space_equipment/damage
item modify entity @s armor.chest expansion:space_equipment/damage
item modify entity @s armor.legs expansion:space_equipment/damage
item modify entity @s armor.feet expansion:space_equipment/damage
scoreboard players reset #temp exp.damage

# deplete a charge
function expansion:items/repair_kit/use_charge