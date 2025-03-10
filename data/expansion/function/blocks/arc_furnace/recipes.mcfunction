# steel ingot
execute if items block ~ ~ ~ container.0 #expansion:iron if items block ~ ~ ~ container.2 #expansion:coal on passengers run loot replace entity @s container.0 loot expansion:items/steel_ingot
execute if items block ~ ~ ~ container.0 #expansion:coal if items block ~ ~ ~ container.2 #expansion:iron on passengers run loot replace entity @s container.0 loot expansion:items/steel_ingot

# amethonium ingot
execute if items block ~ ~ ~ container.0 minecraft:amethyst_shard if items block ~ ~ ~ container.2 minecraft:jigsaw[minecraft:custom_data~{exp_item:{name:"raw_titanium"}}] on passengers run loot replace entity @s container.0 loot expansion:items/amethonium_ingot
execute if items block ~ ~ ~ container.2 minecraft:amethyst_shard if items block ~ ~ ~ container.0 minecraft:jigsaw[minecraft:custom_data~{exp_item:{name:"raw_titanium"}}] on passengers run loot replace entity @s container.0 loot expansion:items/amethonium_ingot