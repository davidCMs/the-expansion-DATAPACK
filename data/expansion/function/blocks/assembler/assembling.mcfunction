execute if score @s exp.timer_1 matches 1 run function expansion:blocks/assembler/stop_crafting

execute on passengers at @s run particle firework ^ ^ ^-1.5 0.1 0.1 0.1 0.1 1
execute on passengers at @s run particle campfire_cosy_smoke ^ ^ ^-1.5 0.1 0.1 0.1 0.01 1

scoreboard players remove @s exp.timer_1 1