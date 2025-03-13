kill @e[type=item,nbt={Age:0s},distance=..2]

execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot expansion:blocks/compressor

execute if entity @s[tag=exp.tank_inside] run function expansion:blocks/compressor/restore_item

execute on passengers if entity @s[tag=aj.compressor.root] run function animated_java:compressor/remove/this

execute on passengers run kill @s 

kill @s