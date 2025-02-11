# summon normal mech vehicle
function expansion:vehicles/mech/summon/init

# setup
execute as @e[type=armor_stand,tag=exp.mech,distance=..0.1,limit=1] run function expansion:mobs/mech/summon/setup
