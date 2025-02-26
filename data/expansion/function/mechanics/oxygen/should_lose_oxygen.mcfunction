# never lose oxygen in creative or spectator
execute if entity @s[gamemode=creative] run return fail
execute if entity @s[gamemode=spectator] run return fail

# never lose oxygen inside a vehicle
execute if entity @s[tag=exp.inside_vehicle] run return fail

# never lose oxygen within range of a terraformer or oxygenator
execute if entity @s[tag=exp.has_oxygen] run return fail

# never lose oxygen in planets that have ambient oxygen
execute unless predicate expansion:dimension/oxygen_absent run return fail

# Lose oxygen in all other scenarios
return 1