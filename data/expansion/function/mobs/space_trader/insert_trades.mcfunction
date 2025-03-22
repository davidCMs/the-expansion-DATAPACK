data modify entity @s Offers.Recipes append value {maxUses:2147483647,buy:{id:"minecraft:diamond",count:10},sell:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":'{"translate":"exp_blocks_planetarium_name","italic":false}',lore:['{"translate":"exp_lore_tooltips","underlined": true}','{"translate": "exp_blocks_planetarium_tip1"}'],"minecraft:item_model":"expansion:blocks/planetarium","minecraft:unbreakable":{show_in_tooltip:false},"minecraft:custom_data":{exp_item:{name:"planetarium",expansion_coas:1b,exp_block:1b}}}}}

data modify entity @s Offers.Recipes append value {maxUses:2147483647,buy:{id:"minecraft:diamond",count:5},sell:{id:"minecraft:potion",count:1,components:{"minecraft:custom_data":{exp_item:{name:"lacrymae"},exp_item.from_extractor:0b},"minecraft:potion_contents":{custom_effects:[{id:"minecraft:speed",amplifier:4b,duration:600,show_particles:0b},{id:"minecraft:haste",amplifier:4b,duration:600,show_particles:0b},{id:"minecraft:strength",amplifier:4b,duration:600,show_particles:0b},{id:"minecraft:instant_damage",amplifier:1b,duration:1,show_particles:0b},{id:"minecraft:nausea",amplifier:4b,duration:1200,show_particles:0b},{id:"minecraft:poison",amplifier:1b,duration:1200,show_particles:0b},{id:"minecraft:glowing",amplifier:4b,duration:1200,show_particles:0b}],custom_color:6160481},"minecraft:custom_name":'{"translate":"exp_fuel_lacrymae_name","italic":false}',lore:['{"translate":"exp_fuel_lacrymae_tip1"}','{"translate":"exp_fuel_lacrymae_tip2"}']}}}

data modify entity @s Offers.Recipes append value {maxUses:2147483647,buy:{id:"minecraft:jigsaw",count:1,components:{"minecraft:custom_name":'{"translate":"exp_items_complexmechanism_name","italic":false}',"minecraft:custom_data":{exp_item:{name:"complex_mechanism",crafting_count:1,max_stack_size:64}},"minecraft:item_model":"expansion:crafting/complex_mechanism"}},buyB:{id:"minecraft:crying_obsidian",count:12},sell:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":'{"translate":"exp_blocks_extractor_name","italic":false}',lore:['{"translate":"exp_lore_tooltips","underlined": true}','{"translate": "exp_blocks_extractor_tip1"}','{"translate": "exp_blocks_extractor_tip2"}'],"minecraft:item_model":"expansion:blocks/extractor","minecraft:unbreakable":{show_in_tooltip:false},"minecraft:custom_data":{exp_item:{name:"extractor",expansion_coas:1b,exp_block:1b}}}}}

data modify entity @s Offers.Recipes append value {maxUses:2147483647,buy:{id:"minecraft:jigsaw",count:35,components:{"minecraft:custom_name":'{"translate":"exp_items_rawtitanium_name","italic":false}',"minecraft:custom_data":{exp_item:{name:"raw_titanium",crafting_count:1,max_stack_size:64}},"minecraft:item_model":"expansion:crafting/raw_titanium"}},buyB:{id:"minecraft:jigsaw",count:2,components:{"minecraft:custom_name":'{"translate":"exp_items_cpu_name","italic":false}',"minecraft:custom_data":{exp_item:{name:"processing_unit",crafting_count:1,max_stack_size:64}},"minecraft:item_model":"expansion:crafting/cpu"}},sell:{id:"minecraft:jigsaw",count:1,components:{"minecraft:custom_name":'{"translate":"exp_items_shipcockpit_name","italic":false}',"minecraft:custom_data":{exp_item:{name:"spaceship_cockpit"}},"minecraft:item_model":"expansion:crafting/spaceship_parts/cockpit"}}}

data modify entity @s Offers.Recipes append value {maxUses:2147483647,buy:{id:"minecraft:jigsaw",count:30,components:{"minecraft:custom_name":'{"translate":"exp_items_rawtitanium_name","italic":false}',"minecraft:custom_data":{exp_item:{name:"raw_titanium",crafting_count:1,max_stack_size:64}},"minecraft:item_model":"expansion:crafting/raw_titanium"}},buyB:{id:"minecraft:jigsaw",count:2,components:{"minecraft:custom_name":'{"translate":"exp_items_thruster_name","italic":false}',"minecraft:custom_data":{exp_item:{name:"thruster",crafting_count:1,max_stack_size:64}},"minecraft:item_model":"expansion:crafting/thruster"}},sell:{id:"minecraft:jigsaw",count:1,components:{"minecraft:custom_name":'{"translate":"exp_items_shipengines_name","italic":false}',"minecraft:custom_data":{exp_item:{name:"spaceship_engines"}},"minecraft:item_model":"expansion:crafting/spaceship_parts/engines"}}}

data modify entity @s Offers.Recipes append value {maxUses:2147483647,buy:{id:"minecraft:jigsaw",count:20,components:{"minecraft:custom_name":'{"translate":"exp_items_rawtitanium_name","italic":false}',"minecraft:custom_data":{exp_item:{name:"raw_titanium",crafting_count:1,max_stack_size:64}},"minecraft:item_model":"expansion:crafting/raw_titanium"}},sell:{id:"minecraft:jigsaw",count:1,components:{"minecraft:custom_name":'{"translate":"exp_items_shiprwing_name"}',"minecraft:custom_data":{exp_item:{name:"spaceship_right_wing"}},"minecraft:item_model":"expansion:crafting/spaceship_parts/rightwing"}}}

data modify entity @s Offers.Recipes append value {maxUses:2147483647,buy:{id:"minecraft:jigsaw",count:20,components:{"minecraft:custom_name":'{"translate":"exp_items_rawtitanium_name","italic":false}',"minecraft:custom_data":{exp_item:{name:"raw_titanium",crafting_count:1,max_stack_size:64}},"minecraft:item_model":"expansion:crafting/raw_titanium"}},sell:{id:"minecraft:jigsaw",count:1,components:{"minecraft:custom_name":'{"translate":"exp_items_shiplwing_name"}',"minecraft:custom_data":{exp_item:{name:"spaceship_left_wing"}},"minecraft:item_model":"expansion:crafting/spaceship_parts/leftwing"}}}

data modify entity @s Offers.Recipes append value {maxUses:2147483647,buy:{id:"minecraft:jigsaw",count:15,components:{"minecraft:custom_name":'{"translate":"exp_items_rawtitanium_name","italic":false}',"minecraft:custom_data":{exp_item:{name:"raw_titanium",crafting_count:1,max_stack_size:64}},"minecraft:item_model":"expansion:crafting/raw_titanium"}},sell:{id:"minecraft:jigsaw",count:1,components:{"minecraft:custom_name":'{"translate":"exp_items_shipnose_name"}',"minecraft:custom_data":{exp_item:{name:"spaceship_nose"}},"minecraft:item_model":"expansion:crafting/spaceship_parts/nose"}}}

# set moon gravity
function expansion:mechanics/gravity/moon