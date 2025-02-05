## STATE RULES
scoreboard players set @s exp.yaw 180
scoreboard players set @s exp.warmup 1

# randomly jump if the target is out of range
execute if predicate expansion:periodic/20 if predicate expansion:chance/050_chance unless score @s exp.counter_1 matches 1.. if function expansion:mobs/mech/behavior/targeting/target_too_close store result score @s exp.counter_1 run random value 10..20

## SWITCH CONDITIONS
execute if predicate expansion:periodic/10 run function expansion:mobs/mech/behavior/movement/backing_away/switch_rules