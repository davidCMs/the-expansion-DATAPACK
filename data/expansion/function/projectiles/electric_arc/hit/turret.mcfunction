# reset the cooldown of a turret this hits
execute on vehicle if score @s exp.cooldown matches 2.. run scoreboard players set @s exp.cooldown 2

return 2