# swap the curent helmet of the player with the space equipment
execute summon armor_stand run function expansion:items/space_equipment/swap_helmet

# for each oxygen tank in the equipments modstorage, extract its values and add them to make the oxygen level and max
data modify storage expansion:temp ModStorage set from entity @s Inventory[{Slot:103b}].components."minecraft:custom_data".ModStorage
function expansion:items/space_equipment/get_oxygen_data/init_loop

# merge the values found with the player
scoreboard players operation @s exp.oxygen_lvl = #temp exp.oxygen_lvl
scoreboard players operation @s exp.oxygen_max = #temp exp.oxygen_max

# equip sound
playsound minecraft:item.armor.equip_iron player @a ~ ~ ~
# tag to detect when a players removes equipment
tag @s add exp.wearing_equipment