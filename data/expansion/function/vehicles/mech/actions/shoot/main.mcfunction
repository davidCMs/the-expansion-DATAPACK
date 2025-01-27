# animation control
execute if entity @s[tag=exp.mech_action_stop] run return run function expansion:vehicles/mech/actions/shoot/stop
execute if score @s exp.mech_action_dur matches 1 run function expansion:vehicles/mech/actions/shoot/init

# cast rays
#execute if entity @s[tag=exp.left_arm_control] if predicate expansion:periodic/2 if score @s exp.mech_action_dur matches 20.. on vehicle on passengers if entity @s[tag=aj.mech_torso.root] at @s positioned ^1.3 ^ ^3 rotated as @s summon marker run function expansion:vehicles/mech/actions/shoot/raycast/cast
#execute if entity @s[tag=exp.right_arm_control] if predicate expansion:periodic/2 if score @s exp.mech_action_dur matches 20.. on vehicle on passengers if entity @s[tag=aj.mech_torso.root] at @s positioned ^-1.3 ^ ^3 rotated as @s summon marker run function expansion:vehicles/mech/actions/shoot/raycast/cast

# sound loop
#scoreboard players operation #temp exp.mech_action_dur = @s exp.mech_action_dur
#scoreboard players operation #temp exp.mech_action_dur += #14 exp.const
#scoreboard players operation #temp exp.mech_action_dur %= #36 exp.const
#execute if score #temp exp.mech_action_dur matches 0 if score @s exp.mech_action_dur matches 20.. run playsound expansion:mech.minigun.loop ambient @a ~ ~ ~ 0.5