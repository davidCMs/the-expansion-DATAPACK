# calculate the oxygen percentage and check if it changed
scoreboard players operation #input exp.math = @s exp.oxygen_lvl
scoreboard players operation #max exp.math = @s exp.oxygen_max
function expansion:utilities/percentage
execute unless score @s exp.oxygen_percent = #output exp.percentage run function expansion:mechanics/oxygen/space_suit/merge_oxygen

# show titles
title @s[scores={exp.oxygen_percent=50..},tag=!exp.inside_vehicle] actionbar ["",{"translate":"exp_screentxt_oxygen_level"},{"text":"\u25c0","color":"green"},{"score":{"name":"@s","objective":"exp.oxygen_percent"},"color":"green"},{"text":"%\u25b6","color":"green"}]
title @s[scores={exp.oxygen_percent=10..50},tag=!exp.inside_vehicle] actionbar ["",{"translate":"exp_screentxt_oxygen_level"},{"text":"\u25c0","color":"gold"},{"score":{"name":"@s","objective":"exp.oxygen_percent"},"color":"gold"},{"text":"%\u25b6","color":"gold"}]
title @s[scores={exp.oxygen_percent=..10},tag=!exp.inside_vehicle] actionbar ["",{"translate":"exp_screentxt_oxygen_level"},{"text":"\u25c0","color":"dark_red"},{"score":{"name":"@s","objective":"exp.oxygen_percent"},"color":"dark_red"},{"text":"%\u25b6","color":"dark_red"}]
title @s[scores={exp.oxygen_max=..0},tag=!exp.inside_vehicle] actionbar ["",{"translate":"exp_screentxt_oxygen_level"},{"text":"No Tank","color":"red","bold": true}]

# remove oxygen score
execute if entity @s[gamemode=!creative,gamemode=!spectator,tag=!exp.has_oxygen,tag=!exp.generator,tag=!exp.inside_vehicle] run scoreboard players remove @s[scores={exp.oxygen_lvl=1..}] exp.oxygen_lvl 1

# run the functions for players that are wearing space equipment
execute if predicate expansion:armor/all unless score @s exp.oxygen_lvl matches 1.. if entity @s[gamemode=!creative,gamemode=!spectator,tag=!exp.has_oxygen,tag=!exp.generator,tag=!exp.inside_vehicle] run return run function expansion:mechanics/oxygen/suffocate

# suffocate players if they aren't wearing space equipment
execute if entity @s[gamemode=!creative,gamemode=!spectator,tag=!exp.has_oxygen,tag=!exp.generator,tag=!exp.inside_vehicle] run function expansion:mechanics/oxygen/suffocate
