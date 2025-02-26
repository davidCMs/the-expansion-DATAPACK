# run UI and logic if te player is using te block
execute if block ~ ~ ~ barrel[open=true] run function expansion:blocks/enhancer/interaction

# remove the equipment from the display if there is no equipment in the block
execute unless items block ~ ~ ~ container.10 *[minecraft:custom_data~{exp.enhanceable:1b}] if items entity @s contents * run function expansion:blocks/enhancer/remove_helmet

# make sure the item in the entity is always the same as the block item
execute if items block ~ ~ ~ container.10 *[minecraft:custom_data~{exp.enhanceable:1b}] run item replace entity @s contents from block ~ ~ ~ container.10

# rotate the display if an equipment is active
execute if items entity @s contents * run rotate @s ~-2 ~

# gui
execute unless items entity @s contents *[minecraft:custom_data~{exp.enhanceable:1b}] run function expansion:blocks/enhancer/gui/none
execute if items entity @s contents *[minecraft:custom_data~{exp.enhanceable:1b}] run function expansion:blocks/enhancer/gui/main