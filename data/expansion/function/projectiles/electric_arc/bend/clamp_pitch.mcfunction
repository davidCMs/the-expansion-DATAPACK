# in any case, the yaw should flip, errors in this are handled in the clamp_yaw later
scoreboard players add #temp exp.yaw 180

# using weird minecraft modulo behavior
execute if score #temp exp.pitch matches ..-90 run scoreboard players operation #temp exp.pitch %= #90 exp.const
execute if score #temp exp.pitch matches 90.. run scoreboard players operation #temp exp.pitch %= #-90 exp.const

scoreboard players operation #temp exp.pitch *= #-1 exp.const