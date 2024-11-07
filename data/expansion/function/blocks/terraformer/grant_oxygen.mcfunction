# permanently ignore entities that are not compressors or players
execute unless entity @s[tag=exp.compressor] unless entity @s[type=#expansion:wants_oxygen] run return run tag @s add exp.terraformer.ignore

# link other entities
data modify storage expansion:owner data.current_UUID set from entity @s UUID
tag @s add exp.has_oxygen
execute summon snowball run function expansion:blocks/terraformer/create_origin_link