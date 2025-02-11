tag @s remove exp.active_coil
execute on passengers run tag @s[tag=exp.tesla_hitbox] remove exp.active_coil

scoreboard players set @s exp.cooldown 0

stopsound @a[distance=..10] block expansion:teslacoil.charge