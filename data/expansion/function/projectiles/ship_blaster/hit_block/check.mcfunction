execute if score @s exp.unique_id matches 0 run function expansion:projectiles/ship_blaster/hit_block/regular
execute if score @s exp.unique_id matches 1 run function expansion:projectiles/ship_blaster/hit_block/digging
execute if score @s exp.unique_id matches 2 run function expansion:projectiles/ship_blaster/hit_block/gatling

kill @s