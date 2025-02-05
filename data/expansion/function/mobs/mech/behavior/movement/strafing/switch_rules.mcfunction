# switch to backing up if the target is too close
execute unless score @s exp.delay matches 1.. if function expansion:mobs/mech/behavior/targeting/target_too_close run return run function expansion:mobs/mech/behavior/movement/backing_away/activate

# switch to approaching if the target is too far
execute unless score @s exp.delay matches 1.. if function expansion:mobs/mech/behavior/targeting/target_too_far run return run function expansion:mobs/mech/behavior/movement/approaching/activate

# switch to wandering if no target is found
execute unless function expansion:mobs/mech/behavior/targeting/has_target run return run function expansion:mobs/mech/behavior/movement/wandering/activate