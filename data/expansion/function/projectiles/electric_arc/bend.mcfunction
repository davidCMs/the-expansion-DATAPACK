# choose a random action
execute store result score #temp exp.math run random value 1..4

# Either bend or branch the arc
execute if score #temp exp.math matches 1 run return run rotate @s ~20 ~
execute if score #temp exp.math matches 2 run return run rotate @s ~ ~20
execute if score #temp exp.math matches 3 run return run rotate @s ~-20 ~
execute if score #temp exp.math matches 4 run return run rotate @s ~ ~-20