execute on attacker unless entity @s[gamemode=creative] run loot give @s loot expansion:vehicles/lunar_module

playsound block.metal.break block @a ~ ~ ~

execute on vehicle run function expansion:vehicles/lunar_module/delete
