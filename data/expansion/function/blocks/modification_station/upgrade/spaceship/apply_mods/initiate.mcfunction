# add a temporary tag to the ship display to make sure we select the correct ship
execute on passengers if entity @s[tag=exp.modstation.vehicle_link] on origin as @s on passengers run tag @s[tag=exp.spaceship_display] add exp.display_marker

# store any upgrades inside the armor stands head item and check if there is any
execute if items block ~ ~ ~ container.0 *[custom_data={fuel_mod:1b}] unless data entity @e[type=minecraft:item_display,tag=exp.display_marker,limit=1] item.components.minecraft:custom_data.ModStorage.fuel.id store success score @s exp.bool run data modify entity @s item.components.minecraft:custom_data.ModStorage.fuel set from block ~ ~ ~ Items[{Slot:0b}]
execute if items block ~ ~ ~ container.9 *[custom_data={blaster_mod:1b}] unless data entity @e[type=minecraft:item_display,tag=exp.display_marker,limit=1] item.components.minecraft:custom_data.ModStorage.blaster.id store success score @s exp.bool run data modify entity @s item.components.minecraft:custom_data.ModStorage.blaster set from block ~ ~ ~ Items[{Slot:9b}]
execute if items block ~ ~ ~ container.18 *[custom_data={speed_mod:1b}] unless data entity @e[type=minecraft:item_display,tag=exp.display_marker,limit=1] item.components.minecraft:custom_data.ModStorage.speed.id store success score @s exp.bool run data modify entity @s item.components.minecraft:custom_data.ModStorage.speed set from block ~ ~ ~ Items[{Slot:18b}]
execute if items block ~ ~ ~ container.5 *[custom_data={spaceship_skin:1b}] unless data entity @e[type=minecraft:item_display,tag=exp.display_marker,limit=1] item.components.minecraft:custom_data.ModStorage.skin.id run function expansion:blocks/modification_station/upgrade/spaceship/apply_mods/store_skin_cmd

# remove temporary tag
tag @e[type=item_display,tag=exp.display_marker] remove exp.display_marker