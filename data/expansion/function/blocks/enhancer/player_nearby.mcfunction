# run UI and logic if te player is using te block
execute if block ~ ~ ~ barrel[open=true] run function expansion:blocks/enhancer/interaction

# remove the equipment from the display if there is no equipment in the block
execute unless items block ~ ~ ~ container.10 *[minecraft:custom_data~{exp.enhanceable:1b}] if items entity @s contents * run function expansion:blocks/enhancer/remove_helmet

# rotate the display if an equipment is active
execute if items entity @s contents * run rotate @s ~-2 ~