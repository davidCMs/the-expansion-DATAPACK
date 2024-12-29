function expansion:mobs/drone_pet/structure_scan/initiate

execute if entity @s[tag=exp.located_structure] run function expansion:mobs/drone_pet/structure_scan/determine_direction

execute unless entity @s[tag=exp.located_structure] run function expansion:mobs/drone_pet/structure_scan/not_found
