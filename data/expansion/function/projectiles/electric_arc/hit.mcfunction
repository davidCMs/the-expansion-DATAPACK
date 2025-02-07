execute positioned ~-.5 ~-.5 ~-.5 as @e[type=#expansion:turret_target,tag=exp.tesla_coil,dx=0,limit=1] positioned ~.5 ~.5 ~.5 run return run function expansion:projectiles/electric_arc/hit_turret

execute positioned ~-.5 ~-.5 ~-.5 as @e[type=#expansion:turret_target,dx=0,limit=1] positioned ~.5 ~.5 ~.5 run return run function expansion:projectiles/electric_arc/damage

return fail