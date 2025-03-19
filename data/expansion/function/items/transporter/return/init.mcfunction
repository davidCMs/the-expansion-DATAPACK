# fill in the data
execute store result score #temp exp.x run data get storage expansion:temp returns[0].position.x
execute store result score #temp exp.y run data get storage expansion:temp returns[0].position.y
execute store result score #temp exp.z run data get storage expansion:temp returns[0].position.z
execute store result score #temp exp.dim_test run data get storage expansion:temp returns[0].dimension

# return the player
execute at @s summon minecraft:marker at @s run function expansion:items/transporter/return/finish

# remove the return entry
data remove storage expansion:temp returns[0]