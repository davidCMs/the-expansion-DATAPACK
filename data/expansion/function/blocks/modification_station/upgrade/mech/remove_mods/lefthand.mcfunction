loot replace block ~ ~ ~ container.9 loot expansion:items/gui/filler
data modify block ~ ~ ~ Items[{Slot:9b}] set from entity @s ArmorItems[3].components."minecraft:custom_data".ModStorage.lefthand
data remove entity @s ArmorItems[3].components."minecraft:custom_data".ModStorage.lefthand

execute on passengers if entity @s[tag=exp.left_arm_control] run function expansion:vehicles/mech/actions/punch/equip