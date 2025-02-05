# stop movement if the bots are doing their work
scoreboard players set @s exp.warmup 0

# bots swarm around the mech during the upgrade
execute on passengers if entity @s[tag=exp.mech.bot_link] on origin run function expansion:mobs/mech/bots/hover_around

# equip random weapons when the timer runs out
execute if score @s exp.counter_2 matches 1 run function expansion:mobs/mech/behavior/switch_weapons/get_random_loadout

# reduce score
scoreboard players remove @s exp.counter_2 1
