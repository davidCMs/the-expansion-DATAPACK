# remove tags
tag @s remove exp.zap_target

# reset the cooldown of a turret this hits
execute if entity @s[tag=exp.tesla_coil,scores={exp.cooldown=2..}] run return run scoreboard players set @s exp.cooldown 2

# damage
damage @s[tag=!exp.tesla_coil] 6 expansion:zapped

# give players mining patigue to make the block harder to counter
effect give @s minecraft:mining_fatigue 2 5 true

# particles
execute if entity @s[tag=!exp.tesla_coil] anchored eyes run particle minecraft:flash ~ ~1.2 ~ 0 0 0 0 1 force
execute if entity @s[tag=!exp.tesla_coil] anchored eyes run particle minecraft:flame ~ ~1.2 ~ 0 0 0 0.01 10 force

# lightning transforms, doesn't run on peaceful difficulty
execute store result score @s exp.bool run difficulty
execute unless score @s exp.bool matches 0 if entity @s[type=#expansion:transformable] unless entity @s[nbt={powered:1b}] run function expansion:blocks/tesla_coil/transform_mob
scoreboard players reset @s exp.bool