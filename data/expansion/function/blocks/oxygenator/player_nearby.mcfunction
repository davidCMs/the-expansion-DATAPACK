execute unless items block ~ ~ ~ container.0 * run function expansion:blocks/oxygenator/gui/buttons/display_air_button
execute unless items block ~ ~ ~ container.1 * run function expansion:blocks/oxygenator/gui/buttons/activate_button
execute unless items block ~ ~ ~ container.2 * run function expansion:blocks/oxygenator/gui/buttons/display_sphere_button

function expansion:blocks/oxygenator/gui/main

execute if score @s exp.cooldown matches 1.. run function expansion:blocks/oxygenator/gui/flash