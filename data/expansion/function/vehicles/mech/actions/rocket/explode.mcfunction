particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
playsound entity.generic.explode ambient @a ~ ~ ~

execute on passengers on origin if entity @s[type=marker] run kill @s

execute as @e[type=!#expansion:ignore,distance=..5] run damage @s 12 explosion
execute on passengers run kill @s
kill @s