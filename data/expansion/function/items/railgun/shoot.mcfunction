# cast the ray
execute rotated as @s anchored eyes positioned ^ ^ ^2 summon minecraft:item_display run function expansion:items/railgun/raycast/cast

# create particle effect
execute at @s anchored eyes positioned ^ ^ ^9 run function expansion:items/railgun/particles/inner
execute at @s anchored eyes positioned ^ ^ ^6 run function expansion:items/railgun/particles/middle
execute at @s anchored eyes positioned ^ ^ ^3 run function expansion:items/railgun/particles/outer

# rotate the player a bit to simulate knockback from the gun
rotate @s ~ ~-4

# technical details
scoreboard players set @s exp.cooldown 15
scoreboard players remove @s exp.ammo 1
execute store result storage expansion:ammo data.ammo byte 1 run scoreboard players get @s exp.ammo
item modify entity @s weapon.mainhand expansion:railgun/ammo
