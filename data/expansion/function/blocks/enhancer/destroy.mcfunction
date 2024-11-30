kill @n[type=item,nbt={Age:0s},distance=..2]
execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot expansion:blocks/enhancer

execute on passengers if entity @s[tag=aj.enhancer.root] run function animated_java:enhancer/remove/this

execute on passengers run kill @s

kill @s
 