# Merge the data of the target portal to the carrier armor stand and scale it accordingly.
execute store result entity @s Pos[0] double 10 run data get storage expansion:portal portal_out[0].x
execute store result entity @s Pos[1] double 1 run data get storage expansion:portal portal_out[0].y
execute store result entity @s Pos[2] double 10 run data get storage expansion:portal portal_out[0].z

# Teleport the player to the carrier armor stand. 
# Note that the teleportation is rotated as the carrier armor stand which was previously rotated as the target portal.
execute at @s as @p[tag=exp.teleported] run function expansion:blocks/portal/teleport/teleport

kill @s