# force players to be inside if the vehicle is not on the ground
execute unless predicate expansion:nbt_checks/root_vehicle/lunar_module as @n[type=armor_stand,tag=exp.lunar_module,distance=..10] unless entity @s[nbt={OnGround:1b}] on passengers if entity @s[tag=exp.module_seats] run ride @p[tag=exp.tick_player] mount @s

# inside functions
execute if predicate expansion:dimension/moon on vehicle on vehicle run function expansion:vehicles/lunar_module/inside

# moon landing
execute if entity @s[tag=exp.landing_moon] run function expansion:vehicles/lunar_module/landing

# exit the vehicle if the rootvehicle is no longer the lander but the tag is still active
execute unless predicate expansion:nbt_checks/root_vehicle/lunar_module as @n[type=minecraft:armor_stand,tag=exp.lunar_module,distance=..10] run function expansion:vehicles/lunar_module/exit