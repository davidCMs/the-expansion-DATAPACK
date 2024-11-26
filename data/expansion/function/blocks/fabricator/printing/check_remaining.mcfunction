scoreboard players set @s exp.value 0

execute if items block ~ ~ ~ container.1 * run scoreboard players set @s exp.value 1
execute unless score @s exp.value matches 1 if items block ~ ~ ~ container.2 * run scoreboard players set @s exp.value 1
execute unless score @s exp.value matches 1 if items block ~ ~ ~ container.3 * run scoreboard players set @s exp.value 1

execute unless score @s exp.value matches 1 if items block ~ ~ ~ container.10 * run scoreboard players set @s exp.value 1
execute unless score @s exp.value matches 1 if items block ~ ~ ~ container.11 * run scoreboard players set @s exp.value 1
execute unless score @s exp.value matches 1 if items block ~ ~ ~ container.12 * run scoreboard players set @s exp.value 1

execute unless score @s exp.value matches 1 if items block ~ ~ ~ container.19 * run scoreboard players set @s exp.value 1
execute unless score @s exp.value matches 1 if items block ~ ~ ~ container.20 * run scoreboard players set @s exp.value 1
execute unless score @s exp.value matches 1 if items block ~ ~ ~ container.21 * run scoreboard players set @s exp.value 1

# run the print again if there are still items inside the printer
execute if score @s exp.value matches 1 run function expansion:blocks/fabricator/printing/check_recipes
scoreboard players reset @s exp.value