execute unless score @s exp.timer_1 matches 2.. unless items block ~ ~ ~ container.14 jigsaw[custom_data~{gui_button:1b}] run function expansion:blocks/assembler/button_push

execute unless items block ~ ~ ~ container.16 * unless score @s exp.timer_1 matches 1.. run function expansion:blocks/assembler/remove_display

function expansion:blocks/assembler/gui