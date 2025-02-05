# face the current target
execute on vehicle on vehicle unless score @s exp.counter_2 matches 1.. on passengers if entity @s[tag=exp.mech_targeter] if function expansion:mobs/mech/behavior/targeting/has_target on origin facing entity @s feet run rotate @e[type=skeleton,distance=..0.001,limit=1] ~ ~

# mech movement, targeting and attacks
execute on vehicle on vehicle run function expansion:mobs/mech/behavior/on_mech