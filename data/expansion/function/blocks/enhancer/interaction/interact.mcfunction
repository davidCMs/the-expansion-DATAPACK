advancement revoke @s only expansion:utility/enhancer_rc
advancement revoke @s only expansion:utility/enhancer_lc

tag @s add exp.clicked
execute if predicate expansion:utility/sneak if predicate expansion:nbt_checks/armor/space_equipment/equipment run scoreboard players set #temp exp.bool 1

execute as @n[type=interaction,tag=exp.enhancer.rcdet,nbt={interaction:{}},distance=..10] run function expansion:blocks/enhancer/interaction/swap_helmet
execute as @n[type=interaction,tag=exp.enhancer.rcdet,nbt={attack:{}},distance=..10] run function expansion:blocks/enhancer/interaction/swap_helmet

tag @s remove exp.clicked