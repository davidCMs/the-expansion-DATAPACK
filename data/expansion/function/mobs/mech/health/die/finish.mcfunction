execute on passengers if entity @s[tag=exp.mech.bot_link] on origin run kill @s

execute on passengers if entity @s[tag=exp.mech_seat] on passengers run tag @s add exp.defeated_mech

execute on passengers if entity @s[tag=exp.mech_seat] on passengers run function expansion:utilities/erase_entity

particle explosion_emitter