# remove spaceship upgrades
execute if score @s exp.hold_value matches 1 unless score @s exp.counter_1 matches ..4 on passengers if entity @s[tag=exp.modstation.vehicle_link] on origin on passengers if entity @s[tag=exp.spaceship_display] run function expansion:blocks/modification_station/upgrade/spaceship/remove_mods/initiate

# initiate modding the mech
execute if score @s exp.hold_value matches 1 unless score @s exp.counter_1 matches ..4 on passengers if entity @s[tag=exp.modstation.vehicle_link] on origin run function expansion:blocks/modification_station/upgrade/mech/remove_mods/initiate

# initiate modding the buggy
execute if score @s exp.hold_value matches 1 unless score @s exp.counter_1 matches ..4 on passengers if entity @s[tag=exp.modstation.vehicle_link] on origin run function expansion:blocks/modification_station/upgrade/buggy/remove_mods/initiate

function expansion:utilities/sounds/button
