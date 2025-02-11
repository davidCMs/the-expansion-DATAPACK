# cast a freeze ray as defined in the projectiles.
# set parameters (can be set externally thanks to the fakeplayer)
scoreboard players set #temp exp.max_range 100
scoreboard players set #temp exp.speed 3

execute summon marker run function expansion:projectiles/freeze_ray/cast