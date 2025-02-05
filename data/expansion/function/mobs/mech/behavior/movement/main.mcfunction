scoreboard players set @s exp.jump 0
# this score blocks the switching of states
execute if score @s exp.delay matches 1.. run scoreboard players remove @s exp.delay 1

## Movement states
# standing (default)
execute unless score @s exp.rotation matches 1.. run return run function expansion:mobs/mech/behavior/movement/standing/main
# approaching
execute if score @s exp.rotation matches 1 run return run function expansion:mobs/mech/behavior/movement/approaching/main
# backing away
execute if score @s exp.rotation matches 2 run return run function expansion:mobs/mech/behavior/movement/backing_away/main
# strafing
execute if score @s exp.rotation matches 3 run return run function expansion:mobs/mech/behavior/movement/strafing/main
# wandering
execute if score @s exp.rotation matches 4 run return run function expansion:mobs/mech/behavior/movement/wandering/main