execute unless items block ~ ~ ~ container.1 * run function expansion:blocks/enhancer/gui/buttons/enhance
execute unless items block ~ ~ ~ container.7 * run function expansion:blocks/enhancer/gui/buttons/remove

# add or remove the helmet from the display if the player puts one in the container slot
execute if items block ~ ~ ~ container.5 carrot_on_a_stick[minecraft:custom_data~{space_equipment:1b}] unless items entity @s container.0 * run function expansion:blocks/enhancer/display_helmet
execute unless items block ~ ~ ~ container.5 carrot_on_a_stick[minecraft:custom_data~{space_equipment:1b}] if items entity @s container.0 * run function expansion:blocks/enhancer/remove_helmet

# rotate the display if an equipment is active
execute if items entity @s container.10 * run rotate @s ~-2 ~

execute unless items block ~ ~ ~ container.10 * run return run function expansion:blocks/enhancer/gui/none
function expansion:blocks/enhancer/gui/main