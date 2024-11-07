# check if the item already in the output slot is the same as the item about to be printed
scoreboard players set @s exp.bool 0
execute if items block ~ ~ ~ container.15 * run function expansion:blocks/fabricator/printing/compare_output

# prevent printing when the output slot is full and handle some exceptions
execute if data block ~ ~ ~ {Items:[{Slot:15,count:64b}]} run scoreboard players set @s exp.bool 1
execute if items block ~ ~ ~ container.15 *[custom_data~{oxygen_tank:1b}] run scoreboard players set @s exp.bool 1
execute if items block ~ ~ ~ container.15 iron_boots run scoreboard players set @s exp.bool 1

# Display the red flash animation when the print is invalid
execute if score @s exp.bool matches 1 if items block ~ ~ ~ container.26 *[custom_data~{gui_item:1b}] run scoreboard players set @s exp.cooldown 20

# start the print if conditions are met
execute if score @s exp.bool matches 0 run function expansion:blocks/fabricator/printing/start_print

scoreboard players reset @s exp.bool