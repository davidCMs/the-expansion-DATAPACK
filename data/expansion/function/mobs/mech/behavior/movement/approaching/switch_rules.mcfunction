# switch to strafing if the target is nearby
execute if function expansion:mobs/mech/behavior/targeting/target_nearby run return run scoreboard players set @s exp.rotation 3

# switch to wandering if no target is found
execute unless function expansion:mobs/mech/behavior/targeting/has_target run return run scoreboard players set @s exp.rotation 4
