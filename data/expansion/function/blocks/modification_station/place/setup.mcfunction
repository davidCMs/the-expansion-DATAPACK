tag @s remove exp.modstation.new

function expansion:blocks/set_rotation

# block
setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"expansion:empty",CustomName:'{"translate":"exp_blocks_modstation_name","color":"dark_gray"}'} replace

# pre-load GUI
function expansion:blocks/modification_station/gui/none

# give this block a unique id for modstations
scoreboard players add #modstation_id exp.unique_id 1
scoreboard players operation @s exp.unique_id = #modstation_id exp.unique_id

# summon a bot for each snowball and link it
execute on passengers if entity @s[tag=exp.modstation.bot_link] run function expansion:blocks/modification_station/place/link_bots