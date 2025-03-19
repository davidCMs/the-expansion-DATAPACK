execute on passengers if entity @s[tag=exp.planet_marker] run data merge entity @s {transformation:{translation:[0.0,1.0,0.6],scale:[0.1,0.1,0.1]},interpolation_duration:5,start_interpolation:-1}
execute on passengers if entity @s[tag=exp.planet_marker] run tag @s add exp.highlighted_marker
tag @s add exp.has_active_markers