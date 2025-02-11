execute positioned ^ ^ ^ rotated ~ ~ run tp @s ^ ^ ^10.5 ~ ~

scoreboard players set #temp exp.max_range 300
scoreboard players set #temp exp.cooldown 5

tag @s add exp.target_marker

execute positioned as @s rotated as @s run function expansion:utilities/raycast/target/loop