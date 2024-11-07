# store any upgrades inside the armor stands head item and check if there is any, don't overwrite existing upgrades
execute on passengers if entity @s[tag=exp.modstation.vehicle_link] on origin as @s if entity @s[tag=exp.mech] run data modify storage expansion:temp ModStorage set from entity @s ArmorItems[3].components.minecraft:custom_data.ModStorage

execute if items block ~ ~ ~ container.9 *[custom_data={hand_mod:1b}] unless data storage expansion:temp ModStorage.lefthand.id store success score @s exp.bool run data modify entity @s item.components.minecraft:custom_data.ModStorage.lefthand set from block ~ ~ ~ Items[{Slot:9b}]
execute if items block ~ ~ ~ container.14 *[custom_data={hand_mod:1b}] unless data storage expansion:temp ModStorage.righthand.id store success score @s exp.bool run data modify entity @s item.components.minecraft:custom_data.ModStorage.righthand set from block ~ ~ ~ Items[{Slot:14b}]

data remove storage expansion:temp ModStorage
