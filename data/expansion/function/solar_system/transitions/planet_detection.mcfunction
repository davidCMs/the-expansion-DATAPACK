execute positioned 0 128 0 if entity @s[distance=..100] run function expansion:solar_system/transitions/from_space/to_earth/init
execute positioned -608 128 112 if entity @s[distance=..100] run function expansion:solar_system/transitions/from_space/to_moon/init
execute positioned -1872 128 -1328 if entity @s[distance=..100] run function expansion:solar_system/transitions/from_space/to_mars/init
execute positioned 1344 128 1728 if entity @s[distance=..100] run function expansion:solar_system/transitions/from_space/to_venus/init
execute positioned -2864 128 1536 if entity @s[distance=..100] run function expansion:solar_system/transitions/from_space/to_jupiter/init
execute positioned -3552 128 1632 if entity @s[distance=..100] run function expansion:solar_system/transitions/from_space/to_europa/init

execute if predicate expansion:location/asteroids_edge run function expansion:solar_system/transitions/from_space/to_asteroids/init