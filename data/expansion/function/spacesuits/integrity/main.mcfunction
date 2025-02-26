# copy a players armor to a storage
function expansion:utilities/copy_armor_to_storage

# For each armor piece, check if it is resistant enough and if not damage it
scoreboard players reset #temp exp.counter_1
scoreboard players reset #temp exp.counter_2
scoreboard players reset #value exp.suit_integrity
scoreboard players reset #max exp.suit_integrity
function expansion:spacesuits/integrity/iterate_over_armor

# calculate the new integrity percentage
function expansion:spacesuits/integrity/calculate

# reset storage
data remove storage expansion:temp armor

# reset scores
scoreboard players reset #temp exp.counter_1
scoreboard players reset #value exp.suit_integrity
scoreboard players reset #max exp.suit_integrity