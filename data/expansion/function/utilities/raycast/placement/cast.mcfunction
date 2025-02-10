# get the players block interaction range, scaled to the precision of the raycast
execute store result score #temp exp.max_range run attribute @s block_interaction_range get 20

# run the entity-less raycast
execute anchored eyes positioned ^ ^ ^ run function expansion:utilities/raycast/placement/loop