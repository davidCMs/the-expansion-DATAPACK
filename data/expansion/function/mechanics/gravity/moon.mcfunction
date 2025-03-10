function expansion:mechanics/gravity/remove
attribute @s minecraft:gravity modifier add 284591 -0.83 add_multiplied_base
attribute @s minecraft:safe_fall_distance modifier add 284591 10 add_value

say moon apply

scoreboard players operation @s exp.gravity_id = #moon exp.gravity_id