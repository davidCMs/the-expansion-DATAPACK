execute if score @s exp.hold_value matches 1 run function expansion:blocks/modification_station/upgrade/spaceship/apply_mods/start_upgrade
execute if score @s exp.hold_value matches 2 run function expansion:blocks/modification_station/upgrade/mech/apply_mods/start_upgrade
execute if score @s exp.hold_value matches 3 run function expansion:blocks/modification_station/upgrade/buggy/apply_mods/start_upgrade
say upgrader
scoreboard players set @s exp.counter_1 0
scoreboard players reset @s exp.bool
scoreboard players set @s exp.timer_1 20