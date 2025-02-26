# calculate the oxygen percentage
scoreboard players operation #input exp.math = @s exp.oxygen_lvl
scoreboard players operation #max exp.math = @s exp.oxygen_max
function expansion:utilities/percentage

# if the oxygen percentage changed, merge the new oxygen value with the suits oxygen tanks
execute unless score @s exp.oxygen_percent = #output exp.percentage run function expansion:spacesuits/set_oxygen_data/merge_oxygen

# remove oxygen score
execute if predicate expansion:periodic/10 if function expansion:mechanics/oxygen/should_lose_oxygen run function expansion:mechanics/oxygen/lose

# suffocate players with insufficient oxygen
execute if predicate expansion:periodic/10 if function expansion:mechanics/oxygen/should_suffocate run function expansion:mechanics/oxygen/suffocate