scoreboard players reset #output exp.percentage
scoreboard players operation #input exp.math *= #100 exp.const
execute store result score #output exp.percentage run scoreboard players operation #input exp.math /= #max exp.math
return run scoreboard players get #output exp.percentage