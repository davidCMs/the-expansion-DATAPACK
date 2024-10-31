item replace entity @s container.0 from entity @p weapon.mainhand expansion:portal/count_to_1

function expansion:blocks/portal/cores/detect_color

execute store result score @s exp.hold_count run data get entity @p SelectedItem.count
scoreboard players operation @s exp.hold_count -= #1 exp.const

execute if score @s exp.hold_count matches 1.. run item replace entity @p weapon.mainhand from entity @p weapon.mainhand expansion:utility/set_count_from_score
execute if score @s exp.hold_count matches 0 run item replace entity @p weapon.mainhand with minecraft:air

# exp.hold_value keeps track of core count
execute as @n[type=minecraft:armor_stand,tag=exp.portal_main,distance=..5] run function expansion:blocks/portal/cores/add_core_count

playsound expansion:portal.insert_core block @a[distance=..10] ~ ~ ~ 1 1 0