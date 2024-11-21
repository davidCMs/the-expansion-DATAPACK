execute positioned 23 128 23 if entity @s[distance=..100] run function expansion:solar_system/transitions/from_space/to_earth/init
execute positioned -584 128 135 if entity @s[distance=..100] run function expansion:solar_system/transitions/from_space/to_moon/init
execute positioned -1848 128 -1304 if entity @s[distance=..100] run function expansion:solar_system/transitions/from_space/to_mars/init
execute positioned 1367 128 1705 if entity @s[distance=..100] run function expansion:solar_system/transitions/from_space/to_venus/init
execute positioned -2840 128 1559 if entity @s[distance=..100] run function expansion:solar_system/transitions/from_space/to_jupiter/init
execute positioned -3528 128 1609 if entity @s[distance=..100] run function expansion:solar_system/transitions/from_space/to_europa/init

execute if predicate expansion:location/asteroids_edge run function expansion:solar_system/transitions/from_space/to_asteroids/init