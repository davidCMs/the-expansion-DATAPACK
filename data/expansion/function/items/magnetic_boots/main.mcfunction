tag @s add exp.ignores_gravity_effects

# check if there are no air blocks underneath the player
execute positioned ~ ~-1 ~ if block ~ ~ ~ #expansion:air run function expansion:items/magnetic_boots/floor_check/check1

# enable gravity if there is no floor, particularly needed in zero gravity
tag @s[tag=exp.no_floor] remove exp.ignores_gravity_effects