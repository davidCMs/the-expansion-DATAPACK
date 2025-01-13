# when no input is given, but the mech is still walking, keep walking until the walking frame that is closest to the idle state
execute if function expansion:vehicles/mech/propulsion/should_stop_walking run function expansion:vehicles/mech/anim_control/signal_stop

# size changes
execute unless score @s exp.size_mod matches 0 run function expansion:vehicles/mech/size_change

# movement
execute if function expansion:vehicles/mech/propulsion/allowed rotated ~ 0 align y run function expansion:vehicles/mech/propulsion/drive

title @p actionbar {"score":{"name":"@s","objective":"exp.fuel_level"}}

# during actions
execute if entity @s[tag=exp.mech.action.left] run function expansion:vehicles/mech/actions/lefthand/main
execute if entity @s[tag=exp.mech.action.right] run function expansion:vehicles/mech/actions/righthand/main

# replenish jetpack fuel when on the ground, not maxed, and not jumping
execute unless score @s exp.fuel_level matches 40.. unless score @s exp.jump matches 1 if entity @s[nbt={OnGround:1b}] if predicate expansion:periodic/2 run scoreboard players add @s exp.fuel_level 1

# reset scores
scoreboard players remove @s[scores={exp.mech_left_anim=0..}] exp.mech_left_anim 1
scoreboard players remove @s[scores={exp.mech_right_anim=0..}] exp.mech_right_anim 1
scoreboard players remove @s[scores={exp.cooldown=1..}] exp.cooldown 1
scoreboard players reset @s[scores={exp.warmup=1}] exp.warmup
scoreboard players reset @s[scores={exp.jump=1..}] exp.jump