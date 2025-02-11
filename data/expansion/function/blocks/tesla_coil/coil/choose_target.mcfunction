# select a target, prioritise active nearby tesla coils over entities
execute positioned ~ ~1 ~ as @e[type=minecraft:interaction,tag=exp.tesla_hitbox,tag=exp.active_coil,distance=1.1..10,limit=1,sort=random] run return run function expansion:utilities/raycast/target/lock_dummy

execute positioned ~ ~1 ~ as @e[type=#expansion:turret_target,tag=!exp.zap_target,tag=!exp.tesla_hitbox,tag=!exp.ignore_for_damage,distance=1.1..10,limit=1,sort=random] run return run function expansion:utilities/raycast/target/lock_dummy

return fail