execute if predicate expansion:periodic/10 unless entity @s[tag=exp.activated_portal] positioned ~ ~-1 ~ run function expansion:blocks/portal/particles_start with entity @s item.components.minecraft:custom_data.portal_array[0]

execute if predicate expansion:periodic/40 run function expansion:blocks/portal/activation/check_matches