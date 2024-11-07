function expansion:blocks/arc_furnace/melting/compare_output

execute if items block ~ ~ ~ container.7 * if score @s exp.bool matches 0 run function expansion:blocks/arc_furnace/melting/start_melting
execute unless items block ~ ~ ~ container.7 * run return run function expansion:blocks/arc_furnace/melting/start_melting