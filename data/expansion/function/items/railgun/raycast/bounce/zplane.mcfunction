scoreboard players set #temp exp.math 1800
execute store result score #temp2 exp.math run data get entity @s Rotation[0] 10.0

# flip the rotation
execute store result entity @s Rotation[0] float 0.1 run scoreboard players operation #temp exp.math -= #temp2 exp.math

function expansion:items/railgun/raycast/bounce/bounce