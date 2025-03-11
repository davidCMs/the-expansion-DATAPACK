# The ice caves are too cold until after mars
execute if biome ~ ~ ~ expansion:mars/ice_caves run return run scoreboard players set @s exp.temperature -8

# other biomes
scoreboard players set @s exp.temperature -5