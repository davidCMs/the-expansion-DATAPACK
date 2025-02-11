# consume a branch charge
scoreboard players remove @s exp.counter_1 1

# copy other parameters of the current branch
function expansion:projectiles/electric_arc/copy_parameters

# restrict the number of times that the child branch can branch to 1
scoreboard players set #temp exp.counter_1 1

# restrict the size of new branches
scoreboard players operation #temp exp.max_range /= #temp exp.size_mod
execute if score #temp exp.max_range > #temp exp.size run scoreboard players operation #temp exp.max_range = #temp exp.size

# cast
execute at @s summon marker run function expansion:projectiles/electric_arc/cast