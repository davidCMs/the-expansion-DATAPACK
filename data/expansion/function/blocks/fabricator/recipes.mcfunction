loot replace entity @s container.0 loot expansion:items/gui/filler
data merge entity @s {transformation:{scale:[0.0f,0.0f,0.0f]}}

# steel plate
execute if items block ~ ~ ~ container.1 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.2 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.10 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{steel_ingot:1b}] run return run loot replace entity @s container.0 loot expansion:items/steel/steel_plate
execute if items block ~ ~ ~ container.2 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.3 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.12 jigsaw[custom_data~{steel_ingot:1b}] run return run loot replace entity @s container.0 loot expansion:items/steel/steel_plate
execute if items block ~ ~ ~ container.10 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.19 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.20 jigsaw[custom_data~{steel_ingot:1b}] run return run loot replace entity @s container.0 loot expansion:items/steel/steel_plate
execute if items block ~ ~ ~ container.11 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.12 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.20 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.21 jigsaw[custom_data~{steel_ingot:1b}] run return run loot replace entity @s container.0 loot expansion:items/steel/steel_plate
# amethonium plate
execute if items block ~ ~ ~ container.1 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.2 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.10 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{amethonium_ingot:1b}] run return run loot replace entity @s container.0 loot expansion:items/amethonium_plate
execute if items block ~ ~ ~ container.2 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.3 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.12 jigsaw[custom_data~{amethonium_ingot:1b}] run return run loot replace entity @s container.0 loot expansion:items/amethonium_plate
execute if items block ~ ~ ~ container.10 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.19 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.20 jigsaw[custom_data~{amethonium_ingot:1b}] run return run loot replace entity @s container.0 loot expansion:items/amethonium_plate
execute if items block ~ ~ ~ container.11 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.12 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.20 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.21 jigsaw[custom_data~{amethonium_ingot:1b}] run return run loot replace entity @s container.0 loot expansion:items/amethonium_plate
# processing unit
execute if items block ~ ~ ~ container.2 gold_ingot if items block ~ ~ ~ container.10 gold_ingot if items block ~ ~ ~ container.11 comparator if items block ~ ~ ~ container.12 gold_ingot if items block ~ ~ ~ container.20 gold_ingot run return run loot replace entity @s container.0 loot expansion:items/processing_unit
# wrench
execute if items block ~ ~ ~ container.3 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.11 stick if items block ~ ~ ~ container.19 jigsaw[custom_data~{steel_ingot:1b}] run return run loot replace entity @s container.0 loot expansion:tools/wrench
# buggy wheel
execute if items block ~ ~ ~ container.2 leather if items block ~ ~ ~ container.10 leather if items block ~ ~ ~ container.11 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.12 leather if items block ~ ~ ~ container.20 leather run return run loot replace entity @s container.0 loot expansion:items/buggy_wheel
# copper wire
execute if items block ~ ~ ~ container.1 copper_ingot if items block ~ ~ ~ container.2 stick if items block ~ ~ ~ container.3 copper_ingot if items block ~ ~ ~ container.10 copper_ingot if items block ~ ~ ~ container.11 stick if items block ~ ~ ~ container.12 copper_ingot if items block ~ ~ ~ container.19 copper_ingot if items block ~ ~ ~ container.20 stick if items block ~ ~ ~ container.21 copper_ingot run return run loot replace entity @s container.0 loot expansion:items/copper_wire
# electromagnet
execute if items block ~ ~ ~ container.1 iron_ingot if items block ~ ~ ~ container.2 jigsaw[custom_data~{copper_wire:1b}] if items block ~ ~ ~ container.3 iron_ingot if items block ~ ~ ~ container.10 jigsaw[custom_data~{copper_wire:1b}] if items block ~ ~ ~ container.12 jigsaw[custom_data~{copper_wire:1b}] if items block ~ ~ ~ container.19 iron_ingot if items block ~ ~ ~ container.20 jigsaw[custom_data~{copper_wire:1b}] if items block ~ ~ ~ container.21 iron_ingot run return run loot replace entity @s container.0 loot expansion:items/electromagnet
# fan
execute if items block ~ ~ ~ container.2 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.10 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.12 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.20 jigsaw[custom_data~{steel_ingot:1b}] run return run loot replace entity @s container.0 loot expansion:items/fan
# gear
execute if items block ~ ~ ~ container.2 copper_ingot if items block ~ ~ ~ container.10 copper_ingot if items block ~ ~ ~ container.12 copper_ingot if items block ~ ~ ~ container.20 copper_ingot run return run loot replace entity @s container.0 loot expansion:items/gear
# simple mechanism
execute if items block ~ ~ ~ container.1 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.2 jigsaw[custom_data~{gear:1b}] if items block ~ ~ ~ container.10 jigsaw[custom_data~{gear:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{steel_ingot:1b}] run return run loot replace entity @s container.0 loot expansion:items/simple_mechanism
execute if items block ~ ~ ~ container.2 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.3 jigsaw[custom_data~{gear:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{gear:1b}] if items block ~ ~ ~ container.12 jigsaw[custom_data~{steel_ingot:1b}] run return run loot replace entity @s container.0 loot expansion:items/simple_mechanism
execute if items block ~ ~ ~ container.10 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{gear:1b}] if items block ~ ~ ~ container.19 jigsaw[custom_data~{gear:1b}] if items block ~ ~ ~ container.20 jigsaw[custom_data~{steel_ingot:1b}] run return run loot replace entity @s container.0 loot expansion:items/simple_mechanism
execute if items block ~ ~ ~ container.11 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.12 jigsaw[custom_data~{gear:1b}] if items block ~ ~ ~ container.20 jigsaw[custom_data~{gear:1b}] if items block ~ ~ ~ container.21 jigsaw[custom_data~{steel_ingot:1b}] run return run loot replace entity @s container.0 loot expansion:items/simple_mechanism
# complex mechanism
execute if items block ~ ~ ~ container.1 jigsaw[custom_data~{elektromotor:1b}] if items block ~ ~ ~ container.2 jigsaw[custom_data~{simple_mechanism:1b}] if items block ~ ~ ~ container.10 jigsaw[custom_data~{simple_mechanism:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{amethonium_plate:1b}] run return run loot replace entity @s container.0 loot expansion:items/complex_mechanism
execute if items block ~ ~ ~ container.2 jigsaw[custom_data~{elektromotor:1b}] if items block ~ ~ ~ container.3 jigsaw[custom_data~{simple_mechanism:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{simple_mechanism:1b}] if items block ~ ~ ~ container.12 jigsaw[custom_data~{amethonium_plate:1b}] run return run loot replace entity @s container.0 loot expansion:items/complex_mechanism
execute if items block ~ ~ ~ container.10 jigsaw[custom_data~{elektromotor:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{simple_mechanism:1b}] if items block ~ ~ ~ container.19 jigsaw[custom_data~{simple_mechanism:1b}] if items block ~ ~ ~ container.20 jigsaw[custom_data~{amethonium_plate:1b}] run return run loot replace entity @s container.0 loot expansion:items/complex_mechanism
execute if items block ~ ~ ~ container.11 jigsaw[custom_data~{elektromotor:1b}] if items block ~ ~ ~ container.12 jigsaw[custom_data~{simple_mechanism:1b}] if items block ~ ~ ~ container.20 jigsaw[custom_data~{simple_mechanism:1b}] if items block ~ ~ ~ container.21 jigsaw[custom_data~{amethonium_plate:1b}] run return run loot replace entity @s container.0 loot expansion:items/complex_mechanism
# thruster
execute if items block ~ ~ ~ container.1 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.2 jigsaw[custom_data~{simple_mechanism:1b}] if items block ~ ~ ~ container.3 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.19 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.21 jigsaw[custom_data~{steel_plate:1b}] run return run loot replace entity @s container.0 loot expansion:items/thruster
# circuit board
execute if items block ~ ~ ~ container.1 jigsaw[custom_data~{processing_unit:1b}] if items block ~ ~ ~ container.2 repeater if items block ~ ~ ~ container.3 jigsaw[custom_data~{processing_unit:1b}] if items block ~ ~ ~ container.10 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.12 jigsaw[custom_data~{amethonium_ingot:1b}] run return run loot replace entity @s container.0 loot expansion:items/circuit_board
execute if items block ~ ~ ~ container.10 jigsaw[custom_data~{processing_unit:1b}] if items block ~ ~ ~ container.11 repeater if items block ~ ~ ~ container.12 jigsaw[custom_data~{processing_unit:1b}] if items block ~ ~ ~ container.19 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.20 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.21 jigsaw[custom_data~{amethonium_ingot:1b}] run return run loot replace entity @s container.0 loot expansion:items/circuit_board
# cooling disk
execute if items block ~ ~ ~ container.1 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.2 jigsaw[custom_data~{cryonite_crystal:1b}] if items block ~ ~ ~ container.3 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.10 jigsaw[custom_data~{cryonite_crystal:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{fan:1b}] if items block ~ ~ ~ container.12 jigsaw[custom_data~{cryonite_crystal:1b}] if items block ~ ~ ~ container.19 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.20 jigsaw[custom_data~{cryonite_crystal:1b}] if items block ~ ~ ~ container.21 jigsaw[custom_data~{amethonium_ingot:1b}] run return run loot replace entity @s container.0 loot expansion:items/cooling_element
# heating disk
execute if items block ~ ~ ~ container.1 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.2 jigsaw[custom_data~{vulcanium_shard:1b}] if items block ~ ~ ~ container.3 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.10 jigsaw[custom_data~{vulcanium_shard:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{fan:1b}] if items block ~ ~ ~ container.12 jigsaw[custom_data~{vulcanium_shard:1b}] if items block ~ ~ ~ container.19 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.20 jigsaw[custom_data~{vulcanium_shard:1b}] if items block ~ ~ ~ container.21 jigsaw[custom_data~{amethonium_ingot:1b}] run return run loot replace entity @s container.0 loot expansion:items/warming_element
# cooling module
execute if items block ~ ~ ~ container.1 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.2 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.3 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.10 jigsaw[custom_data~{cooling_element:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{complex_mechanism:1b}] if items block ~ ~ ~ container.12 jigsaw[custom_data~{cooling_element:1b}] if items block ~ ~ ~ container.19 jigsaw[custom_data~{amethonium_plate:1b}] if items block ~ ~ ~ container.20 jigsaw[custom_data~{cooling_element:1b}] if items block ~ ~ ~ container.21 jigsaw[custom_data~{amethonium_plate:1b}] run return run loot replace entity @s container.0 loot expansion:items/upgrades/equipment/heat_protection
# heating module
execute if items block ~ ~ ~ container.1 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.2 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.3 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.10 jigsaw[custom_data~{heating_element:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{complex_mechanism:1b}] if items block ~ ~ ~ container.12 jigsaw[custom_data~{heating_element:1b}] if items block ~ ~ ~ container.19 jigsaw[custom_data~{amethonium_plate:1b}] if items block ~ ~ ~ container.20 jigsaw[custom_data~{heating_element:1b}] if items block ~ ~ ~ container.21 jigsaw[custom_data~{amethonium_plate:1b}] run return run loot replace entity @s container.0 loot expansion:items/upgrades/equipment/cold_protection
# oxygen filter
execute if items block ~ ~ ~ container.2 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.10 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.11 white_wool if items block ~ ~ ~ container.12 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.20 jigsaw[custom_data~{steel_plate:1b}] run return run loot replace entity @s container.0 loot expansion:items/oxygen_filter
# electromotor
execute if items block ~ ~ ~ container.2 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.10 jigsaw[custom_data~{electromagnet:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{simple_mechanism:1b}] if items block ~ ~ ~ container.12 jigsaw[custom_data~{electromagnet:1b}] if items block ~ ~ ~ container.19 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.20 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.21 jigsaw[custom_data~{steel_plate:1b}] run return run loot replace entity @s container.0 loot expansion:items/elektromotor
# robot arm
execute if items block ~ ~ ~ container.1 jigsaw[custom_data~{amethonium_plate:1b}] if items block ~ ~ ~ container.2 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.3 jigsaw[custom_data~{complex_mechanism:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{amethonium_plate:1b}] if items block ~ ~ ~ container.19 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.20 jigsaw[custom_data~{elektromotor:1b}] if items block ~ ~ ~ container.21 jigsaw[custom_data~{steel_plate:1b}] run return run loot replace entity @s container.0 loot expansion:items/robot_arm
# rocket boots
execute if items block ~ ~ ~ container.10 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.12 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.19 jigsaw[custom_data~{thruster:1b}] if items block ~ ~ ~ container.21 jigsaw[custom_data~{thruster:1b}] run return run loot replace entity @s container.0 loot expansion:armor/rocket_boots
execute if items block ~ ~ ~ container.1 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.3 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.10 jigsaw[custom_data~{thruster:1b}] if items block ~ ~ ~ container.12 jigsaw[custom_data~{thruster:1b}] run return run loot replace entity @s container.0 loot expansion:armor/rocket_boots
# magnetic boots
execute if items block ~ ~ ~ container.10 iron_ingot if items block ~ ~ ~ container.12 iron_ingot if items block ~ ~ ~ container.19 jigsaw[custom_data~{electromagnet:1b}] if items block ~ ~ ~ container.21 jigsaw[custom_data~{electromagnet:1b}] run return run loot replace entity @s container.0 loot expansion:armor/magnetic_boots
execute if items block ~ ~ ~ container.1 iron_ingot if items block ~ ~ ~ container.3 iron_ingot if items block ~ ~ ~ container.10 jigsaw[custom_data~{electromagnet:1b}] if items block ~ ~ ~ container.12 jigsaw[custom_data~{electromagnet:1b}] run return run loot replace entity @s container.0 loot expansion:armor/magnetic_boots
# monochrome monitor
execute if items block ~ ~ ~ container.1 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.2 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.3 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.10 tinted_glass if items block ~ ~ ~ container.11 tinted_glass if items block ~ ~ ~ container.12 tinted_glass if items block ~ ~ ~ container.19 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.20 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.21 jigsaw[custom_data~{steel_ingot:1b}] run return run loot replace entity @s container.0 loot expansion:items/monochrome_monitor
# speed mod mk1
execute if items block ~ ~ ~ container.1 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.2 jigsaw[custom_data~{cooling_element:1b}] if items block ~ ~ ~ container.3 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.10 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{complex_mechanism:1b}] if items block ~ ~ ~ container.12 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.19 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.20 jigsaw[custom_data~{thruster:1b}] if items block ~ ~ ~ container.21 jigsaw[custom_data~{amethonium_ingot:1b}] run return run loot replace entity @s container.0 loot expansion:items/upgrades/speed_mk1
# fuel mod mk1
execute if items block ~ ~ ~ container.1 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.2 jigsaw[custom_data~{fan:1b}] if items block ~ ~ ~ container.3 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.10 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{complex_mechanism:1b}] if items block ~ ~ ~ container.12 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.19 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.20 jigsaw[custom_data~{fan:1b}] if items block ~ ~ ~ container.21 jigsaw[custom_data~{amethonium_ingot:1b}] run return run loot replace entity @s container.0 loot expansion:items/upgrades/spaceship/fuel_mk1

# spaceship left wing
execute if items block ~ ~ ~ container.3 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.12 jigsaw[custom_data~{amethonium_plate:1b}] if items block ~ ~ ~ container.19 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.20 jigsaw[custom_data~{amethonium_plate:1b}] if items block ~ ~ ~ container.21 jigsaw[custom_data~{thruster:1b}] run return run loot replace entity @s container.0 loot expansion:items/spaceship_parts/spaceship_left_wing
# spaceship right wing
execute if items block ~ ~ ~ container.1 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.10 jigsaw[custom_data~{amethonium_plate:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.19 jigsaw[custom_data~{thruster:1b}] if items block ~ ~ ~ container.20 jigsaw[custom_data~{amethonium_plate:1b}] if items block ~ ~ ~ container.21 jigsaw[custom_data~{amethonium_ingot:1b}] run return run loot replace entity @s container.0 loot expansion:items/spaceship_parts/spaceship_right_wing
# spaceship cockpit
execute if items block ~ ~ ~ container.1 jigsaw[custom_data~{amethonium_plate:1b}] if items block ~ ~ ~ container.2 jigsaw[custom_data~{monochrome_monitor:1b}] if items block ~ ~ ~ container.3 jigsaw[custom_data~{amethonium_plate:1b}] if items block ~ ~ ~ container.10 jigsaw[custom_data~{circuit_board:1b}] if items block ~ ~ ~ container.11 tinted_glass if items block ~ ~ ~ container.12 jigsaw[custom_data~{circuit_board:1b}] if items block ~ ~ ~ container.19 tinted_glass if items block ~ ~ ~ container.20 tinted_glass if items block ~ ~ ~ container.21 tinted_glass run return run loot replace entity @s container.0 loot expansion:items/spaceship_parts/spaceship_cockpit
# spaceship engines
execute if items block ~ ~ ~ container.1 jigsaw[custom_data~{complex_mechanism:1b}] if items block ~ ~ ~ container.2 jigsaw[custom_data~{amethonium_plate:1b}] if items block ~ ~ ~ container.3 jigsaw[custom_data~{complex_mechanism:1b}] if items block ~ ~ ~ container.10 jigsaw[custom_data~{amethonium_plate:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.12 jigsaw[custom_data~{amethonium_plate:1b}] if items block ~ ~ ~ container.19 jigsaw[custom_data~{thruster:1b}] if items block ~ ~ ~ container.21 jigsaw[custom_data~{thruster:1b}] run return run loot replace entity @s container.0 loot expansion:items/spaceship_parts/spaceship_engines
# spaceship nose
execute if items block ~ ~ ~ container.2 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.10 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{amethonium_plate:1b}] if items block ~ ~ ~ container.12 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.19 jigsaw[custom_data~{fan:1b}] if items block ~ ~ ~ container.20 jigsaw[custom_data~{amethonium_plate:1b}] if items block ~ ~ ~ container.21 jigsaw[custom_data~{fan:1b}] run return run loot replace entity @s container.0 loot expansion:items/spaceship_parts/spaceship_nose

# oxygen tank
execute if items block ~ ~ ~ container.1 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.10 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.19 jigsaw[custom_data~{steel_plate:1b}] run return run loot replace entity @s container.0 loot expansion:tools/oxygen_tanks/tier1/empty
execute if items block ~ ~ ~ container.2 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.20 jigsaw[custom_data~{steel_plate:1b}] run return run loot replace entity @s container.0 loot expansion:tools/oxygen_tanks/tier1/empty
execute if items block ~ ~ ~ container.3 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.12 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.21 jigsaw[custom_data~{steel_plate:1b}] run return run loot replace entity @s container.0 loot expansion:tools/oxygen_tanks/tier1/empty
execute if items block ~ ~ ~ container.2 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.10 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.11 carrot_on_a_stick[custom_data~{oxygen_tank:1b,tier:1b}] if items block ~ ~ ~ container.12 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.20 jigsaw[custom_data~{amethonium_ingot:1b}] run return run loot replace entity @s container.0 loot expansion:tools/oxygen_tanks/tier2/empty

# space equipment
execute if items block ~ ~ ~ container.2 tinted_glass if items block ~ ~ ~ container.3 redstone_torch if items block ~ ~ ~ container.10 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.11 carrot_on_a_stick[custom_data~{oxygen_tank:1b}] if items block ~ ~ ~ container.12 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.20 jigsaw[custom_data~{steel_ingot:1b}] run return run function expansion:spacesuits/set_oxygen_data/craft

# rocket top
execute if items block ~ ~ ~ container.2 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.10 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.12 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.19 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.21 jigsaw[custom_data~{steel_plate:1b}] run return run loot replace entity @s container.0 loot expansion:items/rocket_parts/rocket_top
# rocket cockpit
execute if items block ~ ~ ~ container.1 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.2 jigsaw[custom_data~{monochrome_monitor:1b}] if items block ~ ~ ~ container.3 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.10 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.11 glass_pane if items block ~ ~ ~ container.12 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.19 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.20 jigsaw[custom_data~{processing_unit:1b}] if items block ~ ~ ~ container.21 jigsaw[custom_data~{steel_plate:1b}] run return run loot replace entity @s container.0 loot expansion:items/rocket_parts/rocket_cockpit
# rocket bottom
execute if items block ~ ~ ~ container.1 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.2 jigsaw[custom_data~{simple_mechanism:1b}] if items block ~ ~ ~ container.3 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.10 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.12 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.19 jigsaw[custom_data~{thruster:1b}] if items block ~ ~ ~ container.20 jigsaw[custom_data~{thruster:1b}] if items block ~ ~ ~ container.21 jigsaw[custom_data~{thruster:1b}] run return run loot replace entity @s container.0 loot expansion:items/rocket_parts/rocket_bottom

# assembler
execute if items block ~ ~ ~ container.1 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.2 jigsaw[custom_data~{amethonium_plate:1b}] if items block ~ ~ ~ container.3 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.10 jigsaw[custom_data~{robot_arm:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{complex_mechanism:1b}] if items block ~ ~ ~ container.12 jigsaw[custom_data~{robot_arm:1b}] if items block ~ ~ ~ container.19 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.20 jigsaw[custom_data~{monochrome_monitor:1b}] if items block ~ ~ ~ container.21 jigsaw[custom_data~{steel_plate:1b}] run return run loot replace entity @s container.0 loot expansion:blocks/assembler
# compressor
execute if items block ~ ~ ~ container.1 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.2 jigsaw[custom_data~{simple_mechanism:1b}] if items block ~ ~ ~ container.3 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.10 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{oxygen_filter:1b}] if items block ~ ~ ~ container.12 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.19 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.20 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.21 jigsaw[custom_data~{steel_ingot:1b}] run return run loot replace entity @s container.0 loot expansion:blocks/compressor
# enhancer
execute if items block ~ ~ ~ container.1 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.2 jigsaw[custom_data~{complex_mechanism:1b}] if items block ~ ~ ~ container.3 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.10 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.11 anvil if items block ~ ~ ~ container.12 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.19 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.20 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.21 jigsaw[custom_data~{steel_ingot:1b}] run return run loot replace entity @s container.0 loot expansion:blocks/enhancer
# arc furnace
execute if items block ~ ~ ~ container.1 copper_ingot if items block ~ ~ ~ container.2 coal if items block ~ ~ ~ container.3 copper_ingot if items block ~ ~ ~ container.10 iron_block if items block ~ ~ ~ container.11 blast_furnace if items block ~ ~ ~ container.12 iron_block if items block ~ ~ ~ container.19 brick if items block ~ ~ ~ container.20 brick if items block ~ ~ ~ container.21 brick run return run loot replace entity @s container.0 loot expansion:blocks/arc_furnace
# terraformer
execute if items block ~ ~ ~ container.1 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.2 nether_star if items block ~ ~ ~ container.3 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.10 jigsaw[custom_data~{fan:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{oxygen_filter:1b}] if items block ~ ~ ~ container.12 jigsaw[custom_data~{fan:1b}] if items block ~ ~ ~ container.19 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.20 jigsaw[custom_data~{complex_mechanism:1b}] if items block ~ ~ ~ container.21 jigsaw[custom_data~{steel_plate:1b}] run return run loot replace entity @s container.0 loot expansion:blocks/terraformer
# oxygenator
execute if items block ~ ~ ~ container.1 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.2 jigsaw[custom_data~{fan:1b}] if items block ~ ~ ~ container.3 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.10 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{oxygen_filter:1b}] if items block ~ ~ ~ container.12 jigsaw[custom_data~{fan:1b}] if items block ~ ~ ~ container.19 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.20 jigsaw[custom_data~{elektromotor:1b}] if items block ~ ~ ~ container.21 jigsaw[custom_data~{steel_ingot:1b}] run return run loot replace entity @s container.0 loot expansion:blocks/oxygenator
# planetarium
execute if items block ~ ~ ~ container.1 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.2 jigsaw[custom_data~{complex_mechanism:1b}] if items block ~ ~ ~ container.3 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.10 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.11 clock if items block ~ ~ ~ container.12 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.19 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.20 compass if items block ~ ~ ~ container.21 jigsaw[custom_data~{steel_ingot:1b}] run return run loot replace entity @s container.0 loot expansion:blocks/planetarium
# fabricator
execute if items block ~ ~ ~ container.1 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.2 diamond if items block ~ ~ ~ container.3 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.10 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{simple_mechanism:1b}] if items block ~ ~ ~ container.12 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.19 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.20 crafting_table if items block ~ ~ ~ container.21 jigsaw[custom_data~{steel_ingot:1b}] run return run loot replace entity @s container.0 loot expansion:blocks/fabricator
# extractor
execute if items block ~ ~ ~ container.1 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.2 jigsaw[custom_data~{complex_mechanism:1b}] if items block ~ ~ ~ container.3 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.10 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.11 brewing_stand if items block ~ ~ ~ container.12 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.19 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.20 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.21 jigsaw[custom_data~{steel_ingot:1b}] run return run loot replace entity @s container.0 loot expansion:blocks/lacrymae_extractor
# tesla coil
execute if items block ~ ~ ~ container.1 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.2 jigsaw[custom_data~{electromagnet:1b}] if items block ~ ~ ~ container.3 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.10 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{copper_wire:1b}] if items block ~ ~ ~ container.12 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.19 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.20 jigsaw[custom_data~{simple_mechanism:1b}] if items block ~ ~ ~ container.21 jigsaw[custom_data~{steel_ingot:1b}] run return run loot replace entity @s container.0 loot expansion:blocks/tesla_coil
# modstation
execute if items block ~ ~ ~ container.1 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.2 jigsaw[custom_data~{monochrome_monitor:1b}] if items block ~ ~ ~ container.3 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.10 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{ai_core:1b}] if items block ~ ~ ~ container.12 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.19 jigsaw[custom_data~{steel_ingot:1b}] if items block ~ ~ ~ container.20 jigsaw[custom_data~{circuit_board:1b}] if items block ~ ~ ~ container.21 jigsaw[custom_data~{steel_ingot:1b}] run return run loot replace entity @s container.0 loot expansion:blocks/modstation
