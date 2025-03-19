execute store result score #temp exp.hold_value run scoreboard players operation #temp exp.time /= #temp exp.rotation

# succeed if within margin
execute if score #temp exp.hold_value matches 90..110 run return run scoreboard players reset #temp exp.hold_value

# fail otherwise
scoreboard players reset #temp exp.hold_value
return fail