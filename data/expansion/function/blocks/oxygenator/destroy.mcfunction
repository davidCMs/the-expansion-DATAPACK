kill @e[type=item,nbt={Age:0s},distance=..2]
execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot expansion:blocks/oxygenator

scoreboard players set @s exp.bool -1
execute if score @s exp.timer_1 matches 1.. run function expansion:blocks/oxygenator/oxygenate/fail

execute on passengers run kill @s

kill @s
 