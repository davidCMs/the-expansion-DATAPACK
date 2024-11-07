tag @s remove exp.compressor.new

function expansion:blocks/set_rotation

execute rotated as @s positioned ~ ~1 ~ run function animated_java:compressor/summon {args: {}}
execute positioned ~ ~1 ~ run ride @n[type=minecraft:item_display,tag=aj.rig_root,distance=..0.1] mount @s

rotate @s ~ 90

setblock ~ ~ ~ minecraft:cobblestone{LootTable:"expansion:empty"} replace