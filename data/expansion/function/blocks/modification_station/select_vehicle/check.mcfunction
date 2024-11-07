execute on passengers if entity @s[tag=exp.modstation.vehicle_link] on origin if entity @s[distance=..50] run return 1

execute on passengers if entity @s[tag=exp.modstation.vehicle_link] on origin run function expansion:blocks/modification_station/select_vehicle/deselect

scoreboard players reset @s exp.hold_value