scoreboard players operation #search exp.unique_id = @s exp.unique_id

execute positioned ^ ^ ^2 as @n[type=interaction,tag=exp.pet_drone_rcdet,predicate=expansion:compare_score/unique_id,distance=..10] on vehicle run tag @s add exp.searching_structure

advancement revoke @s only expansion:utility/drone_pet_rc