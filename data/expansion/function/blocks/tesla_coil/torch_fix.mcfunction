setblock ~ ~1 ~ minecraft:redstone_torch keep
execute positioned ~ ~1 ~ run kill @n[type=item,nbt={Item:{id:"minecraft:redstone_torch"}},distance=..2]
 