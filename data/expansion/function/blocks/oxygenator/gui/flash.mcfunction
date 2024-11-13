execute if score @s exp.cooldown matches 20 run item modify block ~ ~ ~ container.4 expansion:blocks/oxygenator/gui_flash

execute if score @s exp.cooldown matches 12 run item modify block ~ ~ ~ container.4 expansion:blocks/oxygenator/gui_normal

execute if score @s exp.cooldown matches 8 run item modify block ~ ~ ~ container.4 expansion:blocks/oxygenator/gui_flash

execute if score @s exp.cooldown matches 1 run item modify block ~ ~ ~ container.4 expansion:blocks/oxygenator/gui_normal

scoreboard players remove @s exp.cooldown 1