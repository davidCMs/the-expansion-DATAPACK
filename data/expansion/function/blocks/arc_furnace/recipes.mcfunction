# steel ingot
execute if items block ~ ~ ~ container.0 #expansion:iron if items block ~ ~ ~ container.2 #expansion:coal on passengers run loot replace entity @s container.0 loot expansion:items/steel/steel_ingot
execute if items block ~ ~ ~ container.0 #expansion:coal if items block ~ ~ ~ container.2 #expansion:iron on passengers run loot replace entity @s container.0 loot expansion:items/steel/steel_ingot

# amethonium ingot
execute if items block ~ ~ ~ container.0 minecraft:amethyst_shard if items block ~ ~ ~ container.2 minecraft:jigsaw[minecraft:custom_data~{raw_titanium:1b}] on passengers run loot replace entity @s container.0 loot expansion:items/materials/amethonium_ingot
execute if items block ~ ~ ~ container.2 minecraft:amethyst_shard if items block ~ ~ ~ container.0 minecraft:jigsaw[minecraft:custom_data~{raw_titanium:1b}] on passengers run loot replace entity @s container.0 loot expansion:items/materials/amethonium_ingot