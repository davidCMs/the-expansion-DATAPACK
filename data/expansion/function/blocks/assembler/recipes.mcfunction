# buggy
execute if items block ~ ~ ~ container.1 jigsaw[custom_data~{buggy_wheel:1b}] if items block ~ ~ ~ container.2 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.3 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.4 jigsaw[custom_data~{buggy_wheel:1b}] if items block ~ ~ ~ container.10 jigsaw[custom_data~{elektromotor:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{complex_mechanism:1b}] if items block ~ ~ ~ container.12 carrot_on_a_stick[custom_data~{oxygen_tank:1b}] if items block ~ ~ ~ container.13 jigsaw[custom_data~{elektromotor:1b}] if items block ~ ~ ~ container.19 jigsaw[custom_data~{buggy_wheel:1b}] if items block ~ ~ ~ container.20 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.21 jigsaw[custom_data~{steel_plate:1b}] if items block ~ ~ ~ container.22 jigsaw[custom_data~{buggy_wheel:1b}] run function expansion:vehicles/buggy/craft
# spaceship
execute if items block ~ ~ ~ container.3 jigsaw[custom_data~{spaceship_nose:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{spaceship_left_wing:1b}] if items block ~ ~ ~ container.12 jigsaw[custom_data~{spaceship_cockpit:1b}] if items block ~ ~ ~ container.13 jigsaw[custom_data~{spaceship_right_wing:1b}] if items block ~ ~ ~ container.21 jigsaw[custom_data~{spaceship_engines:1b}] run loot replace entity @s container.0 loot expansion:vehicles/spaceship
execute if items block ~ ~ ~ container.2 jigsaw[custom_data~{spaceship_nose:1b}] if items block ~ ~ ~ container.10 jigsaw[custom_data~{spaceship_left_wing:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{spaceship_cockpit:1b}] if items block ~ ~ ~ container.12 jigsaw[custom_data~{spaceship_right_wing:1b}] if items block ~ ~ ~ container.20 jigsaw[custom_data~{spaceship_engines:1b}] run loot replace entity @s container.0 loot expansion:vehicles/spaceship
# railgun
execute if items block ~ ~ ~ container.1 jigsaw[custom_data~{complex_mechanism:1b}] if items block ~ ~ ~ container.2 jigsaw[custom_data~{amethonium_plate:1b}] if items block ~ ~ ~ container.3 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.4 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.10 jigsaw[custom_data~{amethonium_plate:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{electromagnet:1b}] if items block ~ ~ ~ container.12 jigsaw[custom_data~{electromagnet:1b}] if items block ~ ~ ~ container.13 jigsaw[custom_data~{electromagnet:1b}] if items block ~ ~ ~ container.19 jigsaw[custom_data~{circuit_board:1b}] if items block ~ ~ ~ container.20 jigsaw[custom_data~{amethonium_plate:1b}] if items block ~ ~ ~ container.21 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.22 jigsaw[custom_data~{amethonium_ingot:1b}] run loot replace entity @s container.0 loot expansion:weapons/railgun
# cryoblaster
execute if items block ~ ~ ~ container.1 jigsaw[custom_data~{amethonium_plate:1b}] if items block ~ ~ ~ container.2 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.10 jigsaw[custom_data~{circuit_board:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{cooling_element:1b}] if items block ~ ~ ~ container.12 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.13 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.19 jigsaw[custom_data~{complex_mechanism:1b}] if items block ~ ~ ~ container.20 jigsaw[custom_data~{amethonium_ingot:1b}] run loot replace entity @s container.0 loot expansion:tools/cryoblaster
# pet drone
execute if items block ~ ~ ~ container.2 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.3 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.10 jigsaw[custom_data~{monochrome_monitor:1b}] if items block ~ ~ ~ container.11 jigsaw[custom_data~{ai_core:1b}] if items block ~ ~ ~ container.12 jigsaw[custom_data~{circuit_board:1b}] if items block ~ ~ ~ container.13 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.20 jigsaw[custom_data~{amethonium_ingot:1b}] if items block ~ ~ ~ container.21 jigsaw[custom_data~{amethonium_ingot:1b}] run loot replace entity @s container.0 loot expansion:tools/pet_drone

# handy template
#execute 
#if items block ~ ~ ~ container.1 jigsaw[custom_data~{amethonium_plate:1b}] 
#if items block ~ ~ ~ container.2 jigsaw[custom_data~{amethonium_ingot:1b}] 
#if items block ~ ~ ~ container.3 jigsaw[custom_data~{amethonium_ingot:1b}] 
#if items block ~ ~ ~ container.4 jigsaw[custom_data~{amethonium_ingot:1b}] 

#if items block ~ ~ ~ container.10 jigsaw[custom_data~{circuit_board:1b}] 
#if items block ~ ~ ~ container.11 jigsaw[custom_data~{cooling_element:1b}] 
#if items block ~ ~ ~ container.12 jigsaw[custom_data~{amethonium_ingot:1b}] 
#if items block ~ ~ ~ container.13 jigsaw[custom_data~{amethonium_ingot:1b}] 

#if items block ~ ~ ~ container.19 jigsaw[custom_data~{complex_mechanism:1b}] 
#if items block ~ ~ ~ container.20 jigsaw[custom_data~{amethonium_ingot:1b}] 
#if items block ~ ~ ~ container.21 jigsaw[custom_data~{amethonium_ingot:1b}] 
#if items block ~ ~ ~ container.22 jigsaw[custom_data~{amethonium_ingot:1b}}
#]} run loot replace entity @s container.0 loot expansion:weapons/railgun
