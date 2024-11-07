data modify entity @s[type=minecraft:snowball] Owner set from storage expansion:owner data.current_UUID
data remove storage expansion:owner data

# administration
data merge entity @s {NoGravity:1b,Invulnerable:1b}
tag @s add exp.origin_link