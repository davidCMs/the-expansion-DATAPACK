execute if entity @s[tag=exp.mech_jumped] run return run execute if entity @s[nbt={OnGround:1b}] run function expansion:vehicles/mech/propulsion/jumping/impact

# make sure the mech only jumps in the players direction
scoreboard players set @s exp.yaw 0

# particles
execute positioned ^-.5 ^2 ^-2 run function expansion:vehicles/mech/propulsion/jumping/particles
execute positioned ^.5 ^2 ^-2 run function expansion:vehicles/mech/propulsion/jumping/particles


# consume fuel while jumping
scoreboard players remove @s exp.fuel_level 1

# apply motion
scoreboard players set @s exp.speed 20
data modify entity @s Motion[1] set value 0.4d

# stop motion if player hits the ground, if the fuel depletes or if jump input is stopped
execute unless score @s exp.jump matches 1 run tag @s add exp.mech_jumped
execute unless score @s exp.fuel_level matches 1.. run tag @s add exp.mech_jumped