# choose a target and cast a zap to it
execute if predicate expansion:periodic/10 if function expansion:blocks/tesla_coil/coil/choose_target run return run function expansion:blocks/tesla_coil/coil/add_target

# idle particle
execute if predicate expansion:periodic/2 if predicate expansion:chance/025_chance positioned ~ ~2 ~ summon marker run function expansion:blocks/tesla_coil/coil/idle_zaps
particle minecraft:electric_spark ~ ~1.9 ~ 0.3 0.1 0.3 0.1 2 force