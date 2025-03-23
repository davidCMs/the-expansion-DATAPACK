scoreboard players reset #temp exp.bool

execute on origin as @s[distance=..40] run scoreboard players set #temp exp.bool 1

execute unless score #temp exp.bool matches 1 run function expansion:blocks/terraformer/unlink

scoreboard players reset #temp exp.bool
