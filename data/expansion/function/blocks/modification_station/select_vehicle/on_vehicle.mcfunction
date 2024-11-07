tag @s add exp.mod_vehicle

execute if entity @s[tag=exp.spaceship] run scoreboard players set #temp exp.hold_value 1
execute if entity @s[tag=exp.mech] run scoreboard players set #temp exp.hold_value 2
execute if entity @s[tag=exp.moon_buggy] run scoreboard players set #temp exp.hold_value 3
