data modify entity @s Pos set from storage expansion:return_pos data.ReturnPos

execute at @s as @a[tag=exp.tick_player] on vehicle on vehicle in expansion:europa run tp @s ~ 300 ~ ~ 89

data remove storage expansion:return_pos data.ReturnPos

kill @s