execute on passengers run tag @s[tag=exp.module_pilot] add exp.move_pilot
execute on passengers run tag @s[tag=!exp.module_pilot] add exp.move_passenger
execute on passengers run ride @s dismount
function expansion:utilities/erase_entity