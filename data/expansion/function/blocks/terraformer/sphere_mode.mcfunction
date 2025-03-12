execute if score @s exp.counter_2 matches 1 on passengers if entity @s[type=marker] rotated as @s run function expansion:blocks/terraformer/particles/terraformer_sphere_particle

# periodically check if new unoxygenized entities appear and link them
execute if predicate expansion:periodic/10 at @s as @n[type=#expansion:wants_oxygen,tag=!exp.inside_habitable_space,tag=!exp.terraformer.ignore,distance=0.5..40] run function expansion:blocks/terraformer/grant_oxygen

# for each linked entity recieving oxygen, periodically check if it is still within range
execute if predicate expansion:periodic/10 on passengers if entity @s[tag=exp.origin_link] run function expansion:blocks/terraformer/check_near