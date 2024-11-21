# force players to be inside if the vehicle is not on the ground
execute unless predicate expansion:nbt_checks/root_vehicle/return_capsule as @n[type=armor_stand,tag=exp.return_capsule,distance=..10] unless entity @s[nbt={OnGround:1b}] run ride @p[tag=exp.tick_player] mount @s

execute if entity @s[tag=exp.landing_earth] run function expansion:vehicles/return_capsule/landing

execute if entity @s[tag=!exp.landing_earth] unless predicate expansion:nbt_checks/root_vehicle/return_capsule run function expansion:vehicles/return_capsule/exit
