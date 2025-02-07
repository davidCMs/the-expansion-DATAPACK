execute unless block ~ ~ ~ #expansion:air run return run function expansion:projectiles/autocannon_bullet/hit_block

execute positioned ~-.5 ~-.5 ~-.5 as @e[type=!#expansion:ignore,dx=0,dy=0,dz=0,limit=1] positioned ~.5 ~.5 ~.5 run return run function expansion:projectiles/autocannon_bullet/damage

return fail