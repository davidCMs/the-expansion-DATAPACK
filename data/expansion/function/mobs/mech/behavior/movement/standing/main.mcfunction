## STATE RULES
scoreboard players set @s exp.warmup 0

## SWITCH CONDITIONS
execute if predicate expansion:periodic/10 unless score @s exp.delay matches 1.. run function expansion:mobs/mech/behavior/movement/standing/switch_rules