# link the snowball to the target
function expansion:utilities/snowball_link/link_from_storage

# signal that the selecting worked for the cooldown
scoreboard players set #temp exp.bool 1

# 
data modify storage expansion:owner data.current_UUID set from entity @s Owner
execute positioned ~ ~2 ~ summon snowball run function expansion:blocks/tesla_coil/coil/zap/cast

# sound
function expansion:blocks/tesla_coil/coil/zap/sound