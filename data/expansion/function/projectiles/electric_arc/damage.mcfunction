damage @s 6 expansion:zapped

execute if entity @s[tag=exp.hitbox] on vehicle run scoreboard players set @s exp.damage 6

# particles
particle minecraft:flash ~ ~1.2 ~ 0 0 0 0 1 force
particle minecraft:flame ~ ~1.2 ~ 0 0 0 0.01 10 force

# give players mining patigue to make the block harder to counter
effect give @s minecraft:mining_fatigue 2 5 true

# lightning transforms, doesn't run on peaceful difficulty
execute store result score @s exp.bool run difficulty
execute unless score @s exp.bool matches 0 if entity @s[type=#expansion:transformable] unless entity @s[nbt={powered:1b}] run function expansion:blocks/tesla_coil/transform_mob
scoreboard players reset @s exp.bool

return 1