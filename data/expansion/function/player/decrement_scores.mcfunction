# cooldown utility
scoreboard players remove @s[scores={exp.cooldown=1..}] exp.cooldown 1
execute if loaded ~ ~ ~ run scoreboard players remove @s[scores={exp.portal_cooldown=1..}] exp.portal_cooldown 1
execute if score @s exp.warmup matches 1.. run function expansion:utilities/warmup/main

# custom hitbox attack cooldown
scoreboard players remove @s[scores={exp.player_attack_cooldown=1..}] exp.player_attack_cooldown 10
scoreboard players set @s[scores={exp.player_attack_cooldown=..-1}] exp.player_attack_cooldown 0

# reset all the detection scoreboards
scoreboard players set @s[scores={exp.jump=1..}] exp.jump 0
execute unless score @s exp.rightclick matches 0 run scoreboard players set @s exp.rightclick 0