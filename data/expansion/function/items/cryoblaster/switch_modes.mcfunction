# extract the current mode from the item
execute store result score #temp exp.hold_value run data get entity @s SelectedItem.components.minecraft:custom_data.mode
# increment and loop its value between 1 and 3
scoreboard players add #temp exp.hold_value 1
execute if score #temp exp.hold_value matches 3 run scoreboard players set #temp exp.hold_value 0

# store the value inside a storage
execute store result storage expansion:mode data.mode byte 1 run scoreboard players get #temp exp.hold_value

# merge the mode name with the item name
execute if score #temp exp.hold_value matches 0 run item modify entity @s weapon.mainhand expansion:cryoblaster/mode1
execute if score #temp exp.hold_value matches 1 run item modify entity @s weapon.mainhand expansion:cryoblaster/mode2
execute if score #temp exp.hold_value matches 2 run item modify entity @s weapon.mainhand expansion:cryoblaster/mode3

# reset temp score
scoreboard players reset #temp exp.hold_value