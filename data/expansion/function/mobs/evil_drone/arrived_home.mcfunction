tag @s remove exp.home_too_far

execute store result score #temp exp.value run random value 0..3
execute if score #temp exp.value matches 0 run rotate @s ~30 ~
execute if score #temp exp.value matches 1 run rotate @s ~-30 ~
execute if score #temp exp.value matches 2 run rotate @s ~60 ~
execute if score #temp exp.value matches 3 run rotate @s ~-60 ~
