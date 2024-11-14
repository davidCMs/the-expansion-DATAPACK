tag @s add exp.disabled_node

# make the size zero
scoreboard players set #temp exp.size 0
function expansion:blocks/planetarium/set_size

# for effects
data merge entity @s {transformation:{scale:[0.0f,0.0f,0.0f]},interpolation_duration:7,start_interpolation:1}

# reset text display
execute on passengers run data merge entity @s[tag=exp.planetarium_text_display] {transformation:{scale:[0.0f,0.0f,0.0f]},interpolation_duration:7,start_interpolation:1}
execute on passengers run data merge entity @s[tag=exp.planetarium_infoboard] {background:0,transformation:{scale:[0.0f,0.0f,0.0f]},interpolation_duration:0,start_interpolation:1}


