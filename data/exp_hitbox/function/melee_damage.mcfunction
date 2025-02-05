# reset the interaction entity
execute on passengers run data remove entity @s[type=interaction] attack

# store the y motion of the player
execute as @p store result score @s exp.dy run data get entity @s Motion[1] 10

# critical hit detection 
execute as @p if function exp_hitbox:cando_crit run function exp_hitbox:add_crit

# set the interaction vehicle damage score for further processing
scoreboard players operation @s exp.damage = @p exp.player_attack