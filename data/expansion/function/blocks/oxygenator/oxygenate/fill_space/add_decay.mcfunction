# flow control
execute if score #temp exp.counter_2 matches 40.. run return fail
scoreboard players add #temp exp.counter_2 1
scoreboard players set @s exp.delay 5

# give oxygen to nearby players
execute on origin run function expansion:blocks/oxygenator/oxygenate/oxygen_link/init

# remove markers that have no active neighbours
scoreboard players reset #temp exp.bool
execute on origin at @s unless function expansion:blocks/oxygenator/oxygenate/fill_space/has_neighbours run scoreboard players set #temp exp.bool 1
execute if score #temp exp.bool matches 1 run function expansion:blocks/oxygenator/oxygenate/fill_space/remove_link
scoreboard players reset #temp exp.bool