# store rotation data and assign it to a scoreboard value
execute store result score #angle exp.math run data get entity @s Rotation[0] 1
# add the offset determined by the controls
scoreboard players operation #angle exp.math += @s exp.yaw
# make sure the angle is always between -180..180
execute if score #angle exp.math matches 180.. run scoreboard players remove #angle exp.math 360
execute if score #angle exp.math matches ..-180 run scoreboard players add #angle exp.math 360
scoreboard players operation #input exp.math = #angle exp.math
# the sin approximation algorithm only works for angles between 0 and 180 so make any negative angles positive
# revert this later in the move function
execute unless score #input exp.math matches 0.. run scoreboard players operation #input exp.math *= #-1 exp.const

# set the default speed
scoreboard players set @s exp.speed 6

# calculate the motion vector
function expansion:vehicles/mech/propulsion/move

# rotate the root of the mech slowly with the player view
execute at @s on passengers on passengers if entity @s[type=player] anchored eyes rotated as @s on vehicle on vehicle run function expansion:vehicles/mech/propulsion/rotate_root

# face the legs to the direction of the motion, as saved inside a marker
execute on passengers if entity @s[type=marker] run function expansion:vehicles/mech/propulsion/rotate_legs

# prevent the mech from clipping inside walls
execute unless block ^ ^2.5 ^.9 #expansion:air run function expansion:vehicles/mech/propulsion/collision
execute unless block ^ ^2.5 ^-.7 #expansion:air rotated ~180 ~ run function expansion:vehicles/mech/propulsion/collision
execute unless block ^ ^3.5 ^.6 #expansion:air run function expansion:vehicles/mech/propulsion/collision
execute unless block ^ ^3.5 ^-.7 #expansion:air rotated ~180 ~ run function expansion:vehicles/mech/propulsion/collision

# going uphill (forwards and backwards)
execute unless block ^.35 ^ ^.35 #expansion:air if block ^.35 ^1 ^.35 #expansion:air run tp @s ^ ^1 ^0.05
execute unless block ^-.35 ^ ^.35 #expansion:air if block ^-.35 ^1 ^.35 #expansion:air run tp @s ^ ^1 ^0.05
execute unless block ^.35 ^ ^-.35 #expansion:air if block ^.35 ^1 ^-.35 #expansion:air run tp @s ^ ^1 ^-0.05
execute unless block ^-.35 ^ ^-.35 #expansion:air if block ^-.35 ^1 ^-.35 #expansion:air run tp @s ^ ^1 ^-0.05

# fall down
execute if block ^.35 ^-1 ^.35 #expansion:air if block ^-.35 ^-1 ^.35 #expansion:air if block ^.35 ^-1 ^-.35 #expansion:air if block ^-.35 ^-1 ^-.35 #expansion:air run tp @s ~ ~-1 ~