scoreboard players operation #search exp.unique_id = @s exp.unique_id

execute at @s as @n[type=minecraft:item_display,tag=exp.pet_drone,predicate=expansion:compare_score/unique_id,distance=..10] on passengers if data entity @s[type=interaction] attack.player run function expansion:mobs/drone_pet/delete

advancement revoke @s only expansion:utility/drone_pet_lc