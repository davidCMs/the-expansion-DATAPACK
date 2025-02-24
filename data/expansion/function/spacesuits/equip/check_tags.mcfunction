execute if items entity @s armor.* *[minecraft:custom_data~{exp_armor:1b,equipped:0b}] run return 1

execute unless entity @s[tag=exp.armor.head] if items entity @s armor.head * run return run item modify entity @s armor.head {"function": "minecraft:set_custom_data",tag:{equipped:0b}}
execute unless entity @s[tag=exp.armor.chest] if items entity @s armor.chest * run return run item modify entity @s armor.chest {"function": "minecraft:set_custom_data",tag:{equipped:0b}}
execute unless entity @s[tag=exp.armor.legs] if items entity @s armor.legs * run return run item modify entity @s armor.legs {"function": "minecraft:set_custom_data",tag:{equipped:0b}}
execute unless entity @s[tag=exp.armor.feet] if items entity @s armor.feet * run return run item modify entity @s armor.feet {"function": "minecraft:set_custom_data",tag:{equipped:0b}}

return fail