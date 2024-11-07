scoreboard players add @s exp.counter_1 1
execute if score @s exp.counter_1 matches 2 run scoreboard players set @s exp.counter_1 0
item replace block ~ ~ ~ container.5 with minecraft:air
function expansion:utilities/sounds/button