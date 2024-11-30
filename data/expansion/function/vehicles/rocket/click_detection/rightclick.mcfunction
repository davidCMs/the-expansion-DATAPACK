# enter a rocket seat according to some conditions
execute at @s[tag=!exp.inside_vehicle] unless predicate expansion:utility/sneak as @n[type=minecraft:interaction,tag=exp.rocket_rcdet,nbt={interaction:{}}] run function expansion:vehicles/rocket/enter/init

# equip space equipment if none is worn but one is held
execute if predicate expansion:nbt_checks/root_vehicle/rocket unless predicate expansion:nbt_checks/armor/space_equipment/equipment if predicate expansion:nbt_checks/selected_item/space_equipment/equipment run function expansion:items/space_equipment/equip

# revoke the rightclick advancement
advancement revoke @s only expansion:utility/rocket_rc