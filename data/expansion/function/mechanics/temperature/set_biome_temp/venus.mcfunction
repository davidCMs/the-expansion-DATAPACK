# The ice caves are too cold until after mars
execute if biome ~ ~ ~ expansion:mars/ice_caves run return run scoreboard players set @s exp.temperature -12

# all other moon biomes have a temperature that is perfectly balanced by 4 warming modules
scoreboard players set @s exp.temperature 12