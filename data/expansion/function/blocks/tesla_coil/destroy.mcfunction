execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot expansion:blocks/tesla_coil

stopsound @a[distance=..16] block expansion:teslacoil.charge

fill ~ ~1 ~ ~ ~1 ~ minecraft:air replace minecraft:redstone_torch

kill @n[type=item,nbt={Item:{id:"minecraft:redstone_torch"}}]

execute on passengers run kill @s

kill @s
 