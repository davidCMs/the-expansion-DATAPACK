execute unless items block ~ ~ ~ container.0 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:0, Type:"icons/air"}

execute unless items block ~ ~ ~ container.1 * unless score @s exp.timer_1 matches 1.. run loot replace block ~ ~ ~ container.1 loot expansion:items/gui/icons/pressure
execute unless items block ~ ~ ~ container.1 * if score @s exp.timer_1 matches 1.. run loot replace block ~ ~ ~ container.1 loot expansion:items/gui/icons/depressure

execute unless items block ~ ~ ~ container.2 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:2, Type:"icons/sphere"}

execute unless items block ~ ~ ~ container.3 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:3, Type:"filler"}
execute unless items block ~ ~ ~ container.4 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:4, Type:"oxygenator"}
execute unless items block ~ ~ ~ container.5 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:5, Type:"filler"}

execute unless items block ~ ~ ~ container.7 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:7, Type:"filler"}
execute unless items block ~ ~ ~ container.8 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:8, Type:"tips/oxygenator"}