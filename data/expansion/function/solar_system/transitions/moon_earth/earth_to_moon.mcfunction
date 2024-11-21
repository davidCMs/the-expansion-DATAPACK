tag @s add exp.landing_moon

# disable weather
execute if entity @s[tag=exp.rocket_pilot] run function expansion:utilities/weather/disable_weather

# teleport
execute as @s in expansion:moon run tp @s ~ 450 ~