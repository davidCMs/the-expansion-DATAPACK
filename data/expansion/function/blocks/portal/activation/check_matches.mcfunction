# reset timer
scoreboard players set @s exp.timer_2 1

# before activating this portal, check if it is valid
function expansion:blocks/portal/prepare_array

# Clear the placeholder storage
data remove storage expansion:portal portal_out

# activate the portal if we have one match left after filtering out non-matches and ourself
execute unless entity @s[tag=exp.activated_portal] if score #temp exp.hold_count matches 2 run return run function expansion:blocks/portal/activation/activate_portal

# else, pause portal
execute unless entity @s[tag=exp.paused_portal] unless score #temp exp.hold_count matches 2 run function expansion:blocks/portal/deactivation/pause_portal