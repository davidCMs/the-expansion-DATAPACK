loot replace entity @s contents loot expansion:tools/oxygen_tanks/tier2/empty

# copy the recipe tanks stats to the new tank
data modify entity @s item.components."minecraft:custom_data".oxygen.lvl set from block ~ ~ ~ Items[{Slot:11b}].components."minecraft:custom_data".oxygen.lvl

# update the new tanks sprite and percentage
execute store result score #input exp.math run data get entity @s item.components."minecraft:custom_data".oxygen.lvl
execute store result score #max exp.math run data get entity @s item.components."minecraft:custom_data".oxygen.max
execute store result score #temp exp.percentage run function expansion:utilities/percentage

item modify entity @s container.0 expansion:oxygen_tank/merge_oxygen_percent_from_score
item modify entity @s container.0 expansion:oxygen_tank/merge_cmd_from_score

scoreboard players reset #temp exp.oxygen_percent