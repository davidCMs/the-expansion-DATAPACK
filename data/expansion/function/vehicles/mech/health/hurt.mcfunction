say ouch

# mitigate damage if the iframes are active
execute if score @s exp.iframes matches 1.. run return run scoreboard players set @s exp.damage 0

scoreboard players operation @s exp.health -= @s exp.damage

execute store result bossbar exp.mech value run scoreboard players get @s exp.health

execute if score @s exp.health matches ..0 run function expansion:vehicles/mech/health/die

scoreboard players set @s exp.damage 0