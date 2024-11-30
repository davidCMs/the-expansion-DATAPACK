kill @n[type=item,nbt={Age:0s},distance=..2]
execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot expansion:blocks/modstation

execute on passengers if entity @s[tag=exp.modstation.bot_link] on origin on passengers run kill @s

execute on passengers if entity @s[tag=exp.modstation.vehicle_link] on origin run function expansion:blocks/modification_station/select_vehicle/deselect

execute on passengers if entity @s[tag=exp.modstation.bot_link] on origin run kill @s

execute on passengers run kill @s

kill @s
 