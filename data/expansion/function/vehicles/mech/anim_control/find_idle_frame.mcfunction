execute on passengers if entity @s[tag=aj.mech_torso.root] run scoreboard players operation #temp exp.math = @s aj.walking_body.frame
scoreboard players operation #temp exp.math %= #20 exp.const
scoreboard players operation #temp exp.math -= #20 exp.const
scoreboard players operation @s exp.timer_1 = #temp exp.math
scoreboard players reset #temp exp.math