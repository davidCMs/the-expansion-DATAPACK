tag @s add exp.landing_earth
execute on vehicle on passengers run tag @s add exp.landing_earth

# disable weather
function expansion:utilities/weather/disable_weather

# convert module to capsule
execute on vehicle on vehicle run function expansion:vehicles/lunar_module/convert_to_capsule/root

# teleport
execute on vehicle in minecraft:overworld run tp @s ~ 450 ~
