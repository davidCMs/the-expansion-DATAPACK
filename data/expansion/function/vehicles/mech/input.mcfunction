scoreboard players reset #controlled exp.bool
scoreboard players reset #angle exp.offset
execute if predicate expansion:input/forward run scoreboard players set #angle exp.offset 0
execute if predicate expansion:input/left run scoreboard players set #angle exp.offset -90
execute if predicate expansion:input/right run scoreboard players set #angle exp.offset 90
execute if predicate expansion:input/forward if predicate expansion:input/left run scoreboard players set #angle exp.offset -45
execute if predicate expansion:input/forward if predicate expansion:input/right run scoreboard players set #angle exp.offset 45
execute if predicate expansion:input/backward run scoreboard players set #angle exp.offset 180
execute if predicate expansion:input/backward if predicate expansion:input/left run scoreboard players set #angle exp.offset -135
execute if predicate expansion:input/backward if predicate expansion:input/right run scoreboard players set #angle exp.offset 135

# signal that there is any player input
execute if score #angle exp.offset matches -180..180 run scoreboard players set #controlled exp.bool 1