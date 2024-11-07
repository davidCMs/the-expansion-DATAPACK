# steel ingot
execute if items block ~ ~ ~ container.0 minecraft:raw_iron if items block ~ ~ ~ container.2 minecraft:coal on passengers run loot replace entity @s container.0 loot expansion:items/steel/steel_ingot
execute if items block ~ ~ ~ container.0 minecraft:iron_ingot if items block ~ ~ ~ container.2 minecraft:coal on passengers run loot replace entity @s container.0 loot expansion:items/steel/steel_ingot
execute if items block ~ ~ ~ container.0 minecraft:raw_iron if items block ~ ~ ~ container.2 minecraft:charcoal on passengers run loot replace entity @s container.0 loot expansion:items/steel/steel_ingot
execute if items block ~ ~ ~ container.0 minecraft:iron_ingot if items block ~ ~ ~ container.2 minecraft:charcoal on passengers run loot replace entity @s container.0 loot expansion:items/steel/steel_ingot
execute if items block ~ ~ ~ container.2 minecraft:raw_iron if items block ~ ~ ~ container.0 minecraft:coal on passengers run loot replace entity @s container.0 loot expansion:items/steel/steel_ingot
execute if items block ~ ~ ~ container.2 minecraft:iron_ingot if items block ~ ~ ~ container.0 minecraft:coal on passengers run loot replace entity @s container.0 loot expansion:items/steel/steel_ingot
execute if items block ~ ~ ~ container.2 minecraft:raw_iron if items block ~ ~ ~ container.0 minecraft:charcoal on passengers run loot replace entity @s container.0 loot expansion:items/steel/steel_ingot
execute if items block ~ ~ ~ container.2 minecraft:iron_ingot if items block ~ ~ ~ container.0 minecraft:charcoal on passengers run loot replace entity @s container.0 loot expansion:items/steel/steel_ingot

# amethonium ingot
execute if items block ~ ~ ~ container.0 minecraft:jigsaw[minecraft:custom_data~{raw_titanium:1b}] if items block ~ ~ ~ container.2 minecraft:amethyst_shard on passengers run loot replace entity @s container.0 loot expansion:items/materials/amethonium_ingot
execute if items block ~ ~ ~ container.2 minecraft:jigsaw[minecraft:custom_data~{raw_titanium:1b}] if items block ~ ~ ~ container.0 minecraft:amethyst_shard on passengers run loot replace entity @s container.0 loot expansion:items/materials/amethonium_ingot