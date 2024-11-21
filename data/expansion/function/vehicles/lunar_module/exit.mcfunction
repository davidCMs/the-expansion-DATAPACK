scoreboard players reset @s exp.timer_2

scoreboard players remove @s exp.passenger_count 1

execute at @s positioned ^ ^ ^3 if block ~ ~ ~ #expansion:air if block ~ ~1 ~ #expansion:air run tp @p[tag=exp.tick_player] ~ ~ ~

tag @p[tag=exp.tick_player] remove exp.inside_module
tag @p[tag=exp.tick_player] remove exp.inside_vehicle
tag @p[tag=exp.tick_player] remove exp.landing_moon
tag @p[tag=exp.tick_player] remove exp.exiting_module
tag @p[tag=exp.tick_player] remove exp.module_pilot