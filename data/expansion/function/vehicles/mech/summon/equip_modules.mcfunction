execute unless score @s exp.mech_action_id matches 1.. run function expansion:vehicles/mech/actions/punch/equip
execute if score @s exp.mech_action_id matches 1 run function expansion:vehicles/mech/actions/swing/equip
execute if score @s exp.mech_action_id matches 2 run function expansion:vehicles/mech/actions/shoot/equip
execute if score @s exp.mech_action_id matches 3 run function expansion:vehicles/mech/actions/rocket/equip
execute if score @s exp.mech_action_id matches 4 run function expansion:vehicles/mech/actions/drill/equip