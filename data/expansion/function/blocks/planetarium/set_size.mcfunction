scoreboard players operation #temp exp.size *= @s exp.size_mod
scoreboard players operation #temp exp.size /= #100 exp.const

# merge hitbox size size
execute on passengers store result entity @s[type=interaction] width float 0.0005 on vehicle run scoreboard players get #temp exp.size
execute on passengers store result entity @s[type=interaction] height float -0.0005 on vehicle run scoreboard players get #temp exp.size

# merge model size
execute store result entity @s transformation.scale[0] float 0.001 run scoreboard players get #temp exp.size
execute store result entity @s transformation.scale[1] float 0.001 run scoreboard players get #temp exp.size
execute store result entity @s transformation.scale[2] float 0.001 run scoreboard players get #temp exp.size