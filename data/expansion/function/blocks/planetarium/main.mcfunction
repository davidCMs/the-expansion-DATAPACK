execute unless block ~ ~ ~ minecraft:cobblestone run function expansion:blocks/planetarium/destroy/init

# iteratively determine the position of all the planets
execute if predicate expansion:periodic/20 at @s positioned ~ ~1.9 ~ on passengers if entity @s[tag=exp.planetarium_pivot] run function expansion:blocks/planetarium/spin/pivots

# particles
particle end_rod ~ ~3 ~ 5 5 5 0 1 normal