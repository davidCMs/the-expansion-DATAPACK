# enable this branch if this pivot is set for display
execute unless score #enable_branch exp.bool matches 1 if entity @s[tag=exp.planetarium_root] run scoreboard players set #enable_branch exp.bool 1

# spin the current pivot
execute if score #enable_branch exp.bool matches 1 at @s run function expansion:blocks/planetarium/spin/pivot_transform

# continue down the tree
execute rotated as @s on passengers if entity @s[type=snowball] on origin run function expansion:blocks/planetarium/spin/displays

# disable the branch upon returning at this node
execute if score #enable_branch exp.bool matches 1 if entity @s[tag=exp.planetarium_root] run scoreboard players reset #enable_branch exp.bool
