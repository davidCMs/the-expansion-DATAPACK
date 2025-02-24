# 
data modify storage expansion:temp ModStorage set from entity @s item.components."minecraft:custom_data".ModStorage
execute if score @s exp.hold_value matches 1 on passengers if entity @s[tag=exp.modstation.vehicle_link] on origin on passengers if entity @s[tag=exp.spaceship_display] run function expansion:blocks/modification_station/upgrade/spaceship/apply_mods/apply_upgrade
execute if score @s exp.hold_value matches 2 on passengers if entity @s[tag=exp.modstation.vehicle_link] on origin run function expansion:blocks/modification_station/upgrade/mech/apply_mods/apply_upgrade
execute if score @s exp.hold_value matches 3 on passengers if entity @s[tag=exp.modstation.vehicle_link] on origin run function expansion:blocks/modification_station/upgrade/buggy/apply_mods/apply_upgrade
data remove entity @s item.components."minecraft:custom_data".ModStorage
data remove storage expansion:temp ModStorage

# 
data modify storage expansion:owner data.current_UUID set from entity @s UUID
execute on passengers if entity @s[tag=exp.modstation.bot_link] on origin on passengers run function expansion:utilities/snowball_link/link_from_storage

# 
scoreboard players reset @s exp.timer_1
tag @s remove exp.modifying_vehicle