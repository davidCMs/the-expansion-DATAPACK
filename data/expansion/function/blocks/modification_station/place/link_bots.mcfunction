# don't summon new drones if a drone already exists
execute on origin if entity @s[tag=exp.mod_drone] run return fail

# summon a new drone
execute summon item_display run function expansion:blocks/modification_station/place/summon_bots
function expansion:utilities/snowball_link/link_from_storage