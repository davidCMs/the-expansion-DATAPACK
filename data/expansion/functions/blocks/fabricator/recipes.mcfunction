# steel plate
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:2b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:10b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:11b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}}]} run loot replace entity @s weapon.mainhand loot expansion:items/steel/steel_plate
# amethonium plate
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b}},{Slot:2b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b}},{Slot:10b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b}},{Slot:11b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b}}]} run loot replace entity @s weapon.mainhand loot expansion:items/amethonium_plate
# processing unit
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:2b,id:"minecraft:gold_ingot"},{Slot:10b,id:"minecraft:gold_ingot"},{Slot:11b,id:"minecraft:comparator"},{Slot:12b,id:"minecraft:gold_ingot"},{Slot:20b,id:"minecraft:gold_ingot"}]} run loot replace entity @s weapon.mainhand loot expansion:items/processing_unit
# wrench
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:3b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:11b,id:"minecraft:stick"},{Slot:19b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}}]} run loot replace entity @s weapon.mainhand loot expansion:tools/wrench
# buggy wheel
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:2b,id:"minecraft:leather"},{Slot:10b,id:"minecraft:leather"},{Slot:11b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:12b,id:"minecraft:leather"},{Slot:20b,id:"minecraft:leather"}]} run loot replace entity @s weapon.mainhand loot expansion:items/buggy_wheel
# copper wire
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b,id:"minecraft:copper_ingot"},{Slot:2b,id:"minecraft:stick"},{Slot:3b,id:"minecraft:copper_ingot"},{Slot:10b,id:"minecraft:copper_ingot"},{Slot:11b,id:"minecraft:stick"},{Slot:12b,id:"minecraft:copper_ingot"},{Slot:19b,id:"minecraft:copper_ingot"},{Slot:20b,id:"minecraft:stick"},{Slot:21b,id:"minecraft:copper_ingot"}]} run loot replace entity @s weapon.mainhand loot expansion:items/copper_wire
# electromagnet
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b,id:"minecraft:iron_ingot"},{Slot:2b,id:"minecraft:jigsaw",tag:{copper_wire:1b}},{Slot:3b,id:"minecraft:iron_ingot"},{Slot:10b,id:"minecraft:jigsaw",tag:{copper_wire:1b}},{Slot:12b,id:"minecraft:jigsaw",tag:{copper_wire:1b}},{Slot:19b,id:"minecraft:iron_ingot"},{Slot:20b,id:"minecraft:jigsaw",tag:{copper_wire:1b}},{Slot:21b,id:"minecraft:iron_ingot"}]} run loot replace entity @s weapon.mainhand loot expansion:items/electromagnet
# fan
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:2b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:10b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:11b,id:"minecraft:jigsaw",tag:{steel_plate:1b}},{Slot:12b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:20b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}}]} run loot replace entity @s weapon.mainhand loot expansion:items/fan
# gear
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:2b,id:"minecraft:copper_ingot"},{Slot:10b,id:"minecraft:copper_ingot"},{Slot:12b,id:"minecraft:copper_ingot"},{Slot:20b,id:"minecraft:copper_ingot"}]} run loot replace entity @s weapon.mainhand loot expansion:items/gear
# simple mechanism
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:2b,id:"minecraft:jigsaw",tag:{gear:1b}},{Slot:10b,id:"minecraft:jigsaw",tag:{gear:1b}},{Slot:11b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}}]} run loot replace entity @s weapon.mainhand loot expansion:items/simple_mechanism
# complex mechanism
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b,id:"minecraft:jigsaw",tag:{elektromotor:1b}},{Slot:2b,id:"minecraft:jigsaw",tag:{simple_mechanism:1b}},{Slot:10b,id:"minecraft:jigsaw",tag:{simple_mechanism:1b}},{Slot:11b,id:"minecraft:jigsaw",tag:{amethonium_plate:1b}}]} run loot replace entity @s weapon.mainhand loot expansion:items/complex_mechanism
# thruster
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:2b,id:"minecraft:jigsaw",tag:{simple_mechanism:1b}},{Slot:3b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:11b,id:"minecraft:jigsaw",tag:{steel_plate:1b}},{Slot:19b,id:"minecraft:jigsaw",tag:{steel_plate:1b}},{Slot:21b,id:"minecraft:jigsaw",tag:{steel_plate:1b}}]} run loot replace entity @s weapon.mainhand loot expansion:items/thruster
# circuit board
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b,id:"minecraft:jigsaw",tag:{processing_unit:1b}},{Slot:2b,id:"minecraft:repeater"},{Slot:3b,id:"minecraft:jigsaw",tag:{processing_unit:1b}},{Slot:10b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b}},{Slot:11b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b}},{Slot:12b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b}}]} run loot replace entity @s weapon.mainhand loot expansion:items/circuit_board
# cooling disk
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b}},{Slot:2b,id:"minecraft:jigsaw",tag:{cryonite_crystal:1b}},{Slot:3b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b}},{Slot:10b,id:"minecraft:jigsaw",tag:{cryonite_crystal:1b}},{Slot:11b,id:"minecraft:jigsaw",tag:{fan:1b}},{Slot:12b,id:"minecraft:jigsaw",tag:{cryonite_crystal:1b}},{Slot:19b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b}},{Slot:20b,id:"minecraft:jigsaw",tag:{cryonite_crystal:1b}},{Slot:21b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b}}]} run loot replace entity @s weapon.mainhand loot expansion:items/cooling_element
# heating disk
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b}},{Slot:2b,id:"minecraft:jigsaw",tag:{vulcanium_shard:1b}},{Slot:3b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b}},{Slot:10b,id:"minecraft:jigsaw",tag:{vulcanium_shard:1b}},{Slot:11b,id:"minecraft:jigsaw",tag:{fan:1b}},{Slot:12b,id:"minecraft:jigsaw",tag:{vulcanium_shard:1b}},{Slot:19b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b}},{Slot:20b,id:"minecraft:jigsaw",tag:{vulcanium_shard:1b}},{Slot:21b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b}}]} run loot replace entity @s weapon.mainhand loot expansion:items/warming_element
# cooling module
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b}},{Slot:2b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b}},{Slot:3b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b}},{Slot:10b,id:"minecraft:jigsaw",tag:{cooling_element:1b}},{Slot:11b,id:"minecraft:jigsaw",tag:{complex_mechanism:1b}},{Slot:12b,id:"minecraft:jigsaw",tag:{cooling_element:1b}},{Slot:19b,id:"minecraft:jigsaw",tag:{amethonium_plate:1b}},{Slot:20b,id:"minecraft:jigsaw",tag:{cooling_element:1b}},{Slot:21b,id:"minecraft:jigsaw",tag:{amethonium_plate:1b}}]} run loot replace entity @s weapon.mainhand loot expansion:items/modules/cooling
# heating module
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b}},{Slot:2b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b}},{Slot:3b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b}},{Slot:10b,id:"minecraft:jigsaw",tag:{heating_element:1b}},{Slot:11b,id:"minecraft:jigsaw",tag:{complex_mechanism:1b}},{Slot:12b,id:"minecraft:jigsaw",tag:{heating_element:1b}},{Slot:19b,id:"minecraft:jigsaw",tag:{amethonium_plate:1b}},{Slot:20b,id:"minecraft:jigsaw",tag:{heating_element:1b}},{Slot:21b,id:"minecraft:jigsaw",tag:{amethonium_plate:1b}}]} run loot replace entity @s weapon.mainhand loot expansion:items/modules/warming
# oxygen filter
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:2b,id:"minecraft:jigsaw",tag:{steel_plate:1b}},{Slot:10b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:11b,id:"minecraft:white_wool"},{Slot:12b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:20b,id:"minecraft:jigsaw",tag:{steel_plate:1b}}]} run loot replace entity @s weapon.mainhand loot expansion:items/oxygen_filter
# electromotor
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:2b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:10b,id:"minecraft:jigsaw",tag:{electromagnet:1b}},{Slot:11b,id:"minecraft:jigsaw",tag:{simple_mechanism:1b}},{Slot:12b,id:"minecraft:jigsaw",tag:{electromagnet:1b}},{Slot:19b,id:"minecraft:jigsaw",tag:{steel_plate:1b}},{Slot:20b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:21b,id:"minecraft:jigsaw",tag:{steel_plate:1b}}]} run loot replace entity @s weapon.mainhand loot expansion:items/elektromotor
# robot arm
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b,id:"minecraft:jigsaw",tag:{amethonium_plate:1b}},{Slot:2b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b}},{Slot:3b,id:"minecraft:jigsaw",tag:{complex_mechanism:1b}},{Slot:11b,id:"minecraft:jigsaw",tag:{amethonium_plate:1b}},{Slot:19b,id:"minecraft:jigsaw",tag:{steel_plate:1b}},{Slot:20b,id:"minecraft:jigsaw",tag:{elektromotor:1b}},{Slot:21b,id:"minecraft:jigsaw",tag:{steel_plate:1b}}]} run loot replace entity @s weapon.mainhand loot expansion:items/robot_arm
# rocket boots
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:12b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:19b,id:"minecraft:jigsaw",tag:{thruster:1b}},{Slot:21b,id:"minecraft:jigsaw",tag:{thruster:1b}}]} run loot replace entity @s weapon.mainhand loot expansion:armor/rocket_boots
# magnetic boots
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,id:"minecraft:iron_ingot"},{Slot:12b,id:"minecraft:iron_ingot"},{Slot:19b,id:"minecraft:jigsaw",tag:{electromagnet:1b}},{Slot:21b,id:"minecraft:jigsaw",tag:{electromagnet:1b}}]} run loot replace entity @s weapon.mainhand loot expansion:armor/magnetic_boots
# monochrome monitor
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:2b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:3b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:10b,id:"minecraft:tinted_glass"},{Slot:11b,id:"minecraft:tinted_glass"},{Slot:12b,id:"minecraft:tinted_glass"},{Slot:19b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:20b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:21b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}}]} run loot replace entity @s weapon.mainhand loot expansion:items/monochrome_monitor
# speed mod mk1
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b}},{Slot:2b,id:"minecraft:jigsaw",tag:{cooling_element:1b}},{Slot:3b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b}},{Slot:10b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b}},{Slot:11b,id:"minecraft:jigsaw",tag:{complex_mechanism:1b}},{Slot:12b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b}},{Slot:19b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b}},{Slot:20b,id:"minecraft:jigsaw",tag:{thruster:1b}},{Slot:21b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b}}]} run loot replace entity @s weapon.mainhand loot expansion:items/spaceship_mods/speed_mk1
# fuel mod mk1
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b}},{Slot:2b,id:"minecraft:jigsaw",tag:{fan:1b}},{Slot:3b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b}},{Slot:10b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b}},{Slot:11b,id:"minecraft:jigsaw",tag:{complex_mechanism:1b}},{Slot:12b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b}},{Slot:19b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b}},{Slot:20b,id:"minecraft:jigsaw",tag:{fan:1b}},{Slot:21b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b}}]} run loot replace entity @s weapon.mainhand loot expansion:items/spaceship_mods/fuel_mk1

