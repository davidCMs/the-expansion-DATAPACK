## Tools you can activate in vehicles
# oxygen system
execute if predicate expansion:nbt_checks/selected_item/items/oxygen_tank if predicate expansion:armor/any if items entity @s armor.* *[custom_data~{ModStorage:[{components:{"minecraft:custom_data":{oxygen_tank:1b}}}]}] run return run function expansion:items/oxygen_tank/init
# fleet finder
execute if predicate expansion:nbt_checks/selected_item/items/fleet_finder run return run function expansion:items/fleet_finder/find

## Tools you can't activate inside vehicles
execute if entity @s[tag=exp.inside_vehicle] run return fail

# pet drone
execute if predicate expansion:nbt_checks/selected_item/items/pet_drone unless entity @s[tag=exp.has_active_drone] run return run function expansion:mobs/drone_pet/summon/init
# railgun
execute if predicate expansion:nbt_checks/selected_item/items/railgun unless score @s exp.warmup matches 1.. unless score @s exp.cooldown matches 1.. run return run function expansion:items/railgun/main
# cryoblaster
execute if predicate expansion:nbt_checks/selected_item/items/cryoblaster run return run function expansion:items/cryoblaster/use
# arc_thrower
execute if predicate expansion:nbt_checks/selected_item/items/arc_thrower run function expansion:items/arc_thrower/use
# blaster
execute if predicate expansion:nbt_checks/selected_item/items/blaster run function expansion:items/blaster/use