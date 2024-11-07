item replace entity @p weapon.mainhand from entity @s container.0

item replace entity @s container.0 with minecraft:air

scoreboard players set @s exp.timer_1 0

tag @s remove exp.tank_inside

function expansion:blocks/compressor/compress/stop