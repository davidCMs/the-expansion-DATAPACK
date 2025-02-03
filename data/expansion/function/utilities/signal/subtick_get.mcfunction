# check the value of the subtick signal as set by subtick_set
execute if score #signal exp.bool matches 1 run return run scoreboard players reset #signal exp.bool
return fail