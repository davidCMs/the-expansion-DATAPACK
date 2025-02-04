# checks if a target is inside the desired range

# check for each possible weapon if the target is in range
execute if score @s exp.mech_action_id matches 0 on vehicle on passengers if entity @s[tag=exp.mech_targeter] on origin if entity @s[distance=..5] run return 0
execute if score @s exp.mech_action_id matches 1 on vehicle on passengers if entity @s[tag=exp.mech_targeter] on origin if entity @s[distance=2..5] run return 1
execute if score @s exp.mech_action_id matches 2 on vehicle on passengers if entity @s[tag=exp.mech_targeter] on origin if entity @s[distance=10..50] run return 2
execute if score @s exp.mech_action_id matches 3 on vehicle on passengers if entity @s[tag=exp.mech_targeter] on origin if entity @s[distance=10..50] run return 3
execute if score @s exp.mech_action_id matches 4 on vehicle on passengers if entity @s[tag=exp.mech_targeter] on origin if entity @s[distance=..5] run return 4

return fail