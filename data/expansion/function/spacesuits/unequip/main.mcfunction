## The unequip function sets any unequipped item to equipped:0b and re-evaluates the players armor effects

# Tag worn (valid) armor items to exlude them from the operations
execute if items entity @s armor.head *[minecraft:custom_data~{equipped:1b}] run item modify entity @s armor.head {"function": "minecraft:set_custom_data",tag:{equipped:2b}}
execute if items entity @s armor.chest *[minecraft:custom_data~{equipped:1b}] run item modify entity @s armor.chest {"function": "minecraft:set_custom_data",tag:{equipped:2b}}
execute if items entity @s armor.legs *[minecraft:custom_data~{equipped:1b}] run item modify entity @s armor.legs {"function": "minecraft:set_custom_data",tag:{equipped:2b}}
execute if items entity @s armor.feet *[minecraft:custom_data~{equipped:1b}] run item modify entity @s armor.feet {"function": "minecraft:set_custom_data",tag:{equipped:2b}}

# Now that we found the item, copy it to a storage and unequip it
data modify storage expansion:temp equipment set from entity @s Inventory[{components:{"minecraft:custom_data":{exp_armor:1b,equipped:1b}}}]
execute if data storage expansion:temp equipment run function expansion:spacesuits/unequip/restore_item with storage expansion:temp equipment

# restore the other armor items
execute if items entity @s armor.head *[minecraft:custom_data~{equipped:2b}] run item modify entity @s armor.head {"function": "minecraft:set_custom_data",tag:{equipped:1b}}
execute if items entity @s armor.chest *[minecraft:custom_data~{equipped:2b}] run item modify entity @s armor.chest {"function": "minecraft:set_custom_data",tag:{equipped:1b}}
execute if items entity @s armor.legs *[minecraft:custom_data~{equipped:2b}] run item modify entity @s armor.legs {"function": "minecraft:set_custom_data",tag:{equipped:1b}}
execute if items entity @s armor.feet *[minecraft:custom_data~{equipped:2b}] run item modify entity @s armor.feet {"function": "minecraft:set_custom_data",tag:{equipped:1b}}

# Re-evaluate the entire armor set scores
function expansion:spacesuits/get_armor_modules/main

# remove storage entries
data remove storage expansion:temp equipment