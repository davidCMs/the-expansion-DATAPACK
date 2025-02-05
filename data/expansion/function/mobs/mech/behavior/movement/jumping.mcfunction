## Jumping
scoreboard players set @s exp.jump 1
scoreboard players remove @s exp.counter_1 1
execute unless score @s exp.delay matches 10.. run scoreboard players set @s exp.delay 10