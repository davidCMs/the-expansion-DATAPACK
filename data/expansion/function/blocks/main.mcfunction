## global block logic
# check if a player is nearby
tag @s[tag=exp.player_nearby] remove exp.player_nearby
execute if entity @p[distance=..6] run tag @s add exp.player_nearby
# toggle the barrel for barrel UI blocks
execute if block ~ ~ ~ minecraft:barrel if entity @s[tag=exp.player_nearby] run function expansion:utilities/barrel/toggle_open

## specific block logic
# terraformer
execute if entity @s[tag=exp.terraformer] run return run function expansion:blocks/terraformer/main
# lacrymae extractor
execute if entity @s[tag=exp.lacrymae_extractor] if entity @p[distance=..50] run return run function expansion:blocks/lacrymae_extractor/main
# planetarium
execute if entity @s[tag=exp.planetarium] if entity @p[distance=..50] run return run function expansion:blocks/planetarium/main
# compressor
execute if entity @s[tag=exp.compressor] if entity @p[distance=..50] run return run function expansion:blocks/compressor/main
# enhancer
execute if entity @s[tag=exp.enhancer] if entity @p[distance=..50] run return run function expansion:blocks/enhancer/main
# arc furnace
execute if entity @s[tag=exp.arc_furnace] if entity @p[distance=..50] run return run function expansion:blocks/arc_furnace/main
# fabricator
execute if entity @s[tag=exp.fabricator] if entity @p[distance=..50] run return run function expansion:blocks/fabricator/main
# oxygenator
execute if entity @s[tag=exp.oxygenator] run return run function expansion:blocks/oxygenator/main
# assembler
execute if entity @s[tag=exp.assembler] if entity @p[distance=..50] run return run function expansion:blocks/assembler/main
# portal
execute if entity @s[tag=exp.portal] if entity @p[distance=..50] at @s run return run function expansion:blocks/portal/main
# tesla coil
execute if entity @s[tag=exp.tesla_coil] if entity @p[distance=..50] run return run function expansion:blocks/tesla_coil/main
# modification station
execute if entity @s[tag=exp.modstation] if entity @p[distance=..50] run return run function expansion:blocks/modification_station/main
# modification station
execute if entity @s[tag=exp.planetarium] if entity @p[distance=..50] run return run function expansion:blocks/planetarium/main
# drone home
execute if entity @s[tag=exp.drone_home] at @s run return run function expansion:mobs/evil_drone/drone_home/main

# tag blocks that are not an expansion entity so they're not checked again
tag @s add exp.ignore.blocks