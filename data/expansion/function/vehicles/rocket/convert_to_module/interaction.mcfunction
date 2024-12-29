data merge entity @s {width:3f,height:4f,response:1b}

tag @s add exp.module_rcdet

tag @s remove exp.rocket_button_rcdet
tag @s remove exp.rocket_pilot_rcdet
tag @s remove exp.rocket_rcdet

# move the rocket passenger to the camel and kill the stack
execute on passengers on passengers if entity @s[type=player] run tag @s add exp.move_passenger
execute on passengers on passengers run kill @s[type=!player]
execute on passengers run kill @s
