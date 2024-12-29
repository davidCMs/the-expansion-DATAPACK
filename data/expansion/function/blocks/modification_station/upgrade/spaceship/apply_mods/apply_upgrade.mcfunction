# merge the mod array with the spaceship
data modify entity @s item.components.minecraft:custom_data.ModStorage merge from storage expansion:temp ModStorage

# apply the spaceship cmd to both the spaceship and the display item
data modify entity @s item.components.minecraft:item_model set from storage expansion:temp ModStorage.skin.components.minecraft:item_model

# remove tag
execute on vehicle run tag @s remove exp.being_modified


