# Search the current portal in the global portal array and remove its entry.
function expansion:blocks/portal/deactivation/search_match_id

function expansion:blocks/portal/deactivation/pause_portal
#tag @s remove exp.paused_portal

item replace entity @s armor.head with minecraft:air

execute at @s run playsound expansion:portal.shutdown ambient @a[distance=..10] ~ ~ ~ 1
execute at @s run particle poof ~ ~1.2 ~ 0 0 0 0 5
