ride @s mount @e[type=minecraft:armor_stand,tag=exp.mech_seat,limit=1,sort=nearest]

rotate @s ~ ~

execute on vehicle on vehicle run tag @s remove exp.mod_vehicle

tag @s add exp.inside_mech
tag @s add exp.inside_vehicle
tag @s add exp.mech_pilot