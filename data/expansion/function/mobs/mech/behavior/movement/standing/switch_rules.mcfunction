# switch to approaching if a target is available
execute if function expansion:mobs/mech/behavior/targeting/has_target run return run scoreboard players set @s exp.rotation 1
