scoreboard players reset #output exp.oxygen_percent
scoreboard players operation #input exp.math *= #100 exp.const
execute store result score #output exp.percentage run return run scoreboard players operation #input exp.math /= #max exp.math