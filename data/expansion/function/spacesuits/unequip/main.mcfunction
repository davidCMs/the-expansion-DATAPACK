## The unequip function sets any unexp_armor.equipped item to exp_armor.equipped:0b and re-evaluates the players armor effects

# if there is an item in the player cursor (only works in survival for some reason), also unequip it
execute if items entity @s player.cursor *[minecraft:custom_data~{exp_armor.equipped:1b}] run return run function expansion:spacesuits/unequip/reset_cursor

function expansion:spacesuits/unequip/reset_armor