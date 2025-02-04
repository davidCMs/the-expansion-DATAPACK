## STATE RULES
scoreboard players set @s exp.yaw 0
scoreboard players set @s exp.warmup 1

# randomly jump
#execute if predicate expansion:periodic/20 if predicate expansion:chance/010_chance unless score @s exp.counter_1 matches 1.. store result score @s exp.counter_1 run random value 20..40

## SWITCH CONDITIONS
execute if predicate expansion:periodic/20 run function expansion:mobs/mech/behavior/movement/approaching/switch_rules