tp @s ^ ^ ^0.4 ~ ~

# apply a random chance to turn a bit to make some random behavior
execute at @s if predicate expansion:chance/005_chance run rotate @s ~10 ~
execute at @s if predicate expansion:chance/005_chance run rotate @s ~-10 ~

execute at @s if predicate expansion:chance/005_chance run rotate @s ~ ~1
execute at @s if predicate expansion:chance/005_chance run rotate @s ~ ~-1
