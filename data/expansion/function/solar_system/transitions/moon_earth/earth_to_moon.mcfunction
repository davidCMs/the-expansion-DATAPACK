# disable weather
function expansion:utilities/weather/disable_weather

# convert the rocket to the module
execute on vehicle on vehicle run function expansion:vehicles/rocket/convert_to_module/root

# teleport
execute on vehicle on vehicle in expansion:moon run tp @s ~ 300 ~