function expansion:blocks/portal/deactivation/search_match_id
execute as @n[type=minecraft:item_display,tag=exp.port_1,distance=..3] at @s run function expansion:blocks/portal/assembly/destroy_portal/retrieve_cores
execute as @n[type=minecraft:item_display,tag=exp.port_2,distance=..3] at @s run function expansion:blocks/portal/assembly/destroy_portal/retrieve_cores
execute as @n[type=minecraft:item_display,tag=exp.port_3,distance=..3] at @s run function expansion:blocks/portal/assembly/destroy_portal/retrieve_cores
execute as @n[type=minecraft:item_display,tag=exp.port_4,distance=..3] at @s run function expansion:blocks/portal/assembly/destroy_portal/retrieve_cores
execute as @n[type=minecraft:item_display,tag=exp.port_5,distance=..3] at @s run function expansion:blocks/portal/assembly/destroy_portal/retrieve_cores

loot give @p loot expansion:blocks/portal
fill ^-1 ^-1 ^ ^1 ^-1 ^ minecraft:air replace minecraft:barrier

kill @n[type=minecraft:interaction,tag=exp.portal_rcdet]
kill @e[type=minecraft:item_display,tag=exp.portal_stand,limit=5,sort=nearest]
kill @e[type=minecraft:interaction,tag=exp.portal_core_rcdet,limit=5,sort=nearest]
kill @n[type=minecraft:item_display,tag=exp.portal_display]
kill @s