# Play the scanning animation
execute unless score @s exp.hold_count matches 0.. on passengers if entity @s[tag=aj.enhancer.root] run function animated_java:enhancer/animations/scanning/tween {to_frame: 15, duration: 30}

# store the amount of module slots of the equipment in a score
execute store result score @s exp.hold_count run data get entity @s item.components."minecraft:custom_data".ModStorage

# update the display item
item replace entity @s contents from block ~ ~ ~ container.10