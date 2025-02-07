# link the snowball to the target
function expansion:utilities/snowball_link/link_from_storage

# signal that the selecting worked for the cooldown
scoreboard players set #temp exp.bool 1

# 
data modify storage expansion:owner data.current_UUID set from entity @s Owner
execute at @s positioned ~ ~1 ~ facing ~ ~1 ~ run function expansion:blocks/tesla_coil/coil/zap

# sound
function expansion:projectiles/electric_arc/sound