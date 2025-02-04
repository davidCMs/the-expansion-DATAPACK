# fail if no target is selected
execute unless function expansion:mobs/mech/behavior/targeting/has_target run return fail

# fail if the target is out of range
execute on origin unless entity @s[distance=..50] run return fail

# cast a ray towards the target, if it hits, the target is visible.
execute rotated as @s anchored eyes positioned ^ ^ ^ positioned ~ ~1 ~ on origin facing entity @s eyes run return run function expansion:mobs/mech/behavior/targeting/raycast/cast

return fail