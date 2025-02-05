# summon normal mech vehicle
function expansion:vehicles/mech/summon/new_entity_stack

# summon evil passenger
execute summon skeleton run function expansion:mobs/mech/summon/pilot
execute as @e[type=armor_stand,tag=exp.mech,distance=..0.1,limit=1] on passengers if entity @s[tag=exp.mech_seat] run ride @e[type=skeleton,tag=exp.mech_mob,distance=..0.1,limit=1] mount @s

# equip both hands with swords
execute as @e[type=armor_stand,tag=exp.mech,distance=..0.1,limit=1] on passengers if entity @s[tag=exp.left_arm_control] run function expansion:vehicles/mech/actions/swing/equip
execute as @e[type=armor_stand,tag=exp.mech,distance=..0.1,limit=1] on passengers if entity @s[tag=exp.right_arm_control] run function expansion:vehicles/mech/actions/swing/equip

# bossbar
execute as @e[type=armor_stand,tag=exp.mech,distance=..0.1,limit=1] run function expansion:mobs/mech/summon/bossbar
