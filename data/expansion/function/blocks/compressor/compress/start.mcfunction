scoreboard players set @s exp.timer_1 1
tag @s add exp.tank_inside

execute on passengers if entity @s[tag=aj.compressor.root] run function animated_java:compressor/animations/compress/tween {to_frame: 0, duration: 5}
