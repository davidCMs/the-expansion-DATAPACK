# stop if no target exists
execute unless entity @s[tag=exp.mech_arm_controller] unless function expansion:mobs/mech/behavior/targeting/has_target run return fail

# randomly check the desired range for the left or right arm
function expansion:mobs/mech/behavior/targeting/check_target_range

execute if score #temp exp.distance matches 1 run return run say target too close
return fail