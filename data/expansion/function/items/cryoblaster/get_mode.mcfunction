scoreboard players set #temp exp.hold_value 0

# extract the current mode from the item
execute store result score #temp exp.hold_value run data get entity @s SelectedItem.components.minecraft:custom_data.mode

# set the ammo requirement for each mode
execute if score #temp exp.hold_value matches 0 run scoreboard players set #temp exp.hold_value_alt 1
execute if score #temp exp.hold_value matches 1 run scoreboard players set #temp exp.hold_value_alt 5
execute if score #temp exp.hold_value matches 2 run scoreboard players set #temp exp.hold_value_alt 10