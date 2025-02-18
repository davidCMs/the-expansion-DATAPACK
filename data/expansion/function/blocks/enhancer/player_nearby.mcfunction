execute unless items block ~ ~ ~ container.17 * run function expansion:blocks/enhancer/gui/buttons/enhance
execute unless items block ~ ~ ~ container.26 * run function expansion:blocks/enhancer/gui/buttons/remove

# gui
execute unless items block ~ ~ ~ container.10 *[minecraft:custom_data~{enhanceable:1b}] run function expansion:blocks/enhancer/gui/none
execute if items block ~ ~ ~ container.10 *[minecraft:custom_data~{enhanceable:1b}] run function expansion:blocks/enhancer/gui/main

# add or remove the helmet from the display if the player puts one in the container slot
execute if items block ~ ~ ~ container.10 *[minecraft:custom_data~{enhanceable:1b}] unless items entity @s contents * run function expansion:blocks/enhancer/display_helmet
execute unless items block ~ ~ ~ container.10 *[minecraft:custom_data~{enhanceable:1b}] if items entity @s contents * run function expansion:blocks/enhancer/remove_helmet

# rotate the display if an equipment is active
execute if items entity @s contents * run rotate @s ~-2 ~