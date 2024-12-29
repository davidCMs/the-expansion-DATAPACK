execute at @e[type=minecraft:armor_stand,tag=exp.return_capsule,limit=1,sort=nearest] positioned ^ ^ ^1.5 if block ~ ~ ~ #expansion:air if block ~ ~1 ~ #expansion:air run tp @s ~ ~ ~

tag @s remove exp.inside_capsule
tag @s remove exp.inside_vehicle