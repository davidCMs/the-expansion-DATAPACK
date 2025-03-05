execute if score @s exp.hold_value_alt matches 1 run loot give @p loot expansion:items/portal_core_blue
execute if score @s exp.hold_value_alt matches 2 run loot give @p loot expansion:items/portal_core_green
execute if score @s exp.hold_value_alt matches 3 run loot give @p loot expansion:items/portal_core_red
execute if score @s exp.hold_value_alt matches 4 run loot give @p loot expansion:items/portal_core_purple
execute if score @s exp.hold_value_alt matches 5 run loot give @p loot expansion:items/portal_core_yellow

item replace entity @s container.0 with minecraft:air

#scoreboard players reset @s exp.hold_value_alt

execute on vehicle at @s run function expansion:blocks/portal/cores/remove_core_count