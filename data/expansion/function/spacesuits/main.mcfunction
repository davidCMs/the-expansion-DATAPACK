# if your equipment doesn't have the tag but you are wearing it, equip it
execute if function expansion:spacesuits/equip/check_tags run function expansion:spacesuits/equip/main

# rocket boots
execute if predicate expansion:nbt_checks/armor/rocket_boots unless predicate expansion:dimension/zero_gravity run function expansion:items/rocket_boots/main

# magnetic_boots 
execute if predicate expansion:nbt_checks/armor/magnetic_boots run function expansion:items/magnetic_boots/main
execute unless predicate expansion:nbt_checks/armor/magnetic_boots run tag @s[tag=exp.ignores_gravity_effects] remove exp.ignores_gravity_effects
