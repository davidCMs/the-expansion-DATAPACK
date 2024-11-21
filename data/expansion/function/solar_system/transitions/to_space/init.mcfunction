# --- only runs as the spaceship pilot

# teleport the player to space
execute if predicate expansion:dimension/overworld positioned 23 128 23 run function expansion:solar_system/transitions/to_space/from_planet
execute if predicate expansion:dimension/moon positioned -584 128 135 run function expansion:solar_system/transitions/to_space/from_planet
execute if predicate expansion:dimension/mars positioned -1848 128 -1304 run function expansion:solar_system/transitions/to_space/from_planet
execute if predicate expansion:dimension/venus positioned 1367 128 1705 run function expansion:solar_system/transitions/to_space/from_planet
execute if predicate expansion:dimension/asteroids run function expansion:solar_system/transitions/to_space/from_asteroids
execute if predicate expansion:dimension/jupiter positioned -2840 128 1559 run function expansion:solar_system/transitions/to_space/from_planet
execute if predicate expansion:dimension/europa positioned -3528 128 1609 run function expansion:solar_system/transitions/to_space/from_planet