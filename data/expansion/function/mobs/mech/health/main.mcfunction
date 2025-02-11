# uses the same health system as the vehicle

# every time the health reaches one quarter, switch weapons

execute if score @s exp.health matches ..170 unless entity @s[tag=exp.mech_summoned_drones] run function expansion:mobs/mech/bots/summon

execute unless score @s exp.health matches 1.. run function expansion:mobs/mech/health/die/init
