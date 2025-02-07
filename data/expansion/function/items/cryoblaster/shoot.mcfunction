# set parameters (can be set externally thanks to the fakeplayer)
scoreboard players set #temp exp.max_range 100
scoreboard players set #temp exp.speed 3

execute anchored eyes positioned ^ ^ ^2 summon marker run function expansion:projectiles/freeze_ray/cast

scoreboard players remove @s exp.ammo 2

tag @s add exp.used_ammo