tag @s add exp.landing_moon
tag @s add exp.landing_moon_init
execute on vehicle on vehicle on passengers on passengers on passengers run tag @s[type=player] add exp.landing_moon
execute on vehicle on vehicle on passengers on passengers on passengers run tag @s[type=player] add exp.landing_moon_init

# destroy rocket
execute if entity @s[tag=exp.rocket_pilot] on vehicle on vehicle run function expansion:vehicles/rocket/destroy

# disable weather
execute if entity @s[tag=exp.rocket_pilot] run function expansion:utilities/weather/disable_weather

# teleport
execute as @a[tag=exp.landing_moon_init,limit=2,sort=nearest] in expansion:moon run tp @s ~ 300 ~