execute as @n[type=minecraft:armor_stand,tag=exp.lunar_module,distance=..10] run function expansion:vehicles/lunar_module/exit/main

tag @s remove exp.inside_module
tag @s remove exp.inside_vehicle
tag @s remove exp.landing_moon
tag @s remove exp.exiting_module
tag @s remove exp.module_pilot