loot replace block ~ ~ ~ container.14 loot expansion:items/gui/filler
data modify block ~ ~ ~ Items[{Slot:14b}] set from entity @s ArmorItems[3].components."minecraft:custom_data".ModStorage.righthand
data remove entity @s ArmorItems[3].components."minecraft:custom_data".ModStorage.righthand

execute on passengers if entity @s[tag=exp.right_arm_control] run function expansion:vehicles/mech/actions/punch/equip