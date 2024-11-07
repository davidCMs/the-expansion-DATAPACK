# cube and sphere mode particles and oxygen logic
execute if score @s exp.counter_1 matches 0 positioned ~ ~0.5 ~ run function expansion:blocks/terraformer/sphere_mode
execute if score @s exp.counter_1 matches 1 positioned ~ ~0.5 ~ run function expansion:blocks/terraformer/cube_mode

# terraforming settings
execute if predicate expansion:periodic/10 if score @s exp.bool matches 1 at @s run function expansion:blocks/terraformer/terraform/main

# GUI and buttons
execute if entity @p[distance=..6] run function expansion:blocks/terraformer/player_nearby

# destory the block if the dropper at the base is removed
execute unless block ~ ~ ~ minecraft:dropper run function expansion:blocks/terraformer/destroy