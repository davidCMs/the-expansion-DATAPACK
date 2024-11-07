execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot expansion:blocks/oxygenator

execute if entity @s[tag=exp.scanning] run function expansion:blocks/oxygenator/oxygenate/fail

execute on passengers run kill @s

kill @s
 