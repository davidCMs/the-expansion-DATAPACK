item modify entity @s armor.chest {"function": "minecraft:set_custom_data",tag:{equipped:1b}}

tag @s add exp.armor.chest

data modify storage expansion:temp equipment set from entity @s Inventory[{Slot:102b}]