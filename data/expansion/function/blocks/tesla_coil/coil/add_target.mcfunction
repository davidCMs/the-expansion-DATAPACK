# apply the cooldown
scoreboard players set @s exp.cooldown 20

# cast a zap
execute at @s positioned ~ ~1 ~ facing ~ ~1 ~ run function expansion:blocks/tesla_coil/coil/zap

# sound
function expansion:projectiles/electric_arc/sound