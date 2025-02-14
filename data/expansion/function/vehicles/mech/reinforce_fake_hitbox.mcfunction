# prevent the mech from clipping inside walls
execute unless block ^ ^2.5 ^.9 #expansion:air run function expansion:vehicles/mech/propulsion/collision
execute unless block ^ ^2.5 ^-.7 #expansion:air rotated ~180 ~ run function expansion:vehicles/mech/propulsion/collision
execute unless block ^ ^3.5 ^.6 #expansion:air run function expansion:vehicles/mech/propulsion/collision
execute unless block ^ ^3.5 ^-.7 #expansion:air rotated ~180 ~ run function expansion:vehicles/mech/propulsion/collision

# going uphill (forwards and backwards)
execute unless block ^.35 ^ ^.35 #expansion:air if block ^.35 ^1 ^.35 #expansion:air if block ^ ^1 ^0.05 #expansion:air run tp @s ^ ^1 ^0.05
execute unless block ^-.35 ^ ^.35 #expansion:air if block ^-.35 ^1 ^.35 #expansion:air if block ^ ^1 ^0.05 #expansion:air run tp @s ^ ^1 ^0.05
execute unless block ^.35 ^ ^-.35 #expansion:air if block ^.35 ^1 ^-.35 #expansion:air if block ^ ^1 ^-0.05 #expansion:air run tp @s ^ ^1 ^-0.05
execute unless block ^-.35 ^ ^-.35 #expansion:air if block ^-.35 ^1 ^-.35 #expansion:air if block ^ ^1 ^-0.05 #expansion:air run tp @s ^ ^1 ^-0.05
