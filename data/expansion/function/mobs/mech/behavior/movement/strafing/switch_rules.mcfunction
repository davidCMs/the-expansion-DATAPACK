# if the target is not in range, switch states to either backing away or approaching
execute on passengers if entity @s[tag=exp.mech_arm_controller] unless function expansion:mobs/mech/behavior/targeting/target_in_range on vehicle run scoreboard players set @s exp.rotation 1

# switch to wandering if no target is found
execute unless function expansion:mobs/mech/behavior/targeting/has_target run return run scoreboard players set @s exp.rotation 4