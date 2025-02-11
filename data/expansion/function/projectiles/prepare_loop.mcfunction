# tp 5 blocks ahead while checking intersecting blocks, a raycast inside a slowcast if you will
# speed is the amount of blocks checked per tick
execute unless score @s exp.max_range matches 1.. run return run function expansion:projectiles/electric_arc/kill

scoreboard players operation #temp exp.speed = @s exp.speed

scoreboard players reset #temp exp.bool