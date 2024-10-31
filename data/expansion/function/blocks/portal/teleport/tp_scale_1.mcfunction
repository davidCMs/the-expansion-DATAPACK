execute store result score #origin exp.value run data get storage expansion:portal portal_out[-1].scale 10000
execute store result score #origin exp.x run data get storage expansion:portal portal_out[-1].x 100
execute store result score #origin exp.y run data get storage expansion:portal portal_out[-1].y 100
execute store result score #origin exp.z run data get storage expansion:portal portal_out[-1].z 100

execute store result score #dest exp.value run data get storage expansion:portal portal_out[0].scale 100
execute store result score #dest exp.x run data get storage expansion:portal portal_out[0].x 100
execute store result score #dest exp.y run data get storage expansion:portal portal_out[0].y 100
execute store result score #dest exp.z run data get storage expansion:portal portal_out[0].z 100

scoreboard players operation #origin exp.value /= #dest exp.value
scoreboard players operation #dest exp.x *= #origin exp.value
scoreboard players operation #dest exp.z *= #origin exp.value

execute store result entity @s Pos[0] double 0.01 run scoreboard players get #dest exp.x
execute store result entity @s Pos[1] double 0.01 run scoreboard players get #dest exp.y
execute store result entity @s Pos[2] double 0.01 run scoreboard players get #dest exp.z

execute at @s as @p[tag=exp.teleported] run function expansion:blocks/portal/teleport/teleport

kill @s