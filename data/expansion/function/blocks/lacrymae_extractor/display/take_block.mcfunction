execute if items entity @s container.0 crying_obsidian run loot give @p loot minecraft:blocks/crying_obsidian
execute if items entity @s container.0 obsidian run loot give @p loot minecraft:blocks/obsidian

item replace entity @s container.0 with minecraft:air

execute on vehicle run scoreboard players set @s exp.timer_1 0