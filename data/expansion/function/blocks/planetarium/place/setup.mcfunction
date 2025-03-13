setblock ~ ~ ~ minecraft:cobblestone{CustomName:'{"translate":"exp_blocks_planetarium_name","color":"dark_gray"}'} replace

# place the main block
tag @s add exp.block
tag @s add exp.planetarium_part
tag @s add smithed.block

# prepare all the pivots
execute on passengers if entity @s[tag=exp.planetarium_pivot] run function expansion:blocks/planetarium/prepare/pivots

# assemble a tree structure
function expansion:blocks/planetarium/prepare/assemble_hierarchy