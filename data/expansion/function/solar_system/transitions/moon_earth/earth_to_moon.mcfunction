tag @s add exp.landing_moon
execute on vehicle on vehicle on passengers on passengers on passengers run tag @s[type=player] add exp.landing_moon

# disable weather
function expansion:utilities/weather/disable_weather

# convert the rocket to the module
execute on vehicle on vehicle run function expansion:vehicles/rocket/convert_to_module/root

# teleport
execute on vehicle on vehicle in expansion:moon run tp @s ~ 300 ~