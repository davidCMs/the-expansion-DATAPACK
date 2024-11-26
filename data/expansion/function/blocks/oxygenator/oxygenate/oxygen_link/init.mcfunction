scoreboard players reset #temp exp.oxygen_lvl

# runs when an oxygen wanting entity is hit by the wave, already linked players get a tag, unlinked players get linked
execute at @s align xyz positioned ~ ~-0.001 ~ as @e[type=#expansion:wants_oxygen,tag=!exp.recieved_oxygen,tag=!exp.oxygenator.ignore,dx=0,limit=1] run function expansion:blocks/oxygenator/oxygenate/oxygen_link/hit

# finish the link to an unlinked player
execute if score #temp exp.oxygen_lvl matches 1 summon snowball run function expansion:blocks/oxygenator/oxygenate/oxygen_link/finish