# Play the scanning animation
execute unless score @s exp.hold_count matches 0.. on passengers if entity @s[tag=aj.enhancer.root] run function animated_java:enhancer/animations/scanning/tween {to_frame: 20, duration: 20}

# update the display item
item replace entity @s contents from block ~ ~ ~ container.10

function expansion:blocks/enhancer/upgrade/remove