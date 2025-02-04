# switch to approaching if a target is available
execute if function expansion:mobs/mech/behavior/targeting/has_target run return run scoreboard players set @s exp.rotation 1

# have a chance to stand still after losing a target to simulate the mech wandering to the latest known player position
execute if predicate expansion:chance/020_chance run return run scoreboard players set @s exp.rotation 0