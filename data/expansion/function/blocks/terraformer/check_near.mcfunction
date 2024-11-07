scoreboard players reset #temp exp.bool

execute on origin unless entity @s[distance=..40] run scoreboard players set #temp exp.bool 1

execute if score #temp exp.bool matches 1 run function expansion:blocks/terraformer/unlink