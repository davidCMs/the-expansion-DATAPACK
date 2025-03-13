# Add a tag to make sure that we keep selecting the same player
tag @s add exp.teleported

# prepate the teleport array
execute as @n[type=item_display,tag=exp.activated_portal,distance=..0.1] run function expansion:blocks/portal/prepare_array

# If everything is valid, proceed to the teleportation.
execute if score #temp exp.hold_count matches 2 summon minecraft:marker run function expansion:blocks/portal/teleport/teleportation_stage_2

# Clear the placeholder storage
data remove storage expansion:portal portal_out

# remove tag in the same tick
scoreboard players set @s exp.portal_cooldown 60
scoreboard players reset #temp exp.bool
tag @s remove exp.teleported