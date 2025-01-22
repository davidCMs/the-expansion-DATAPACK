# mount a linker snowball to the rocket
execute on passengers if entity @s[type=snowball] run function expansion:utilities/snowball_link/link_from_storage

# store the UUID of the entity that shot the rocket
data modify entity @s item.components."minecraft:custom_data".rocket_owner set from storage expansion:temp rocket_owner
data remove storage expansion:temp rocket_owner

scoreboard players set @s exp.max_range 100
scoreboard players set @s exp.cooldown 5

execute positioned ^ ^ ^ rotated ~ ~ run rotate @s ~ ~

playsound expansion:mech.missile neutral @a ~ ~ ~ 0.5