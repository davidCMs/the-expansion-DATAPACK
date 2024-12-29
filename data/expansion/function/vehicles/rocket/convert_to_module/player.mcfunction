tag @s add exp.inside_module
tag @s remove exp.inside_rocket

execute if entity @s[tag=exp.rocket_pilot] run tag @s add exp.module_pilot
execute if entity @s[tag=exp.rocket_pilot] run tag @s remove exp.rocket_pilot
