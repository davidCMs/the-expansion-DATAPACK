kill @n[type=item,nbt={Age:0s},distance=..2]
execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot expansion:blocks/assembler

execute on passengers run function animated_java:assembler/remove/this

execute on passengers run kill @s

kill @s
 