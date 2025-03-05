item modify entity @s player.cursor {"function": "minecraft:set_custom_data",tag:{exp_armor.equipped:0b}}

# Re-evaluate the entire armor set scores
function expansion:spacesuits/get_armor_modules/main

# remove storage entries
data remove storage expansion:temp equipment