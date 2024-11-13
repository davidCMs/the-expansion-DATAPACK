# select a target, prioritise active nearby tesla coils over entities
execute as @e[type=minecraft:item_display,tag=exp.active_coil,distance=1.1..10,limit=1,sort=random] run return run data modify storage expansion:owner data.current_UUID set from entity @s UUID

execute as @e[type=#expansion:turret_target,tag=!exp.zap_target,distance=1.1..10,limit=1,sort=random] run return run data modify storage expansion:owner data.current_UUID set from entity @s UUID

return fail