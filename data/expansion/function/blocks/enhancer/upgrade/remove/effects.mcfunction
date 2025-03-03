# remove oxygen data
execute if data storage expansion:temp RemovedModule.components."minecraft:custom_data".oxygen_tank run function expansion:blocks/enhancer/upgrade/remove/oxygen_tank

# remove durability data
execute if data storage expansion:temp RemovedModule.components."minecraft:custom_data".max_damage store result entity @s item.components."minecraft:max_damage" int 1 run data get entity @s item.components."minecraft:custom_data".max_damage.base