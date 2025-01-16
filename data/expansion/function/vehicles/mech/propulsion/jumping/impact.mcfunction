tag @s remove exp.mech_jumping
tag @s remove exp.mech_jumped

scoreboard players add @s exp.cooldown 12

scoreboard players set @s exp.size_mod -10

execute on passengers if entity @s[tag=aj.mech_legs.root] run function animated_java:mech_legs/animations/landing/tween {to_frame: 0, duration: 3}