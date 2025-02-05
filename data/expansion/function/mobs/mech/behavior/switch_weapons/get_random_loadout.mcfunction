# lefthand random
execute store result score #temp exp.math run random value 1..3
execute if score #temp exp.math matches 1 on passengers if entity @s[tag=exp.left_arm_control] run function expansion:vehicles/mech/actions/swing/equip
execute if score #temp exp.math matches 2 on passengers if entity @s[tag=exp.left_arm_control] run function expansion:vehicles/mech/actions/shoot/equip
execute if score #temp exp.math matches 3 on passengers if entity @s[tag=exp.left_arm_control] run function expansion:vehicles/mech/actions/rocket/equip

# righthand random
execute store result score #temp exp.math run random value 1..3
execute if score #temp exp.math matches 1 on passengers if entity @s[tag=exp.right_arm_control] run function expansion:vehicles/mech/actions/swing/equip
execute if score #temp exp.math matches 2 on passengers if entity @s[tag=exp.right_arm_control] run function expansion:vehicles/mech/actions/shoot/equip
execute if score #temp exp.math matches 3 on passengers if entity @s[tag=exp.right_arm_control] run function expansion:vehicles/mech/actions/rocket/equip