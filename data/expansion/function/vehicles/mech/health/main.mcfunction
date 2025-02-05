#execute on passengers if entity @s[tag=exp.mech_seat] on passengers if entity @s[tag=exp.mech_pilot,nbt={HurtTime:9s}] run function expansion:vehicles/mech/health/calculate_damage_to_pilot

execute if score @s exp.damage matches 1.. run function expansion:vehicles/mech/health/hurt

execute if score @s exp.iframes matches 1.. run scoreboard players remove @s exp.iframes 1

execute if score @s exp.health matches ..150 positioned ~ ~3 ~ run function expansion:vehicles/mech/health/slightly_damaged
execute if score @s exp.health matches ..100 positioned ~ ~3 ~ run function expansion:vehicles/mech/health/moderately_damaged
execute if score @s exp.health matches ..50 positioned ~ ~3 ~ run function expansion:vehicles/mech/health/severely_damaged

