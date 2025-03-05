# add a tag to be able to target the player who is currently running this function from any context
tag @s add exp.tick_player

# unique id
execute unless score @s exp.unique_id matches 1.. run function expansion:player/assign_id
scoreboard players operation #search exp.unique_id = @s exp.unique_id

## Rightclick
execute if score @s exp.rightclick matches 1.. if predicate expansion:nbt_checks/selected_item/expansion_coas run function expansion:player/rightclick/main

## Vehicles
execute if entity @s[tag=exp.inside_vehicle] run function expansion:vehicles/main

## Spacesuits
execute if function expansion:spacesuits/unequip/check_tags run function expansion:spacesuits/unequip/main
execute if predicate expansion:armor/any run function expansion:spacesuits/main

# temperature, oxygen, gravity & planet events
execute if predicate expansion:dimension/exp_dimensions run function expansion:solar_system/planets_main
execute unless predicate expansion:dimension/exp_dimensions if function expansion:mechanics/gravity/has_changed_gravity run function expansion:mechanics/gravity/remove_all

# pocket space transportation
execute if entity @s[tag=exp.check_loaded] run function expansion:items/transporter/transport/check_loaded

# death fix
execute if score @s exp.death matches 1.. run function expansion:player/death

# remove scores
function expansion:player/decrement_scores

## stinky section
# delete gui items
clear @s minecraft:jigsaw[custom_data~{gui_item:1b}]
# remove water when mining ores
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{expansion_ore:1b}}}},distance=..10,limit=5] at @s run function expansion:blocks/ores/fix_water
# kill gui items
execute if predicate expansion:periodic/5 run kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{gui_item:1b}}}},distance=..20,limit=10,sort=arbitrary]
# craft fabricator
execute if predicate expansion:periodic/5 at @e[type=item,nbt={Item:{id:"minecraft:jigsaw",components:{"minecraft:custom_data":{exp_item.name:"steel_ingot"}},count:15}},distance=..10,limit=1,sort=arbitrary] if entity @e[type=item,nbt={Item:{id:"minecraft:diamond",count:2}},distance=..1.5,limit=1,sort=arbitrary] if entity @e[type=item,nbt={Item:{id:"minecraft:copper_ingot",count:5}},distance=..1.5,limit=1,sort=arbitrary] if entity @e[type=item,nbt={Item:{id:"minecraft:crafting_table",count:1}},distance=..1.5,limit=1,sort=arbitrary] run function expansion:blocks/fabricator/create

# remove ticking tag
tag @s remove exp.tick_player