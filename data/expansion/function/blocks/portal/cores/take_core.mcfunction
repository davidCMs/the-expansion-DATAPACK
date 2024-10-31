execute if items entity @s container.0 *[minecraft:custom_data~{blue_core:1b}] run loot give @p[tag=exp.takes_core] loot expansion:items/portal_cores/portal_core_blue
execute if items entity @s container.0 *[minecraft:custom_data~{green_core:1b}] run loot give @p[tag=exp.takes_core] loot expansion:items/portal_cores/portal_core_green
execute if items entity @s container.0 *[minecraft:custom_data~{red_core:1b}] run loot give @p[tag=exp.takes_core] loot expansion:items/portal_cores/portal_core_red
execute if items entity @s container.0 *[minecraft:custom_data~{purple_core:1b}] run loot give @p[tag=exp.takes_core] loot expansion:items/portal_cores/portal_core_purple
execute if items entity @s container.0 *[minecraft:custom_data~{yellow_core:1b}] run loot give @p[tag=exp.takes_core] loot expansion:items/portal_cores/portal_core_yellow

item replace entity @s container.0 with minecraft:air
tag @p[tag=exp.takes_core] add exp.took_portal_core
execute as @n[type=minecraft:armor_stand,tag=exp.portal_main,distance=..5] run function expansion:blocks/portal/cores/remove_core_count