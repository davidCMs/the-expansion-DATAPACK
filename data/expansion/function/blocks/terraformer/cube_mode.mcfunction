execute if score @s exp.counter_2 matches 1 run function expansion:blocks/terraformer/particles/terraformer_cube_particle

# periodically check if new unoxygenized entities appear and link them
execute if predicate expansion:periodic/10 at @s positioned ~-24 ~-24 ~-24 as @n[type=#expansion:wants_oxygen,tag=!exp.has_oxygen,tag=!exp.terraformer.ignore,dx=47,dy=47,dz=47] positioned ~24 ~24 ~24 run function expansion:blocks/terraformer/grant_oxygen

# for each linked entity recieving oxygen, periodically check if it is still within range
execute if predicate expansion:periodic/10 on passengers if entity @s[tag=exp.origin_link] run function expansion:blocks/terraformer/check_near_cube