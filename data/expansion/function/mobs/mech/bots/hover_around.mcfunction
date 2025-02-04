execute positioned ~ ~2 ~ anchored eyes rotated ~ 0 facing ^ ^ ^ rotated as @s positioned ^ ^ ^30 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run rotate @s ~ ~

execute if predicate expansion:chance/010_chance rotated as @s run rotate @s ~10 ~
execute if predicate expansion:chance/010_chance rotated as @s run rotate @s ~-10 ~

execute at @s run particle end_rod
execute at @s run particle campfire_cosy_smoke ~ ~ ~ 0 0 0 0.01 2
execute at @s run particle firework

execute at @s run tp @s ^ ^ ^0.4