# spaceship left wing
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b}},{Slot:10b,id:"minecraft:jigsaw",tag:{amethonium_plate:1b}},{Slot:11b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b}},{Slot:19b,id:"minecraft:jigsaw",tag:{amethonium_plate:1b}},{Slot:20b,id:"minecraft:jigsaw",tag:{amethonium_plate:1b}},{Slot:21b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b}}]} run loot replace entity @s weapon.mainhand loot expansion:items/spaceship_parts/spaceship_left_wing
# spaceship right wing
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b,id:"minecraft:jigsaw",tag:{amethonium_plate:1b}},{Slot:2b,id:"minecraft:jigsaw",tag:{amethonium_plate:1b}},{Slot:3b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b}},{Slot:10b,id:"minecraft:jigsaw",tag:{amethonium_plate:1b}},{Slot:11b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b}},{Slot:19b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b}}]} run loot replace entity @s weapon.mainhand loot expansion:items/spaceship_parts/spaceship_right_wing
# spaceship cockpit
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:2b,id:"minecraft:jigsaw",tag:{amethonium_plate:1b}},{Slot:10b,id:"minecraft:jigsaw",tag:{amethonium_plate:1b}},{Slot:11b,id:"minecraft:jigsaw",tag:{circuit_board:1b}},{Slot:12b,id:"minecraft:jigsaw",tag:{amethonium_plate:1b}},{Slot:19b,id:"minecraft:jigsaw",tag:{amethonium_plate:1b}},{Slot:20b,id:"minecraft:jigsaw",tag:{complex_mechanism:1b}},{Slot:21b,id:"minecraft:jigsaw",tag:{amethonium_plate:1b}}]} run loot replace entity @s weapon.mainhand loot expansion:items/spaceship_parts/spaceship_cockpit
# spaceship engines
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b,id:"minecraft:jigsaw",tag:{complex_mechanism:1b}},{Slot:2b,id:"minecraft:jigsaw",tag:{amethonium_plate:1b}},{Slot:3b,id:"minecraft:jigsaw",tag:{complex_mechanism:1b}},{Slot:10b,id:"minecraft:jigsaw",tag:{amethonium_plate:1b}},{Slot:11b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b}},{Slot:12b,id:"minecraft:jigsaw",tag:{amethonium_plate:1b}},{Slot:19b,id:"minecraft:jigsaw",tag:{thruster:1b}},{Slot:21b,id:"minecraft:jigsaw",tag:{thruster:1b}}]} run loot replace entity @s weapon.mainhand loot expansion:items/spaceship_parts/spaceship_engines

