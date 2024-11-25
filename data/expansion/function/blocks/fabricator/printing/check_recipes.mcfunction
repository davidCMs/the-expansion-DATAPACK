function expansion:blocks/fabricator/recipes

execute if items entity @s container.0 * unless items entity @s container.0 jigsaw[custom_data~{gui_item:1b}] run return run function expansion:blocks/fabricator/printing/prepare_print

item replace entity @s container.0 with air