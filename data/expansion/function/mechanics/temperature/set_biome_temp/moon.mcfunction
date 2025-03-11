# The ice caves are too cold until after mars
execute if biome ~ ~ ~ expansion:moon/ice_lake_caves run return run scoreboard players set @s exp.temperature -8

# all other moon biomes have a temperature that is perfectly balanced by 1 warming module
scoreboard players set @s exp.temperature -2