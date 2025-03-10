function expansion:mechanics/gravity/remove
attribute @s minecraft:gravity modifier add 284591 1.4 add_multiplied_base
attribute @s minecraft:safe_fall_distance modifier add 284591 10 add_value

scoreboard players operation @s exp.gravity_id = #jupiter exp.gravity_id