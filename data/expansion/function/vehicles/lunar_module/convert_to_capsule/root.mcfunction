# display
execute on passengers if entity @s[type=item_display] run function expansion:vehicles/lunar_module/convert_to_capsule/display

# interaction
execute on passengers if entity @s[type=interaction] run function expansion:vehicles/lunar_module/convert_to_capsule/interaction

# camel
execute on passengers if entity @s[type=camel] run function expansion:vehicles/lunar_module/convert_to_capsule/seat

# root entity
tag @s add exp.return_capsule
tag @s remove exp.lunar_module
attribute @s scale base set 0
effect clear @s levitation
scoreboard players reset @s exp.timer_2

# move the passenger here
execute if entity @p[tag=exp.move_pilot] run ride @p[tag=exp.move_pilot] mount @s
tag @p[tag=exp.move_pilot] remove exp.move_pilot
execute if entity @p[tag=exp.move_passenger] run ride @p[tag=exp.move_passenger] mount @s
tag @p[tag=exp.move_passenger] remove exp.move_passenger

# player (camel moved players down in the stack)
execute on passengers if entity @s[type=player] run function expansion:vehicles/lunar_module/convert_to_capsule/player
