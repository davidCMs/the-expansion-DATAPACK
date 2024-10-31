# teleport players inside the portal
execute positioned ~-.5 ~1 ~-.5 as @p[dx=0,dy=0,dz=0] positioned ~.5 ~-1 ~.5 run function expansion:blocks/portal/player_nearby

# occasionally check if the matching portal is still active/ if no other portals with the same code were made
function expansion:blocks/portal/activation/periodic_checkup

# particles
function expansion:blocks/portal/particles with entity @s ArmorItems[3].components.minecraft:custom_data.portal_array[0]