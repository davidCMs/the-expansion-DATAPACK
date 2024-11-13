# calculate the total number of passengers, if it is 0 it means that no new markers were able to be made, 
# meaning that the oxygenation was completed successfully
execute on vehicle run scoreboard players add @s exp.hold_value 1

# expand some new markers
execute unless score @s exp.delay matches 1.. if entity @s[tag=exp.new_scanner_link] run return run function expansion:blocks/oxygenator/oxygenate/fill_space/on_snowballs

# decay some old markers if no new markers are nearby
execute unless score @s exp.delay matches 1.. unless entity @s[tag=exp.new_scanner_link] run return run function expansion:blocks/oxygenator/oxygenate/fill_space/add_decay

# add delay to this node so it is not checked again
execute if score @s exp.delay matches 1.. run return run scoreboard players remove @s exp.delay 1