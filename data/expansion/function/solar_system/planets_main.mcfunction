# gravity
execute if predicate expansion:dimension/altered_gravity unless entity @s[tag=exp.ignores_gravity_effects] if function expansion:mechanics/gravity/has_changed_gravity run function expansion:mechanics/gravity/apply
execute if predicate expansion:dimension/zero_gravity unless entity @s[tag=exp.ignores_gravity_effects] run function expansion:mechanics/gravity/zero/main

# Periodically check a players biome and set their temperature score accordingly
execute if predicate expansion:periodic/20 run function expansion:mechanics/temperature/set_biome_temp/get_dimension

# effects specific for the pocket space dimension
execute if predicate expansion:dimension/storage run function expansion:items/transporter/storage_tick

# oxygen on planets without air
execute if predicate expansion:dimension/oxygen_absent run function expansion:mechanics/oxygen/main

# detect if the player is close to planets if they're in space
execute if predicate expansion:dimension/space unless entity @s[gamemode=spectator] run function expansion:solar_system/transitions/planet_detection