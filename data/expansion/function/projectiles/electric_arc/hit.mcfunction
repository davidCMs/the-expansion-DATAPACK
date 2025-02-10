# if the arc hits a block
execute unless block ~ ~ ~ #expansion:air run return run function expansion:projectiles/electric_arc/hit_block

# if the arc hits a tesla coil
execute if score @s exp.damage matches 1 positioned ~-.5 ~-.5 ~-.5 as @e[type=#expansion:turret_target,tag=exp.tesla_coil,dx=0,limit=1] positioned ~.5 ~.5 ~.5 run return run function expansion:projectiles/electric_arc/hit_turret

# if the arc hits another entity
execute if score @s exp.damage matches 1 positioned ~-.5 ~-.5 ~-.5 as @e[type=#expansion:turret_target,dx=0,limit=1] positioned ~.5 ~.5 ~.5 run return run function expansion:projectiles/electric_arc/damage

return fail