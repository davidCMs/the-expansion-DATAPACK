# only proceed if the jump input is given
execute unless score @s exp.jump matches 1 run return fail

# only proceed if not already jumping
execute if entity @s[tag=exp.mech_jumping] run return fail

# only proceed if the fuel level is sufficiently high
execute unless score @s exp.fuel_level matches 20.. run return fail

# only proceed if the player is on the ground
execute unless entity @s[nbt={OnGround:1b}] run return fail

# if a movement cooldown if active
execute if score @s exp.cooldown matches 1.. run return fail

return 1