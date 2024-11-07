scoreboard players remove @s exp.hold_value 1

execute if score @s exp.hold_value matches 4 run function expansion:blocks/portal/deactivation/deactivate_portal

#vfx
playsound expansion:portal.insert_core block @a[distance=..16] ~ ~2.15 ~ 1 1.5 0
