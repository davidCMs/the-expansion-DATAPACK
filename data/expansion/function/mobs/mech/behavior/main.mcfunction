# mech movement, targeting and attacks
execute on vehicle on vehicle run function expansion:mobs/mech/behavior/on_mech

# face the current target
execute at @s on vehicle on vehicle on passengers if entity @s[tag=exp.mech_targeter] on origin facing entity @s eyes run rotate @e[type=skeleton,distance=..0.001,limit=1] ~ 30