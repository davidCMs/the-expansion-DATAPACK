execute unless score @s exp.dy matches ..-1 run return fail

execute unless block ~ ~ ~ #expansion:air run return fail

execute unless block ~ ~1 ~ #expansion:air run return fail

execute unless predicate exp_hitbox:crit_ready run return fail

execute if entity @s[nbt={OnGround:1b}] run return fail

execute if entity @s[nbt={RootVehicle:{}}] run return fail

return 1