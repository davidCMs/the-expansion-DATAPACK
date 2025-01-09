# store the movement rotation into an entity rotation so the mech legs know where to turn to
# revert for walking backwards as we have a backwards animation
execute on vehicle unless score @s exp.yaw matches -90..90 run scoreboard players add #angle exp.math 180
execute store result entity @s Rotation[0] float 1 run scoreboard players get #angle exp.math
execute rotated as @s on vehicle on passengers if entity @s[tag=aj.mech_legs.root] positioned ^ ^ ^8 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run rotate @s ~ 0
