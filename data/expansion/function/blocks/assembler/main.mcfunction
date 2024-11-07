execute unless block ~ ~ ~ minecraft:barrel run function expansion:blocks/assembler/destroy

execute if entity @p[distance=..6] run function expansion:blocks/assembler/interaction

execute if score @s exp.timer_1 matches 1.. run function expansion:blocks/assembler/assembling