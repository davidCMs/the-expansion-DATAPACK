# detect button presses
execute if score @s exp.hold_value matches 1.. unless items block ~ ~ ~ container.17 * run function expansion:blocks/modification_station/gui/buttons/upgrade_button
execute if score @s exp.hold_value matches 1.. unless items block ~ ~ ~ container.26 * run function expansion:blocks/modification_station/gui/buttons/remove_button

# gui depending on selected vehicle
function expansion:blocks/modification_station/gui/main

# select a nearby selectable vehicle
scoreboard players reset #temp exp.bool
execute unless score @s exp.hold_value matches 1.. as @n[type=minecraft:armor_stand,tag=exp.moddable_vehicle,tag=!exp.mod_vehicle,tag=!exp.player_inside,distance=..50] run function expansion:blocks/modification_station/select_vehicle/find
execute unless score @s exp.hold_value matches 1.. if score #temp exp.bool matches 1 run function expansion:blocks/modification_station/select_vehicle/select