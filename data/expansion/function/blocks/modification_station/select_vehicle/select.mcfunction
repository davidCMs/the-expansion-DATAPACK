scoreboard players reset #temp exp.hold_value

# link the vehicle to the snowball
execute on passengers if entity @s[tag=exp.modstation.vehicle_link] run function expansion:utilities/link_snowball_from_storage

# tag the vehicle
execute on passengers if entity @s[tag=exp.modstation.vehicle_link] on origin run function expansion:blocks/modification_station/select_vehicle/on_vehicle

scoreboard players operation @s exp.hold_value = #temp exp.hold_value
scoreboard players reset #temp exp.hold_value

function expansion:blocks/modification_station/gui/buttons/remove_button

item replace block ~ ~ ~ container.3 with air