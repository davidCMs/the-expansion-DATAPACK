# mohe towards vehicle
#execute if score @e[type=minecraft:armor_stand,tag=exp.modstation,predicate=expansion:compare_score/modstation,limit=1] exp.timer_1 matches 1.. at @s run function expansion:blocks/modification_station/mod_robots/swarm_vehicle

# home towards their modstation
#execute if score @e[type=minecraft:armor_stand,tag=exp.modstation,predicate=expansion:compare_score/modstation,limit=1] exp.timer_1 matches 0 at @s run function expansion:blocks/modification_station/mod_robots/return_to_block

execute anchored eyes rotated ~ 0 facing ^ ^ ^ rotated as @s positioned ^ ^ ^20 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.1 ~ 0

execute if predicate expansion:chance/010_chance rotated as @s run rotate @s ~10 ~