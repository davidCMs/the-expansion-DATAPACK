# if the weapon doesn't use ammo, succeed
execute if score @s exp.max_ammo matches 0 run return fail

# if the weapon uses and has ammo, succeed
execute if score @s exp.ammo matches 1.. run return 1

# else fail
return 1