# periodically check if the target is still visible and within range
# find a new target if not
execute if predicate expansion:periodic/20 unless function expansion:mobs/mech/behavior/targeting/target_visible run function expansion:mobs/mech/behavior/targeting/find_new

# periodically have a random chance to find a new target even if the previous target was still visible. (unless the current target is very close)
execute if predicate expansion:periodic/30 if predicate expansion:chance/020_chance unless function expansion:mobs/mech/behavior/targeting/target_nearby run function expansion:mobs/mech/behavior/targeting/find_new