kill @e[type=item,nbt={Age:0s},distance=..2]
execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot expansion:blocks/planetarium

function expansion:blocks/planetarium/destroy/chain