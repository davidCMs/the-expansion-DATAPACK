execute on passengers if entity @s[tag=exp.mech.bot_link] run function expansion:blocks/modification_station/place/link_bots

execute if entity @s[tag=exp.mech_summoned_drones] run tag @s add exp.mech_summoned_drones_twice
tag @s add exp.mech_summoned_drones

function expansion:mobs/mech/behavior/switch_weapons/init