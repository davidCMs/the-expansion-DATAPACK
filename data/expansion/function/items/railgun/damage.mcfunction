damage @s 20 expansion:railgun

execute if entity @s[tag=exp.hitbox] on vehicle run scoreboard players set @s exp.damage 50

particle firework ~ ~ ~ 0.5 0.5 0.5 0.1 10
