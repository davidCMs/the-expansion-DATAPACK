scoreboard players set #temp exp.damage -10000
execute if items entity @s armor.head *[custom_data~{exp_armor:{Slot:103b}}] run item modify entity @s armor.head expansion:space_equipment/damage
execute if items entity @s armor.chest *[custom_data~{exp_armor:{Slot:102b}}] run item modify entity @s armor.chest expansion:space_equipment/damage
execute if items entity @s armor.legs *[custom_data~{exp_armor:{Slot:101b}}] run item modify entity @s armor.legs expansion:space_equipment/damage
execute if items entity @s armor.feet *[custom_data~{exp_armor:{Slot:100b}}] run item modify entity @s armor.feet expansion:space_equipment/damage
scoreboard players reset #temp exp.damage

# deplete a charge
function expansion:items/repair_kit/use_charge