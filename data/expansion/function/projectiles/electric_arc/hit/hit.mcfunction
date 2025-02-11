scoreboard players reset @s exp.max_range

# check if we are allowed to bounce and if a target is available
execute if score #temp exp.bool matches 1 if score @s exp.counter_2 matches 1.. at @s if function expansion:projectiles/electric_arc/bounce/found_target run function expansion:projectiles/electric_arc/bounce/select_target