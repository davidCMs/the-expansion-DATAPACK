# choose a target
# has a chance to not switch targets, choose the nearest target or choose a random target
execute store result score #temp exp.math run random value 0..2

execute unless score #temp exp.math matches 1.. run return fail
execute if score #temp exp.math matches 1 run data modify storage expansion:owner data.current_UUID set from entity @r[distance=..50] UUID
execute if score #temp exp.math matches 2 run data modify storage expansion:owner data.current_UUID set from entity @p[distance=..50] UUID

# link it
function expansion:utilities/snowball_link/link_from_storage