# set the score of the display equal to the score of the ship
execute store result score @s exp.unique_id on vehicle run scoreboard players get @s exp.unique_id

# merge the mod array with the spaceship
data modify entity @s item.components.minecraft:custom_data.ModStorage merge from storage expansion:temp ModStorage

# apply the spaceship cmd to both the spaceship and the display item
data modify entity @s item.components.minecraft:custom_model_data set from storage expansion:temp ModStorage.skin.components.minecraft:custom_model_data

# remove tag
execute on vehicle run tag @s remove exp.being_modified
scoreboard players reset @s exp.unique_id