# oxygen tank
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:2b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:11b,id:"minecraft:jigsaw",tag:{steel_plate:1b}},{Slot:20b,id:"minecraft:jigsaw",tag:{steel_plate:1b}}]} run loot replace entity @s weapon.mainhand loot expansion:tools/oxygen_tank
# space equipment
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:2b,id:"minecraft:tinted_glass"},{Slot:3b,id:"minecraft:redstone_torch"},{Slot:10b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:11b,id:"minecraft:carrot_on_a_stick",tag:{oxygen_tank:1b}},{Slot:12b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:20b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}}]} run loot replace entity @s weapon.mainhand loot expansion:armor/space_equipment/space_equipment_blue

# rocket top
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:2b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:10b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:11b,id:"minecraft:jigsaw",tag:{steel_plate:1b}},{Slot:12b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:19b,id:"minecraft:jigsaw",tag:{steel_plate:1b}},{Slot:21b,id:"minecraft:jigsaw",tag:{steel_plate:1b}}]} run loot replace entity @s weapon.mainhand loot expansion:items/rocket_parts/rocket_top
# rocket cockpit
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b,id:"minecraft:jigsaw",tag:{steel_plate:1b}},{Slot:2b,id:"minecraft:jigsaw",tag:{monochrome_monitor:1b}},{Slot:3b,id:"minecraft:jigsaw",tag:{steel_plate:1b}},{Slot:10b,id:"minecraft:jigsaw",tag:{steel_plate:1b}},{Slot:11b,id:"minecraft:glass_pane"},{Slot:12b,id:"minecraft:jigsaw",tag:{steel_plate:1b}},{Slot:19b,id:"minecraft:jigsaw",tag:{steel_plate:1b}},{Slot:20b,id:"minecraft:jigsaw",tag:{processing_unit:1b}},{Slot:21b,id:"minecraft:jigsaw",tag:{steel_plate:1b}}]} run loot replace entity @s weapon.mainhand loot expansion:items/rocket_parts/rocket_cockpit
# rocket bottom
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b,id:"minecraft:jigsaw",tag:{steel_plate:1b}},{Slot:2b,id:"minecraft:jigsaw",tag:{simple_mechanism:1b}},{Slot:3b,id:"minecraft:jigsaw",tag:{steel_plate:1b}},{Slot:10b,id:"minecraft:jigsaw",tag:{steel_plate:1b}},{Slot:11b,id:"minecraft:jigsaw",tag:{steel_plate:1b}},{Slot:12b,id:"minecraft:jigsaw",tag:{steel_plate:1b}},{Slot:19b,id:"minecraft:jigsaw",tag:{thruster:1b}},{Slot:20b,id:"minecraft:jigsaw",tag:{thruster:1b}},{Slot:21b,id:"minecraft:jigsaw",tag:{thruster:1b}}]} run loot replace entity @s weapon.mainhand loot expansion:items/rocket_parts/rocket_bottom

