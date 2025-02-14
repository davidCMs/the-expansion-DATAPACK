execute if score @s exp.counter_2 matches 1.. run return run function expansion:mobs/mech/bots/switching

# drones idle above the mech
execute on passengers if entity @s[tag=exp.mech.bot_link] on origin run function expansion:mobs/mech/bots/hover_above