execute if score @s exp.cooldown matches 1.. run return fail

execute if score @s exp.timer_1 matches ..-1 run return 1

execute if entity @s[tag=exp.mech_jumping] run return 1

execute unless score @s exp.warmup matches 1 run return fail

return 1