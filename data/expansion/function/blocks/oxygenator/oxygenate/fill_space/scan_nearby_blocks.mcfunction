# run functions 1 block further in all 6 directions if the block is air and if there isn't a marker already
scoreboard players reset @s exp.bool
execute at @s positioned ~ ~1 ~ if function expansion:blocks/oxygenator/oxygenate/fill_space/valid_space run scoreboard players set @s exp.bool 1
execute if score @s exp.bool matches 1.. run function expansion:blocks/oxygenator/oxygenate/fill_space/add_marker

scoreboard players reset @s exp.bool
execute at @s positioned ~ ~-1 ~ if function expansion:blocks/oxygenator/oxygenate/fill_space/valid_space run scoreboard players set @s exp.bool 2
execute if score @s exp.bool matches 1.. run function expansion:blocks/oxygenator/oxygenate/fill_space/add_marker

scoreboard players reset @s exp.bool
execute at @s positioned ~1 ~ ~ if function expansion:blocks/oxygenator/oxygenate/fill_space/valid_space run scoreboard players set @s exp.bool 3
execute if score @s exp.bool matches 1.. run function expansion:blocks/oxygenator/oxygenate/fill_space/add_marker

scoreboard players reset @s exp.bool
execute at @s positioned ~-1 ~ ~ if function expansion:blocks/oxygenator/oxygenate/fill_space/valid_space run scoreboard players set @s exp.bool 4
execute if score @s exp.bool matches 1.. run function expansion:blocks/oxygenator/oxygenate/fill_space/add_marker

scoreboard players reset @s exp.bool
execute at @s positioned ~ ~ ~1 if function expansion:blocks/oxygenator/oxygenate/fill_space/valid_space run scoreboard players set @s exp.bool 5
execute if score @s exp.bool matches 1.. run function expansion:blocks/oxygenator/oxygenate/fill_space/add_marker

scoreboard players reset @s exp.bool
execute at @s positioned ~ ~ ~-1 if function expansion:blocks/oxygenator/oxygenate/fill_space/valid_space run scoreboard players set @s exp.bool 6
execute if score @s exp.bool matches 1.. run function expansion:blocks/oxygenator/oxygenate/fill_space/add_marker

tag @s remove exp.new_scanner