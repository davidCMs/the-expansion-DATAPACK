# check if a valid target exists and lock it for the select_target function
execute as @e[type=!#expansion:ignore,distance=..12,predicate=!expansion:compare_score/arc_id,limit=1,sort=random] run return run function expansion:utilities/raycast/target/lock_dummy

return fail