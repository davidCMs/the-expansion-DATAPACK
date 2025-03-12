# calculate the percentage of durability that this damage amounts to, add 1 to fix a rounding error
scoreboard players operation #temp exp.damage *= #100000 exp.const
scoreboard players operation #temp exp.damage /= #temp exp.max_health
scoreboard players add #temp exp.damage 1
return run scoreboard players get #temp exp.damage