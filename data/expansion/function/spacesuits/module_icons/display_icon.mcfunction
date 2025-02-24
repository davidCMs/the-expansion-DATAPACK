# Adapt the icon of oxygen tanks to their level
execute if data storage expansion:temp ModStorage[0].components."minecraft:custom_data".oxygen_tank run function expansion:spacesuits/module_icons/find_tank_icon/init

# if the module has no icon (empty module)
execute unless data storage expansion:temp ModStorage[0].components."minecraft:custom_data".icon run data modify storage expansion:temp ModStorage[0].components."minecraft:custom_data".icon set value "＀"

# merge the icon to the storage
data modify storage expansion:temp icons append from storage expansion:temp ModStorage[0].components."minecraft:custom_data".icon