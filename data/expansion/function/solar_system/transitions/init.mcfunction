# --- run from the space_transition advancement

# revoke the advancement so it may be triggered again
advancement revoke @s only expansion:utility/space_transition

# moon-earth transitions
execute if entity @s[predicate=expansion:nbt_checks/root_vehicle/rocket,predicate=expansion:dimension/overworld,tag=exp.rocket_pilot] at @s run return run function expansion:solar_system/transitions/moon_earth/earth_to_moon
execute if entity @s[predicate=expansion:nbt_checks/root_vehicle/lunar_module,predicate=expansion:dimension/moon,tag=exp.module_pilot] at @s run return run function expansion:solar_system/transitions/moon_earth/moon_to_earth

# spaceship transitions
execute if entity @s[predicate=expansion:nbt_checks/root_vehicle/spaceship,predicate=expansion:dimension/has_space_transition,tag=exp.spaceship_pilot] on vehicle on vehicle at @s run return run function expansion:solar_system/transitions/to_space/init