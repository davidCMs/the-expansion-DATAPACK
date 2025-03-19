scoreboard players reset @s exp.bool

execute if predicate expansion:dimension/overworld unless entity @s[y_rotation=-80..80] unless entity @s[y_rotation=100..180] unless entity @s[y_rotation=-180..-100] run function expansion:mechanics/events/moon_study/calculation
advancement revoke @s only expansion:utility/using_spyglass