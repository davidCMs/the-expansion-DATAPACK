# get the alignment of the block
function expansion:blocks/determine_rotation

# terraformer
execute if predicate expansion:nbt_checks/selected_item/blocks/terraformer run function expansion:blocks/terraformer/place/summon
# lacrymae extractor
execute if predicate expansion:nbt_checks/selected_item/blocks/lacrymae_extractor run function expansion:blocks/lacrymae_extractor/place/summon
# compressor
execute if predicate expansion:nbt_checks/selected_item/blocks/compressor run function expansion:blocks/compressor/place/summon
# enhancer
execute if predicate expansion:nbt_checks/selected_item/blocks/enhancer run function expansion:blocks/enhancer/place/summon
# arc_furnace
execute if predicate expansion:nbt_checks/selected_item/blocks/arc_furnace run function expansion:blocks/arc_furnace/place/summon
# fabricator
execute if predicate expansion:nbt_checks/selected_item/blocks/fabricator run function expansion:blocks/fabricator/place/summon
# oxygenator
execute if predicate expansion:nbt_checks/selected_item/blocks/oxygenator run function expansion:blocks/oxygenator/place/summon
# portal
execute if predicate expansion:nbt_checks/selected_item/blocks/portal unless entity @n[type=minecraft:item_display,tag=exp.portal,distance=..4] run function expansion:blocks/portal/place/summon
# assembler
execute if predicate expansion:nbt_checks/selected_item/blocks/assembler run function expansion:blocks/assembler/place/summon
# rocket parts
execute if predicate expansion:nbt_checks/selected_item/blocks/rocket_part run function expansion:blocks/rocket_parts/place/summon
# tesla coil
execute if predicate expansion:nbt_checks/selected_item/blocks/tesla_coil run function expansion:blocks/tesla_coil/place/summon
# modification station
execute if predicate expansion:nbt_checks/selected_item/blocks/modstation run function expansion:blocks/modification_station/place/summon
# transporter (pocket space)
execute if predicate expansion:nbt_checks/selected_item/items/pocket_space run function expansion:blocks/transporter/place/summon
# planetarium
execute if predicate expansion:nbt_checks/selected_item/blocks/planetarium run function expansion:blocks/planetarium/place/summon

# remove one from the helt item count
item modify entity @s[gamemode=!creative] weapon.mainhand expansion:utility/reduce_count

# sound
playsound minecraft:block.metal.place block @s