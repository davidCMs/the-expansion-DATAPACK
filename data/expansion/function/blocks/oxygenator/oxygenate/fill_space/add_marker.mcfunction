execute if score @s exp.bool matches 1 at @s positioned ~ ~1 ~ summon marker run function expansion:blocks/oxygenator/oxygenate/fill_space/init_marker
execute if score @s exp.bool matches 2 at @s positioned ~ ~-1 ~ summon marker run function expansion:blocks/oxygenator/oxygenate/fill_space/init_marker
execute if score @s exp.bool matches 3 at @s positioned ~1 ~ ~ summon marker run function expansion:blocks/oxygenator/oxygenate/fill_space/init_marker
execute if score @s exp.bool matches 4 at @s positioned ~-1 ~ ~ summon marker run function expansion:blocks/oxygenator/oxygenate/fill_space/init_marker
execute if score @s exp.bool matches 5 at @s positioned ~ ~ ~1 summon marker run function expansion:blocks/oxygenator/oxygenate/fill_space/init_marker
execute if score @s exp.bool matches 6 at @s positioned ~ ~ ~-1 summon marker run function expansion:blocks/oxygenator/oxygenate/fill_space/init_marker

execute summon snowball run function expansion:blocks/oxygenator/oxygenate/fill_space/link_marker