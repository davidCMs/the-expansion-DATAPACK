data modify entity @s[type=minecraft:snowball] Owner set from storage expansion:owner data.current_UUID
data merge entity @s {Item:{id:"minecraft:jigsaw",count:1,components:{"minecraft:item_model":"expansion:empty"}}}
data remove storage expansion:owner data.current_UUID

# administration
data merge entity @s {NoGravity:1b,Invulnerable:1b}
tag @s add exp.origin_link