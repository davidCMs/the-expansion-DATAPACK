# destroy the block if the dropper is gone
execute unless block ~ ~ ~ minecraft:dropper run function expansion:blocks/lacrymae_extractor/destroy

# extract lacrymae
execute if score @s exp.timer_1 matches 1.. run function expansion:blocks/lacrymae_extractor/extract/main

# GUI
execute if entity @p[distance=..6] run function expansion:blocks/lacrymae_extractor/gui
