tag @s add exp.current_drone

execute on passengers on origin facing entity @s eyes as @e[type=item_display,tag=exp.current_drone,distance=..0.01,limit=1] positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^10 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.4 ~ ~

execute on passengers on origin if entity @s[distance=..8] run particle firework ~ ~ ~ 0 0 0 0 1

execute at @s if predicate expansion:chance/010_chance run rotate @s ~10 ~

tag @s remove exp.current_drone
