scoreboard players reset #temp2 exp.speed

# kill the projectile if it bounced too much
scoreboard players remove @s exp.counter_1 1
execute if score @s exp.counter_1 matches 0 run scoreboard players set @s exp.max_range 0

# vfx
particle explosion
particle end_rod ~ ~ ~ 0 0 0 0.05 20 force
playsound minecraft:item.trident.return player @a[distance=..40] ~ ~ ~