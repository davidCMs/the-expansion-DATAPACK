# obtain current and max health
execute store result score #temp1 exp.health run data get entity @s Health
execute store result score #temp2 exp.health run attribute @s max_health get

# find the damage dealt and store the value in the root
execute on vehicle on vehicle store result score @s exp.damage run scoreboard players operation #temp2 exp.health -= #temp1 exp.health

# reset the health to max
execute store result entity @s Health float 1 run attribute @s max_health get