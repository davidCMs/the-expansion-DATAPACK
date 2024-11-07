function expansion:blocks/arc_furnace/melting/compare_output

execute if score @s exp.bool matches 0 if items block ~ ~ ~ container.7 * on passengers run function expansion:blocks/arc_furnace/melting/add_product
execute if score @s exp.bool matches 0 unless items block ~ ~ ~ container.7 * on passengers run function expansion:blocks/arc_furnace/melting/insert_product
execute if score @s exp.bool matches 0 on passengers run item replace entity @s container.0 with minecraft:air

execute if score @s exp.bool matches 1 run function expansion:blocks/arc_furnace/switch_model/turn_off