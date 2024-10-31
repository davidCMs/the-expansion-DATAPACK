execute store result entity @s Pos[0] double 1 run data get storage expansion:portal portal_out[0].x
execute store result entity @s Pos[1] double 1 run data get storage expansion:portal portal_out[0].y
execute store result entity @s Pos[2] double 1 run data get storage expansion:portal portal_out[0].z

execute at @s as @p[tag=exp.teleported] run function expansion:blocks/portal/teleport/teleport

kill @s