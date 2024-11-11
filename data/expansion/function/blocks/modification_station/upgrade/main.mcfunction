# timer
scoreboard players remove @s exp.timer_1 1

#execute if score @s exp.timer_1 matches 199

# move the bots towards the vehicle
execute on passengers if entity @s[tag=exp.modstation.bot_link] on origin run function expansion:blocks/modification_station/mod_robots/swarm_vehicle

# finish the upgrade 
execute if score @s exp.timer_1 matches 1 run function expansion:blocks/modification_station/upgrade/finish