# 179/(x+8)-1
# only exceeds 1 for y < 80
scoreboard players operation #x exp.math = @s exp.suit_integrity
scoreboard players add #x exp.math 8
scoreboard players set #out exp.math 179
scoreboard players operation #out exp.math /= #x exp.math
scoreboard players remove #out exp.math 1

# calculate the amount of oxygen points this refers tho
# take 1/40th of that amount
scoreboard players operation #max exp.math = @s exp.oxygen_max
scoreboard players operation #max exp.math *= #out exp.math
scoreboard players operation #max exp.math /= #400 exp.const

# add this oxygen amount to the oxygen loss
scoreboard players operation #temp exp.oxygen_lvl += #max exp.math