## STATE RULES
scoreboard players set @s exp.yaw 180
scoreboard players set @s exp.warmup 1

## SWITCH CONDITIONS
execute if predicate expansion:periodic/20 run function expansion:mobs/mech/behavior/movement/backing_away/switch_rules