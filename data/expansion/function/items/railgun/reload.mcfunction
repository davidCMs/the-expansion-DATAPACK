scoreboard players set #temp exp.ammo 1

execute store result storage expansion:ammo data.ammo byte 1 run scoreboard players get #temp exp.ammo
item modify entity @s weapon.mainhand expansion:railgun/ammo

clear @s minecraft:iron_ingot 1

playsound expansion:railgun.reload player @a ~ ~ ~ 0.3 1 0