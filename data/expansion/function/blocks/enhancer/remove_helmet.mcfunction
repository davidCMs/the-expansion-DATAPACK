item replace entity @s contents with air
scoreboard players reset @s exp.hold_count
execute on passengers if entity @s[tag=aj.enhancer.root] run function animated_java:enhancer/animations/idle/tween {to_frame: 20, duration: 10}