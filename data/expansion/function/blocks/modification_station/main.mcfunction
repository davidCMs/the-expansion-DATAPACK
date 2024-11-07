# get the unique score from this modstation, this is used tor the bots and the modded vehicle
scoreboard players operation #modstation exp.unique_id = @s exp.unique_id

# destroy the block when the barrel is destroyed
execute unless block ~ ~ ~ minecraft:barrel run function expansion:blocks/modification_station/destroy

# runs when a player is within 5 blocks
execute if entity @p[distance=..6] run function expansion:blocks/modification_station/player_nearby

# deselect the vehicle if none is found
execute if score @s exp.hold_value matches 1.. if predicate expansion:periodic/10 run function expansion:blocks/modification_station/select_vehicle/check

# finish upgrading a vehicle
execute if score @s exp.timer_1 matches 1 run function expansion:blocks/modification_station/upgrade/finish

# movement of the little bots
execute positioned ~ ~3 ~ on passengers if entity @s[tag=exp.modstation.bot_link] on origin run function expansion:blocks/modification_station/mod_robots/main

# timer for upgrade
scoreboard players remove @s[scores={exp.timer_1=1..}] exp.timer_1 1