# stop walking if tha target is really close
scoreboard players reset #temp exp.bool
execute on origin if entity @s[distance=..5] run scoreboard players set #temp exp.bool 1
execute if score #temp exp.bool matches 1 on vehicle run scoreboard players set @s exp.warmup 0

#  select a new target periodically
execute unless predicate expansion:periodic/40 run function expansion:mobs/mech/behavior/targeting/init