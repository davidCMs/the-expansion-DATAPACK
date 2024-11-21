# gradually forceload all the required chunks
execute if score #generating exp.value matches 20 run forceload add ~-80 ~-80 ~-40 ~-40
execute if score #generating exp.value matches 25 run forceload add ~-40 ~-80 ~ ~-40
execute if score #generating exp.value matches 30 run forceload add ~ ~-80 ~40 ~-40
execute if score #generating exp.value matches 35 run forceload add ~40 ~-80 ~80 ~-40

execute if score #generating exp.value matches 40 run forceload add ~-80 ~-40 ~-40 ~
execute if score #generating exp.value matches 45 run forceload add ~-40 ~-40 ~ ~
execute if score #generating exp.value matches 50 run forceload add ~ ~-40 ~40 ~
execute if score #generating exp.value matches 55 run forceload add ~40 ~-40 ~80 ~

execute if score #generating exp.value matches 60 run forceload add ~-80 ~ ~-40 ~40
execute if score #generating exp.value matches 65 run forceload add ~-40 ~ ~ ~40
execute if score #generating exp.value matches 70 run forceload add ~ ~ ~40 ~40
execute if score #generating exp.value matches 75 run forceload add ~40 ~ ~80 ~40

execute if score #generating exp.value matches 80 run forceload add ~-80 ~40 ~-40 ~80
execute if score #generating exp.value matches 85 run forceload add ~-40 ~40 ~ ~80
execute if score #generating exp.value matches 90 run forceload add ~ ~40 ~40 ~80
execute if score #generating exp.value matches 95 run forceload add ~40 ~40 ~80 ~80