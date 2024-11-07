# gui, hold_value is determined by the selected vehicle
execute if score @s exp.hold_value matches 1 run return run function expansion:blocks/modification_station/gui/spaceship
execute if score @s exp.hold_value matches 2 run return run function expansion:blocks/modification_station/gui/mech
execute if score @s exp.hold_value matches 3 run return run function expansion:blocks/modification_station/gui/buggy
function expansion:blocks/modification_station/gui/none