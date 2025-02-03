# x plane
execute if function expansion:items/railgun/raycast/bounce/check_x run function expansion:items/railgun/raycast/bounce/xplane
# y plane
execute if function expansion:items/railgun/raycast/bounce/check_y run function expansion:items/railgun/raycast/bounce/yplane
# z plane
execute if function expansion:items/railgun/raycast/bounce/check_z run function expansion:items/railgun/raycast/bounce/zplane

scoreboard players remove #temp2 exp.speed 1

particle flame ~ ~ ~ 0 0 0 0 1 force

# repeat
execute if score #temp2 exp.speed matches 1.. if block ^ ^ ^0.1 #expansion:air rotated as @s positioned ^ ^ ^0.1 run function expansion:items/railgun/raycast/bounce/loop