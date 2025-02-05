particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
playsound entity.generic.explode ambient @a ~ ~ ~

execute on passengers on origin if entity @s[type=marker] run kill @s

execute as @e[type=!#expansion:ignore,tag=!exp.ignore_for_damage,distance=..5] run function expansion:vehicles/mech/actions/rocket/damage
execute on passengers run kill @s
kill @s