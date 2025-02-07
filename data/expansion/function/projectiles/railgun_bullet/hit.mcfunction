# if the block ahead is solid, resume the cast with more precision
execute unless block ^ ^ ^1 #expansion:air run return run function expansion:projectiles/railgun_bullet/quickcast

execute positioned ~-.5 ~-.5 ~-.5 as @e[type=!#expansion:ignore,tag=!exp.ignore_for_damage,dx=0,limit=1] positioned ~.5 ~.5 ~.5 run return run function expansion:projectiles/railgun_bullet/damage

return fail