advancement revoke @s only expansion:utility/extractor_rc
advancement revoke @s only expansion:utility/extractor_lc

tag @s add exp.clicked
execute as @n[type=minecraft:interaction,tag=exp.extractor.rcdet,nbt={interaction:{}},distance=..10] run function expansion:blocks/lacrymae_extractor/display/swap
execute as @n[type=minecraft:interaction,tag=exp.extractor.rcdet,nbt={attack:{}},distance=..10] run function expansion:blocks/lacrymae_extractor/display/swap
tag @s remove exp.clicked
