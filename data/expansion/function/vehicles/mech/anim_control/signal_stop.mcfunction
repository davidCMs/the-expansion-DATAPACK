# positions closest to idle frame are 0, 20 and 40
execute unless score @s exp.timer_1 matches ..0 run function expansion:vehicles/mech/anim_control/find_idle_frame

execute if score @s exp.timer_1 matches 0 run function expansion:vehicles/mech/anim_control/stop_walking

scoreboard players add @s exp.timer_1 1
