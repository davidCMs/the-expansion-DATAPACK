scoreboard players operation #temp exp.temperature = @s exp.temperature
scoreboard players operation #temp exp.temperature *= #-1 exp.const

execute if score #temp exp.temperature > #head exp.cold_resist run data modify storage expansion:temp tellraw.head[1].color set value "red"
execute if score #temp exp.temperature > #chest exp.cold_resist run data modify storage expansion:temp tellraw.chest[1].color set value "red"
execute if score #temp exp.temperature > #legs exp.cold_resist run data modify storage expansion:temp tellraw.legs[1].color set value "red"
execute if score #temp exp.temperature > #feet exp.cold_resist run data modify storage expansion:temp tellraw.feet[1].color set value "red"

scoreboard players reset #temp exp.temperature