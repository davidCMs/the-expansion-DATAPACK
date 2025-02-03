scoreboard players reset @s exp.timer_2

scoreboard players remove @s exp.passenger_count 1

execute at @s positioned ^ ^ ^3 if block ~ ~ ~ #expansion:air if block ~ ~1 ~ #expansion:air run tp @p[tag=exp.tick_player] ~ ~ ~