scoreboard players add @s exp.timer_2 1

execute unless entity @s[tag=exp.activated_portal] run function expansion:blocks/portal/particles_start with entity @s ArmorItems[3].components.minecraft:custom_data.portal_array[0]

execute if score @s exp.timer_2 matches 40.. run function expansion:blocks/portal/activation/check_matches