# get the alignment of the block
function expansion:blocks/determine_rotation

# place the correct block
execute if predicate expansion:nbt_checks/selected_item/blocks/terraformer run function expansion:blocks/terraformer/place/summon
execute if predicate expansion:nbt_checks/selected_item/blocks/lacrymae_extractor run function expansion:blocks/lacrymae_extractor/place/summon
execute if predicate expansion:nbt_checks/selected_item/blocks/compressor run function expansion:blocks/compressor/place/summon
execute if predicate expansion:nbt_checks/selected_item/blocks/enhancer run function expansion:blocks/enhancer/place/summon
execute if predicate expansion:nbt_checks/selected_item/blocks/arc_furnace run function expansion:blocks/arc_furnace/place/summon
execute if predicate expansion:nbt_checks/selected_item/blocks/fabricator run function expansion:blocks/fabricator/place/summon
execute if predicate expansion:nbt_checks/selected_item/blocks/oxygenator run function expansion:blocks/oxygenator/place/summon
execute if predicate expansion:nbt_checks/selected_item/blocks/portal run function expansion:blocks/portal/place/summon
execute if predicate expansion:nbt_checks/selected_item/blocks/assembler run function expansion:blocks/assembler/place/summon
execute if predicate expansion:nbt_checks/selected_item/blocks/rocket_part run function expansion:blocks/rocket_parts/place/summon
execute if predicate expansion:nbt_checks/selected_item/blocks/tesla_coil run function expansion:blocks/tesla_coil/place/summon
execute if predicate expansion:nbt_checks/selected_item/blocks/modstation run function expansion:blocks/modification_station/place/summon
execute if predicate expansion:nbt_checks/selected_item/items/pocket_space run function expansion:blocks/transporter/place/summon
execute if predicate expansion:nbt_checks/selected_item/blocks/planetarium run function expansion:blocks/planetarium/place/summon

# remove one from the held item count
item modify entity @s[gamemode=!creative] weapon.mainhand expansion:utility/reduce_count

# sound
playsound minecraft:block.metal.place block @s