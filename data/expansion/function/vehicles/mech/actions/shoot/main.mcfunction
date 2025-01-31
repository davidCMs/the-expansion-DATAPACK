# animation control
execute if entity @s[tag=exp.mech_action_stop] run return run function expansion:vehicles/mech/actions/shoot/stop
execute if score @s exp.mech_action_dur matches 1 run function expansion:vehicles/mech/actions/shoot/start

# shoot bullets, tag is added by AJ in animation
execute if entity @s[tag=exp.shoot] run function expansion:vehicles/mech/actions/shoot/init