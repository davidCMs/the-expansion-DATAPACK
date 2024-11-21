execute store result score #temp exp.yaw on vehicle run data get entity @s Rotation[0]
execute store result score @s exp.yaw run data get entity @s Rotation[0]

# highlight markers in the view
scoreboard players operation #temp exp.yaw -= @s exp.yaw
execute if score #temp exp.yaw matches -30..30 unless entity @s[tag=exp.highlighted_marker] run function expansion:vehicles/spaceship/markers/show_marker
execute unless score #temp exp.yaw matches -30..30 if entity @s[tag=exp.highlighted_marker] run function expansion:vehicles/spaceship/markers/hide_marker

# rotate the markers towards the planet
execute if entity @s[tag=exp.earth_marker] facing 23 128 23 run return run rotate @s ~ ~
execute if entity @s[tag=exp.moon_marker] facing -584 128 135 run return run rotate @s ~ ~
execute if entity @s[tag=exp.mars_marker] facing -1848 128 -1304 run return run rotate @s ~ ~
execute if entity @s[tag=exp.venus_marker] facing 1367 128 1705 run return run rotate @s ~ ~
execute if entity @s[tag=exp.jupiter_marker] facing -2840 128 1559 run return run rotate @s ~ ~
execute if entity @s[tag=exp.europa_marker] facing -3528 128 1609 run return run rotate @s ~ ~
execute if entity @s[tag=exp.asteroids_marker] facing -10000 128 ~ run return run rotate @s ~ ~
