# get the remaining durability (inverse of damage)
scoreboard players operation #temp exp.suit_integrity = #max exp.suit_integrity
scoreboard players operation #temp exp.suit_integrity -= #value exp.suit_integrity

#calculate the percentage
scoreboard players operation #input exp.math = #temp exp.suit_integrity
scoreboard players operation #max exp.math = #max exp.suit_integrity
execute store result score @s exp.suit_integrity run function expansion:utilities/percentage

# set the integrity to -1 if the player misses any armor pieces
execute unless items entity @s armor.head *[minecraft:custom_data~{exp_armor:1b}] run return run scoreboard players set @s exp.suit_integrity -1
execute unless items entity @s armor.chest *[minecraft:custom_data~{exp_armor:1b}] run return run scoreboard players set @s exp.suit_integrity -1
execute unless items entity @s armor.legs *[minecraft:custom_data~{exp_armor:1b}] run return run scoreboard players set @s exp.suit_integrity -1
execute unless items entity @s armor.feet *[minecraft:custom_data~{exp_armor:1b}] run return run scoreboard players set @s exp.suit_integrity -1