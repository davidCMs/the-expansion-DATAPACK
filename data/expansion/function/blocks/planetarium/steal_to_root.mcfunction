scoreboard players add #temp exp.counter_1 1

execute unless entity @s[tag=exp.planetarium_root] on vehicle on passengers if entity @s[type=snowball] on origin run function expansion:blocks/planetarium/steal_to_root

execute if entity @s[tag=exp.planetarium_root] run function expansion:blocks/planetarium/reset