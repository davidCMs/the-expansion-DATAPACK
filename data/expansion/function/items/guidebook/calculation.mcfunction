# store player x rotation
execute store result score #temp exp.rotation run data get entity @s Rotation[1] 1000
# store current time
execute store result score #temp exp.time run time query daytime
scoreboard players operation #temp exp.time *= #1000 exp.const

# calculate player angle ratio
scoreboard players operation #temp exp.rotation *= #-1 exp.const
scoreboard players operation #temp exp.rotation -= #15000 exp.const
# correct the player rotation for the second half of the night where the moon is weird because of minecrafts weird rotation
execute if entity @s[y_rotation=0..-180] run function expansion:items/guidebook/correction
scoreboard players operation #temp exp.rotation /= #150 exp.const

# calculate moon angle ratio
scoreboard players operation #temp exp.time -= #13700000 exp.const
scoreboard players operation #temp exp.time /= #86 exp.const

# divide the ratio's and see if they are approximately equal
execute store result score #temp exp.hold_value run scoreboard players operation #temp exp.time /= #temp exp.rotation
execute if score #temp exp.hold_value matches 90..110 run scoreboard players set #temp exp.bool 1

# play a charge effect every second.
scoreboard players operation #temp exp.time = @s exp.timer_1
scoreboard players operation #temp exp.time %= #80 exp.const
execute if score #temp exp.bool matches 1 if score #temp exp.time matches 0 run function expansion:items/guidebook/charge

# increment timer
execute if score #temp exp.bool matches 1 run scoreboard players add @s exp.timer_1 1

# give the guide if the timer is full
execute if score @s exp.timer_1 matches 400 run function expansion:items/guidebook/summon

# reset all used scoreboards
scoreboard players reset #temp exp.hold_value
scoreboard players reset #temp exp.time
scoreboard players reset #temp exp.rotation
scoreboard players reset #temp exp.bool