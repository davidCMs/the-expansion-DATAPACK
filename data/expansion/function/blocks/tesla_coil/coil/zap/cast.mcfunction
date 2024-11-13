tag @s add exp.zap

function expansion:utilities/snowball_link/link_from_storage

rotate @s facing ~ ~3 ~

execute at @s store result score @s exp.bool run function expansion:blocks/tesla_coil/coil/zap/loop

execute on origin run tag @s remove exp.zap_target

kill @s