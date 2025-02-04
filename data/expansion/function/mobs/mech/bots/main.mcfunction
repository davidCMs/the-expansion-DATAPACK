execute if score @s exp.counter_2 matches 1.. run scoreboard players set @s exp.warmup 0

execute if score @s exp.counter_2 matches 1.. on passengers if entity @s[tag=exp.mech.bot_link] on origin run function expansion:mobs/mech/bots/hover_around

execute if score @s exp.counter_2 matches 1 run function expansion:mobs/mech/behavior/switch_weapons/init

execute unless score @s exp.counter_2 matches 1.. on passengers if entity @s[tag=exp.mech.bot_link] on origin run function expansion:mobs/mech/bots/hover_above

scoreboard players remove @s[scores={exp.counter_2=1..}] exp.counter_2 1