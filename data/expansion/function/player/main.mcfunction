# add a tag to be able to target the player who is currently running this function from any context
tag @s add exp.tick_player

# unique id
execute unless score @s exp.unique_id matches 1.. run function expansion:player/assign_id
scoreboard players operation #search exp.unique_id = @s exp.unique_id

# global rightclick actions
execute if score @s exp.rightclick matches 1.. if predicate expansion:nbt_checks/selected_item/expansion_coas run function expansion:player/rightclick/main

# run the vehicle functions if the player is inside a vehicle
execute if entity @s[tag=exp.inside_vehicle] run function expansion:vehicles/main

# temperature, oxygen, gravity & planet events
execute if predicate expansion:dimension/exp_dimensions run function expansion:solar_system/planets_main
# reset gravity if not on an expansion planet
execute if entity @s[tag=exp.has_changed_gravity] unless predicate expansion:dimension/exp_dimensions run function expansion:mechanics/gravity/remove_all

# equipment modules
execute if predicate expansion:nbt_checks/armor/space_equipment/has_module run function expansion:items/space_equipment/modules/main
execute if entity @s[tag=exp.wearing_equipment,tag=!exp.inside_vehicle] unless predicate expansion:nbt_checks/armor/space_equipment/equipment run function expansion:items/space_equipment/unequip

# rocket boots
execute if predicate expansion:nbt_checks/armor/rocket_boots unless predicate expansion:dimension/zero_gravity run function expansion:items/rocket_boots/main

# magnetic_boots 
execute if predicate expansion:nbt_checks/armor/magnetic_boots run function expansion:items/magnetic_boots/main
execute unless predicate expansion:nbt_checks/armor/magnetic_boots run tag @s[tag=exp.ignores_gravity_effects] remove exp.ignores_gravity_effects

# pocket space transportation
execute if entity @s[tag=exp.check_loaded] run function expansion:items/transporter/transport/check_loaded

# death fix
execute if score @s exp.death matches 1.. run function expansion:player/death

# cooldown utility
scoreboard players remove @s[scores={exp.cooldown=1..}] exp.cooldown 1
scoreboard players remove @s[scores={exp.portal_cooldown=1..}] exp.portal_cooldown 1
execute if score @s exp.warmup matches 1.. run function expansion:utilities/warmup/main

# custom hitbox attack cooldown
scoreboard players remove @s[scores={exp.player_attack_cooldown=1..}] exp.player_attack_cooldown 10
scoreboard players set @s[scores={exp.player_attack_cooldown=..-1}] exp.player_attack_cooldown 0

# reset all the detection scoreboards
scoreboard players set @s[scores={exp.jump=1..}] exp.jump 0
execute unless score @s exp.rightclick matches 0 run scoreboard players set @s exp.rightclick 0

## stinky section
# delete gui items
clear @s minecraft:jigsaw[custom_data~{gui_item:1b}]
# kill gui items
execute if predicate expansion:periodic/5 run kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{gui_item:1b}}}},distance=..20,limit=10,sort=arbitrary]
# remove water when mining ores
execute if predicate expansion:periodic/5 as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{expansion_ore:1b}}}},distance=..10,limit=1] at @s run function expansion:blocks/ores/fix_water
# craft fabricator
execute if predicate expansion:periodic/5 at @e[type=item,nbt={Item:{id:"minecraft:jigsaw",components:{"minecraft:custom_data":{steel_ingot:1b}},count:15}},distance=..10,limit=1,sort=arbitrary] if entity @e[type=item,nbt={Item:{id:"minecraft:diamond",count:2}},distance=..1.5,limit=1,sort=arbitrary] if entity @e[type=item,nbt={Item:{id:"minecraft:copper_ingot",count:5}},distance=..1.5,limit=1,sort=arbitrary] if entity @e[type=item,nbt={Item:{id:"minecraft:crafting_table",count:1}},distance=..1.5,limit=1,sort=arbitrary] run function expansion:blocks/fabricator/create

# remove ticking tag
tag @s remove exp.tick_player