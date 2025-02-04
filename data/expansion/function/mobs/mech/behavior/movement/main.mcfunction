## Movement states
# standing (default)
execute unless score @s exp.rotation matches 1.. run function expansion:mobs/mech/behavior/movement/standing/main
# approaching
execute if score @s exp.rotation matches 1 run function expansion:mobs/mech/behavior/movement/approaching/main
# backing away
execute if score @s exp.rotation matches 2 run function expansion:mobs/mech/behavior/movement/backing_away/main
# strafing
execute if score @s exp.rotation matches 3 run function expansion:mobs/mech/behavior/movement/strafing/main
# wandering
execute if score @s exp.rotation matches 4 run function expansion:mobs/mech/behavior/movement/wandering/main

## Jumping
# the mech should jump if the target entity is not in range (wither too close or too far)
scoreboard players set @s exp.jump 0
execute if score @s exp.counter_1 matches 1.. run scoreboard players set @s exp.jump 1
execute if score @s exp.counter_1 matches 1.. run scoreboard players remove @s exp.counter_1 1