# give the arc a random id (used to prevent it from hitting already hit entities)
execute store result score #temp exp.arc_id run random value -10000..10000
scoreboard players operation @s exp.arc_id = #temp exp.arc_id

# cast the arc and set its parameters
execute anchored eyes positioned ^ ^-.5 ^1 summon snowball run function expansion:items/arc_thrower/cast