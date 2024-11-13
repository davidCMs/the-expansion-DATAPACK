scoreboard players reset #temp exp.oxygen_lvl

# runs when a player is hit by the wave, already linked players get a tag, unlinked players get linked
execute at @s align xyz as @p[tag=!exp.recieved_oxygen,dx=0] run function expansion:blocks/oxygenator/oxygenate/oxygen_link/hit

# finish the link to an unlinked player
execute if score #temp exp.oxygen_lvl matches 1 summon snowball run function expansion:blocks/oxygenator/oxygenate/oxygen_link/finish