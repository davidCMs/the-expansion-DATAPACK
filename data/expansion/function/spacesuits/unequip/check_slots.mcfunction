execute if items entity @s container.* *[minecraft:custom_data~{exp_armor:1b,equipped:1b}] run return 1

execute if items entity @s weapon.* *[minecraft:custom_data~{exp_armor:1b,equipped:1b}] run return 1
# (doesn't work in creative mode)
execute if items entity @s player.cursor *[minecraft:custom_data~{exp_armor:1b,equipped:1b}] run return 1

return fail