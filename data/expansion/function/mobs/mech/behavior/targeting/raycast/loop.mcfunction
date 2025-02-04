# return a success if this player is found
execute if entity @s[dx=0] run return 1

execute unless block ~ ~ ~ #expansion:air run return fail

execute positioned ^ ^ ^.5 run return run function expansion:mobs/mech/behavior/targeting/raycast/loop

return fail
