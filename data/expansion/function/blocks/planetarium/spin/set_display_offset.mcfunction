tp @s ^ ^ ^

execute if score #temp exp.offset matches 1.. run scoreboard players remove #temp exp.offset 100
execute if score #temp exp.offset matches 1.. positioned ^ ^.1 ^ run return run function expansion:blocks/planetarium/spin/set_display_offset

execute if score #temp exp.offset matches ..1 run scoreboard players add #temp exp.offset 100
execute if score #temp exp.offset matches ..1 positioned ^ ^-.1 ^ run function expansion:blocks/planetarium/spin/set_display_offset