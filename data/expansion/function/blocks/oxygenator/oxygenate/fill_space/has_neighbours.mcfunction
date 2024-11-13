#execute positioned ~ ~1 ~ if entity @e[type=marker,tag=exp.new_scanner,distance=..0.01] run return 1
#execute positioned ~ ~-1 ~ if entity @e[type=marker,tag=exp.new_scanner,distance=..0.01] run return 1
#execute positioned ~1 ~ ~ if entity @e[type=marker,tag=exp.new_scanner,distance=..0.01] run return 1
#execute positioned ~-1 ~ ~ if entity @e[type=marker,tag=exp.new_scanner,distance=..0.01] run return 1
#execute positioned ~ ~ ~1 if entity @e[type=marker,tag=exp.new_scanner,distance=..0.01] run return 1
#execute positioned ~ ~ ~-1 if entity @e[type=marker,tag=exp.new_scanner,distance=..0.01] run return 1

execute if entity @e[type=marker,tag=exp.new_scanner,distance=..1.01,limit=1] run return 1
return fail