# if the target is in range, switch to strafing
execute on passengers if entity @s[tag=exp.mech_arm_controller] unless function expansion:mobs/mech/behavior/targeting/target_in_range on vehicle run return run scoreboard players set @s exp.rotation 3

# switch to wandering if no target is found
execute unless function expansion:mobs/mech/behavior/targeting/has_target run return run scoreboard players set @s exp.rotation 4
