# Search the current portal in the global portal array and remove its entry.
function expansion:blocks/portal/deactivation/search_match_id

function expansion:blocks/portal/deactivation/pause_portal

# vfx
playsound expansion:portal.shutdown block @a[distance=..16] ~ ~1.15 ~ 1
particle poof ~ ~1.15 ~ 0 0 0 0 5
