say ouch

# mitigate damage if the iframes are active
execute if score @s exp.iframes matches 1.. run return run scoreboard players set @s exp.damage 0

scoreboard players set @s exp.iframes 10

scoreboard players operation @s exp.health -= @s exp.damage

execute if score @s exp.health matches ..0 run function expansion:vehicles/mech/health/die

scoreboard players set @s exp.damage 0