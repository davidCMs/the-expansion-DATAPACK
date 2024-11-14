tag @s remove exp.disabled_node

scoreboard players operation #temp exp.size = @s exp.size
function expansion:blocks/planetarium/set_size

# reset text display
execute on passengers if entity @s[tag=exp.planetarium_text_display] run function expansion:blocks/planetarium/prepare/planet_names
