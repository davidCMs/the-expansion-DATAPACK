scoreboard players set @s exp.rotation 1

# have a chance to activate a short jump when switching to this state
execute if predicate expansion:chance/020_chance run scoreboard players set @s exp.counter_1 5

scoreboard players set @s exp.delay 40