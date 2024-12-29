tag @s add exp.mod_drone
tag @s add exp.mod_drone.new

tp @s ~ ~2 ~

item replace entity @s container.0 with jigsaw[item_model="expansion:mobs/mod_drone"]

data merge entity @s {teleport_duration:1}

scoreboard players operation @s exp.unique_id = #modstation_id exp.unique_id

data modify storage expansion:owner data.current_UUID set from entity @s UUID

tag @s remove exp.mod_drone.new
