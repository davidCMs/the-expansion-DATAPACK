execute store result score #temp exp.yaw on vehicle run data get entity @s Rotation[0]
execute store result score @s exp.yaw run data get entity @s Rotation[0]

# highlight markers in the view
scoreboard players operation #temp exp.yaw -= @s exp.yaw
execute if score #temp exp.yaw matches -30..30 unless entity @s[tag=exp.highlighted_marker] run function expansion:vehicles/spaceship/markers/show_marker
execute unless score #temp exp.yaw matches -30..30 if entity @s[tag=exp.highlighted_marker] run function expansion:vehicles/spaceship/markers/hide_marker

# rotate the markers towards the planet
execute if entity @s[tag=exp.earth_marker] facing 0 128 0 run return run rotate @s ~ ~
execute if entity @s[tag=exp.moon_marker] facing -621 128 126 run return run rotate @s ~ ~
execute if entity @s[tag=exp.mars_marker] facing -1882 128 -1334 run return run rotate @s ~ ~
execute if entity @s[tag=exp.venus_marker] facing 1358 128 1741 run return run rotate @s ~ ~
#execute if entity @s[tag=exp.mercury_marker] facing 2448 128 -1605 run return run rotate @s ~ ~
execute if entity @s[tag=exp.asteroids_marker] facing -10000 128 ~ run return run rotate @s ~ ~
execute if entity @s[tag=exp.jupiter_marker] facing -2873 128 1536 run return run rotate @s ~ ~
execute if entity @s[tag=exp.europa_marker] facing -3557 128 1635 run return run rotate @s ~ ~
