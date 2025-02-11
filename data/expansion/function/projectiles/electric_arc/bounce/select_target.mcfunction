# set the bounce entity to the new owner
data modify entity @s Owner set from storage expansion:owner data.current_UUID

# reduce the number of allowed bounces
scoreboard players remove @s exp.counter_2 1

# don't register hits in the next few frames to prevent the same entity being hit twice
scoreboard players set @s exp.cooldown 8

# add some range
scoreboard players set @s exp.max_range 30