execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot expansion:blocks/lacrymae_extractor

execute on passengers if entity @s[tag=exp.extractor_display] if items entity @s container.0 crying_obsidian run loot spawn ~ ~ ~ loot minecraft:blocks/crying_obsidian
execute on passengers if entity @s[tag=exp.extractor_display] if items entity @s container.0 obsidian run loot spawn ~ ~ ~ loot minecraft:blocks/obsidian

execute on passengers run kill @s

kill @s
 