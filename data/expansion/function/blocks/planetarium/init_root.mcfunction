# run through all other pivots up the tree and remove their root status
scoreboard players set #temp exp.counter_1 -1
execute on vehicle on passengers if entity @s[type=snowball] on origin run function expansion:blocks/planetarium/steal_to_root

# run down the tree to scale the distance and size of all children accordingly
# 1 for upscaling, -1 for downscaling
scoreboard players set #temp exp.bool 1
execute on passengers if entity @s[type=snowball] on origin run function expansion:blocks/planetarium/scale_branches
scoreboard players reset #temp exp.bool

# make this the new root
function expansion:blocks/planetarium/set_root