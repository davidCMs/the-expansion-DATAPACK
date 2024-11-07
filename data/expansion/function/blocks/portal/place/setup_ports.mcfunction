rotate @s ~ ~

# copy the unique portal id to the ports
scoreboard players operation @s exp.unique_id = #portal_id exp.unique_id

# prepare to link the interactions snowballs owner to this entity
data modify storage expansion:owner data.current_UUID set from entity @s UUID

execute if entity @s[tag=exp.port_1] positioned ^-1.69 ^1.8 ^ summon interaction run function expansion:blocks/portal/place/summon_interaction
execute if entity @s[tag=exp.port_2] positioned ^-1.2 ^3.0 ^ summon interaction run function expansion:blocks/portal/place/summon_interaction
execute if entity @s[tag=exp.port_3] positioned ^ ^3.5 ^ summon interaction run function expansion:blocks/portal/place/summon_interaction
execute if entity @s[tag=exp.port_4] positioned ^1.2 ^3.0 ^ summon interaction run function expansion:blocks/portal/place/summon_interaction
execute if entity @s[tag=exp.port_5] positioned ^1.69 ^1.8 ^ summon interaction run function expansion:blocks/portal/place/summon_interaction
