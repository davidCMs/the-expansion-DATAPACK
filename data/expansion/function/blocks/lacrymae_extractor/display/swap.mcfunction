data remove entity @s interaction
data remove entity @s attack

# take the obsidian if there is one
execute on vehicle on passengers if entity @s[tag=exp.extractor_display] if items entity @s container.0 * run function expansion:blocks/lacrymae_extractor/display/take_block

# put the crying obsidian into the block
execute on vehicle on passengers if entity @s[tag=exp.extractor_display] unless items entity @s container.0 * if items entity @p[tag=exp.clicked] weapon.mainhand crying_obsidian run function expansion:blocks/lacrymae_extractor/display/insert_block

# remove extracting tag
tag @s remove exp.took_extraction_block
