function expansion:mobs/mech/health/lightning_explosion

scoreboard players remove @s exp.death 1

execute if score @s exp.death matches 0 run function expansion:mobs/mech/health/die/finish