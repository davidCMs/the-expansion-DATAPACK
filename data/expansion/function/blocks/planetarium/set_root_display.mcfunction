tag @s add exp.root_display

# enlarge text display
data merge entity @s {transformation:{scale:[3.5f,3.5f,3.5f],translation:[0.0f,0.0f,0.0f]},interpolation_duration:7,start_interpolation:1}

execute on passengers run data merge entity @s[tag=exp.planetarium_text_display] {background:0,transformation:{scale:[2f,2f,2f],translation:[0f,0.5f,0f]},interpolation_duration:7,start_interpolation:1}
execute on passengers run data merge entity @s[tag=exp.planetarium_infoboard] {background:0,transformation:{scale:[0.55f,0.55f,0.55f]},interpolation_duration:7,start_interpolation:1}

execute on passengers run data merge entity @s[type=interaction] {width:1.75, height:-1.75}