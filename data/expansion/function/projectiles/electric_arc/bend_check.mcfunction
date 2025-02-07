# branch if unique_id is 1
execute if score @s exp.unique_id matches 1 if predicate expansion:chance/020_chance run function expansion:projectiles/electric_arc/branch

# bend snowballs towards their target
execute if entity @s[type=snowball] run return run execute on origin facing entity @s eyes as @n[type=snowball,tag=exp.electric_arc,distance=..0.1] run function expansion:projectiles/electric_arc/bend

# bend other entities randomly
function expansion:projectiles/electric_arc/bend