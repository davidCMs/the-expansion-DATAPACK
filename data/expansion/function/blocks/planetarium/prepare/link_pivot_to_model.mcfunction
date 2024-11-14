execute on passengers run data modify entity @s[type=minecraft:snowball] Owner set from entity @n[type=item_display,tag=exp.new_planet_display] UUID
execute as @n[type=item_display,tag=exp.new_planet_display] on passengers run data modify entity @s[type=minecraft:snowball] Owner set from storage expansion:planetarium_pivot data.current_UUID

tag @n[type=item_display,tag=exp.new_planet_display] remove exp.new_planet_display