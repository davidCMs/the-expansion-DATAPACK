# positions closest to idle frame are 0, 20 and 40
execute unless score @s exp.timer_1 matches ..0 run function expansion:vehicles/mech/anim_control/find_idle_frame

scoreboard players add @s exp.timer_1 1

# fake input until a frame is found
scoreboard players set #controlled exp.bool 1

execute if score @s exp.timer_1 matches 0 run tag @s add exp.mech_stop_walking