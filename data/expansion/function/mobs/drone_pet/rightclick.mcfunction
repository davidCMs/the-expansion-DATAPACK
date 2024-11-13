scoreboard players operation #search exp.unique_id = @s exp.unique_id

tag @n[type=minecraft:interaction,predicate=expansion:compare_score/unique_id,tag=!exp.searching_structure,tag=exp.pet_drone,distance=..10] add exp.searching_structure

advancement revoke @s only expansion:utility/drone_pet_rc