scoreboard players reset #temp exp.heat_resist
scoreboard players reset #temp exp.cold_resist
scoreboard players reset #temp exp.oxygen_lvl
scoreboard players reset #temp exp.oxygen_max

# reset durability (needs special treatment because it actually changes the items max_damage)
scoreboard players set #temp exp.max_health 0
execute store result entity @s item.components."minecraft:max_damage" int 1 run data get entity @s item.components."minecraft:custom_data".max_damage.base

execute store result score #apply_module exp.max_range run data get storage expansion:temp ModStorage
function expansion:blocks/enhancer/upgrade/apply/effects/storage_loop
scoreboard players reset #apply_module exp.max_range

# apply the oxygen scores on chestplates (could be better but don't want to overengineer)
execute if items entity @s contents *[custom_data~{exp_armor.chestplate:1b}] run function expansion:blocks/enhancer/upgrade/apply/effects/oxygen_percent

# apply the cold resistance modifiers
function expansion:blocks/enhancer/upgrade/apply/effects/cold_resist

# apply heat resistance modifiers
function expansion:blocks/enhancer/upgrade/apply/effects/heat_resist

# apply durability modifiers
function expansion:blocks/enhancer/upgrade/apply/effects/durability
