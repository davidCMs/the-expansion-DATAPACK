execute positioned ~ ~8 ~ anchored eyes rotated ~ 0 facing ^ ^ ^ rotated as @s positioned ^ ^ ^30 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run rotate @s ~ ~

execute if predicate expansion:chance/010_chance rotated as @s run rotate @s ~10 ~
execute if predicate expansion:chance/010_chance rotated as @s run rotate @s ~-10 ~

execute positioned ~ ~8 ~ if entity @s[distance=..4] at @s run tp @s ^ ^ ^0.3
execute positioned ~ ~8 ~ if entity @s[distance=4..] at @s run tp @s ^ ^ ^0.4
