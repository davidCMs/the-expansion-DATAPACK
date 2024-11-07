data remove entity @s interaction
data remove entity @s attack

execute on vehicle if items entity @s container.0 * unless items entity @p weapon.mainhand * at @s run return run function expansion:blocks/enhancer/interaction/take_helmet

execute on vehicle if score #temp exp.bool matches 1 unless items entity @s container.0 * if items entity @p[tag=exp.clicked] armor.head carrot_on_a_stick[minecraft:custom_data~{space_equipment:1b}] at @s run return run function expansion:blocks/enhancer/interaction/insert_helmet

execute on vehicle unless items entity @s container.0 * if items entity @p[tag=exp.clicked] weapon.mainhand carrot_on_a_stick[minecraft:custom_data~{space_equipment:1b}] at @s run function expansion:blocks/enhancer/interaction/insert_helmet

scoreboard players reset #temp exp.bool

