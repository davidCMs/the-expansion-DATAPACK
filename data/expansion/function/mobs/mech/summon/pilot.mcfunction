loot replace entity @s armor.head loot expansion:armor/trooper/helmet
loot replace entity @s armor.chest loot expansion:armor/trooper/chestplate
loot replace entity @s armor.legs loot expansion:armor/trooper/leggings
loot replace entity @s armor.feet loot expansion:armor/trooper/boots

tag @s add exp.mech_mob
tag @s add exp.mech_pilot
tag @s add exp.mob

data merge entity @s {Invulnerable:1b,NoAI:1b,Silent:1b}