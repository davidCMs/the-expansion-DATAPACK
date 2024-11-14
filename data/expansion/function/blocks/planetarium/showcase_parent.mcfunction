# select the parent and make it the new root
execute on vehicle on passengers if entity @s[type=snowball] on origin run function expansion:blocks/planetarium/set_root

# run down the tree to scale the distance and size of all children accordingly
scoreboard players set #temp exp.bool -1
execute on passengers if entity @s[type=snowball] on origin run function expansion:blocks/planetarium/scale_branches
scoreboard players reset #temp exp.bool

# remove root status from self
function expansion:blocks/planetarium/reset