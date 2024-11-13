# flow control, make sure only a few snowballs run this every tick
execute if score #temp exp.counter_1 matches 5.. run return fail
scoreboard players add #temp exp.counter_1 1
scoreboard players set @s exp.delay 5

# scan neighbouring blocks and summon new markers to progres the wave
execute on origin run function expansion:blocks/oxygenator/oxygenate/fill_space/scan_nearby_blocks
tag @s remove exp.new_scanner_link