# store the vehicles UUID so I can match it to the snowball
data modify storage expansion:owner data.current_UUID set from entity @s UUID

# signal the main block to finish the selecting process
scoreboard players set #temp exp.bool 1