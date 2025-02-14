# speed up the switch for each bot
scoreboard players remove @s exp.counter_2 1

# heal the mech for 1% of its max health
scoreboard players operation #temp exp.health = @s exp.max_health
scoreboard players operation #temp exp.health /= #100 exp.const
scoreboard players operation @s exp.health += #temp exp.health

# don't exceed max health
execute if score @s exp.health > @s exp.max_health run scoreboard players operation @s exp.health = @s exp.max_health

# reset scores
scoreboard players reset #temp exp.health