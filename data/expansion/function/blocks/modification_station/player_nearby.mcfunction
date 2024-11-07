# run when the player is using the block
execute if entity @s[tag=exp.barrel_open] run function expansion:blocks/modification_station/interaction

# rotate the little hud vehicle
execute on passengers if entity @s[tag=exp.modstation_display] at @s run rotate @s ~1 ~
