tag @s add exp.new_bot
data modify storage expansion:owner data.current_UUID set from storage expansion:owner data.store_UUID
execute at @s summon snowball run function expansion:blocks/modification_station/place/link_origin
tag @s remove exp.new_bot