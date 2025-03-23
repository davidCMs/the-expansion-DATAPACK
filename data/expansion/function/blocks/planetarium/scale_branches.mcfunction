scoreboard players add #temp exp.counter_1 1

# scale up
execute if score #temp exp.bool matches 1 run scoreboard players operation @s exp.distance_mod *= #temp exp.counter_1
execute if score #temp exp.bool matches 1 run scoreboard players operation @s exp.size_mod *= #temp exp.counter_1
# scale down
execute if score #temp exp.bool matches -1 run scoreboard players operation @s exp.distance_mod /= #temp exp.counter_1
execute if score #temp exp.bool matches -1 run scoreboard players operation @s exp.size_mod /= #temp exp.counter_1

scoreboard players operation #temp exp.size = @s exp.size
function expansion:blocks/planetarium/set_size

# count the iterations to scale accordingly
# the moon startes at 2
# earth startes at 1
execute on passengers if entity @s[tag=exp.planetarium_pivot] on passengers if entity @s[type=snowball] on origin run function expansion:blocks/planetarium/scale_branches
scoreboard players reset #temp exp.counter_1