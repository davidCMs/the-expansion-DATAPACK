execute on passengers if entity @s[tag=exp.modstation.vehicle_link] on origin run tag @s add exp.being_modified

scoreboard players reset @s exp.bool
execute if score @s exp.hold_value matches 1 run function expansion:blocks/modification_station/upgrade/spaceship/apply_mods/initiate
execute if score @s exp.hold_value matches 2 run function expansion:blocks/modification_station/upgrade/mech/apply_mods/initiate
execute if score @s exp.hold_value matches 3 run function expansion:blocks/modification_station/upgrade/buggy/apply_mods/initiate

# only start the upgrade when there is at least valid 1 upgrade present
execute if score @s exp.bool matches 1.. run function expansion:blocks/modification_station/upgrade/init

function expansion:utilities/sounds/button