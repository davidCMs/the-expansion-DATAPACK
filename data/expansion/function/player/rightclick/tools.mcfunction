# oxygen system
execute if predicate expansion:nbt_checks/selected_item/items/oxygen_tank if predicate expansion:armor/all if items entity @s armor.* *[custom_data~{ModStorage:[{components:{"minecraft:custom_data":{oxygen_tank:1b}}}]}] run return run function expansion:items/oxygen_tank/init
# cryoblaster
execute if predicate expansion:nbt_checks/selected_item/items/cryoblaster unless entity @s[tag=exp.inside_vehicle] run return run function expansion:items/cryoblaster/use
# fleet finder
execute if predicate expansion:nbt_checks/selected_item/items/fleet_finder run return run function expansion:items/fleet_finder/find
# railgun
execute if predicate expansion:nbt_checks/selected_item/items/railgun unless score @s[tag=!exp.inside_vehicle] exp.warmup matches 1.. unless score @s exp.cooldown matches 1.. run return run function expansion:items/railgun/main
# arc_thrower
execute if predicate expansion:nbt_checks/selected_item/items/arc_thrower run function expansion:items/arc_thrower/use
# blaster
execute if predicate expansion:nbt_checks/selected_item/items/blaster run function expansion:items/blaster/use
# pet drone
execute if predicate expansion:nbt_checks/selected_item/items/pet_drone if entity @s[tag=!exp.has_active_drone,tag=!exp.inside_vehicle] run return run function expansion:mobs/drone_pet/summon/init