function expansion:utilities/sounds/button

execute if score @s exp.timer_1 matches 1.. run return run tag @s add exp.depressurize
scoreboard players set @s exp.timer_1 1
