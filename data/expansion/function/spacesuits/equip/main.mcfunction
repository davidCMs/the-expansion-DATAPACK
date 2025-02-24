execute if items entity @s armor.head *[minecraft:custom_data~{exp_armor:1b,equipped:0b}] unless data storage expansion:temp equipment run function expansion:spacesuits/equip/head
execute if items entity @s armor.chest *[minecraft:custom_data~{exp_armor:1b,equipped:0b}] unless data storage expansion:temp equipment run function expansion:spacesuits/equip/chest
execute if items entity @s armor.legs *[minecraft:custom_data~{exp_armor:1b,equipped:0b}] unless data storage expansion:temp equipment run function expansion:spacesuits/equip/legs
execute if items entity @s armor.feet *[minecraft:custom_data~{exp_armor:1b,equipped:0b}] unless data storage expansion:temp equipment run function expansion:spacesuits/equip/feet

# add all the parameters of the equipped piece to the players scores
function expansion:spacesuits/get_armor_modules/main

# remove storage entries
data remove storage expansion:temp equipment