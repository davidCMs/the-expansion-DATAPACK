# particles
particle minecraft:dust{color:[1d,0d,0d],scale:2} ~ ~ ~ 0.5 0.5 0.5 5 50 force
particle explosion ~ ~ ~ 0 0 0 0 5 force

# damage nearby players
execute as @e[type=#expansion:sentient,distance=..2] run function expansion:projectiles/ship_blaster/damage/gatling