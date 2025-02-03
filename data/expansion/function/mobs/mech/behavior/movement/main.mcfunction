scoreboard players set @s exp.jump 0

execute on passengers if entity @s[tag=exp.mech_targeter] on origin if entity @s[distance=20..] run function expansion:utilities/signal/subtick_set

execute if function expansion:utilities/signal/subtick_get unless score @s exp.fuel_level matches ..39 run scoreboard players set @s exp.jump 1

scoreboard players set @s exp.yaw 0
scoreboard players set @s exp.warmup 1
