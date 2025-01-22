# animation control
execute if entity @s[tag=exp.mech_action_stop] run return run function expansion:vehicles/mech/actions/drill/stop
execute if score @s exp.mech_action_dur matches 1 run function expansion:vehicles/mech/actions/drill/init
execute if score @s exp.mech_action_anim matches 0 run function expansion:vehicles/mech/actions/drill/start_loop

# drilling terrain
execute if predicate expansion:periodic/2 if score @s exp.mech_action_dur matches 20.. run function expansion:vehicles/mech/actions/drill/check

# sound loop
execute if predicate expansion:periodic/40 run playsound expansion:mech.drill.loop ambient @a ~ ~ ~ 0.2