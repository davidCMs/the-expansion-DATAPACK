execute unless items block ~ ~ ~ container.17 * run function expansion:blocks/enhancer/gui/buttons/enhance
execute unless items block ~ ~ ~ container.26 * run function expansion:blocks/enhancer/gui/buttons/remove

# add the equipment to the display if there is one in the block
execute if items block ~ ~ ~ container.10 *[minecraft:custom_data~{exp.enhanceable:1b}] unless items entity @s contents * run function expansion:blocks/enhancer/display_helmet