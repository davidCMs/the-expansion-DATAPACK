# add a chance that this branch is also able to branch
execute if predicate expansion:chance/050_chance run scoreboard players operation #temp exp.unique_id = @s exp.unique_id

# copy other parameters but decrease the max range
scoreboard players operation #temp exp.speed = @s exp.speed
scoreboard players operation #temp exp.max_range = @s exp.max_range
scoreboard players operation #temp exp.size_mod = @s exp.size_mod
scoreboard players operation #temp exp.size = @s exp.size
scoreboard players operation #temp exp.damage = @s exp.damage

# restrict the size of new branches
scoreboard players operation #temp exp.max_range /= #temp exp.size_mod
execute if score #temp exp.max_range > #temp exp.size run scoreboard players operation #temp exp.max_range = #temp exp.size

# cast
execute at @s summon marker run function expansion:projectiles/electric_arc/cast