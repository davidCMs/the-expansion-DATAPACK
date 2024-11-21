# revoke the rightclick advancement
advancement revoke @s only expansion:utility/capsule_lc

# stop this interaction if the player is inside the capsule
execute if predicate expansion:nbt_checks/root_vehicle/return_capsule run return fail

# demount the capsule
execute unless predicate expansion:utility/sneak unless predicate expansion:nbt_checks/selected_item/items/wrench positioned ^ ^ ^2 as @e[type=minecraft:armor_stand,tag=exp.return_capsule,distance=..3,limit=1,sort=nearest] run function expansion:vehicles/return_capsule/demount

# recycle the capsule
execute if predicate expansion:nbt_checks/selected_item/items/wrench positioned ^ ^-1 ^2 as @e[type=armor_stand,tag=exp.return_capsule,limit=1,sort=nearest] at @s run function expansion:vehicles/return_capsule/recycle
