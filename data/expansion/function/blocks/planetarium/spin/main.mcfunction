# iteratively determine the position of all the planets
execute at @s positioned ~ ~1.9 ~ on passengers if entity @s[tag=exp.planetarium_pivot] run function expansion:blocks/planetarium/spin/pivots

# particles
particle end_rod ~ ~3 ~ 5 5 5 0 1 normal