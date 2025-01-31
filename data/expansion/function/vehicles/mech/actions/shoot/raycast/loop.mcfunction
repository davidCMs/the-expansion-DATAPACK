# tp 5 blocks ahead while checking intersecting blocks, a raycast inside a slowcast if you will
# speed is the amount of blocks checked per tick
scoreboard players set @s exp.speed 8
scoreboard players reset #temp exp.bool

function expansion:vehicles/mech/actions/shoot/raycast/loop_loop

execute unless score @s exp.max_range matches 1.. run kill @s
