# get the current ammo of the cryoblaster and store it inside exp.ammo
execute store result score #temp exp.ammo run data get entity @s SelectedItem.components.minecraft:custom_data.ammo

execute unless score #temp exp.ammo matches 0.. run scoreboard players set #temp exp.ammo 0
