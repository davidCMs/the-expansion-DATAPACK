execute on passengers run data remove entity @s interaction

# rotate the rocket as the returner
rotate @s ~ ~

# kill the placeholder target of the rocket if it had one
execute on passengers if entity @s[type=snowball] on origin if entity @s[type=marker] run kill @s

# set the target of the rocket to the owner of the rocket to return to sender
data modify storage expansion:temp rocket_owner set from entity @s item.components."minecraft:custom_data".rocket_owner
execute on passengers if entity @s[type=snowball] run data modify entity @s[type=minecraft:snowball] Owner set from storage expansion:temp rocket_owner
data remove storage expansion:temp rocket_owner

# make sure the rocket doesn't explode in the next few frames
scoreboard players add @s exp.cooldown 10

# add some lifetime to the rocket
scoreboard players add @s exp.max_range 100