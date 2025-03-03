# force players to be inside if the vehicle is not on the ground
execute if entity @s[tag=exp.rocket_pilot] unless predicate expansion:nbt_checks/root_vehicle/rocket as @n[type=armor_stand,tag=exp.rocket,distance=..10] unless entity @s[nbt={OnGround:1b}] on passengers if entity @s[tag=exp.rocket_pilot_seat] run ride @p[tag=exp.tick_player] mount @s
execute if entity @s[tag=!exp.rocket_pilot] unless predicate expansion:nbt_checks/root_vehicle/rocket as @n[type=armor_stand,tag=exp.rocket,distance=..10] unless entity @s[nbt={OnGround:1b}] on passengers on passengers on passengers if entity @s[tag=exp.rocket_pilot_seat] run ride @p[tag=exp.tick_player] mount @s

# inside functions
execute if entity @s[tag=exp.rocket_pilot] on vehicle on vehicle run function expansion:vehicles/rocket/inside
execute if entity @s[tag=!exp.rocket_pilot] on vehicle on vehicle on vehicle run function expansion:vehicles/rocket/inside