execute if score @s exp.mech_right_dur matches 1 run function expansion:vehicles/mech/actions/righthand/rocket/init
execute if score @s exp.mech_right_dur matches 20 run tag @s add exp.mech.action.right.stop

execute if score @s exp.mech_right_dur matches 15 run function expansion:vehicles/mech/actions/righthand/rocket/launch