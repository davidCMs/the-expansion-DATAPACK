advancement revoke @s only expansion:utility/portal_core_insert

## yanky with the interactions and slots but didnt have time to fix it, works well enough like this
tag @s add exp.takes_core
execute positioned ^ ^ ^3 at @n[type=interaction,tag=exp.portal_core_rcdet,nbt={interaction:{}},distance=..5] as @n[type=minecraft:item_display,tag=exp.core_port,distance=..1] if data entity @s item.components.minecraft:custom_data.portal_core run function expansion:blocks/portal/cores/take_core
execute if entity @s[tag=!exp.took_portal_core,predicate=expansion:nbt_checks/selected_item/items/portal_core] positioned ^ ^ ^2 at @n[type=interaction,tag=exp.portal_core_rcdet,nbt={interaction:{}},distance=..5] as @n[type=minecraft:item_display,tag=exp.core_port,distance=..1] unless data entity @s item.components.minecraft:custom_data.portal_core run function expansion:blocks/portal/cores/insert_core
data remove entity @n[type=interaction,tag=exp.portal_core_rcdet,nbt={interaction:{}},distance=..10] interaction
tag @s remove exp.took_portal_core
tag @s remove exp.takes_core