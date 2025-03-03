# If your equipment doesn't have the tag but you are wearing it, equip it
execute if function expansion:spacesuits/equip/check_tags run function expansion:spacesuits/equip/main

# Apply set bonusses if the players wears a full set of armor of the same type (Before the durability calculation)
execute if predicate expansion:armor/all run function expansion:spacesuits/set_bonus/main

# Periodically loop through the armor pieces and re-calculate the durability, while also adding any temperature damage
execute if predicate expansion:periodic/10 run function expansion:spacesuits/integrity/main

# Display oxygen level and suit integrity in the actionbar, if the player wears a helmet
execute if predicate expansion:periodic/10 if predicate expansion:armor/head unless entity @s[tag=exp.inside_vehicle] run function expansion:spacesuits/actionbar

# rocket boots module
execute if items entity @s armor.feet *[custom_data~{ModStorage:[{components:{"minecraft:custom_data":{name:"exp.rocket_module"}}}]}] run function expansion:items/rocket_boots/main

# magnetic_boots 
#execute if predicate expansion:nbt_checks/armor/magnetic_boots run function expansion:items/magnetic_boots/main
#execute unless predicate expansion:nbt_checks/armor/magnetic_boots run tag @s[tag=exp.ignores_gravity_effects] remove exp.ignores_gravity_effects

execute if items entity @s armor.feet *[custom_data~{ModStorage:[{components:{"minecraft:custom_data":{name:"exp.magnetic_module"}}}]}] run function expansion:items/magnetic_boots/main
