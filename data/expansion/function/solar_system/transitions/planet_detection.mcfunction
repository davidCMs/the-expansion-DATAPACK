execute positioned 23 128 23 if entity @s[distance=..100] run function expansion:solar_system/transitions/from_space/space_to_earth
execute positioned -584 128 135 if entity @s[distance=..100] run function expansion:solar_system/transitions/from_space/space_to_moon
execute positioned -1848 128 -1304 if entity @s[distance=..100] run function expansion:solar_system/transitions/from_space/space_to_mars
execute positioned 1367 128 1705 if entity @s[distance=..100] run function expansion:solar_system/transitions/from_space/space_to_venus
execute positioned -2840 128 1559 if entity @s[distance=..100] run function expansion:solar_system/transitions/from_space/space_to_jupiter
execute positioned -3528 128 1609 if entity @s[distance=..100] run function expansion:solar_system/transitions/from_space/space_to_europa

execute if predicate expansion:location/asteroids_edge run function expansion:solar_system/transitions/from_space/space_to_asteroids

# reset the gravity
tag @s remove exp.has_changed_gravity