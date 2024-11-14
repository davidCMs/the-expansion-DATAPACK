execute anchored eyes facing ~ ~ ~ positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^400 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^.08 ~1 ~

# randomness
execute if predicate expansion:chance/010_chance store result score #temp exp.value run random value 1..4
execute if score #temp exp.value matches 1 at @s run rotate @s ~1 ~
execute if score #temp exp.value matches 2 at @s run rotate @s ~-1 ~
execute if score #temp exp.value matches 3 at @s run rotate @s ~ ~1
execute if score #temp exp.value matches 4 at @s run rotate @s ~ ~-1

execute at @s[tag=exp.mini_meteor] run particle end_rod
execute at @s[tag=!exp.mini_meteor] run particle minecraft:dust{color:[0.000d,0.969d,1.000d],scale:0.5} ^ ^ ^-0.6 0 0 0 0 2 force