# assembler
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:2b,id:"minecraft:jigsaw",tag:{amethonium_plate:1b}},{Slot:3b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:10b,id:"minecraft:jigsaw",tag:{robot_arm:1b}},{Slot:11b,id:"minecraft:jigsaw",tag:{complex_mechanism:1b}},{Slot:12b,id:"minecraft:jigsaw",tag:{robot_arm:1b}},{Slot:19b,id:"minecraft:jigsaw",tag:{steel_plate:1b}},{Slot:20b,id:"minecraft:jigsaw",tag:{monochrome_monitor:1b}},{Slot:21b,id:"minecraft:jigsaw",tag:{steel_plate:1b}}]} run loot replace entity @s weapon.mainhand loot expansion:contraptions/assembler
# compressor
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:2b,id:"minecraft:jigsaw",tag:{simple_mechanism:1b}},{Slot:3b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:10b,id:"minecraft:jigsaw",tag:{steel_plate:1b}},{Slot:11b,id:"minecraft:jigsaw",tag:{oxygen_filter:1b}},{Slot:12b,id:"minecraft:jigsaw",tag:{steel_plate:1b}},{Slot:19b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:20b,id:"minecraft:jigsaw",tag:{steel_plate:1b}},{Slot:21b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}}]} run loot replace entity @s weapon.mainhand loot expansion:blocks/compressor
# enhancer
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:2b,id:"minecraft:jigsaw",tag:{complex_mechanism:1b}},{Slot:3b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:10b,id:"minecraft:jigsaw",tag:{steel_plate:1b}},{Slot:11b,id:"minecraft:anvil"},{Slot:12b,id:"minecraft:jigsaw",tag:{steel_plate:1b}},{Slot:19b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:20b,id:"minecraft:jigsaw",tag:{steel_plate:1b}},{Slot:21b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}}]} run loot replace entity @s weapon.mainhand loot expansion:blocks/enhancer
# arc furnace
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b,id:"minecraft:copper_ingot"},{Slot:2b,id:"minecraft:coal"},{Slot:1b,id:"minecraft:copper_ingot"},{Slot:10b,id:"minecraft:iron_block"},{Slot:11b,id:"minecraft:blast_furnace"},{Slot:12b,id:"minecraft:iron_block"},{Slot:19b,id:"minecraft:brick"},{Slot:20b,id:"minecraft:brick"},{Slot:21b,id:"minecraft:brick"}]} run loot replace entity @s weapon.mainhand loot expansion:blocks/arc_furnace
# terraformer
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b,id:"minecraft:jigsaw",tag:{steel_plate:1b}},{Slot:2b,id:"minecraft:nether_star"},{Slot:3b,id:"minecraft:jigsaw",tag:{steel_plate:1b}},{Slot:10b,id:"minecraft:jigsaw",tag:{fan:1b}},{Slot:11b,id:"minecraft:jigsaw",tag:{oxygen_filter:1b}},{Slot:12b,id:"minecraft:jigsaw",tag:{fan:1b}},{Slot:19b,id:"minecraft:jigsaw",tag:{steel_plate:1b}},{Slot:20b,id:"minecraft:jigsaw",tag:{complex_mechanism:1b}},{Slot:21b,id:"minecraft:jigsaw",tag:{steel_plate:1b}}]} run loot replace entity @s weapon.mainhand loot expansion:blocks/terraformer
# oxygenator
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:2b,id:"minecraft:jigsaw",tag:{fan:1b}},{Slot:3b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:10b,id:"minecraft:jigsaw",tag:{steel_plate:1b}},{Slot:11b,id:"minecraft:jigsaw",tag:{oxygen_filter:1b}},{Slot:12b,id:"minecraft:jigsaw",tag:{fan:1b}},{Slot:19b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:20b,id:"minecraft:jigsaw",tag:{elektromotor:1b}},{Slot:21b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}}]} run loot replace entity @s weapon.mainhand loot expansion:blocks/oxygenator
# planetarium
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:2b,id:"minecraft:jigsaw",tag:{complex_mechanism:1b}},{Slot:3b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:10b,id:"minecraft:jigsaw",tag:{steel_plate:1b}},{Slot:11b,id:"minecraft:clock"},{Slot:12b,id:"minecraft:jigsaw",tag:{steel_plate:1b}},{Slot:19b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:20b,id:"minecraft:compass"},{Slot:21b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}}]} run loot replace entity @s weapon.mainhand loot expansion:blocks/planetarium
# fabricator
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:2b,id:"minecraft:diamond"},{Slot:3b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:10b,id:"minecraft:jigsaw",tag:{steel_plate:1b}},{Slot:11b,id:"minecraft:jigsaw",tag:{simple_mechanism:1b}},{Slot:12b,id:"minecraft:jigsaw",tag:{steel_plate:1b}},{Slot:19b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:20b,id:"minecraft:crafting_table"},{Slot:21b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}}]} run loot replace entity @s weapon.mainhand loot expansion:blocks/fabricator
# extractor
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b,id:"minecraft:jigsaw",tag:{heating_element:1b}},{Slot:2b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b}},{Slot:3b,id:"minecraft:jigsaw",tag:{cooling_element:1b}},{Slot:10b,id:"minecraft:jigsaw",tag:{steel_plate:1b}},{Slot:11b,id:"minecraft:jigsaw",tag:{complex_mechanism:1b}},{Slot:12b,id:"minecraft:jigsaw",tag:{steel_plate:1b}},{Slot:19b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:20b,id:"minecraft:jigsaw",tag:{steel_plate:1b}},{Slot:21b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}}]} run loot replace entity @s weapon.mainhand loot expansion:blocks/lacrymae_extractor
# tesla coil
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:2b,id:"minecraft:jigsaw",tag:{electromagnet:1b}},{Slot:3b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:10b,id:"minecraft:jigsaw",tag:{steel_plate:1b}},{Slot:11b,id:"minecraft:jigsaw",tag:{copper_wire:1b}},{Slot:12b,id:"minecraft:jigsaw",tag:{steel_plate:1b}},{Slot:19b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:20b,id:"minecraft:jigsaw",tag:{simple_mechanism:1b}},{Slot:21b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}}]} run loot replace entity @s weapon.mainhand loot expansion:blocks/tesla_coil
# modstation
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:2b,id:"minecraft:jigsaw",tag:{monochrome_monitor:1b}},{Slot:3b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:10b,id:"minecraft:jigsaw",tag:{steel_plate:1b}},{Slot:11b,id:"minecraft:jigsaw",tag:{ai_core:1b}},{Slot:12b,id:"minecraft:jigsaw",tag:{steel_plate:1b}},{Slot:19b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}},{Slot:20b,id:"minecraft:jigsaw",tag:{circuit_board:1b}},{Slot:21b,id:"minecraft:jigsaw",tag:{steel_ingot:1b}}]} run loot replace entity @s weapon.mainhand loot expansion:blocks/modstation

# code to copy the output item into an armor slot for later reference
data modify entity @s ArmorItems[0] set from entity @s HandItems[0]
data remove entity @s HandItems[0]