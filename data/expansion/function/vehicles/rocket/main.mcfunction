# force players to be inside if the vehicle is not on the ground
execute if entity @s[tag=exp.rocket_pilot] unless predicate expansion:nbt_checks/root_vehicle/rocket as @n[type=armor_stand,tag=exp.rocket,distance=..10] unless entity @s[nbt={OnGround:1b}] on passengers if entity @s[tag=exp.rocket_pilot_seat] run ride @p[tag=exp.tick_player] mount @s
execute if entity @s[tag=!exp.rocket_pilot] unless predicate expansion:nbt_checks/root_vehicle/rocket as @n[type=armor_stand,tag=exp.rocket,distance=..10] unless entity @s[nbt={OnGround:1b}] on passengers on passengers on passengers if entity @s[tag=exp.rocket_pilot_seat] run ride @p[tag=exp.tick_player] mount @s

# inside functions
execute if entity @s[tag=exp.rocket_pilot] on vehicle on vehicle run function expansion:vehicles/rocket/inside
execute if entity @s[tag=!exp.rocket_pilot] on vehicle on vehicle on vehicle run function expansion:vehicles/rocket/inside

# exit
execute unless predicate expansion:nbt_checks/root_vehicle/rocket unless entity @s[tag=exp.landing_moon] run function expansion:vehicles/rocket/exit_rocket

# attempt to make the player ride the lunar module when landing on the moon
execute if entity @s[tag=exp.landing_moon] unless score @s exp.cooldown matches 1.. run function expansion:solar_system/transitions/moon_earth/earth_moon_check

# store players position
function expansion:player/store_position

